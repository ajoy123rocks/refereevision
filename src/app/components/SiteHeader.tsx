import { useState, useEffect } from 'react';
import { Youtube, Facebook, Instagram, Twitter, MessageCircle, Search } from 'lucide-react';
import { Link, useLocation } from 'react-router';
import logoImage from '../../imports/Screenshot_2026-06-03_at_14.17.43.png';
import SearchModal from './SearchModal';

const NAV_ROW_1 = ['ABOUT', 'REFEREES', 'BOOKS', 'VIDEOS'];
const NAV_ROW_2 = ['WEBINARS', 'COACHES', 'VAULT'];
const ALL_NAV_LINKS = [...NAV_ROW_1, ...NAV_ROW_2];

export default function SiteHeader() {
  const [hoveredNav, setHoveredNav] = useState<string | null>(null);
  const [isSearchOpen, setIsSearchOpen] = useState(false);
  const location = useLocation();

  // Global Cmd+K / Ctrl+K listener
  useEffect(() => {
    const handleKeyDown = (e: KeyboardEvent) => {
      if ((e.metaKey || e.ctrlKey) && e.key.toLowerCase() === 'k') {
        e.preventDefault();
        setIsSearchOpen((prev) => !prev);
      }
    };
    window.addEventListener('keydown', handleKeyDown);
    return () => window.removeEventListener('keydown', handleKeyDown);
  }, []);

  const isLinkActive = (item: string) => {
    if (item === 'REFEREES') return location.pathname === '/referees';
    if (item === 'BOOKS') return location.pathname === '/books';
    if (item === 'VIDEOS') return location.pathname === '/videos';
    if (item === 'WEBINARS') return location.pathname === '/webinars';
    if (item === 'COACHES') return location.pathname === '/coaches';
    if (item === 'VAULT') return location.pathname === '/vault';
    if (item === 'ABOUT') return location.pathname === '/' || location.hash === '#about';
    return false;
  };

  const getLinkPath = (item: string) => {
    if (item === 'REFEREES') return '/referees';
    if (item === 'BOOKS') return '/books';
    if (item === 'VIDEOS') return '/videos';
    if (item === 'WEBINARS') return '/webinars';
    if (item === 'COACHES') return '/coaches';
    if (item === 'VAULT') return '/vault';
    return '/#about';
  };

  return (
    <>
      <SearchModal isOpen={isSearchOpen} onClose={() => setIsSearchOpen(false)} />

      {/* TOP HEADER */}
      <header
        style={{ backgroundColor: 'var(--black)', zIndex: 9999 }}
        className="md:sticky md:top-0 md:z-[9999] md:h-[100px] px-4 md:px-8 py-3.5 md:py-0 flex flex-col md:flex-row md:items-center md:justify-between gap-3 md:gap-0"
      >
        {/* Row 1 on mobile: Logo + Title + Subtitle */}
        <Link to="/" className="flex items-center gap-3 md:gap-4 shrink-0">
          <img
            src={logoImage}
            alt="Referee Vision Logo"
            className="h-[46px] md:h-[65px] w-auto shrink-0"
          />
          <div className="flex flex-col text-left">
            <h1
              style={{
                fontFamily: "'Barlow Condensed', sans-serif",
                fontWeight: 800,
                letterSpacing: '-0.5px',
              }}
              className="text-[26px] md:text-[36px] text-white uppercase leading-none"
            >
              REFEREE VISION
            </h1>
            <p
              style={{ fontFamily: "'North Wave', sans-serif" }}
              className="text-[13px] md:text-[15px] text-[#AAAAAA] mt-0.5 md:mt-0"
            >
              One  Stop  To  "Rule"  Them  All
            </p>
          </div>
        </Link>

        {/* Row 2 on mobile / Right section on desktop: SEARCH Button + Divider + Social Icons */}
        <div className="flex items-center gap-3 md:gap-5 shrink-0 w-full md:w-auto justify-start md:justify-end">
          {/* SEARCH Button */}
          <button
            onClick={() => setIsSearchOpen(true)}
            className="flex items-center gap-2 px-3 py-1.5 md:px-4 md:py-1.5 rounded-[4px] border border-[var(--orange)] bg-transparent hover:bg-[var(--orange)] text-[var(--orange)] hover:text-white transition-all duration-200 cursor-pointer shadow-sm group shrink-0"
            style={{
              fontFamily: "'Barlow Condensed', sans-serif",
              fontWeight: 700,
              letterSpacing: '1.5px',
              fontSize: '13px',
              textTransform: 'uppercase',
            }}
            title="Search site (Cmd+K)"
            aria-label="Search site"
          >
            <Search className="w-3.5 h-3.5 md:w-4 md:h-4 transition-transform group-hover:scale-110 shrink-0" />
            <span>SEARCH</span>
            <span className="hidden sm:inline-block text-[10px] ml-0.5 px-1.5 py-0.5 rounded bg-[#222222] text-[#AAAAAA] group-hover:bg-black/30 group-hover:text-white transition-colors font-mono border border-[#333333]">
              ⌘K
            </span>
          </button>

          {/* Social Icons with vertical divider */}
          <div className="flex items-center gap-3.5 md:gap-5 pl-3 md:pl-4 border-l border-[#262626] shrink-0">
            <a
              href="https://www.youtube.com/@refereevision5209"
              target="_blank"
              rel="noopener noreferrer"
              title="YouTube"
              className="text-white hover:text-[var(--orange)] transition-colors flex items-center justify-center"
            >
              <Youtube className="w-[18px] h-[18px] md:w-[20px] md:h-[20px]" />
            </a>
            <a
              href="https://www.facebook.com/people/Referee-Vision/61577189406633/"
              target="_blank"
              rel="noopener noreferrer"
              title="Facebook"
              className="text-white hover:text-[var(--orange)] transition-colors flex items-center justify-center"
            >
              <Facebook className="w-[18px] h-[18px] md:w-[20px] md:h-[20px]" />
            </a>
            <a
              href="https://www.instagram.com/refereevision/"
              target="_blank"
              rel="noopener noreferrer"
              title="Instagram"
              className="text-white hover:text-[var(--orange)] transition-colors flex items-center justify-center"
            >
              <Instagram className="w-[18px] h-[18px] md:w-[20px] md:h-[20px]" />
            </a>
            <a
              href="https://x.com/refereevision/"
              target="_blank"
              rel="noopener noreferrer"
              title="X (Twitter)"
              className="text-white hover:text-[var(--orange)] transition-colors flex items-center justify-center"
            >
              <Twitter className="w-[18px] h-[18px] md:w-[20px] md:h-[20px]" />
            </a>
            <a
              href="https://whatsapp.com/channel/0029VbAWPOIKWEKtKbY7LR05"
              target="_blank"
              rel="noopener noreferrer"
              title="WhatsApp"
              className="text-white hover:text-[var(--orange)] transition-colors flex items-center justify-center"
            >
              <MessageCircle className="w-[18px] h-[18px] md:w-[20px] md:h-[20px]" />
            </a>
          </div>
        </div>
      </header>

      {/* NAVIGATION BAR */}
      <nav
        style={{ backgroundColor: 'var(--charcoal)', zIndex: 9998 }}
        className="sticky top-0 md:top-[100px] z-[9998] w-full border-t border-b border-[#2A2A2A] shadow-md"
      >
        {/* Mobile View: 2 equal rows that fit 100% of mobile screen width without overflow */}
        <div className="md:hidden w-full flex flex-col">
          {/* Row 1: ABOUT, REFEREES, BOOKS, VIDEOS */}
          <div className="grid grid-cols-4 w-full border-b border-[#2A2A2A]">
            {NAV_ROW_1.map((item) => {
              const active = isLinkActive(item);
              return (
                <Link
                  key={item}
                  to={getLinkPath(item)}
                  style={{
                    fontFamily: "'Barlow Condensed', sans-serif",
                    fontWeight: 700,
                    letterSpacing: '1px',
                  }}
                  className={`py-2 px-1 text-center flex items-center justify-center text-[12px] uppercase relative transition-colors ${
                    active
                      ? 'text-[var(--orange)] bg-[#252525]'
                      : 'text-white/85 hover:text-white hover:bg-[#222222]'
                  }`}
                >
                  <span className="truncate">{item}</span>
                  {active && (
                    <div
                      style={{ backgroundColor: 'var(--orange)' }}
                      className="absolute bottom-0 left-0 right-0 h-[2.5px]"
                    />
                  )}
                </Link>
              );
            })}
          </div>

          {/* Row 2: WEBINARS, COACHES, VAULT */}
          <div className="grid grid-cols-3 w-full">
            {NAV_ROW_2.map((item) => {
              const active = isLinkActive(item);
              return (
                <Link
                  key={item}
                  to={getLinkPath(item)}
                  style={{
                    fontFamily: "'Barlow Condensed', sans-serif",
                    fontWeight: 700,
                    letterSpacing: '1px',
                  }}
                  className={`py-2 px-1 text-center flex items-center justify-center text-[12px] uppercase relative transition-colors ${
                    active
                      ? 'text-[var(--orange)] bg-[#252525]'
                      : 'text-white/85 hover:text-white hover:bg-[#222222]'
                  }`}
                >
                  <span className="truncate">{item}</span>
                  {active && (
                    <div
                      style={{ backgroundColor: 'var(--orange)' }}
                      className="absolute bottom-0 left-0 right-0 h-[2.5px]"
                    />
                  )}
                </Link>
              );
            })}
          </div>
        </div>

        {/* Desktop View: Single horizontal row with gap */}
        <div className="hidden md:flex items-center h-[52px] px-8 gap-8">
          {ALL_NAV_LINKS.map((item) => {
            const active = isLinkActive(item);
            return (
              <Link
                key={item}
                to={getLinkPath(item)}
                onMouseEnter={() => setHoveredNav(item)}
                onMouseLeave={() => setHoveredNav(null)}
                style={{
                  fontFamily: "'Barlow Condensed', sans-serif",
                  fontWeight: 600,
                  letterSpacing: '2px',
                  display: 'inline-flex',
                  alignItems: 'center',
                  height: '100%',
                  padding: '0 4px',
                  color: active || hoveredNav === item ? 'var(--orange)' : '#FFFFFF',
                  transition: 'color 0.15s',
                }}
                className="text-[14px] uppercase relative pb-1 transition-colors whitespace-nowrap"
              >
                {item}
                {(active || hoveredNav === item) && (
                  <div
                    style={{ backgroundColor: 'var(--orange)' }}
                    className="absolute bottom-0 left-0 right-0 h-[3px]"
                  />
                )}
              </Link>
            );
          })}
        </div>
      </nav>
    </>
  );
}
