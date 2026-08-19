import { useState, useEffect } from "react";
import { createPortal } from "react-dom";

// ─── Design tokens (matches Videos.tsx T object) ────────────────────────────
const TV = {
  bg:       "var(--black)",
  orange:   "#E8651A",
  black:    "#000000",
  white:    "#FFFFFF",
  offWhite: "var(--off-white)",
  charcoal: "#1C1C1C",
  border:   "#2A2A2A",
  inactive: "#888888",
  hoverBg:  "rgba(232,101,26,0.12)",
};
const BARLOW = "'Barlow Condensed', sans-serif";

// ─── Types ────────────────────────────────────────────────────────────────────
type VaultTab =
  | "ASSIST MAGAZINE"
  | "MIC'D UP"
  | "TOUGH CALLS"
  | "QUIZ"
  | "RULEBOOKS"
  | "BOOKS"
  | "DOCUMENTARIES"
  | "ARTICLES"
  | "TOOLS";

const VAULT_TABS: VaultTab[] = [
  "ASSIST MAGAZINE",
  "MIC'D UP",
  "TOUGH CALLS",
  "QUIZ",
  "RULEBOOKS",
  "BOOKS",
  "DOCUMENTARIES",
  "ARTICLES",
  "TOOLS",
];

// ─── Mic'd Up data ────────────────────────────────────────────────────────────
const MIC_D_UP_ITEMS = [
  { title: "BCL REFEREE - ARIADNA CHUECA",                         link: "PLACEHOLDER_link" },
  { title: "BCL REFEREE - ANTONIO CONDE",                          link: "PLACEHOLDER_link" },
  { title: "BCL REFEREE - WOJCIECH LISZKA",                        link: "PLACEHOLDER_link" },
  { title: "BCL REFEREE - YOHAN ROSSO",                            link: "PLACEHOLDER_link" },
  { title: "BCL REFEREE - MANUEL MAZZONI",                         link: "PLACEHOLDER_link" },
  { title: "BCL REFEREE - PAULO MARQUES",                          link: "PLACEHOLDER_link" },
  { title: "REFEREES COMMUNICATION WITH COACHES - WORLD CUP 2023", link: "PLACEHOLDER_link" },
  { title: "REFEREES COMMUNICATION WITH PLAYERS - WORLD CUP 2023", link: "PLACEHOLDER_link" },
  { title: "REFEREE COMMUNICATION: EUROBASKET 2022",               link: "PLACEHOLDER_link" },
  { title: "BCL REFEREE - YOHAN ROSSO",                            link: "PLACEHOLDER_link" },
  { title: "BCL REFEREE - MANUEL MAZZONI",                         link: "PLACEHOLDER_link" },
  { title: "EUROLEAGUE FINAL FOUR",                                link: "PLACEHOLDER_link" },
  { title: "EUROLEAGUE WOMEN",                                     link: "PLACEHOLDER_link" },
  { title: "EUROLEAGUE: INSIDE THE GREEK DERBY",                   link: "PLACEHOLDER_link" },
  { title: "COLLEEN THOMPSON (MEC Women's Basketball Official)",   link: "PLACEHOLDER_link" },
  { title: "EUROLEAGUE: GO ON COURT WITH THE WHISTLE-BLOWERS",    link: "PLACEHOLDER_link" },
  { title: "CALLING THE SHOTS: THE ANNE PANTHER STORY",           link: "PLACEHOLDER_link" },
  { title: "LIFE OF A NBA REFEREE - MIKE CALLAHAN",               link: "PLACEHOLDER_link" },
  { title: "NBA REFEREES WIRED PLAYLIST",                         link: "PLACEHOLDER_link" },
  { title: "WHAT IT TAKES TO BE A NBA REFEREE - ZACH ZARBA",     link: "PLACEHOLDER_link" },
  { title: "BEHIND THE SCENES - ZACH ZARBA",                     link: "PLACEHOLDER_link" },
  { title: "GAME DAY WITH NBA REFEREES",                          link: "PLACEHOLDER_link" },
];

// ─── Tough Calls data ─────────────────────────────────────────────────────────
const TOUGH_CALLS_SEASONS = [
  "2016-17","2017-18","2018-19","2019-20","2020-21",
  "2021-22","2022-23","2023-24","2024-25","2025-26",
];

type MatchdayEntry = { label: string; link: string };
const TOUGH_CALLS_DATA: Record<string, MatchdayEntry[]> = {
  "2016-17": [
    { label: "MATCHDAY 6",           link: "PLACEHOLDER_link" },
    { label: "MATCHDAY 7",           link: "PLACEHOLDER_link" },
    { label: "MATCHDAY 8",           link: "PLACEHOLDER_link" },
    { label: "MATCHDAY 12",          link: "PLACEHOLDER_link" },
    { label: "MATCHDAY 13",          link: "PLACEHOLDER_link" },
    { label: "MATCHDAY 14",          link: "PLACEHOLDER_link" },
    { label: "PLAY-OFFS QUALIFIERS", link: "PLACEHOLDER_link" },
    { label: "PLAY-OFFS QUALIFIERS", link: "PLACEHOLDER_link" },
    { label: "ROUND OF 16",          link: "PLACEHOLDER_link" },
  ],
  "2017-18": [
    { label: "WEEK 1",               link: "PLACEHOLDER_link" },
    { label: "WEEK 2",               link: "PLACEHOLDER_link" },
    { label: "WEEK 3",               link: "PLACEHOLDER_link" },
    { label: "WEEK 4",               link: "PLACEHOLDER_link" },
    { label: "WEEK 6",               link: "PLACEHOLDER_link" },
    { label: "WEEK 7",               link: "PLACEHOLDER_link" },
    { label: "WEEK 8",               link: "PLACEHOLDER_link" },
    { label: "WEEK 9",               link: "PLACEHOLDER_link" },
    { label: "WEEK 10",              link: "PLACEHOLDER_link" },
    { label: "WEEK 11",              link: "PLACEHOLDER_link" },
    { label: "WEEK 12",              link: "PLACEHOLDER_link" },
    { label: "WEEK 13",              link: "PLACEHOLDER_link" },
    { label: "WEEK 14",              link: "PLACEHOLDER_link" },
    { label: "ROUND OF 16 LEG 1",    link: "PLACEHOLDER_link" },
    { label: "ROUND OF 16 LEG 2",    link: "PLACEHOLDER_link" },
    { label: "QUARTER FINAL LEG 1",  link: "PLACEHOLDER_link" },
    { label: "QUARTER FINAL LEG 2",  link: "PLACEHOLDER_link" },
  ],
  "2018-19": [
    { label: "WEEK 2",               link: "PLACEHOLDER_link" },
    { label: "WEEK 3",               link: "PLACEHOLDER_link" },
    { label: "WEEK 4",               link: "PLACEHOLDER_link" },
    { label: "WEEK 5",               link: "PLACEHOLDER_link" },
    { label: "WEEK 6",               link: "PLACEHOLDER_link" },
    { label: "WEEK 7",               link: "PLACEHOLDER_link" },
    { label: "WEEK 8",               link: "PLACEHOLDER_link" },
    { label: "WEEK 9",               link: "PLACEHOLDER_link" },
    { label: "WEEK 10",              link: "PLACEHOLDER_link" },
    { label: "WEEK 11",              link: "PLACEHOLDER_link" },
    { label: "WEEK 12",              link: "PLACEHOLDER_link" },
    { label: "WEEK 13",              link: "PLACEHOLDER_link" },
    { label: "ROUND OF 16 LEG 1",    link: "PLACEHOLDER_link" },
    { label: "ROUND OF 16 LEG 2",    link: "PLACEHOLDER_link" },
    { label: "QUARTER FINAL LEG 1",  link: "PLACEHOLDER_link" },
    { label: "QUARTER FINAL LEG 2",  link: "PLACEHOLDER_link" },
  ],
  "2019-20": [
    { label: "MATCHDAY 1",           link: "PLACEHOLDER_link" },
    { label: "MATCHDAY 2",           link: "PLACEHOLDER_link" },
    { label: "MATCHDAY 3",           link: "PLACEHOLDER_link" },
    { label: "MATCHDAY 4",           link: "PLACEHOLDER_link" },
    { label: "MATCHDAY 5",           link: "PLACEHOLDER_link" },
    { label: "MATCHDAY 6",           link: "PLACEHOLDER_link" },
    { label: "MATCHDAY 7",           link: "PLACEHOLDER_link" },
    { label: "MATCHDAY 8",           link: "PLACEHOLDER_link" },
    { label: "MATCHDAY 9",           link: "PLACEHOLDER_link" },
    { label: "MATCHDAY 10",          link: "PLACEHOLDER_link" },
    { label: "MATCHDAY 11",          link: "PLACEHOLDER_link" },
    { label: "MATCHDAY 12",          link: "PLACEHOLDER_link" },
    { label: "MATCHDAY 13",          link: "PLACEHOLDER_link" },
    { label: "MATCHDAY 14",          link: "PLACEHOLDER_link" },
    { label: "ROUND OF 16 GAME 1",   link: "PLACEHOLDER_link" },
    { label: "ROUND OF 16 GAME 2",   link: "PLACEHOLDER_link" },
  ],
  "2020-21": [
    { label: "MATCHDAY 1",           link: "PLACEHOLDER_link" },
    { label: "MATCHDAY 2",           link: "PLACEHOLDER_link" },
    { label: "MATCHDAY 3",           link: "PLACEHOLDER_link" },
    { label: "MATCHDAY 4",           link: "PLACEHOLDER_link" },
    { label: "MATCHDAY 5",           link: "PLACEHOLDER_link" },
    { label: "MATCHDAY 6",           link: "PLACEHOLDER_link" },
    { label: "MATCHDAY 7",           link: "PLACEHOLDER_link" },
    { label: "MATCHDAY 8",           link: "PLACEHOLDER_link" },
    { label: "MATCHDAY 9",           link: "PLACEHOLDER_link" },
    { label: "MATCHDAY 10",          link: "PLACEHOLDER_link" },
    { label: "MATCHDAY 11",          link: "PLACEHOLDER_link" },
    { label: "MATCHDAY 12",          link: "PLACEHOLDER_link" },
    { label: "PLAY-OFF GAMEDAY 1",   link: "PLACEHOLDER_link" },
    { label: "PLAY-OFF GAMEDAY 2",   link: "PLACEHOLDER_link" },
    { label: "PLAY-OFF GAMEDAY 3",   link: "PLACEHOLDER_link" },
    { label: "PLAY-OFF GAMEDAY 4",   link: "PLACEHOLDER_link" },
    { label: "PLAY-OFF GAMEDAY 5",   link: "PLACEHOLDER_link" },
    { label: "PLAY-OFF GAMEDAY 6",   link: "PLACEHOLDER_link" },
  ],
  "2021-22": [
    { label: "MATCHDAY 1",           link: "PLACEHOLDER_link" },
    { label: "MATCHDAY 2",           link: "PLACEHOLDER_link" },
    { label: "MATCHDAY 3",           link: "PLACEHOLDER_link" },
    { label: "MATCHDAY 4",           link: "PLACEHOLDER_link" },
    { label: "MATCHDAY 5",           link: "PLACEHOLDER_link" },
    { label: "MATCHDAY 6",           link: "PLACEHOLDER_link" },
    { label: "MATCHDAY 7",           link: "PLACEHOLDER_link" },
    { label: "MATCHDAY 8",           link: "PLACEHOLDER_link" },
    { label: "MATCHDAY 9",           link: "PLACEHOLDER_link" },
    { label: "MATCHDAY 10",          link: "PLACEHOLDER_link" },
    { label: "PLAY-INS WEEK 1",      link: "PLACEHOLDER_link" },
    { label: "PLAY-INS WEEK 2",      link: "PLACEHOLDER_link" },
    { label: "PLAY-INS WEEK 3",      link: "PLACEHOLDER_link" },
    { label: "ROUND OF 16 WEEK 1",   link: "PLACEHOLDER_link" },
    { label: "ROUND OF 16 WEEK 2",   link: "PLACEHOLDER_link" },
    { label: "ROUND OF 16 WEEK 3",   link: "PLACEHOLDER_link" },
    { label: "ROUND OF 16 WEEK 4",   link: "PLACEHOLDER_link" },
    { label: "ROUND OF 16 WEEK 5",   link: "PLACEHOLDER_link" },
    { label: "ROUND OF 16 WEEK 6",   link: "PLACEHOLDER_link" },
  ],
  "2022-23": [
    { label: "WEEK 1",                   link: "PLACEHOLDER_link" },
    { label: "WEEK 2",                   link: "PLACEHOLDER_link" },
    { label: "WEEK 3",                   link: "PLACEHOLDER_link" },
    { label: "WEEK 5",                   link: "PLACEHOLDER_link" },
    { label: "WEEK 7",                   link: "PLACEHOLDER_link" },
    { label: "WEEK 9",                   link: "PLACEHOLDER_link" },
    { label: "PLAY-INS WEEK 1",          link: "PLACEHOLDER_link" },
    { label: "PLAY-INS WEEK 3",          link: "PLACEHOLDER_link" },
    { label: "ROUND OF 16 WEEK 1",       link: "PLACEHOLDER_link" },
    { label: "ROUND OF 16 WEEK 2",       link: "PLACEHOLDER_link" },
    { label: "ROUND OF 16 WEEK 3 - PART 1", link: "PLACEHOLDER_link" },
    { label: "ROUND OF 16 WEEK 3 - PART 2", link: "PLACEHOLDER_link" },
    { label: "ROUND OF 16 WEEK 4",       link: "PLACEHOLDER_link" },
    { label: "ROUND OF 16 WEEK 5",       link: "PLACEHOLDER_link" },
    { label: "ROUND OF 16 WEEK 6",       link: "PLACEHOLDER_link" },
    { label: "QUARTERFINAL",             link: "PLACEHOLDER_link" },
  ],
  "2023-24": [
    { label: "WEEK 1",               link: "PLACEHOLDER_link" },
    { label: "WEEK 2",               link: "PLACEHOLDER_link" },
    { label: "WEEK 3",               link: "PLACEHOLDER_link" },
    { label: "WEEK 4",               link: "PLACEHOLDER_link" },
    { label: "WEEK 5",               link: "PLACEHOLDER_link" },
    { label: "WEEK 6",               link: "PLACEHOLDER_link" },
    { label: "WEEK 7",               link: "PLACEHOLDER_link" },
    { label: "WEEK 9",               link: "PLACEHOLDER_link" },
    { label: "WEEK 10",              link: "PLACEHOLDER_link" },
    { label: "PLAY-INS GAME 1",      link: "PLACEHOLDER_link" },
    { label: "PLAY-INS GAME 2",      link: "PLACEHOLDER_link" },
    { label: "PLAY-INS GAME 3",      link: "PLACEHOLDER_link" },
    { label: "ROUND OF 16 WEEK 1",   link: "PLACEHOLDER_link" },
    { label: "ROUND OF 16 WEEK 2",   link: "PLACEHOLDER_link" },
    { label: "ROUND OF 16 WEEK 3",   link: "PLACEHOLDER_link" },
    { label: "ROUND OF 16 WEEK 4",   link: "PLACEHOLDER_link" },
    { label: "ROUND OF 16 WEEK 5",   link: "PLACEHOLDER_link" },
    { label: "ROUND OF 16 WEEK 6",   link: "PLACEHOLDER_link" },
    { label: "ROUND OF 16 WEEK 8",   link: "PLACEHOLDER_link" },
    { label: "QUARTERFINAL",         link: "PLACEHOLDER_link" },
  ],
  "2024-25": [
    { label: "WEEK 1",               link: "PLACEHOLDER_link" },
    { label: "WEEK 2",               link: "PLACEHOLDER_link" },
    { label: "WEEK 3",               link: "PLACEHOLDER_link" },
    { label: "WEEK 5",               link: "PLACEHOLDER_link" },
    { label: "WEEK 6",               link: "PLACEHOLDER_link" },
    { label: "WEEK 7",               link: "PLACEHOLDER_link" },
    { label: "WEEK 8",               link: "PLACEHOLDER_link" },
    { label: "WEEK 9",               link: "PLACEHOLDER_link" },
    { label: "WEEK 10",              link: "PLACEHOLDER_link" },
    { label: "PLAY-INS WEEK 1",      link: "PLACEHOLDER_link" },
    { label: "PLAY-INS WEEK 2",      link: "PLACEHOLDER_link" },
    { label: "PLAY-INS WEEK 3",      link: "PLACEHOLDER_link" },
    { label: "ROUND OF 16 WEEK 1",   link: "PLACEHOLDER_link" },
    { label: "ROUND OF 16 WEEK 2",   link: "PLACEHOLDER_link" },
    { label: "ROUND OF 16 WEEK 3",   link: "PLACEHOLDER_link" },
    { label: "ROUND OF 16 WEEK 4",   link: "PLACEHOLDER_link" },
    { label: "ROUND OF 16 WEEK 5",   link: "PLACEHOLDER_link" },
    { label: "ROUND OF 16 WEEK 6",   link: "PLACEHOLDER_link" },
    { label: "QUARTERFINAL GAME 1",  link: "PLACEHOLDER_link" },
    { label: "QUARTERFINAL GAME 2",  link: "PLACEHOLDER_link" },
    { label: "FINAL FOUR",           link: "PLACEHOLDER_link" },
  ],
  "2025-26": [
    { label: "WEEK 1",               link: "PLACEHOLDER_link" },
    { label: "WEEK 2",               link: "PLACEHOLDER_link" },
    { label: "WEEK 3",               link: "PLACEHOLDER_link" },
    { label: "WEEK 4",               link: "PLACEHOLDER_link" },
    { label: "WEEK 5",               link: "PLACEHOLDER_link" },
    { label: "WEEK 6",               link: "PLACEHOLDER_link" },
    { label: "WEEK 7",               link: "PLACEHOLDER_link" },
    { label: "WEEK 8",               link: "PLACEHOLDER_link" },
    { label: "WEEK 9",               link: "PLACEHOLDER_link" },
    { label: "PLAY-INS GAMES 1 & 2", link: "PLACEHOLDER_link" },
    { label: "ROUND OF 16 WEEK 1",   link: "PLACEHOLDER_link" },
    { label: "ROUND OF 16 WEEK 2",   link: "PLACEHOLDER_link" },
    { label: "ROUND OF 16 WEEK 3",   link: "PLACEHOLDER_link" },
    { label: "ROUND OF 16 WEEK 4",   link: "PLACEHOLDER_link" },
    { label: "ROUND OF 16 WEEK 5",   link: "PLACEHOLDER_link" },
    { label: "ROUND OF 16 WEEK 6",   link: "PLACEHOLDER_link" },
  ],
};

// ─── Stripe colours cycling per issue ─────────────────────────────────────────
const STRIPE_COLORS = ["#0056B3","#FFC107","#DC3545","#28A745","#6C757D","#E8651A","#9B59B6","#1ABC9C"];

// ─── Shared hover hook ────────────────────────────────────────────────────────
function useHover() {
  const [on, set] = useState(false);
  return { on, onMouseEnter: () => set(true), onMouseLeave: () => set(false) };
}

// ─── Video modal ──────────────────────────────────────────────────────────────
function VaultModal({ url, onClose }: { url: string; onClose: () => void }) {
  useEffect(() => {
    const h = (e: KeyboardEvent) => { if (e.key === "Escape") onClose(); };
    window.addEventListener("keydown", h);
    return () => window.removeEventListener("keydown", h);
  }, [onClose]);

  const toEmbed = (u: string) => {
    const m1 = u.match(/youtu\.be\/([\w-]+)/);
    if (m1) return `https://www.youtube.com/embed/${m1[1]}?autoplay=1`;
    const m2 = u.match(/[?&]v=([\w-]+)/);
    if (m2) return `https://www.youtube.com/embed/${m2[1]}?autoplay=1`;
    return u;
  };

  return createPortal(
    <div
      onClick={onClose}
      style={{ position: "fixed", inset: 0, background: "rgba(0,0,0,0.92)", zIndex: 10000, display: "flex", alignItems: "center", justifyContent: "center" }}
    >
      <div onClick={e => e.stopPropagation()} style={{ width: "min(860px,90vw)", background: "#000", borderRadius: 4, overflow: "hidden" }}>
        <iframe
          src={toEmbed(url)}
          width="100%"
          style={{ aspectRatio: "16/9", display: "block", border: "none" }}
          allow="autoplay; encrypted-media"
          allowFullScreen
        />
      </div>
    </div>,
    document.body
  );
}

// ─── Section badge (matches Videos SectionBadge) ─────────────────────────────
function VaultBadge({ label }: { label: string }) {
  return (
    <div style={{ display: "flex", justifyContent: "center", marginBottom: 32 }}>
      <div style={{ background: TV.orange, color: TV.offWhite, fontFamily: BARLOW, fontWeight: 800, fontSize: 22, letterSpacing: "3px", textTransform: "uppercase", padding: "10px 40px", borderRadius: 0 }}>
        {label}
      </div>
    </div>
  );
}

// ─── Assist card ──────────────────────────────────────────────────────────────
function AssistCard({ issueNumber }: { issueNumber: number }) {
  const h    = useHover();
  const fmt  = String(issueNumber).padStart(2, "0");
  const thumb = `https://www.refereevision.com/Referees/${fmt}.jpg`;
  const pdf   = `https://www.refereevision.com/Referees/${fmt}_${issueNumber === 1 ? "Ref" : "ref"}.pdf`;
  const stripe = STRIPE_COLORS[(issueNumber - 1) % STRIPE_COLORS.length];

  return (
    <a
      href={pdf}
      target="_blank"
      rel="noopener noreferrer"
      onMouseEnter={h.onMouseEnter}
      onMouseLeave={h.onMouseLeave}
      style={{
        aspectRatio: "3 / 4",
        background: TV.charcoal,
        border: h.on ? `2px solid ${TV.orange}` : `1.5px solid ${TV.border}`,
        display: "flex",
        overflow: "hidden",
        cursor: "pointer",
        transition: "border-color 0.2s, transform 0.22s, box-shadow 0.22s",
        transform: h.on ? "scale(1.09)" : "scale(1)",
        boxShadow: h.on ? "0 8px 28px rgba(232,101,26,0.25)" : "none",
        textDecoration: "none",
        zIndex: h.on ? 10 : 1,
        position: "relative",
      }}
    >
      <div style={{ width: 20, background: stripe, display: "flex", alignItems: "center", justifyContent: "center", flexShrink: 0 }}>
        <div style={{ transform: "rotate(-90deg)", fontFamily: BARLOW, fontWeight: 800, fontSize: 8, color: TV.white, letterSpacing: "1.5px", whiteSpace: "nowrap" }}>
          ASSIST{fmt}
        </div>
      </div>
      <div style={{ flex: 1, overflow: "hidden" }}>
        <img
          src={thumb}
          alt={`Assist ${issueNumber}`}
          style={{ width: "100%", height: "100%", objectFit: "cover", opacity: h.on ? 1 : 0.82, transition: "opacity 0.2s", display: "block" }}
          onError={e => { (e.target as HTMLImageElement).style.display = "none"; }}
        />
      </div>
    </a>
  );
}

function WorldCongressCard() {
  const h = useHover();
  return (
    <a
      href="PLACEHOLDER_wc2010_pdf"
      target="_blank"
      rel="noopener noreferrer"
      onMouseEnter={h.onMouseEnter}
      onMouseLeave={h.onMouseLeave}
      style={{
        aspectRatio: "3 / 4",
        background: "#1A1A1A",
        border: h.on ? `2px solid ${TV.orange}` : `1.5px solid ${TV.border}`,
        display: "flex",
        flexDirection: "column",
        overflow: "hidden",
        cursor: "pointer",
        transition: "border-color 0.2s, transform 0.22s",
        transform: h.on ? "scale(1.09)" : "scale(1)",
        textDecoration: "none",
        position: "relative",
        zIndex: h.on ? 10 : 1,
      }}
    >
      <img
        src="PLACEHOLDER_wc2010_thumb.jpg"
        alt="World Congress 2010"
        style={{ width: "100%", height: "100%", objectFit: "cover" }}
        onError={e => {
          const el = e.target as HTMLImageElement;
          el.style.display = "none";
          const parent = el.parentElement;
          if (parent && !parent.querySelector(".wc-label")) {
            const div = document.createElement("div");
            div.className = "wc-label";
            div.style.cssText = "display:flex;flex-direction:column;align-items:center;justify-content:center;height:100%;padding:8px;text-align:center;";
            div.innerHTML = '<span style="font-family:\'Barlow Condensed\';font-size:10px;font-weight:800;color:#FFE600;letter-spacing:1px;text-transform:uppercase;line-height:1.4">ASSIST<br>MAGAZINE<br>WORLD<br>CONGRESS<br>2010</span>';
            parent.appendChild(div);
          }
        }}
      />
    </a>
  );
}

// ─── ASSIST MAGAZINE ──────────────────────────────────────────────────────────
function AssistMagazineContent() {
  const issues = [...Array.from({ length: 32 }, (_, i) => i + 1), 34,35,36,37,38,39,40,41,42,43,44];
  return (
    <div>
      <VaultBadge label="ASSIST MAGAZINE" />
      <div style={{ display: "grid", gridTemplateColumns: "repeat(auto-fill, minmax(90px, 1fr))", gap: 14, padding: "0 8px 48px" }}>
        {issues.map(n => <AssistCard key={n} issueNumber={n} />)}
        <WorldCongressCard />
      </div>
    </div>
  );
}

// ─── WATCH button ─────────────────────────────────────────────────────────────
function WatchBtn({ onClick }: { onClick: () => void }) {
  const h = useHover();
  return (
    <button
      onMouseEnter={h.onMouseEnter}
      onMouseLeave={h.onMouseLeave}
      onClick={onClick}
      style={{
        background: h.on ? "#C5561A" : TV.orange,
        color: TV.white,
        fontFamily: BARLOW,
        fontWeight: 800,
        fontSize: 13,
        letterSpacing: "1.5px",
        border: "none",
        borderRadius: 3,
        padding: "6px 14px",
        cursor: "pointer",
        display: "inline-flex",
        alignItems: "center",
        gap: 5,
        whiteSpace: "nowrap",
        transition: "background 0.15s, transform 0.15s",
        transform: h.on ? "scale(1.04)" : "scale(1)",
        flexShrink: 0,
      }}
    >
      WATCH 📹
    </button>
  );
}

// ─── MIC'D UP ─────────────────────────────────────────────────────────────────
function MicDUpContent() {
  const [activeVideo, setActiveVideo] = useState<string | null>(null);
  return (
    <div>
      {activeVideo && <VaultModal url={activeVideo} onClose={() => setActiveVideo(null)} />}
      <VaultBadge label="MIC'D UP" />
      <div style={{ display: "flex", flexDirection: "column" }}>
        {MIC_D_UP_ITEMS.map((item, i) => (
          <div
            key={i}
            style={{
              display: "flex",
              alignItems: "center",
              justifyContent: "space-between",
              padding: "14px 24px",
              borderBottom: `1px solid rgba(0,0,0,0.1)`,
              background: i % 2 === 0 ? "transparent" : "rgba(0,0,0,0.03)",
              gap: 16,
            }}
          >
            <span style={{ fontFamily: BARLOW, fontWeight: 700, fontSize: 15, color: TV.orange, letterSpacing: "0.8px", textTransform: "uppercase" }}>
              {item.title}
            </span>
            <WatchBtn onClick={() => {
              if (!item.link.startsWith("PLACEHOLDER")) setActiveVideo(item.link);
            }} />
          </div>
        ))}
      </div>
    </div>
  );
}

// ─── Matchday button ──────────────────────────────────────────────────────────
function MatchdayBtn({ label, onClick }: { label: string; onClick: () => void }) {
  const h = useHover();
  return (
    <button
      onMouseEnter={h.onMouseEnter}
      onMouseLeave={h.onMouseLeave}
      onClick={onClick}
      style={{
        background: h.on ? "#C5561A" : TV.orange,
        color: TV.white,
        fontFamily: BARLOW,
        fontWeight: 800,
        fontSize: 14,
        letterSpacing: "1.5px",
        border: "none",
        borderRadius: 3,
        padding: "10px 22px",
        cursor: "pointer",
        textTransform: "uppercase",
        transition: "background 0.15s, transform 0.15s",
        transform: h.on ? "scale(1.04)" : "scale(1)",
      }}
    >
      {label}
    </button>
  );
}

// ─── TOUGH CALLS ──────────────────────────────────────────────────────────────
function ToughCallsContent() {
  const [season, setSeason] = useState("2016-17");
  const [activeVideo, setActiveVideo] = useState<string | null>(null);
  const matchdays = TOUGH_CALLS_DATA[season] ?? [];

  return (
    <div>
      {activeVideo && <VaultModal url={activeVideo} onClose={() => setActiveVideo(null)} />}
      <VaultBadge label={`${season} SEASON`} />
      <div style={{ display: "flex", minHeight: 320 }}>
        {/* Season list */}
        <div style={{ width: 140, flexShrink: 0, background: TV.charcoal, borderRight: `1px solid rgba(0,0,0,0.12)` }}>
          {TOUGH_CALLS_SEASONS.map(s => (
            <button
              key={s}
              onClick={() => setSeason(s)}
              style={{
                display: "block", width: "100%", textAlign: "left",
                padding: "11px 16px",
                background: s === season ? TV.orange : "transparent",
                color: s === season ? TV.white : TV.inactive,
                fontFamily: BARLOW,
                fontWeight: s === season ? 800 : 600,
                fontSize: 14,
                letterSpacing: "0.5px",
                border: "none",
                borderBottom: `1px solid rgba(255,255,255,0.06)`,
                cursor: "pointer",
                transition: "background 0.15s, color 0.15s",
              }}
            >
              {s}
            </button>
          ))}
        </div>
        {/* Matchday grid */}
        <div style={{ flex: 1, padding: "28px 36px" }}>
          <div style={{ display: "flex", gap: 14, flexWrap: "wrap" }}>
            {matchdays.map((m, i) => (
              <MatchdayBtn
                key={i}
                label={m.label}
                onClick={() => {
                  if (!m.link.startsWith("PLACEHOLDER")) setActiveVideo(m.link);
                }}
              />
            ))}
          </div>
        </div>
      </div>
    </div>
  );
}

// ─── QUIZ DATA & CONTENT ──────────────────────────────────────────────────────
const QUIZ_ITEMS = [
  { title: "ARTICLE 1: Definitions", link: "PLACEHOLDER_link" },
  { title: "ARTICLE 2: Playing Court - Part I", link: "PLACEHOLDER_link" },
  { title: "ARTICLE 2: Playing Court - Part II", link: "PLACEHOLDER_link" },
  { title: "ARTICLE 3: Equipment - Part I", link: "PLACEHOLDER_link" },
  { title: "ARTICLE 3: Equipment - Part II", link: "PLACEHOLDER_link" },
  { title: "ARTICLE 4: Teams - Part I", link: "PLACEHOLDER_link" },
  { title: "ARTICLE 4: Teams - Part II", link: "PLACEHOLDER_link" },
  { title: "ARTICLE 5: Players:Injury and assistance", link: "PLACEHOLDER_link" },
  { title: "ARTICLE 6 & 7: Captain, Head Coach and First Assistant Coach: Duties and Powers - Part I", link: "PLACEHOLDER_link" },
  { title: "ARTICLE 6 & 7: Captain, Head Coach and First Assistant Coach: Duties and Powers - Part II", link: "PLACEHOLDER_link" },
  { title: "ARTICLE 8: Playing time, tied score and overtime - Part I", link: "PLACEHOLDER_link" },
  { title: "ARTICLE 8: Playing time, tied score and overtime - Part II", link: "PLACEHOLDER_link" },
  { title: "ARTICLE 9: Beginning and end of a quarter, overtime or the game", link: "PLACEHOLDER_link" },
  { title: "ARTICLE 10 & 11: Status of the ball & Location of a player and a referee - Part I", link: "PLACEHOLDER_link" },
  { title: "ARTICLE 10 & 11: Status of the ball & Location of a player and a referee - Part II", link: "PLACEHOLDER_link" },
  { title: "ARTICLE 12: Jump ball and Alternating Possession - Part I", link: "PLACEHOLDER_link" },
  { title: "ARTICLE 12: Jump ball and Alternating Possession - Part II", link: "PLACEHOLDER_link" },
  { title: "ARTICLE 13 & 14: How the ball is played and Control of the ball", link: "PLACEHOLDER_link" },
  { title: "ARTICLE 15 & 16: Player in the act of shooting & Goal:When made and its value - Part I", link: "PLACEHOLDER_link" },
  { title: "ARTICLE 15 & 16: Player in the act of shooting & Goal:When made and its value - Part II", link: "PLACEHOLDER_link" },
  { title: "ARTICLE 17: Throw-in - Part I", link: "PLACEHOLDER_link" },
  { title: "ARTICLE 17: Throw-in - Part II", link: "PLACEHOLDER_link" },
  { title: "ARTICLE 17: Throw-in - Part III", link: "PLACEHOLDER_link" },
  { title: "ARTICLE 18: Time-out - Part I", link: "PLACEHOLDER_link" },
  { title: "ARTICLE 18: Time-out - Part II", link: "PLACEHOLDER_link" },
  { title: "ARTICLE 19: Substitution - Part I", link: "PLACEHOLDER_link" },
  { title: "ARTICLE 19: Substitution - Part II", link: "PLACEHOLDER_link" },
  { title: "ARTICLE 20 & 21: Game lost by forfeit & Game lost by default", link: "PLACEHOLDER_link" },
  { title: "ARTICLE 22 & 23: Violations & Players out-of-boundsa and ball out-of-bounds", link: "PLACEHOLDER_link" },
  { title: "ARTICLE 24: Dribbling - Part I", link: "PLACEHOLDER_link" },
  { title: "ARTICLE 24: Dribbling - Part II", link: "PLACEHOLDER_link" },
  { title: "ARTICLE 25: Travelling - Part I", link: "PLACEHOLDER_link" },
  { title: "ARTICLE 25: Travelling - Part II", link: "PLACEHOLDER_link" },
  { title: "ARTICLE 26 & 27: 3 seconds & Closely guarded player - Part I", link: "PLACEHOLDER_link" },
  { title: "ARTICLE 26 & 27: 3 seconds & Closely guarded player - Part II", link: "PLACEHOLDER_link" },
  { title: "ARTICLE 28: 8 Seconds - Part I", link: "PLACEHOLDER_link" },
  { title: "ARTICLE 28: 8 Seconds - Part II", link: "PLACEHOLDER_link" },
  { title: "ARTICLE 29: 24 Seconds - Part I", link: "PLACEHOLDER_link" },
  { title: "ARTICLE 29: 24 Seconds - Part II", link: "PLACEHOLDER_link" },
  { title: "ARTICLE 29: 24 Seconds - Part III", link: "PLACEHOLDER_link" },
  { title: "ARTICLE 30: Ball returned to backcourt - Part I", link: "PLACEHOLDER_link" },
  { title: "ARTICLE 30: Ball returned to backcourt - Part II", link: "PLACEHOLDER_link" },
  { title: "ARTICLE 31: Goaltending and Interference - Part I", link: "PLACEHOLDER_link" },
  { title: "ARTICLE 31: Goaltending and Interference - Part II", link: "PLACEHOLDER_link" },
  { title: "ARTICLE 32 & 33: Fouls & Contact:General Principles - Part I", link: "PLACEHOLDER_link" },
  { title: "ARTICLE 32 & 33: Fouls & Contact:General Principles - Part II", link: "PLACEHOLDER_link" },
  { title: "ARTICLE 32 & 33: Fouls & Contact:General Principles - Part III", link: "PLACEHOLDER_link" },
  { title: "ARTICLE 34: Personal Foul", link: "PLACEHOLDER_link" },
  { title: "ARTICLE 35: Double Foul", link: "PLACEHOLDER_link" },
  { title: "ARTICLE 36: Technical Foul - Part I", link: "PLACEHOLDER_link" },
  { title: "ARTICLE 36: Technical Foul - Part II", link: "PLACEHOLDER_link" },
  { title: "ARTICLE 36: Technical Foul - Part III", link: "PLACEHOLDER_link" },
  { title: "ARTICLE 37: Unsportsmanlike Foul", link: "PLACEHOLDER_link" },
  { title: "ARTICLE 38: Disqualifying Foul", link: "PLACEHOLDER_link" },
  { title: "ARTICLE 39: Fighting - Part I", link: "PLACEHOLDER_link" },
  { title: "ARTICLE 39: Fighting - Part II", link: "PLACEHOLDER_link" },
  { title: "ARTICLE 40 & 41: Five fouls by a player & Team Fouls:Penalty", link: "PLACEHOLDER_link" },
  { title: "ARTICLE 42: Special Situations", link: "PLACEHOLDER_link" },
  { title: "ARTICLE 43: Free Throws", link: "PLACEHOLDER_link" },
  { title: "ARTICLE 44: Correctable Errors - Part I", link: "PLACEHOLDER_link" },
  { title: "ARTICLE 44: Correctable Errors - Part II", link: "PLACEHOLDER_link" },
  { title: "ARTICLE 45: Referees,Table Officials and Commissioner", link: "PLACEHOLDER_link" },
  { title: "ARTICLE 46: Crew Chief: Duties and Powers", link: "PLACEHOLDER_link" },
  { title: "ARTICLE 47: Referees: Duties and Powers", link: "PLACEHOLDER_link" },
  { title: "ARTICLE 48: Scorer and Assistant Scorer: Duties", link: "PLACEHOLDER_link" },
  { title: "ARTICLE 49: Timer: Duties", link: "PLACEHOLDER_link" },
  { title: "ARTICLE 50: Shot Clock Operator: Duties", link: "PLACEHOLDER_link" },
  { title: "B: The Scoresheet - Part I", link: "PLACEHOLDER_link" },
  { title: "B: The Scoresheet - Part II", link: "PLACEHOLDER_link" },
  { title: "C: Protest procedure", link: "PLACEHOLDER_link" },
  { title: "D: Classification of Teams", link: "PLACEHOLDER_link" },
  { title: "E: Media time-outs", link: "PLACEHOLDER_link" },
  { title: "F: Instant Replay System - Part I", link: "PLACEHOLDER_link" },
  { title: "F: Instant Replay System - Part II", link: "PLACEHOLDER_link" },
  { title: "F: Instant Replay System - Part III", link: "PLACEHOLDER_link" },
];

function QuizContent() {
  return (
    <div>
      <VaultBadge label="QUIZ" />
      <div style={{ display: "flex", flexDirection: "column" }}>
        {QUIZ_ITEMS.map((item, i) => (
          <div
            key={i}
            style={{
              display: "flex",
              alignItems: "center",
              justifyContent: "space-between",
              padding: "14px 24px",
              borderBottom: `1px solid rgba(0,0,0,0.1)`,
              background: i % 2 === 0 ? "transparent" : "rgba(0,0,0,0.03)",
              gap: 16,
            }}
          >
            <span style={{ fontFamily: BARLOW, fontWeight: 700, fontSize: 15, color: TV.orange, letterSpacing: "0.8px", textTransform: "uppercase" }}>
              {item.title}
            </span>
            <a
              href={item.link}
              target="_blank"
              rel="noopener noreferrer"
              style={{
                background: TV.orange,
                color: TV.white,
                fontFamily: BARLOW,
                fontWeight: 800,
                fontSize: 13,
                letterSpacing: "1.5px",
                border: "none",
                borderRadius: 3,
                padding: "6px 14px",
                textDecoration: "none",
                display: "inline-flex",
                alignItems: "center",
                whiteSpace: "nowrap",
              }}
            >
              TAKE QUIZ
            </a>
          </div>
        ))}
      </div>
    </div>
  );
}

// ─── RULEBOOKS DATA & CONTENT ──────────────────────────────────────────────────
type RulebookSubTab = "RULES" | "INTERPRETATIONS" | "TABLE OFFICIALS" | "EQUIPMENT" | "3X3" | "MECHANICS" | "MISCELLANEOUS";
const RULEBOOK_SUBTABS: RulebookSubTab[] = ["RULES", "INTERPRETATIONS", "TABLE OFFICIALS", "EQUIPMENT", "3X3", "MECHANICS", "MISCELLANEOUS"];

const RULEBOOKS_DATA: Record<RulebookSubTab, { title: string; link: string }[]> = {
  "RULES": [
    { title: "1ST OCTOBER 2024 (Version 1.0a)", link: "PLACEHOLDER_link" },
    { title: "1ST SUMMARY OF RULE CHANGES - OCTOBER 2024 (Version 2.0)", link: "PLACEHOLDER_link" },
    { title: "IRS MANUAL - FEBRUARY 2026 (Version 10.0)", link: "PLACEHOLDER_link" },
    { title: "IRS MANUAL - FEBRUARY 2025 (Version 9.0)", link: "PLACEHOLDER_link" },
    { title: "IRS MANUAL - SEPTEMBER 2022 (Version 7.1)", link: "PLACEHOLDER_link" },
    { title: "1ST JULY 2023 (Version 1.2)", link: "PLACEHOLDER_link" },
    { title: "1ST OCTOBER 2022 (Version 1.1)", link: "PLACEHOLDER_link" },
    { title: "1ST OCTOBER 2022 (Version 1.0)", link: "PLACEHOLDER_link" },
    { title: "SUMMARY OF CHANGES - OCTOBER 2022 (Version 1.0)", link: "PLACEHOLDER_link" },
    { title: "IRS MANUAL - JUNE 2021 (Version 7.0)", link: "PLACEHOLDER_link" },
    { title: "1ST OCTOBER 2020 (Version 1.0a)", link: "PLACEHOLDER_link" },
    { title: "SUMMARY OF CHANGES - OCTOBER 2020 (Version 3.0)", link: "PLACEHOLDER_link" },
    { title: "IRS MANUAL - AUGUST 2018 (Version 3.0)", link: "PLACEHOLDER_link" },
    { title: "1ST OCTOBER 2018", link: "PLACEHOLDER_link" },
    { title: "SUMMARY OF CHANGES (OCTOBER 2018)", link: "PLACEHOLDER_link" },
    { title: "1ST OCTOBER 2017", link: "PLACEHOLDER_link" },
    { title: "SUMMARY OF CHANGES (OCTOBER 2017)", link: "PLACEHOLDER_link" },
    { title: "SUMMARY OF CHANGES 2014", link: "PLACEHOLDER_link" },
    { title: "1ST OCTOBER 2014", link: "PLACEHOLDER_link" },
    { title: "1ST OCTOBER 2012", link: "PLACEHOLDER_link" },
    { title: "1ST OCTOBER 2010", link: "PLACEHOLDER_link" },
    { title: "1ST OCTOBER 2008", link: "PLACEHOLDER_link" },
    { title: "1ST OCTOBER 2006", link: "PLACEHOLDER_link" },
    { title: "1ST SEPTEMBER 2004", link: "PLACEHOLDER_link" },
    { title: "2005 - MINI BASKETBALL RULES", link: "PLACEHOLDER_link" },
  ],
  "INTERPRETATIONS": [
    { title: "1ST JULY 2024 (Version 4.1)", link: "PLACEHOLDER_link" },
    { title: "1ST MAY 2024 (Version 4.0)", link: "PLACEHOLDER_link" },
    { title: "1ST JUNE 2023 (Version 3.0)", link: "PLACEHOLDER_link" },
    { title: "1ST DECEMBER 2022 (Version 2.0a)", link: "PLACEHOLDER_link" },
    { title: "1ST NOVEMBER 2022 (Version 2.0)", link: "PLACEHOLDER_link" },
    { title: "1ST JANUARY 2022 (Version 4.1)", link: "PLACEHOLDER_link" },
    { title: "1ST JANUARY 2022 (Version 4.0)", link: "PLACEHOLDER_link" },
    { title: "1ST JUNE 2021 (Version 3.0)", link: "PLACEHOLDER_link" },
    { title: "1ST JANUARY 2021 (Version 2.0)", link: "PLACEHOLDER_link" },
    { title: "1ST OCTOBER 2020 (Version 1.0)", link: "PLACEHOLDER_link" },
    { title: "31ST JANUARY 2019 (Version 1.1)", link: "PLACEHOLDER_link" },
    { title: "1ST OCTOBER 2018 (Version 1.0)", link: "PLACEHOLDER_link" },
    { title: "1ST FEBRUARY 2018 (Version 2.0)", link: "PLACEHOLDER_link" },
    { title: "1ST OCTOBER 2017 (Version 1.0)", link: "PLACEHOLDER_link" },
    { title: "1ST MARCH 2017", link: "PLACEHOLDER_link" },
    { title: "1ST NOVEMBER 2015", link: "PLACEHOLDER_link" },
    { title: "1ST FEBRUARY 2015", link: "PLACEHOLDER_link" },
    { title: "1ST OCTOBER 2012", link: "PLACEHOLDER_link" },
    { title: "1ST OCTOBER 2010", link: "PLACEHOLDER_link" },
    { title: "1ST OCTOBER 2008", link: "PLACEHOLDER_link" },
    { title: "1ST OCTOBER 2006", link: "PLACEHOLDER_link" },
    { title: "1ST OCTOBER 2004", link: "PLACEHOLDER_link" },
  ],
  "TABLE OFFICIALS": [
    { title: "FEBRUARY 2024 (Version 6.0a)", link: "PLACEHOLDER_link" },
    { title: "FEBRUARY 2024 (Version 6.0)", link: "PLACEHOLDER_link" },
    { title: "OCTOBER 2022 (Version 5.0)", link: "PLACEHOLDER_link" },
    { title: "AUGUST 2021 (Version 4.2)", link: "PLACEHOLDER_link" },
    { title: "JUNE 2021 (Version 3.2)", link: "PLACEHOLDER_link" },
    { title: "AUGUST 2020 (Version 3.0)", link: "PLACEHOLDER_link" },
    { title: "MAY 2020 (Version 3.2)", link: "PLACEHOLDER_link" },
    { title: "FEBRUARY 2020 (Version 3.1)", link: "PLACEHOLDER_link" },
    { title: "1ST FEBRUARY 2019 (Version 3.0)", link: "PLACEHOLDER_link" },
    { title: "1ST FEBRUARY 2018 (Version 2.0)", link: "PLACEHOLDER_link" },
    { title: "1ST JUNE 2017", link: "PLACEHOLDER_link" },
    { title: "FIBA TABLE OFFICIALS CERTIFICATION PROGRAMME MANUAL", link: "PLACEHOLDER_link" },
  ],
  "EQUIPMENT": [
    { title: "1ST OCTOBER 2024", link: "PLACEHOLDER_link" },
    { title: "1ST OCTOBER 2022", link: "PLACEHOLDER_link" },
    { title: "1ST OCTOBER 2020", link: "PLACEHOLDER_link" },
    { title: "1ST OCTOBER 2018", link: "PLACEHOLDER_link" },
    { title: "1ST OCTOBER 2017", link: "PLACEHOLDER_link" },
    { title: "1ST OCTOBER 2014", link: "PLACEHOLDER_link" },
    { title: "1ST OCTOBER 2012", link: "PLACEHOLDER_link" },
    { title: "1ST OCTOBER 2010", link: "PLACEHOLDER_link" },
    { title: "1ST OCTOBER 2008", link: "PLACEHOLDER_link" },
    { title: "1ST OCTOBER 2006", link: "PLACEHOLDER_link" },
    { title: "1ST SEPTEMBER 2004", link: "PLACEHOLDER_link" },
  ],
  "3X3": [
    { title: "2025 - INTERPRETATIONS", link: "PLACEHOLDER_link" },
    { title: "2024 - RULES", link: "PLACEHOLDER_link" },
    { title: "2024 - INTERPRETATIONS", link: "PLACEHOLDER_link" },
    { title: "2023 - INTERPRETATIONS", link: "PLACEHOLDER_link" },
    { title: "2021 - RULES", link: "PLACEHOLDER_link" },
    { title: "2020 - INTERPRETATIONS", link: "PLACEHOLDER_link" },
    { title: "AUGUST 2019 - RULES", link: "PLACEHOLDER_link" },
    { title: "2019 - RULES SUMMARY", link: "PLACEHOLDER_link" },
    { title: "2019 - STATISTICIAN'S MANUAL", link: "PLACEHOLDER_link" },
    { title: "2019 - RULES", link: "PLACEHOLDER_link" },
    { title: "2018 - INTERPRETATIONS", link: "PLACEHOLDER_link" },
    { title: "2017 - INTERPRETATIONS", link: "PLACEHOLDER_link" },
    { title: "2016 - RULES", link: "PLACEHOLDER_link" },
    { title: "2016 - SCORESHEET", link: "PLACEHOLDER_link" },
  ],
  "MECHANICS": [
    { title: "2022 - 3PO BASIC Version 2.0", link: "PLACEHOLDER_link" },
    { title: "2022 - INDIVIDUAL OFFICIATING TECHNIQUES Version 2.0", link: "PLACEHOLDER_link" },
    { title: "2022 - 3PO ADVANCED Version 1.2", link: "PLACEHOLDER_link" },
    { title: "2022 - BASIC OFFICIATING TERMINOLOGY Version 2.0", link: "PLACEHOLDER_link" },
    { title: "2022 - INDIVIDUAL OFFICIATING TECHNIQUES Version 1.2", link: "PLACEHOLDER_link" },
    { title: "2020 - BASIC OFFICIATING TERMINOLOGY Version 1.0", link: "PLACEHOLDER_link" },
    { title: "2020 - 3PO BASIC Version 1.0", link: "PLACEHOLDER_link" },
    { title: "2020 - 3PO ADVANCED Version 1.1", link: "PLACEHOLDER_link" },
    { title: "2020 - IOT", link: "PLACEHOLDER_link" },
    { title: "2020 - 3PO ADVANCED Version 1.0", link: "PLACEHOLDER_link" },
    { title: "2018 - 3PO BASICS", link: "PLACEHOLDER_link" },
    { title: "2018 - IOT BASICS", link: "PLACEHOLDER_link" },
    { title: "2010 - TWO PERSON OFFICIATING", link: "PLACEHOLDER_link" },
    { title: "2010 - THREE PERSON OFFICIATING", link: "PLACEHOLDER_link" },
    { title: "2008 - TWO PERSON OFFICIATING", link: "PLACEHOLDER_link" },
    { title: "2008 - THREE PERSON OFFICIATING", link: "PLACEHOLDER_link" },
    { title: "2006 - TWO PERSON OFFICIATING", link: "PLACEHOLDER_link" },
    { title: "2006 - THREE PERSON OFFICIATING", link: "PLACEHOLDER_link" },
  ],
  "MISCELLANEOUS": [
    { title: "FIBA MANUAL FOR COMMISSIONERS - TABLE OFFICIALS WORK - V2.0 (November 2022)", link: "PLACEHOLDER_link" },
    { title: "FIBA UNIFORMS & ACCESSORIES GUIDELINES (January 2021)", link: "PLACEHOLDER_link" },
    { title: "MINI BASKETBALL SCORESHEET (Valid till 1st October 2022)", link: "PLACEHOLDER_link" },
    { title: "5X5 SCORESHEET (Valid as of 1st October 2020)", link: "PLACEHOLDER_link" },
    { title: "FIBA BASIC FITNESS TEST (Version 3.0)", link: "PLACEHOLDER_link" },
    { title: "DIGITAL SCORESHEET USER MANUAL", link: "PLACEHOLDER_link" },
    { title: "2018 - FIBA STATISTICIAN'S MANUAL", link: "PLACEHOLDER_link" },
    { title: "2016 - FIBA STATISTICIAN'S MANUAL", link: "PLACEHOLDER_link" },
    { title: "2010 - FIBA COURT DIAGRAM", link: "PLACEHOLDER_link" },
  ],
};

function RulebooksContent() {
  const [subTab, setSubTab] = useState<RulebookSubTab>("RULES");
  const items = RULEBOOKS_DATA[subTab] ?? [];

  return (
    <div>
      <VaultBadge label="RULEBOOKS" />

      {/* Subtabs horizontal bar */}
      <div style={{ display: "flex", borderBottom: `2px solid ${TV.orange}`, marginBottom: 28, background: TV.charcoal }}>
        {RULEBOOK_SUBTABS.map(tab => {
          const active = tab === subTab;
          return (
            <button
              key={tab}
              onClick={() => setSubTab(tab)}
              style={{
                flex: 1,
                padding: "12px 6px",
                background: active ? TV.orange : "transparent",
                color: active ? TV.white : TV.inactive,
                fontFamily: BARLOW,
                fontWeight: 700,
                fontSize: 13,
                letterSpacing: "1px",
                textTransform: "uppercase",
                border: "none",
                cursor: "pointer",
                transition: "background 0.15s, color 0.15s",
                textAlign: "center",
              }}
            >
              {tab}
            </button>
          );
        })}
      </div>

      <VaultBadge label={subTab} />

      {/* Item list */}
      <div style={{ display: "flex", flexDirection: "column" }}>
        {items.length === 0 ? (
          <div style={{ padding: "40px", textAlign: "center", color: TV.inactive, fontFamily: BARLOW, fontSize: 16 }}>
            NO RULEBOOKS AVAILABLE IN THIS CATEGORY YET
          </div>
        ) : (
          items.map((item, i) => (
            <div
              key={i}
              style={{
                display: "flex",
                alignItems: "center",
                justifyContent: "space-between",
                padding: "14px 24px",
                borderBottom: `1px solid rgba(0,0,0,0.1)`,
                background: i % 2 === 0 ? "transparent" : "rgba(0,0,0,0.03)",
                gap: 16,
              }}
            >
              <span style={{ fontFamily: BARLOW, fontWeight: 700, fontSize: 15, color: TV.orange, letterSpacing: "0.8px", textTransform: "uppercase" }}>
                {item.title}
              </span>
              <a
                href={item.link}
                target="_blank"
                rel="noopener noreferrer"
                style={{
                  background: TV.orange,
                  color: TV.white,
                  fontFamily: BARLOW,
                  fontWeight: 800,
                  fontSize: 13,
                  letterSpacing: "1.5px",
                  border: "none",
                  borderRadius: 3,
                  padding: "6px 14px",
                  textDecoration: "none",
                  display: "inline-flex",
                  alignItems: "center",
                  gap: 5,
                  whiteSpace: "nowrap",
                }}
              >
                📥 DOWNLOAD
              </a>
            </div>
          ))
        )}
      </div>
    </div>
  );
}

// ─── BOOKS DATA & CONTENT ──────────────────────────────────────────────────────
const BOOKS_ITEMS = [
  "SOCIAL MEDIA GUIDELINES FOR BASKETBALL REFEREES",
  "FIBA RECRUITMENT, RETENTION AND EDUCATION OF REFEREES",
  "EXERCISES TO KNOW THE BASIC COURT POSITIONS",
  "COACH - REFEREE RELATIONSHIPS",
  "CHECK-IN CHECK-OUT",
  "2019 - REPORTING SWITCHES",
  "2018 - FRIP LEVEL 1 REFEREEING",
  "2017 - FAKE A FOUL",
  "2017 - TRAVELLING",
  "2017 - UNSPORTSMANLIKE FOUL",
  "2017 - FRIP LEVEL 1 GENERAL",
  "2017 - FRIP LEVEL 1 TEACHING AND LEARNING",
  "2017 - FRIP LEVEL 1 BASKETBALL KNOWLEDGE",
  "2017 - FRIP LEVEL 1 REFEREEING",
  "2016 - 3PO BASIC PART I",
  "2016 - 3PO BASIC PART II",
  "2016 - 3PO BASIC PART III",
  "ONE FIBA GLOBAL REFEREEING STRUCTURE - PROMOTING EXCELLENCE",
  "2015 - PHYSICAL PERFORMANCE AND TRAINING OF BASKETBALL REFEREES",
  "2015 - INDIVIDUAL OFFICIATING TECHNIQUES",
  "2015 - DEVELOPING A LEARNING ENVIRONMENT",
  "2015 - TUTOR CONTINUOUS PROFESSIONAL DEVELOPMENT",
  "MANUAL FOR BASKETBALL REFEREES' PHYSICAL TRAINING",
  "2015 - 3PO BASIC PART I",
  "2015 - 3PO BASIC PART II",
  "2015 - 3PO BASIC PART III",
  "2015 - 3PO ADVANCED",
  "2015 - ERIC FIBA SCOUTING CONCEPT",
  "2015 - COMMUNICATION PART I",
  "2015 - COMMUNICATION PART II",
  "2015 - STRESS MANAGEMENT PART I",
  "2015 - STRESS MANAGEMENT PART II",
  "2015 - GAME KNOWLEDGE (PICK N ROLL)",
  "2014 - LEAD REFEREE",
  "2014 - LOW POST PLAY",
];

function BooksContent() {
  return (
    <div>
      <VaultBadge label="BOOKS" />
      <div style={{ display: "flex", flexDirection: "column" }}>
        {BOOKS_ITEMS.map((item, i) => (
          <div
            key={i}
            style={{
              display: "flex",
              alignItems: "center",
              justifyContent: "space-between",
              padding: "14px 24px",
              borderBottom: `1px solid rgba(0,0,0,0.1)`,
              background: i % 2 === 0 ? "transparent" : "rgba(0,0,0,0.03)",
              gap: 16,
            }}
          >
            <span style={{ fontFamily: BARLOW, fontWeight: 700, fontSize: 15, color: TV.orange, letterSpacing: "0.8px", textTransform: "uppercase" }}>
              {item}
            </span>
            <a
              href="PLACEHOLDER_link"
              target="_blank"
              rel="noopener noreferrer"
              style={{
                background: TV.orange,
                color: TV.white,
                fontFamily: BARLOW,
                fontWeight: 800,
                fontSize: 13,
                letterSpacing: "1.5px",
                border: "none",
                borderRadius: 3,
                padding: "6px 14px",
                textDecoration: "none",
                display: "inline-flex",
                alignItems: "center",
                gap: 5,
                whiteSpace: "nowrap",
              }}
            >
              📥 DOWNLOAD
            </a>
          </div>
        ))}
      </div>
    </div>
  );
}

// ─── DOCUMENTARIES CONTENT ────────────────────────────────────────────────────
function DocumentariesContent() {
  const [activeVideo, setActiveVideo] = useState<string | null>(null);
  const docs = Array.from({ length: 44 });

  return (
    <div>
      {activeVideo && <VaultModal url={activeVideo} onClose={() => setActiveVideo(null)} />}
      <VaultBadge label="DOCUMENTARIES" />
      <div style={{ display: "grid", gridTemplateColumns: "repeat(auto-fill, minmax(130px, 1fr))", gap: 16, paddingBottom: 48 }}>
        {docs.map((_, i) => {
          const h = useHover();
          return (
            <div
              key={i}
              onMouseEnter={h.onMouseEnter}
              onMouseLeave={h.onMouseLeave}
              onClick={() => setActiveVideo(`PLACEHOLDER_doc_link_${i + 1}`)}
              style={{
                aspectRatio: "16 / 10",
                background: TV.charcoal,
                border: h.on ? `2px solid ${TV.orange}` : `1.5px solid ${TV.border}`,
                borderRadius: 4,
                overflow: "hidden",
                cursor: "pointer",
                position: "relative",
                transition: "transform 0.2s, border-color 0.2s",
                transform: h.on ? "scale(1.05)" : "scale(1)",
              }}
            >
              <img
                src={`PLACEHOLDER_doc_thumb_${i + 1}.jpg`}
                alt={`Documentary ${i + 1}`}
                style={{ width: "100%", height: "100%", objectFit: "cover" }}
                onError={e => {
                  const el = e.target as HTMLImageElement;
                  el.style.display = "none";
                  const parent = el.parentElement;
                  if (parent && !parent.querySelector(".doc-placeholder")) {
                    const div = document.createElement("div");
                    div.className = "doc-placeholder";
                    div.style.cssText = "display:flex;align-items:center;justify-content:center;height:100%;color:#888888;font-size:24px;";
                    div.innerHTML = "🎬";
                    parent.appendChild(div);
                  }
                }}
              />
            </div>
          );
        })}
      </div>
    </div>
  );
}

// ─── ARTICLES DATA & CONTENT ──────────────────────────────────────────────────
const ARTICLES_ITEMS = [
  "PRASANNA JAYASANAKAR - HOOPISTANI INDIAN BASKETBALL HALL OF FAME",
  "SAJJAN SINGH CHEEMA: HOOPISTANI INDIAN BASKETBALL HALL OF FAME",
  "PARVEZ IRANI: HOOPISTANI INDIAN BASKETBALL HALL OF FAME",
  "RADHEY SHYAM: HOOPISTANI INDIAN BASKETBALL HALL OF FAME",
  "SNEHEL BENDKE: HOOPISTANI INDIAN BASKETBALL HALL OF FAME",
  "INDIAN BASKETBALL PROSPECT KHUSHI DONGRE SIGNED TO ASA COLLEGE-MIAMI OF THE NJCAA",
  "OM PRAKASH SR.: HOOPISTANI INDIAN BASKETBALL HALL OF FAME",
  "SHAHID QURESHI - HOOPISTANI INDIAN BASKETBALL HALL OF FAME",
  "SHIBA MAGGON - HOOPISTANI INDIAN BASKETBALL HALL OF FAME",
  "ANIL KUMAR PUNJ - HOOPISTANI INDIAN BASKETBALL HALL OF FAME",
  "APARNA GHOSH - HOOPISTANI INDIAN BASKETBALL HALL OF FAME",
  "INDIA'S SRISHTI SUREN WILL BE TAKING HER TALENTS TO CANADA TO PLAY FOR THE UNIVERSITY OF WINNIPEG",
  "RAM KUMAR: HOOPISTANI INDIAN BASKETBALL HALL OF FAME",
  "MANMOHAN SINGH: HOOPISTANI INDIAN BASKETBALL HALL OF FAME",
  "PRASHANTI SINGH: HOOPISTANI INDIAN BASKETBALL HALL OF FAME",
  "HARI DUTT KAPRI: HOOPISTANI INDIAN BASKETBALL HALL OF FAME",
  "INDIA'S JUNIOR GUARD VAISHNAVI YADAV COMMITS TO PENSACOLA STATE COLLEGE OF NJCAA DIVISION 1",
  "GURDIAL SINGH: HOOPISTANI INDIAN BASKETBALL HALL OF FAME",
  "SUMAN SHARMA: HOOPISTANI INDIAN BASKETBALL HALL OF FAME",
  "KHUSHI RAM: HOOPISTANI INDIAN BASKETBALL HALL OF FAME",
  "RAJESH PATEL: HOOPISTANI INDIAN BASKETBALL HALL OF FAME",
  "SANKARAN SUBRAMANIAN - HOOPISTANI INDIAN BASKETBALL HALL OF FAME",
  "GEETHU ANNA RAHUL - HOOPISTANI INDIAN BASKETBALL HALL OF FAME",
  "SARBJIT SINGH - HOOPISTANI INDIAN BASKETBALL HALL OF FAME",
  "ABBAS MOONTASIR: HOOPISTANI INDIAN BASKETBALL HALL OF FAME",
  "PRESENTING... THE HOOPISTANI INDIAN BASKETBALL HALL OF FAME",
  "VETERAN COACH VESELIN MATIC NAMED HEAD COACH OF INDIA'S MEN'S BASKETBALL TEAM",
  "PRASHANTI SINGH BECOMES THE FIRST BASKETBALL PLAYER TO RECEIVE THE PRESTIGIOUS PADMA SHRI AWARD",
  "INDIA'S BASKETBALL CAPTAIN JEENA SKARIA SIGNS WITH RINGWOOD HAWKS OF AUSTRALIA'S \"BIG V\" LEAGUE",
  "SANJANA RAMESH JOINS NORTHERN ARIZONA UNIVERSITY TO BECOME ONLY THE SECOND INDIAN WOMAN IN NCAA D1 BASKETBALL",
  "KHELO INDIA SELECTS 40 YOUNG BASKETBALL PLAYERS FOR TALENT DEVELOPMENT SCHOLARSHIP",
  "3BL TEAM DELHI HOOPERS TO REPRESENT INDIA AT FIBA 3X3 WORLD TOUR MASTERS IN JAPAN",
  "INDIAN PROSPECTS PRINCEPAL SINGH, AMAAN SANDHU, AND AASHAY VERMA ATTENDED NBA GLOBAL CAMP IN ITALY",
  "AMJYOT SINGH AND JEENA SCARIA HONOURED AT #TOISA2018 BASKETBALL AWARDS",
  "8 WINNERS OF ACG-NBA JUMP PROGRAMME SET TO JOIN NBA ACADEMY INDIA",
  "BFI PLANS A 3X3 BASKETBALL INDIA TOUR; BANS 3X3 PLAYERS OF OPPOSING LEAGUE IN 5X5 EVENTS AND VICE VERSA",
  "NBA, FIBA, AND THE BFI TO HOST SECOND-EVER BASKETBALL WITHOUT BORDERS ASIA CAMP IN INDIA",
  "RAJESH PATEL, THE MOST-DECORATED BASKETBALL COACH IN INDIA, PASSES AWAY AT 62",
  "3BL - FIRST-EVER INDIAN PRO 3X3 BASKETBALL LEAGUE TO BEGIN IN JUNE",
  "HOUSE OF HOOPS: HOW FIVE SISTERS FROM VARANASI MADE INDIAN BASKETBALL A FAMILY BUSINESS",
  "NATIONAL KHELO INDIA SCHOOL GAMES (KISG) -- INCLUDING BASKETBALL -- TO BEGIN IN NEW DELHI ON WEDNESDAY",
  "UNIVERSITY OF CALICUT COMPLETE THREE-PEAT AT 2018 ALL INDIA INTER UNIVERSITY WOMEN'S BASKETBALL CHAMPIONSHIP IN CHENNAI",
  "BASKETBALL FEDERATION OF INDIA PRESIDENT K. GOVINDRAJ APPOINTED AS MEMBER OF FIBA COMPETITIONS COMMISSION",
  "BASKETBALL FEDERATION OF INDIA K. GOVINDRAJ ELECTED AS INDIAN OLYMPIC ASSOCIATION'S VICE PRESIDENT",
  "INDIAN BASKETBALL STRUGGLES TO RISE IN FIBA RANKINGS IN 2017",
  "NBA AND DREAM11 LAUNCH DAILY FANTASY BASKETBALL GAME IN INDIA",
  "ZORAN VISIC ASSIGNED AS COACH OF INDIA'S MEN'S BASKETBALL TEAM FOR FIBA WORLD CUP QUALIFIERS - PROBABLES AND SCHEDULE",
  "12 BASKETBALL STARS FROM UBA LEAGUE IN INDIA HEAD TO USA FOR 3RD ANNUAL PRO CAMP",
  "SHORT OF NBA OPPORTUNITIES, BASKETBALL TRAIL-BLAZER SATNAM SINGH RETURNS TO INDIA",
  "INDIA'S AMJYOT SINGH AND INDIAN-AMERICAN GOKUL NATESAN BOTH SELECTED LATE IN 2017 NBA G-LEAGUE DRAFT",
  "LT. COL. MAKKOLATH RAJAN, LEGENDARY FORMER INDIAN BASKETBALL COACH, PASSES AWAY AT 83",
  "PRASHANTI SINGH JOINS THE VERY SHORT LIST OF WOMEN'S BASKETBALL PLAYERS WITH AN ARJUNA AWARD",
  "THE SUBRAMANIAN SCHOOL OF PUNJABI BASKETBALL EXCELLENCE: AN UPDATE",
  "INDIAN BASKETBALL ROLE MODELS SATNAM SINGH AND TJ SAHI TOLD THE YOUTH THERE IS NO HOPE IN THE COUNTRY. WERE THEY WRONG?",
  "PRASHANTI SINGH RECEIVES THE PRESTIGIOUS ARJUNA AWARD FOR BASKETBALL",
  "INDIAN BASKETBALL STAR AMRITPAL SINGH HAS BEEN SIGNED BY NBL'S SYDNEY KINGS",
  "INDIAN BASKETBALL LEGENDS UNITE TO LAUNCH BASKETBALL INDIA PLAYERS ASSOCIATION; ANNOUNCE NATIONWIDE INTER-SCHOOL LEAGUE",
  "VISHESH BHRIGUVANSHI BECOMES FIRST INDIAN SIGNED TO AUSTRALIAN BASKETBALL LEAGUE NBL",
  "IOA FINALLY GRANTS AFFILIATION TO THE \"NEW\" BASKETBALL FEDERATION OF INDIA",
  "SPORTS MINISTRY GRANTS RECOGNITION FOR BASKETBALL AMONG INDIA'S NATIONAL SPORTS FEDERATIONS",
  "INDIA NEEDS TO MAKE HOME SUPPORT COUNT FOR THE FIBA ASIA WOMEN'S CUP 2017",
  "BASKETBALL AND 'HALF GIRLFRIEND': AN UNNECESSARILY IN-DEPTH ANALYSIS",
  "SERBIAN ZORAN VISIC APPOINTED HEAD COACH OF INDIA'S WOMEN'S BASKETBALL TEAM",
  "INDIAN STAR KAVITA AKULA GETS FULL COLLEGE SCHOLARSHIP TO PLAY D1 BASKETBALL FOR GRAND CANYON UNIVERSITY",
  "INDIA COULD BE A BIG BENEFICIARY OF 3x3 BASKETBALL IN THE OLYMPICS",
  "THE COMPANY OF GIANTS",
  "BASKETBALL WITHOUT BARRIERS — FIBA TO FINALLY ALLOW HEADGEAR LIKE TURBAN AND HIJAB IN THE INTERNATIONAL GAME",
  "FOUR INDIAN BASKETBALL SUPERSTARS INVITED TO AUSTRALIAN NBL DRAFT COMBINE IN MELBOURNE",
  "DIARY ALLEGEDLY BELONGING TO BFI PRESIDENT K GOVINDRAJ DETAILS PAYOFFS OF HUNDREDS OF CRORES",
  "TWO INDIAN YOUNGSTERS IN NBA ALL STAR WEEKEND'S BASKETBALL WITHOUT BORDERS GLOBAL CAMP ROSTERS",
  "FIBA BOARD RECOMMENDS CHANGE IN \"NO HEADGEAR\" POLICY WHICH AFFECTED INDIAN BASKETBALL PLAYERS",
  "INDIA INTERNATIONALS AMRITPAL SINGH, YADWINDER SINGH, AND AMJYOT SINGH TO PLAY IN MIZORAM SUPER LEAGUE THIS SEASON",
  "INDIAN BASKETBALL'S SINGH SISTERS HONOURED WITH RANI LAKSHMI BAI AWARD IN LUCKNOW",
  "BILLION TO ONE",
  "PAATHSHALA ON THE COURT",
  "LET HER PLAY",
  "SATNAM SINGH DOCUMENTARY SERIES \"#THEGRIND\" TO BE LAUNCHED BY BALL DON'T STOP TODAY",
  "INDIAN BASKETBALL PLAYER PALPREET SINGH (22) DRAFTED TO THE NBA D-LEAGUE BY THE LONG ISLAND NETS",
  "INDIA INTERNATIONALS VISHESH BHRIGUVANSHI AND RIKIN PETHANI ARE PLAYING PROFESSIONAL BASKETBALL IN MALDIVES",
  "OLYMPIC DREAMS",
  "FIVE DECADES OF KERALA BASKETBALL VETERANS COME TOGETHER FOR REBOUND 2016 IN KOCHI",
  "INDIAN OFFICIAL NARESH ANEJA NOMINATED BY FIBA FOR RIO OLYMPICS BASKETBALL EVENT",
  "VASU KULKARNI, INDIA-RAISED SOFTWARE ENTREPRENEUR BRINGING A CHANGE TO BASKETBALL ANALYTICS",
  "DANAPAL VEERASAMY PONNIAH SUCCESSFULLY QUALIFIES TO BECOME INDIA'S 3RD FIBA COMMISSIONER",
  "TJ SAHI: 'AIR INDIA' STILL TAKING FLIGHT",
  "VIDEO: TJ SAHI DUNKS OVER A MUMBAI TAXI",
  "JAYASANKAR MENON: A HOOPS ODYSSEY",
  "AKANKSHA SINGH: SMALL WONDER",
  "YADWINDER SINGH: INDIAN BASKETBALL'S ENERGY BAR",
  "SOZHASINGARAYER ROBINSON — THE FORGOTTEN GOAT OF INDIAN BASKETBALL",
  "TO HELL AND BACK FOR CAGER ROBINSON",
  "SOZHASINGARAYER ROBINSON - HOOPISTANI INDIAN BASKETBALL HALL OF FAME",
  "A CV SUNNY TAKE ON INDIAN BASKETBALL",
  "CV SUNNY - FORMER INDIA NATIONAL CAPTAIN - LAUNCHES BASKETBALL ACADEMY IN CHENNAI",
  "PRASANNA KUMARI AND JAYASANKAR MENON: INDIAN BASKETBALL'S FIRST COUPLE",
  "JAYASANKAR MENON: HOOPISTANI INDIAN BASKETBALL HALL OF FAME",
  "HANUMAN SINGH RATHORE - HOOPISTANI INDIAN BASKETBALL HALL OF FAME",
  "AJMER SINGH CHOPRA - HOOPISTANI INDIAN BASKETBALL HALL OF FAME",
  "TRIDEEP RAI: A DISCOURSE IN DISILLUSION",
  "VISHESH BHRIGUVANSHI: STRIVING FOR SUCCESS",
  "FIBA 3X3: A BOON OR A CURSE FOR HOOPS?",
  "FARCEKETBALL - INDIAN BASKETBALL'S ROTTEN CORE",
  "HOW TO SUPPRESS YOUR SUPERSTARS - 101",
  "BFI: IT WASN'T ME",
  "DIVYA SINGH: GOOD GIRL GONE BASKETBALL",
  "BASKETBALL AT GUNPOINT: THE HARSH REALITIES OF CORRUPTION IN INDIAN BASKETBALL",
  "INDIAN BASKETBALL: THE CORPORATE TAKEOVER",
  "MASTAN LEAGUE: INDIA'S FIRST PROFESSIONAL BASKETBALL LEAGUE",
  "ATANU BANERJEE - THE FIRST INDIAN REFEREE TO OFFICIATE THE FINAL OF A WORLD CHAMPIONSHIP",
  "ADDICTED TO THE GAME: VISHESH BHRIGUVANSHI",
  "SATNAM SINGH: LARGER THAN LIFE",
  "AFTER OFFICIATING THE ASIAN GAMES FINAL, REFEREE RAMESH DURAIRAJU SETS HIS SIGHTS ON THE OLYMPICS",
  "INDIA'S FIRST BASKETBALL MOVIE TO STAR PRASHANTI AND AKANKSHA SINGH",
  "ANITHA P. WON'T BACK DOWN",
  "17 INDIAN REFEREES CURRENTLY HOLD THE FIBA LICENSE",
  "INDIAN WOMEN'S BASKETBALL: DREAM TEAM",
  "INDIAN MEN'S BASKETBALL: DREAM TEAM",
  "GIANT EXPECTATIONS: SATNAM SINGH BHAMARA",
  "ARJUN SINGH: POINT PERFECT",
  "FIBA RULES LEANING THE NBA WAY",
  "GEETHU ANNA JOSE - \"EVERY TIME I ENTER THE COURT, I WANT TO PLAY THE BEST GAME OF MY LIFE\"",
  "FEDERATION-LEAGUE BASKETBALL DRAMA: BFI WON'T ALLOW UBA PARTICIPANTS TO REPRESENT INDIA IN NATIONAL / INTERNATIONAL TEAMS",
  "BASKETBALL TAKES PUNJABI YOUNGSTER PRINCE PAL SINGH FROM HUMBLE BEGINNINGS TO A $75,000 SCHOLARSHIP TO TRAIN IN USA",
  "JEPPIAAR INSTITUTE OF TECHNOLOGY (CHENNAI) TO SEND BASKETBALL CONTINGENT TO USA FOR IMG ACADEMY CAMP",
  "DRIBBLE ACADEMY HELPS VILLAGE GIRL EARN SCHOLARSHIP IN NOIDA'S SHIV NADAR SCHOOL THROUGH BASKETBALL",
  "SUPREME COURTS: GANGYI – BASKETBALL NIRVANA IN DHARAMSHALA",
  "GOVERNMENT OF INDIA DOESN'T RECOGNIZE BASKETBALL AMONG NATIONAL SPORTS FEDERATIONS FOR 2016",
  "21-YEAR-OLD PALPREET SINGH BRAR WINS INDIA'S ACG-NBA JUMP PROGRAMME TO SECURE A NBA D-LEAGUE TRYOUT",
  "BFI-IOA SPAT: FIBA DE-RECOGNIZES BASKETBALL AT SOUTH ASIAN GAMES, TELLS TEAMS NOT TO PARTICIPATE",
  "INDIA'S COMBINED FIBA RANKING DROPS TO 52 AT THE END OF 2015",
  "RANBIR CHOPRA - INDEPENDENT INDIA'S FIRST BASKETBALL CAPTAIN - PASSES AWAY",
  "BUDDING UP BASKETBALL PLAYER COMMITS SUICIDE AFTER SUFFERING HARASSMENT",
  "SUPREME COURTS: NO SLEEP IN NAGPADA",
  "INDIAN BASKETBALL FAMILY RAISES RS. 2.75 LAKHS FOR PLAYER SANDEEP SINGH'S BRAIN TUMOUR SURGERY",
  "BASKETBALL FEDERATION OF INDIA PLEDGES FINANCIAL SUPPORT TO THE FAMILY OF SATNAM SINGH, FIRST INDIAN DRAFTED TO THE NBA",
  "AMJYOT'S ASCENT",
  "SATNAM SINGH AND INDIA FEATURED IN NBA'S NEW AD CAMPAIGN!",
  "FIBA URGES INDIAN SPORTS MINISTRY TO GRANT IMMEDIATE RECOGNITION OF BFI TO TEAM GOVINDRAJ",
  "KING SINGH",
  "AFTER GEETHU",
  "GOVINDRAJ FACTION SENDS LETTER STATING THEIR CLAIM TO THE BASKETBALL FEDERATION OF INDIA (BFI)",
  "BASKETBALL FEDERATION OF INDIA TO IMPLEMENT INSTANT REPLAY SYSTEM",
  "MILESTONES IN INDIAN BASKETBALL",
  "INDIAN BASKETBALL LEGEND - THE LATE KHUSHI RAM - IMMORTALIZED WITH STATUE IN HARYANA VILLAGE",
  "SIX INDIAN COACHES CHOSEN FOR BASKETBALL WITHOUT BORDERS PROGRAMME IN SOUTH AFRICA",
  "BIG DREAMS: THE DAY THAT INDIAN BASKETBALL, THE NBA, AND SATNAM SINGH BHAMARA CHANGED FOREVER",
  "UBA LAUNCHES TWO-WEEK PROFESSIONAL BASKETBALL LEAGUE IN INDIA",
  "NEW BASKETBALL FEDERATION OF INDIA, NEW WEBSITE",
  "COMPETING SIDES OF BASKETBALL FEDERATION OF INDIA SET FOR A SHOWDOWN WITH INDIAN OLYMPIC ASSOCIATION IN NEW DELHI",
  "FORMER INDIAN FOOTBALL LEGEND IM VIJAYAN NOW COLLECTING BASKETBALL MEDALS",
  "THE GREAT DEFLATE: SPORTS MINISTRY PUTS ALL OFFICIAL BASKETBALL EVENTS IN INDIA ON HOLD AFTER BFI FIASCO",
  "HEADLESS AND COACH-LESS IN THE EYE OF THE STORM",
  "INDIAN BASKETBALL PLAYER'S ASSOCIATION (IBPA) OFFICIALLY KICK-STARTED IN NEW DELHI",
  "INDIA'S AMJYOT SINGH AND AMRIT PAL SINGH HEAD OUT TO JAPAN TO PLAY IN PROFESSIONAL BASKETBALL SUMMER LEAGUE",
  "FIBA RECOGNIZES 'TEAM GOVINDRAJ' TO LEAD BFI. WILL INDIAN BASKETBALL FIASCO CLEAR UP?",
  "DOCUMENTARY ON INDIAN BASKETBALL STAR PRASHANTI SINGH SHORTLISTED FOR NATIONAL STUDENT FILM AWARD",
  "SLUMDOG CHAMPION: BASKETBALL IS TRANSFORMING THE LIFE OF A GIRL FROM KARNATAKA'S SLUMS",
  "LOST OPPORTUNITIES HAVE LIMITED THE POTENTIAL OF MANY INDIAN STAR BASKETBALL PLAYERS",
  "INDIAN RAILWAYS BASKETBALL COACH APARNA GHOSH GIVEN LIFETIME ACHIEVEMENT AWARD BY CALCUTTA SPORTS JOURNALIST CLUB",
  "HUNDREDS JOIN 'INDIAN BASKETBALL COACHES NETWORK' BY TEAM INDIA HEAD COACH SCOTT FLEMMING",
  "POONAM MAHAJAN BECOMES THE FIRST WOMAN PRESIDENT OF MAHARASHTRA STATE BASKETBALL ASSOCIATION",
  "FOR INDIA, 3X3 BASKETBALL SHOULD BE PART OF THE JOURNEY – NOT THE DESTINATION",
  "DECEMBER 28TH NAMED 'INDIAN BASKETBALL DAY' IN HONOUR OF HARISH SHARMA",
  "FIBA/BFI COACHING CERTIFICATION COURSES IN FIVE MORE INDIAN CITIES THIS MONTH",
  "FIBA ASIA TO CONDUCT CLINIC FOR BASKETBALL REFEREES & COMMISSIONERS IN NEW DELHI IN DECEMBER",
  "TEAM INDIA COACH SCOTT FLEMMING IS BRINGING INDIVIDUAL PLAYER BASKETBALL DEVELOPMENT VIDEOS",
  "A QUICK CHAT WITH SIM BHULLAR: CHANGING THE PERCEPTION OF INDIAN ATHLETES",
  "THE AGE OLD QUESTION",
  "INDIAN BASKETBALL LEAGUES, FINANCIAL CHALLENGES, AND THE NBA DREAM: A COMPREHENSIVE Q&A WITH BFI CEO ROOPAM SHARMA",
  "AFTER NUMEROUS VOICES OF PROTEST, FIBA (TENTATIVELY) RELAXES HEADGEAR RULE FOR INTERNATIONAL BASKETBALL",
  "PUNJAB'S JUNIOR BASKETBALL PLAYER GAGANDEEP KAUR FELICITATED WITH THE UNUSUAL TITLE \"PLAYER OF INDIA\"",
  "FIBA DELAYS DECISION ON HEADGEAR BAN; SIKH COMMUNITY REACTS",
  "BFI & FIBA BRING BACK BASKETBALL COACHING CERTIFICATION COURSES FOR INDIAN COACHES",
  "RETURN OF THE FIBA/HEADGEAR CONTROVERSY: INDIA'S ANMOL SINGH FORCED TO REMOVE TURBAN AT U18 FIBA ABC",
  "GEETHU ANNA JOSE OFFICIALLY RECEIVES ARJUNA AWARD AT RASHTRAPATI BHAVAN",
  "FIBA TO REVIEW BASKETBALL HEADGEAR RULE FOLLOWING PRESSURE FROM BFI, #LETSIKHSPLAY, & MORE",
  "DON'T CALL IT A COMEBACK: PRATHAM SINGH RETURNED FROM INJURY TO BECOME ONE OF INDIA'S HEROES AT WUHAN",
  "INDIAN REFS ALSO CALLING THE SHOTS AT FIBA ASIA CUP",
  "WONDER OF WUHAN: INDIA SHOULD BUILD ON HISTORIC WIN OVER CHINA TO SPARK A BASKETBALL REVOLUTION",
  "TALENT FOUND: AMRIT PAL SINGH'S ASTONISHING STORY FROM FARMER TO INDIAN BASKETBALL STAR",
  "THREE INDIAN PLAYERS AT BASKETBALL WITHOUT BORDERS ASIA CAMP IN TAIPEI",
  "INDIAN TEENAGER ASHIKA KURUVILLA CONTINUES TO IMPROVE HER BASKETBALL TALENTS IN NEW YORK",
  "JUST GO OUT AND PLAY: TO GET SERIOUS ABOUT BASKETBALL IN INDIA, WE HAVE TO FIRST GET CASUAL",
  "POONAM CHATURVEDI - INDIA'S NATIONAL CHAMPION WITH CHHATTISGARH - HAS BRAIN TUMOUR",
  "FORMER INDIA BASKETBALL PLAYER K SURYANARAYANA RAJA PASSES AWAY",
  "'VALLINAM', THE TAMIL MOVIE ON BASKETBALL, IS HERE!",
  "HOMECOMING: INDERBIR GILL BRINGS HIS BASKETBALL KNOWLEDGE BACK TO INDIA",
  "SHOT OF THE CENTURY: HOW RAY ALLEN CHANGED NBA HISTORY",
  "INDIA'S SNEHAL BENDKE BECOMES ONE OF TWO FIRST WOMEN REFEREES TO OFFICIATE AT MEN'S FIBA ASIA CHAMPIONSHIP",
  "DR. S. SUBRAMANIAN – ONE OF INDIA'S GREATEST-EVER BASKETBALL COACHES – PASSES AWAY",
  "SIM BHULLAR: A SMALL STEP FOR A GIANT; A GIANT STEP FOR INDIAN BASKETBALL",
  "INDIA'S BIG BASKETBALL HOPE SATNAM SINGH BHAMARA: ONE STEP CLOSER",
  "SUICIDE DRILL: A BASKETBALL PLAYER'S DEATH REMINDS US OF THE PLIGHT OF INDIAN ATHLETES",
  "THE ELEPHANT, THE DRAGON, & THE BASKETBALL",
  "'VALLINAM': NEW TAMIL MOVIE, BASED ON BASKETBALL, TO BE RELEASED SOON",
  "SWAMI SRI DUNKACHARYAS: A BRIEF GLIMPSE AT NBA PLAYERS PRACTICING YOGA",
  "IN JEENA PS, A NEW LEADER EMERGERS FOR THE FUTURE OF INDIAN BASKETBALL",
  "SUMMER OF '80: INDIAN BASKETBALL AT THE OLYMPICS",
  "PASHA BAINS: THE DRIVE FOR SUCCESS",
  "HARISH SHARMA (1958-2012): INDIAN BASKETBALL'S VISIONARY LEADER PASSES AWAY",
  "THE HEART, THE MIND, AND THE ALL STAR VOTE",
  "AJAY PRATAP SINGH: THE FUTURE IS HERE, NOW",
  "VISHESH BHRIGUVANSHI & YADWINDER SINGH BARRED FROM PLAYING IN SENIOR NATIONALS",
  "HAREESH KOROTH: UNEXPECTED RISE; UNFINISHED BUSINESS",
  "NAWABASKETBALL? LUCKNOW HAS ITS OWN SPECIAL LIAISON WITH HOOPS",
  "START DRIBBLING KIDS; INDIA NEEDS A POINT GUARD",
  "BARKHA SONKAR: NO FEAR",
  "KERALA BASKETBALL: SOUTHERN SUPREMACY",
  "ZAK PENWELL: INDIAN BASKETBALL'S NEW WORKOUT PLAN",
  "PETE GAUDET – Q&A: THE HOOPS SCIENTIST",
  "BIG: A EULOGY TO SHAQ'S NBA CAREER",
  "IMG BASKETBALL'S BOBBY SHARMA: \"THE FUTURE OF INDIAN BASKETBALL IS VERY, VERY BRIGHT\"",
  "POONAM CHATURVEDI: THE NEXT NEXT BIG THING",
  "FROM PLAYER TO COACH, MANISHA DANGE LOOKS TO COMPLETE THE HOOPS CYCLE",
];

function ArticlesContent() {
  return (
    <div>
      <VaultBadge label="ARTICLES" />
      <div style={{ display: "flex", flexWrap: "wrap", gap: 10, justifyContent: "center" }}>
        {ARTICLES_ITEMS.map((title, i) => (
          <a
            key={i}
            href="PLACEHOLDER_link"
            target="_blank"
            rel="noopener noreferrer"
            style={{
              background: TV.orange,
              color: TV.white,
              fontFamily: BARLOW,
              fontWeight: 800,
              fontSize: 12,
              letterSpacing: "0.8px",
              padding: "8px 16px",
              borderRadius: 20,
              textDecoration: "none",
              textTransform: "uppercase",
              display: "inline-block",
              textAlign: "center",
              transition: "transform 0.15s, background 0.15s",
            }}
          >
            {title}
          </a>
        ))}
      </div>
    </div>
  );
}

// ─── TOOLS DATA & CONTENT ─────────────────────────────────────────────────────
function ToolsContent() {
  const toolsData = [
    {
      title: "TOURNAMENT BRACKET GENERATOR",
      version: "1.0",
      appLink: "PLACEHOLDER_app_link",
      manualLink: "PLACEHOLDER_manual_link",
      appAvailable: true,
      manualAvailable: true,
    },
    {
      title: "CLASSIFICATION CALCULATOR",
      version: "4.0",
      appLink: "PLACEHOLDER_app_link",
      manualLink: "PLACEHOLDER_manual_link",
      appAvailable: true,
      manualAvailable: true,
    },
    {
      title: "FIBA DSS",
      version: "1.0.1.27",
      appLink: "PLACEHOLDER_app_link",
      manualLink: "PLACEHOLDER_manual_link",
      appAvailable: true,
      manualAvailable: true,
      extraText: (
        <div style={{ marginTop: 12, fontSize: 13, color: TV.inactive, fontFamily: BARLOW, lineHeight: 1.5 }}>
          A username and password provided through your national federation is required for downloading game data and rosters before a game.<br />
          For training purposes the following login can be used:<br />
          <span style={{ color: TV.orange, fontWeight: 700 }}>User: dsstraining2022</span> &nbsp; <span style={{ color: TV.orange, fontWeight: 700 }}>Password: dss2022</span>
        </div>
      ),
    },
    {
      title: "DIGITAL SCORESHEET",
      version: "1.0",
      appLink: "PLACEHOLDER_app_link",
      manualLink: "PLACEHOLDER_manual_link",
      appAvailable: false,
      manualAvailable: false,
    },
  ];

  return (
    <div>
      <VaultBadge label="TOOLS" />
      <div style={{ textAlign: "center", marginBottom: 28, fontFamily: BARLOW, fontSize: 14, color: TV.orange, fontWeight: 600 }}>
        Do not run the application on Google Spreadsheet as Macros are not supported.<br />
        Download the Excel using File-&gt;Download option on Spreadsheet and run the application on Microsoft Excel.
      </div>

      <div style={{ display: "flex", flexDirection: "column", gap: 32, maxWidth: 650, margin: "0 auto" }}>
        {toolsData.map((tool, idx) => (
          <div key={idx} style={{ display: "flex", flexDirection: "column", alignItems: "center" }}>
            <VaultBadge label={tool.title} />
            <div style={{ width: "100%", border: `1.5px solid ${TV.orange}`, borderRadius: 4, overflow: "hidden", background: TV.charcoal }}>
              <div style={{ display: "grid", gridTemplateColumns: "1fr 1fr 1fr", borderBottom: `1.5px solid ${TV.orange}`, padding: "10px 0", textAlign: "center", fontFamily: BARLOW, fontWeight: 800, fontSize: 15, color: TV.orange, letterSpacing: "1px" }}>
                <div>VERSION</div>
                <div>APPLICATION</div>
                <div>MANUAL</div>
              </div>
              <div style={{ display: "grid", gridTemplateColumns: "1fr 1fr 1fr", padding: "14px 0", alignItems: "center", textAlign: "center", fontFamily: BARLOW, fontWeight: 700, fontSize: 14, color: TV.white }}>
                <div>{tool.version}</div>
                <div>
                  {tool.appAvailable ? (
                    <a href={tool.appLink} target="_blank" rel="noopener noreferrer" style={{ background: TV.orange, color: TV.white, padding: "6px 14px", borderRadius: 3, textDecoration: "none", fontSize: 12, fontWeight: 800, display: "inline-flex", alignItems: "center", gap: 4 }}>
                      📥 DOWNLOAD
                    </a>
                  ) : (
                    <span style={{ color: TV.inactive }}>Coming Soon....</span>
                  )}
                </div>
                <div>
                  {tool.manualAvailable ? (
                    <a href={tool.manualLink} target="_blank" rel="noopener noreferrer" style={{ background: TV.orange, color: TV.white, padding: "6px 14px", borderRadius: 3, textDecoration: "none", fontSize: 12, fontWeight: 800, display: "inline-flex", alignItems: "center", gap: 4 }}>
                      📥 DOWNLOAD
                    </a>
                  ) : (
                    <span style={{ color: TV.inactive }}>Coming Soon.....</span>
                  )}
                </div>
              </div>
            </div>
            {tool.extraText}
          </div>
        ))}
      </div>
    </div>
  );
}

// ─── Placeholder tab ──────────────────────────────────────────────────────────
function PlaceholderContent({ tab }: { tab: VaultTab }) {
  return (
    <div style={{ display: "flex", flexDirection: "column", alignItems: "center", justifyContent: "center", minHeight: 260, gap: 14 }}>
      <span style={{ fontSize: 40 }}>🔒</span>
      <span style={{ fontFamily: BARLOW, fontWeight: 700, fontSize: 20, color: TV.inactive, letterSpacing: "2px", textTransform: "uppercase" }}>
        {tab} — Coming Soon
      </span>
    </div>
  );
}

// ─── Main Vault page ──────────────────────────────────────────────────────────
export default function Vault() {
  const [activeTab, setActiveTab] = useState<VaultTab>("ASSIST MAGAZINE");

  return (
    <div style={{ minHeight: "100vh", display: "flex" }}>
      <aside style={{ width: 200, background: TV.charcoal, flexShrink: 0, display: "flex", flexDirection: "column", borderRight: `1px solid ${TV.border}`, position: "sticky", top: 0, height: "100vh", overflowY: "auto" }}>
        <div style={{ padding: "40px 28px 16px", borderBottom: `1px solid ${TV.border}` }}>
          <span style={{ fontFamily: BARLOW, fontWeight: 800, fontSize: 28, color: TV.orange, letterSpacing: "3px", textTransform: "uppercase" }}>
            VAULT
          </span>
        </div>
        {VAULT_TABS.map(tab => {
          const active = tab === activeTab;
          let bg = "transparent";
          let color = TV.inactive;
          let borderLeft = "4px solid transparent";
          if (active) { bg = TV.orange; color = TV.white; borderLeft = `4px solid ${TV.white}`; }
          return (
            <button
              key={tab}
              onClick={() => setActiveTab(tab)}
              style={{
                display: "block", width: "100%", textAlign: "left",
                padding: "14px 28px",
                background: bg,
                color,
                fontFamily: BARLOW,
                fontWeight: 600,
                fontSize: 15,
                letterSpacing: "1.5px",
                textTransform: "uppercase",
                border: "none",
                borderLeft,
                borderRadius: 0,
                cursor: "pointer",
                transition: "background 0.12s, color 0.12s",
              }}
            >
              {tab}
            </button>
          );
        })}
      </aside>

      {/* Content */}
      <main style={{ flex: 1, padding: "36px 44px", overflowY: "auto", background: "var(--off-white)", minHeight: "100vh" }}>
        {activeTab === "ASSIST MAGAZINE"  && <AssistMagazineContent />}
        {activeTab === "MIC'D UP"         && <MicDUpContent />}
        {activeTab === "TOUGH CALLS"      && <ToughCallsContent />}
        {activeTab === "QUIZ"             && <QuizContent />}
        {activeTab === "RULEBOOKS"        && <RulebooksContent />}
        {activeTab === "BOOKS"            && <BooksContent />}
        {activeTab === "DOCUMENTARIES"    && <DocumentariesContent />}
        {activeTab === "ARTICLES"         && <ArticlesContent />}
        {activeTab === "TOOLS"            && <ToolsContent />}
      </main>
    </div>
  );
}
