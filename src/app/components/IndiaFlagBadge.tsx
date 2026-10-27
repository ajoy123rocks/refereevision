import React from 'react';

export default function IndiaFlagBadge({
  className = '',
  width = 24,
  height = 16,
}: {
  className?: string;
  width?: number;
  height?: number;
}) {
  return (
    <span
      className={className}
      style={{
        display: 'inline-flex',
        alignItems: 'center',
        justifyContent: 'center',
        padding: '2px',
        backgroundColor: '#FFD700', // Gold border frame matching the user screenshot
        borderRadius: '3px',
        boxShadow: '0 1px 3px rgba(0,0,0,0.3)',
        verticalAlign: 'middle',
        marginLeft: '6px',
        lineHeight: 0,
      }}
      title="India"
    >
      <svg
        width={width}
        height={height}
        viewBox="0 0 900 600"
        style={{
          borderRadius: '1px',
          display: 'block',
        }}
      >
        {/* Saffron Top Band */}
        <rect width="900" height="200" fill="#FF9933" />
        {/* White Middle Band */}
        <rect y="200" width="900" height="200" fill="#FFFFFF" />
        {/* Green Bottom Band */}
        <rect y="400" width="900" height="200" fill="#138808" />

        {/* Ashoka Chakra */}
        <g transform="translate(450, 300)">
          <circle r="75" fill="none" stroke="#000080" strokeWidth="8" />
          <circle r="15" fill="#000080" />
          {Array.from({ length: 24 }).map((_, i) => (
            <line
              key={i}
              x1="0"
              y1="0"
              x2="0"
              y2="-75"
              stroke="#000080"
              strokeWidth="4"
              transform={`rotate(${i * 15})`}
            />
          ))}
        </g>
      </svg>
    </span>
  );
}
