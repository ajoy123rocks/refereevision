import React from "react";

/**
 * Replaces ordinal numbers like 1st, 2nd, 3rd, 4th, 21st, 22nd, 1ST, etc.
 * with standard number followed by superscripted ordinal suffix (st, nd, rd, th).
 */
export function renderWithOrdinals(text: string): React.ReactNode {
  if (typeof text !== "string" || !text) return text;

  const regex = /\b(\d+)(st|nd|rd|th)\b/gi;
  if (!regex.test(text)) return text;

  const parts: React.ReactNode[] = [];
  let lastIndex = 0;
  regex.lastIndex = 0;
  let match: RegExpExecArray | null;

  while ((match = regex.exec(text)) !== null) {
    if (match.index > lastIndex) {
      parts.push(text.substring(lastIndex, match.index));
    }
    parts.push(
      <React.Fragment key={`${match.index}-${match[0]}`}>
        {match[1]}
        <sup
          style={{
            fontSize: "0.65em",
            verticalAlign: "super",
            lineHeight: 0,
          }}
        >
          {match[2]}
        </sup>
      </React.Fragment>
    );
    lastIndex = regex.lastIndex;
  }

  if (lastIndex < text.length) {
    parts.push(text.substring(lastIndex));
  }

  return parts;
}
