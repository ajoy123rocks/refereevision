import React, { useState, useEffect, useRef, useMemo } from 'react';
import { createPortal } from 'react-dom';
import { useNavigate } from 'react-router';
import { Search, X, ArrowRight, Video, BookOpen, Users, Tv, Shield, Archive, Sparkles, CornerDownLeft } from 'lucide-react';
import { SEARCH_ITEMS, SearchItem } from '../data/searchData';

interface SearchModalProps {
  isOpen: boolean;
  onClose: () => void;
}

type FilterCategory = 'ALL' | 'VIDEOS' | 'BOOKS' | 'REFEREES' | 'WEBINARS' | 'COACHES' | 'VAULT';

const FILTER_CATEGORIES: { label: string; value: FilterCategory }[] = [
  { label: 'ALL', value: 'ALL' },
  { label: 'VIDEOS', value: 'VIDEOS' },
  { label: 'REFEREES', value: 'REFEREES' },
  { label: 'BOOKS', value: 'BOOKS' },
  { label: 'WEBINARS', value: 'WEBINARS' },
  { label: 'COACHES', value: 'COACHES' },
  { label: 'VAULT', value: 'VAULT' },
];

const SUGGESTIONS = [
  'Presentations',
  '3PO ADVANCED',
  'Goaltending',
  'Shot Clock',
  '3 Seconds',
  '5 Seconds',
  '8 Seconds',
  'Unsportsmanlike Foul',
  'Cylinder Principle',
  'Travelling',
  '3PO Manual',
  'Mic\'d Up',
  'Signals',
];

export default function SearchModal({ isOpen, onClose }: SearchModalProps) {
  const [query, setQuery] = useState('');
  const [selectedFilter, setSelectedFilter] = useState<FilterCategory>('ALL');
  const [selectedIndex, setSelectedIndex] = useState(0);
  const inputRef = useRef<HTMLInputElement>(null);
  const listRef = useRef<HTMLDivElement>(null);
  const navigate = useNavigate();

  // Focus input on open
  useEffect(() => {
    if (isOpen) {
      setQuery('');
      setSelectedIndex(0);
      setTimeout(() => {
        inputRef.current?.focus();
      }, 50);
      document.body.style.overflow = 'hidden';
    } else {
      document.body.style.overflow = '';
    }
    return () => {
      document.body.style.overflow = '';
    };
  }, [isOpen]);

  // Global ESC shortcut
  useEffect(() => {
    const handleKeyDown = (e: KeyboardEvent) => {
      if (e.key === 'Escape' && isOpen) {
        onClose();
      }
    };
    window.addEventListener('keydown', handleKeyDown);
    return () => window.removeEventListener('keydown', handleKeyDown);
  }, [isOpen, onClose]);

  // Filter & Search logic with token-based matching and relevance ranking
  const filteredItems = useMemo(() => {
    const cleanQuery = query.trim().toLowerCase();

    const matches = SEARCH_ITEMS.filter((item) => {
      // Category filter check
      if (selectedFilter !== 'ALL' && item.category !== selectedFilter) {
        return false;
      }

      if (!cleanQuery) return true;

      const titleLower = item.title.toLowerCase();
      const descLower = (item.description || '').toLowerCase();
      const sectionLower = (item.section || '').toLowerCase();
      const keywordsLower = item.keywords.map((k) => k.toLowerCase()).join(' ');
      const allText = `${titleLower} ${descLower} ${sectionLower} ${keywordsLower}`;

      // 1. Direct full match (exact phrase match)
      if (allText.includes(cleanQuery)) return true;

      // 2. Token match: all space-separated words must be present
      const tokens = cleanQuery.split(/\s+/).filter(Boolean);
      if (tokens.length > 1) {
        return tokens.every((token) => allText.includes(token));
      }

      return false;
    });

    if (!cleanQuery) return matches;

    // Rank results: exact phrase in title > token match in title > keyword match
    return matches.sort((a, b) => {
      const aTitle = a.title.toLowerCase();
      const bTitle = b.title.toLowerCase();

      // Exact title match gets highest priority
      const aExact = aTitle === cleanQuery;
      const bExact = bTitle === cleanQuery;
      if (aExact && !bExact) return -1;
      if (!aExact && bExact) return 1;

      // Starts with query in title
      const aStarts = aTitle.startsWith(cleanQuery);
      const bStarts = bTitle.startsWith(cleanQuery);
      if (aStarts && !bStarts) return -1;
      if (!aStarts && bStarts) return 1;

      // Includes query in title
      const aTitleIncludes = aTitle.includes(cleanQuery);
      const bTitleIncludes = bTitle.includes(cleanQuery);
      if (aTitleIncludes && !bTitleIncludes) return -1;
      if (!aTitleIncludes && bTitleIncludes) return 1;

      return 0;
    });
  }, [query, selectedFilter]);

  // Reset selected index when query or filter changes
  useEffect(() => {
    setSelectedIndex(0);
  }, [query, selectedFilter]);

  // Keep active item in view
  useEffect(() => {
    if (listRef.current) {
      const activeEl = listRef.current.children[selectedIndex] as HTMLElement;
      if (activeEl) {
        activeEl.scrollIntoView({ block: 'nearest' });
      }
    }
  }, [selectedIndex]);

  // Handle item click / navigate
  const handleSelect = (item: SearchItem) => {
    onClose();
    navigate(item.path);
  };

  // Keyboard navigation
  const handleKeyDown = (e: React.KeyboardEvent) => {
    if (e.key === 'ArrowDown') {
      e.preventDefault();
      setSelectedIndex((prev) => (prev + 1 < filteredItems.length ? prev + 1 : 0));
    } else if (e.key === 'ArrowUp') {
      e.preventDefault();
      setSelectedIndex((prev) => (prev - 1 >= 0 ? prev - 1 : Math.max(0, filteredItems.length - 1)));
    } else if (e.key === 'Enter') {
      e.preventDefault();
      if (filteredItems[selectedIndex]) {
        handleSelect(filteredItems[selectedIndex]);
      }
    }
  };

  // Category Icon helper
  const getCategoryIcon = (category: string) => {
    switch (category) {
      case 'VIDEOS':
        return <Video className="w-4 h-4 text-[#E8651A]" />;
      case 'BOOKS':
        return <BookOpen className="w-4 h-4 text-[#3B82F6]" />;
      case 'REFEREES':
        return <Shield className="w-4 h-4 text-[#10B981]" />;
      case 'WEBINARS':
        return <Tv className="w-4 h-4 text-[#8B5CF6]" />;
      case 'COACHES':
        return <Users className="w-4 h-4 text-[#EC4899]" />;
      case 'VAULT':
        return <Archive className="w-4 h-4 text-[#F59E0B]" />;
      default:
        return <Sparkles className="w-4 h-4 text-[#E8651A]" />;
    }
  };

  const getCategoryColor = (category: string) => {
    switch (category) {
      case 'VIDEOS':
        return 'text-[#E8651A] bg-[#E8651A]/10 border-[#E8651A]/30';
      case 'BOOKS':
        return 'text-[#3B82F6] bg-[#3B82F6]/10 border-[#3B82F6]/30';
      case 'REFEREES':
        return 'text-[#10B981] bg-[#10B981]/10 border-[#10B981]/30';
      case 'WEBINARS':
        return 'text-[#8B5CF6] bg-[#8B5CF6]/10 border-[#8B5CF6]/30';
      case 'COACHES':
        return 'text-[#EC4899] bg-[#EC4899]/10 border-[#EC4899]/30';
      case 'VAULT':
        return 'text-[#F59E0B] bg-[#F59E0B]/10 border-[#F59E0B]/30';
      default:
        return 'text-[#AAAAAA] bg-[#AAAAAA]/10 border-[#AAAAAA]/30';
    }
  };

  if (!isOpen) return null;

  return createPortal(
    <div
      onClick={onClose}
      className="fixed inset-0 z-[999999] flex items-start justify-center pt-8 md:pt-20 px-3 md:px-4 bg-black/80 backdrop-blur-md transition-opacity duration-200"
      style={{ animation: 'fadeInModal 0.18s ease-out' }}
    >
      <style>{`
        @keyframes fadeInModal {
          from { opacity: 0; transform: scale(0.98); }
          to { opacity: 1; transform: scale(1); }
        }
      `}</style>

      {/* Modal Box */}
      <div
        onClick={(e) => e.stopPropagation()}
        className="w-full max-w-3xl bg-[#141414] rounded-lg border border-[#E8651A] shadow-[0_0_60px_rgba(232,101,26,0.35)] flex flex-col overflow-hidden max-h-[85vh] animate-in"
      >
        {/* Search Input Bar */}
        <div className="p-4 md:p-5 border-b border-[#2A2A2A] bg-[#181818] flex items-center gap-3">
          <Search className="w-5 h-5 md:w-6 md:h-6 text-[#E8651A] shrink-0" />
          <input
            ref={inputRef}
            type="text"
            value={query}
            onChange={(e) => setQuery(e.target.value)}
            onKeyDown={handleKeyDown}
            placeholder="Search anything: Goaltending, Shot Clock, 3 Seconds, 5 Seconds, 8 Seconds, Manuals..."
            className="w-full bg-transparent text-white text-base md:text-lg focus:outline-none placeholder:text-[#666666] font-sans"
          />
          {query && (
            <button
              onClick={() => {
                setQuery('');
                inputRef.current?.focus();
              }}
              className="p-1 hover:bg-[#2A2A2A] rounded text-[#888888] hover:text-white transition-colors cursor-pointer"
              title="Clear search"
            >
              <X className="w-5 h-5" />
            </button>
          )}
          <button
            onClick={onClose}
            className="hidden md:flex items-center justify-center px-2 py-1 bg-[#222222] border border-[#333333] hover:border-[#E8651A] rounded text-xs text-[#AAAAAA] hover:text-[#E8651A] transition-colors cursor-pointer"
          >
            ESC
          </button>
        </div>

        {/* Filter Pills */}
        <div className="px-4 py-2.5 bg-[#121212] border-b border-[#242424] flex items-center gap-1.5 overflow-x-auto [&::-webkit-scrollbar]:hidden">
          {FILTER_CATEGORIES.map((cat) => {
            const active = selectedFilter === cat.value;
            return (
              <button
                key={cat.value}
                onClick={() => setSelectedFilter(cat.value)}
                style={{
                  fontFamily: "'Barlow Condensed', sans-serif",
                  letterSpacing: '1px',
                }}
                className={`px-3 py-1 rounded text-xs font-bold transition-all whitespace-nowrap cursor-pointer ${
                  active
                    ? 'bg-[#E8651A] text-white shadow-sm'
                    : 'bg-[#1C1C1C] text-[#888888] hover:text-white hover:bg-[#2A2A2A]'
                }`}
              >
                {cat.label}
              </button>
            );
          })}
        </div>

        {/* Results Area */}
        <div
          ref={listRef}
          className="flex-1 overflow-y-auto p-2 md:p-3 divide-y divide-[#1F1F1F] scroll-smooth"
        >
          {filteredItems.length > 0 ? (
            filteredItems.map((item, index) => {
              const isSelected = index === selectedIndex;
              return (
                <div
                  key={item.id}
                  onClick={() => handleSelect(item)}
                  onMouseEnter={() => setSelectedIndex(index)}
                  className={`p-3 md:p-3.5 rounded transition-colors cursor-pointer flex items-center justify-between gap-3 group ${
                    isSelected ? 'bg-[#E8651A]/15 border-l-4 border-l-[#E8651A]' : 'hover:bg-[#1A1A1A]'
                  }`}
                >
                  <div className="flex items-start gap-3 min-w-0">
                    <div className="p-2 rounded bg-[#1C1C1C] border border-[#2A2A2A] shrink-0 mt-0.5">
                      {getCategoryIcon(item.category)}
                    </div>
                    <div className="flex flex-col min-w-0">
                      <div className="flex items-center gap-2 flex-wrap">
                        <span
                          style={{ fontFamily: "'Barlow Condensed', sans-serif", fontWeight: 700 }}
                          className={`text-base md:text-lg transition-colors truncate ${
                            isSelected ? 'text-[#E8651A]' : 'text-white group-hover:text-[#E8651A]'
                          }`}
                        >
                          {item.title}
                        </span>
                        <span
                          className={`text-[10px] uppercase font-bold px-1.5 py-0.5 rounded border shrink-0 ${getCategoryColor(
                            item.category
                          )}`}
                        >
                          {item.badge || item.category}
                        </span>
                      </div>
                      {item.description && (
                        <p className="text-xs text-[#888888] line-clamp-1 mt-0.5 font-sans">
                          {item.description}
                        </p>
                      )}
                      {item.section && (
                        <span className="text-[11px] text-[#555555] mt-0.5 font-sans">
                          in <span className="text-[#888888]">{item.section}</span>
                        </span>
                      )}
                    </div>
                  </div>

                  <div className="shrink-0 flex items-center gap-2">
                    <span
                      style={{ fontFamily: "'Barlow Condensed', sans-serif" }}
                      className={`text-xs font-bold uppercase transition-opacity flex items-center gap-1 ${
                        isSelected ? 'opacity-100 text-[#E8651A]' : 'opacity-0 group-hover:opacity-100 text-[#888888]'
                      }`}
                    >
                      <span className="hidden sm:inline">Go</span>
                      <ArrowRight className="w-3.5 h-3.5" />
                    </span>
                  </div>
                </div>
              );
            })
          ) : (
            <div className="py-12 px-4 text-center flex flex-col items-center">
              <Search className="w-12 h-12 text-[#333333] mb-3 stroke-1" />
              <p className="text-white font-bold text-base mb-1">No results found for "{query}"</p>
              <p className="text-xs text-[#666666] max-w-sm mb-6">
                Try searching for specific rules, violations (3, 5, 8, 24 seconds, goaltending), signals, or manuals.
              </p>

              {/* Suggestions */}
              <div className="w-full max-w-lg">
                <span className="text-[11px] uppercase tracking-wider text-[#888888] font-bold block mb-2">
                  Popular Searches
                </span>
                <div className="flex flex-wrap justify-center gap-1.5">
                  {SUGGESTIONS.map((sug) => (
                    <button
                      key={sug}
                      onClick={() => setQuery(sug)}
                      className="px-2.5 py-1 rounded bg-[#1C1C1C] hover:bg-[#E8651A] hover:text-white text-xs text-[#AAAAAA] transition-colors cursor-pointer border border-[#2A2A2A]"
                    >
                      {sug}
                    </button>
                  ))}
                </div>
              </div>
            </div>
          )}
        </div>

        {/* Suggestions footer when query is empty */}
        {!query && (
          <div className="p-3 bg-[#111111] border-t border-[#222222]">
            <div className="flex items-center gap-1.5 overflow-x-auto pb-1 [&::-webkit-scrollbar]:hidden">
              <span className="text-[11px] uppercase tracking-wider text-[#666666] font-bold shrink-0 mr-1">
                Suggestions:
              </span>
              {SUGGESTIONS.slice(0, 7).map((sug) => (
                <button
                  key={sug}
                  onClick={() => setQuery(sug)}
                  className="px-2 py-0.5 rounded bg-[#1C1C1C] hover:bg-[#2A2A2A] hover:text-[#E8651A] text-[11px] text-[#888888] transition-colors whitespace-nowrap cursor-pointer"
                >
                  {sug}
                </button>
              ))}
            </div>
          </div>
        )}

        {/* Keyboard Hints Bar */}
        <div className="px-4 py-2.5 bg-[#0C0C0C] border-t border-[#1C1C1C] flex items-center justify-between text-[11px] text-[#666666]">
          <div className="flex items-center gap-4">
            <span className="flex items-center gap-1">
              <kbd className="px-1.5 py-0.5 rounded bg-[#1C1C1C] text-[#AAAAAA] border border-[#2A2A2A] text-[10px]">↑</kbd>
              <kbd className="px-1.5 py-0.5 rounded bg-[#1C1C1C] text-[#AAAAAA] border border-[#2A2A2A] text-[10px]">↓</kbd>
              Navigate
            </span>
            <span className="flex items-center gap-1">
              <kbd className="px-1.5 py-0.5 rounded bg-[#1C1C1C] text-[#AAAAAA] border border-[#2A2A2A] text-[10px]">
                <CornerDownLeft className="w-2.5 h-2.5 inline" />
              </kbd>
              Select
            </span>
            <span className="flex items-center gap-1">
              <kbd className="px-1.5 py-0.5 rounded bg-[#1C1C1C] text-[#AAAAAA] border border-[#2A2A2A] text-[10px]">ESC</kbd>
              Close
            </span>
          </div>
          <span className="hidden sm:inline text-[#444444]">
            {filteredItems.length} result{filteredItems.length === 1 ? '' : 's'}
          </span>
        </div>
      </div>
    </div>,
    document.body
  );
}
