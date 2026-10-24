import { useState, useEffect } from 'react';
import { Youtube, Facebook, Instagram, Twitter, MessageCircle, Search } from 'lucide-react';
import { Link, useLocation } from 'react-router';
import logoImage from '../../imports/Screenshot_2026-06-03_at_14.17.43.png';
import SearchModal from './SearchModal';

const NAV_LINKS = ['ABOUT', 'REFEREES', 'BOOKS', 'VIDEOS', 'WEBINARS', 'COACHES', 'VAULT'];

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

  return (
    <>
      <SearchModal isOpen={isSearchOpen} onClose={() => setIsSearchOpen(false)} />

      <header style={{ backgroundColor: 'var(--black)', zIndex: 9999 }} className="sticky top-0 z-[9999] h-[64px] md:h-[100px] px-3 md:px-8 flex flex-row items-center justify-between">
        {/* Logo Block */}
        <Link to="/" className="flex items-center gap-2.5 md:gap-4 min-w-0">
          <img src={logoImage} alt="Basketball Logo" className="h-[40px] md:h-[65px] w-auto shrink-0" />
          <div className="flex flex-col text-left min-w-0">
            <h1 style={{ fontFamily: "'Barlow Condensed', sans-serif", fontWeight: 800, letterSpacing: '-0.5px' }}
              className="text-[20px] sm:text-[24px] md:text-[36px] text-white uppercase leading-none truncate">
              REFEREE VISION
            </h1>
            <p style={{ fontFamily: "'North Wave', sans-serif" }}
              className="text-[11px] sm:text-[12px] md:text-[15px] text-[#AAAAAA] truncate">
              One  Stop  To  "Rule"  Them  All
            </p>
          </div>
        </Link>

        {/* Right Section: SEARCH Button + Social Icons (desktop only) */}
        <div className="flex items-center gap-2.5 md:gap-5 shrink-0 ml-2">
          {/* SEARCH Button */}
          <button
            onClick={() => setIsSearchOpen(true)}
            className="flex items-center gap-1.5 px-2.5 py-1.5 md:px-4 md:py-1.5 rounded-[4px] border border-[var(--orange)] bg-transparent hover:bg-[var(--orange)] text-[var(--orange)] hover:text-white transition-all duration-200 cursor-pointer shadow-sm group"
            style={{
              fontFamily: "'Barlow Condensed', sans-serif",
              fontWeight: 700,
              letterSpacing: '1px',
              fontSize: '12px',
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

          {/* Social Icons (Desktop only - mobile already has them in footer) */}
          <div className="hidden md:flex items-center gap-5 pl-2 border-l border-[#262626]">
            <a href="https://www.youtube.com/@refereevision5209" target="_blank" rel="noopener noreferrer" title="YouTube">
              <Youtube className="w-[20px] h-[20px] text-white cursor-pointer hover:text-[var(--orange)] transition-colors" />
            </a>
            <a href="https://www.facebook.com/people/Referee-Vision/61577189406633/" target="_blank" rel="noopener noreferrer" title="Facebook">
              <Facebook className="w-[20px] h-[20px] text-white cursor-pointer hover:text-[var(--orange)] transition-colors" />
            </a>
            <a href="https://www.instagram.com/refereevision/" target="_blank" rel="noopener noreferrer" title="Instagram">
              <Instagram className="w-[20px] h-[20px] text-white cursor-pointer hover:text-[var(--orange)] transition-colors" />
            </a>
            <a href="https://x.com/refereevision/" target="_blank" rel="noopener noreferrer" title="X (Twitter)">
              <Twitter className="w-[20px] h-[20px] text-white cursor-pointer hover:text-[var(--orange)] transition-colors" />
            </a>
            <a href="https://whatsapp.com/channel/0029VbAWPOIKWEKtKbY7LR05" target="_blank" rel="noopener noreferrer" title="WhatsApp">
              <MessageCircle className="w-[20px] h-[20px] text-white cursor-pointer hover:text-[var(--orange)] transition-colors" />
            </a>
          </div>
        </div>
      </header>

      {/* NAVIGATION BAR */}
      <nav style={{ backgroundColor: 'var(--charcoal)', position: 'sticky', zIndex: 9998 }} className="h-auto md:h-[52px] sticky top-[64px] md:top-[100px] z-[9998] w-full overflow-x-auto [&::-webkit-scrollbar]:hidden [-ms-overflow-style:none] [scrollbar-width:none]">
        <div className="flex items-center h-[52px] md:h-full px-4 md:pl-8 gap-6 md:gap-8 min-w-max">
          {NAV_LINKS.map((item) => {
            const isReferees = item === 'REFEREES';
            const isBooks = item === 'BOOKS';
            const isVideos = item === 'VIDEOS';
            const isWebinars = item === 'WEBINARS';
            const isCoaches = item === 'COACHES';
            const isVault = item === 'VAULT';

            let isActive = false;
            let toPath = `/#${item.toLowerCase()}`;

            if (isReferees) {
              isActive = location.pathname === '/referees';
              toPath = '/referees';
            } else if (isBooks) {
              isActive = location.pathname === '/books';
              toPath = '/books';
            } else if (isVideos) {
              isActive = location.pathname === '/videos';
              toPath = '/videos';
            } else if (isWebinars) {
              isActive = location.pathname === '/webinars';
              toPath = '/webinars';
            } else if (isCoaches) {
              isActive = location.pathname === '/coaches';
              toPath = '/coaches';
            } else if (isVault) {
              isActive = location.pathname === '/vault';
              toPath = '/vault';
            } else {
              isActive = location.hash === `#${item.toLowerCase()}`;
            }

            const isVaultPage = false;

            return (
              <Link
                key={item}
                to={toPath}
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
                  color: isActive || hoveredNav === item ? 'var(--orange)' : '#FFFFFF',
                  transition: 'color 0.15s',
                }}
                className="text-[14px] uppercase relative pb-1 transition-colors whitespace-nowrap"
              >
                {item}
                {(isActive || hoveredNav === item) && (
                  <div style={{ backgroundColor: 'var(--orange)' }} className="absolute bottom-0 left-0 right-0 h-[3px]"></div>
                )}
              </Link>
            );
          })}
        </div>
      </nav>
    </>
  );
}
