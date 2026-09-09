```aura width=800 height=210
<div style={{
  display: 'flex',
  flexDirection: 'column',
  alignItems: 'center',
  justifyContent: 'center',
  width: '100%',
  height: '100%',
  background: 'linear-gradient(135deg, #11111b 0%, #181825 100%)',
  borderRadius: '16px',
  border: '1px solid #313244',
  gap: '18px',
  position: 'relative',
  overflow: 'hidden',
}}>
  <div style={{
    display: 'flex',
    position: 'absolute',
    top: '0',
    left: '0',
    right: '0',
    height: '3px',
    background: 'linear-gradient(90deg, #89b4fa 0%, #cba6f7 50%, #f38ba8 100%)',
  }} />

  <div style={{
    display: 'flex',
    alignItems: 'center',
    gap: '20px',
  }}>
    <div style={{
      display: 'flex',
      width: '76px',
      height: '76px',
      borderRadius: '50%',
      background: 'linear-gradient(135deg, #89b4fa, #cba6f7, #f38ba8)',
      alignItems: 'center',
      justifyContent: 'center',
    }}>
      <div style={{
        display: 'flex',
        width: '70px',
        height: '70px',
        borderRadius: '50%',
        overflow: 'hidden',
        border: '2px solid #1e1e2e',
      }}>
        <img
          src="https://github.com/AntonUniatitskyi.png" 
          style={{
            width: '70px',
            height: '70px',
          }}
        />
      </div>
    </div>

    <div style={{ display: 'flex', flexDirection: 'column', gap: '5px', textAlign: 'center' }}>
      <span style={{
        fontSize: '38px',
        fontWeight: '700',
        color: '#cdd6f4',
        letterSpacing: '-1px',
      }}>
        Anton
      </span>
      <span style={{
        fontSize: '14px',
        color: '#89b4fa',
        fontWeight: '500',
        letterSpacing: '1.5px',
        textTransform: 'uppercase',
      }}>
        Backend Developer · NixOS · OSINT
      </span>
    </div>
  </div>

  <div style={{ display: 'flex', gap: '8px' }}>
    {[
      { tag: 'python', bg: 'rgba(249,226,175,0.12)', border: '#f9e2af', color: '#f9e2af' },
      { tag: 'go', bg: 'rgba(137,180,250,0.12)', border: '#89b4fa', color: '#89b4fa' },
      { tag: 'linux', bg: 'rgba(166,227,161,0.12)', border: '#a6e3a1', color: '#a6e3a1' },
      { tag: 'docker', bg: 'rgba(203,166,247,0.12)', border: '#cba6f7', color: '#cba6f7' },
    ].map(({ tag, bg, border, color }) => (
      <div key={tag} style={{
        display: 'flex',
        padding: '4px 14px',
        borderRadius: '999px',
        background: bg,
        border: `1px solid ${border}`,
        color: color,
        fontSize: '12px',
        fontWeight: '700',
        letterSpacing: '0.8px',
        textTransform: 'uppercase',
      }}>
        {tag}
      </div>
    ))}
  </div>
</div>
```

```aura width=800 height=100
<div style={{
  display: 'flex',
  alignItems: 'stretch',
  width: '100%',
  height: '100%',
  background: '#1e1e2e',
  borderRadius: '16px',
  border: '1px solid #313244',
  overflow: 'hidden',
}}>
  {[
    { label: 'Telegram', value: '@too_xaa', color: '#89b4fa', accent: '#89b4fa' },
    { label: 'GitHub',   value: '@AntonUniatitskyi', color: '#cba6f7', accent: '#cba6f7' },
    { label: 'Email',    value: 'antonh1803@gmail.com', color: '#a6e3a1', accent: '#a6e3a1' },
    { label: 'Discord',  value: '@__.toxa._',       color: '#f38ba8', accent: '#f38ba8' },
  ].map((item, i) => (
    <div key={i} style={{
      display: 'flex',
      flex: '1',
      flexDirection: 'column',
      alignItems: 'center',
      justifyContent: 'center',
      gap: '7px',
      borderRight: i < 3 ? '1px solid #313244' : 'none',
      position: 'relative',
      overflow: 'hidden',
    }}>
      <div style={{
        display: 'flex',
        position: 'absolute',
        bottom: '0',
        left: '20%',
        right: '20%',
        height: '2px',
        background: item.accent,
        borderRadius: '2px',
        opacity: '0.6',
      }} />

      <span style={{
        fontSize: '11px',
        color: '#6c7086',
        fontWeight: '700',
        letterSpacing: '1.2px',
        textTransform: 'uppercase',
      }}>
        {item.label}
      </span>

      <span style={{
        fontSize: '13px',
        color: item.color,
        fontWeight: '600',
        letterSpacing: '0.2px',
      }}>
        {item.value}
      </span>
    </div>
  ))}
</div>
```

```aura width=800 height=280
<div style={{
  display: 'flex',
  flexDirection: 'column',
  width: '100%',
  height: '100%',
  background: '#1e1e2e',
  borderRadius: '16px',
  border: '1px solid #313244',
  padding: '24px 28px',
  gap: '14px',
}}>
  <span style={{
    fontSize: '13px',
    color: '#6c7086',
    fontWeight: '700',
    letterSpacing: '1.5px',
    textTransform: 'uppercase',
  }}>
    About
  </span>

  {[
    { icon: '🎓', text: 'Studying Software Engineering at Kyiv Polytechnic Institute (FIOT)' },
    { icon: '🐍', text: 'Backend Development with Python & Django & Go' },
    { icon: '🛡️', text: 'Cybersecurity: Ethical Hacking, OSINT, Steganography' },
    { icon: '⚙️', text: 'Automating network workflows with SSH & Paramiko' },
    { icon: '🐧', text: 'Daily driving Linux (NixOS) as my main dev environment' },
    { icon: '🎨', text: 'UI/UX & DevEnvironment perfectionist (VS Code, Starship)' },
    { icon: '🏫', text: 'Programming Teacher at Logika IT School' },
  ].map((item, i) => (
    <div key={i} style={{
      display: 'flex',
      alignItems: 'center',
      gap: '12px',
    }}>
      <span style={{ fontSize: '16px' }}>{item.icon}</span>
      <span style={{
        fontSize: '14px',
        color: '#cdd6f4',
        fontWeight: '500',
      }}>
        {item.text}
      </span>
    </div>
  ))}
</div>
```