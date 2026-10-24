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

      {/* TOP HEADER - Centered in Page */}
      <header
        style={{ backgroundColor: 'var(--black)' }}
        className="w-full px-5 md:px-12 pt-5 md:pt-7 pb-5 md:pb-6 flex flex-col justify-center items-center text-center"
      >
        {/* ROW 1: Logo + REFEREE VISION + Cursive Subtitle */}
        <Link to="/" className="flex items-center justify-center gap-3.5 md:gap-5 group">
          <img
            src={logoImage}
            alt="Referee Vision Logo"
            className="h-[52px] md:h-[78px] w-auto shrink-0 shadow-sm"
          />
          <div className="flex flex-col text-left">
            <h1
              style={{
                fontFamily: "'Barlow Condensed', sans-serif",
                fontWeight: 800,
                letterSpacing: '-0.5px',
              }}
              className="text-[28px] md:text-[46px] text-white uppercase leading-none font-black"
            >
              REFEREE VISION
            </h1>
            <p
              style={{ fontFamily: "'North Wave', cursive, sans-serif" }}
              className="text-[13px] md:text-[18px] text-[#888888] md:text-[#999999] tracking-wide mt-1 leading-none"
            >
              One  Stop  To  "Rule"  Them  All
            </p>
          </div>
        </Link>

        {/* ROW 2: [ 🔍 SEARCH ] + Divider + Social Icons (Centered) */}
        <div className="flex items-center justify-center gap-4 md:gap-6 mt-4 md:mt-5">
          {/* SEARCH Button */}
          <button
            onClick={() => setIsSearchOpen(true)}
            className="flex items-center gap-2 md:gap-2.5 px-4 md:px-6 py-1.5 md:py-2 rounded-[8px] md:rounded-[10px] border-2 border-[var(--orange)] bg-transparent hover:bg-[var(--orange)] text-[var(--orange)] hover:text-white transition-all duration-200 cursor-pointer shadow-sm group"
            title="Search site (Cmd+K)"
            aria-label="Search site"
          >
            <Search
              className="w-4 h-4 md:w-5 md:h-5 transition-transform group-hover:scale-110 shrink-0 text-[var(--orange)] group-hover:text-white"
              strokeWidth={2.5}
            />
            <span
              style={{
                fontFamily: "'Barlow Condensed', sans-serif",
                fontWeight: 800,
                letterSpacing: '1px',
              }}
              className="text-[13px] md:text-[16px] uppercase leading-none text-[var(--orange)] group-hover:text-white"
            >
              SEARCH
            </span>
          </button>

          {/* Vertical Divider */}
          <div className="h-6 md:h-7 w-[1px] bg-[#333333] shrink-0" />

          {/* Social Media Icons */}
          <div className="flex items-center gap-3.5 md:gap-6 shrink-0">
            <a
              href="https://www.youtube.com/@refereevision5209"
              target="_blank"
              rel="noopener noreferrer"
              title="YouTube"
              className="text-white hover:text-[var(--orange)] transition-colors flex items-center justify-center p-0.5"
            >
              <Youtube className="w-[20px] h-[20px] md:w-[24px] md:h-[24px]" />
            </a>
            <a
              href="https://www.facebook.com/people/Referee-Vision/61577189406633/"
              target="_blank"
              rel="noopener noreferrer"
              title="Facebook"
              className="text-white hover:text-[var(--orange)] transition-colors flex items-center justify-center p-0.5"
            >
              <Facebook className="w-[20px] h-[20px] md:w-[24px] md:h-[24px]" />
            </a>
            <a
              href="https://www.instagram.com/refereevision/"
              target="_blank"
              rel="noopener noreferrer"
              title="Instagram"
              className="text-white hover:text-[var(--orange)] transition-colors flex items-center justify-center p-0.5"
            >
              <Instagram className="w-[20px] h-[20px] md:w-[24px] md:h-[24px]" />
            </a>
            <a
              href="https://x.com/refereevision/"
              target="_blank"
              rel="noopener noreferrer"
              title="X (Twitter)"
              className="text-white hover:text-[var(--orange)] transition-colors flex items-center justify-center p-0.5"
            >
              <Twitter className="w-[20px] h-[20px] md:w-[24px] md:h-[24px]" />
            </a>
            <a
              href="https://whatsapp.com/channel/0029VbAWPOIKWEKtKbY7LR05"
              target="_blank"
              rel="noopener noreferrer"
              title="WhatsApp"
              className="text-white hover:text-[var(--orange)] transition-colors flex items-center justify-center p-0.5"
            >
              <MessageCircle className="w-[20px] h-[20px] md:w-[24px] md:h-[24px]" />
            </a>
          </div>
        </div>
      </header>

      {/* NAVIGATION BAR */}
      <nav
        style={{ backgroundColor: 'var(--charcoal)', zIndex: 40 }}
        className="sticky top-0 z-40 w-full border-t border-b border-[#2A2A2A] shadow-md"
      >
        {/* Mobile View: 2 equal rows fitting 100% mobile screen width */}
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

        {/* Desktop View: Single horizontal row centered */}
        <div className="hidden md:flex items-center justify-center h-[52px] px-8 md:px-12 gap-8">
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
