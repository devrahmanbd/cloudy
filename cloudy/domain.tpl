<!-- =========================
 Domains Page (Popular TLDs only)
 Works with WHMCS domainchecker/cart flow
========================== -->

<style>
/* Scoped under .cm-domains to avoid affecting other pages */
.cm-domains { --cm-accent:#fdd700; --cm-bg1:#0f1225; --cm-bg2:#131a35; --cm-text:rgba(255,255,255,.92); --cm-muted:rgba(255,255,255,.72); }
.cm-domains .cm-wrap { max-width:1200px; margin:0 auto; padding:0 16px; }

.cm-domains .cm-section { padding:64px 0; background:var(--cm-bg1); }
.cm-domains .cm-section.cm-alt { background:var(--cm-bg2); }

.cm-domains .cm-center { text-align:center; }
.cm-domains .cm-h2 { color:#fff; font-size:clamp(22px,2.4vw,34px); font-weight:900; letter-spacing:-.4px; margin:0 0 10px; }
.cm-domains .cm-p { color:var(--cm-muted); margin:0; line-height:1.8; }

.cm-domains .tld-grid { display:grid; grid-template-columns:repeat(12,1fr); gap:14px; margin-top:26px; }
.cm-domains .tld { grid-column:span 3; background:rgba(255,255,255,.04); border:1px solid rgba(255,255,255,.10); border-radius:16px; padding:14px; display:flex; align-items:center; justify-content:space-between; gap:10px; }
.cm-domains .tld strong { color:#fff; font-weight:900; font-size:18px; letter-spacing:.2px; }
.cm-domains .tld span { color:rgba(255,255,255,.75); font-size:13px; }
.cm-domains .tld button {
  border:none; border-radius:12px; padding:10px 12px; font-weight:900;
  background:rgba(253,215,0,.14); color:#fff; cursor:pointer;
  border:1px solid rgba(253,215,0,.22);
}
.cm-domains .tld button:hover { filter:brightness(1.05); transform:translateY(-1px); transition:.18s ease; }

.cm-domains .cm-note { margin-top:14px; color:rgba(255,255,255,.70); font-size:13px; line-height:1.7; }

@media (max-width: 991px){
  .cm-domains .tld { grid-column:span 6; }
}
@media (max-width: 480px){
  .cm-domains .tld { grid-column:span 12; }
}
</style>

<div class="cm-domains">

  <!-- 1) DOMAIN SEARCH HERO (same flow as your existing snippet) -->
  <section id="domain-search-hero" style="position:relative; overflow:hidden; background:linear-gradient(135deg,#0f3460 0%,#16213e 100%); padding:90px 20px;">
    <div style="position:absolute; inset:0; background:rgba(0,0,0,.40); z-index:0;"></div>

    <div class="cm-wrap" style="position:relative; z-index:1;">
      <div class="cm-center" style="margin-bottom:38px;">
        <h1 style="color:#fff; font-size:clamp(28px,5vw,52px); font-weight:900; margin:0 0 12px; letter-spacing:-.5px;">Find your new domain name</h1>
        <p style="color:rgba(255,255,255,.85); font-size:16px; margin:0 auto; max-width:680px; line-height:1.7;">
          Search a domain and register it instantly. We only highlight the most well-known TLDs below.
        </p>
      </div>

      <div style="max-width:740px; margin:0 auto;">
        <form class="domain-search-form" method="post" action="domainchecker.php" id="domainForm">
          <input type="hidden" name="token" value="{$token}" />
          <input type="hidden" name="direct" value="true" />

          <input
            type="text"
            class="domain-input-modern"
            name="domain"
            id="domainInput"
            placeholder="e.g. example.com"
            autocapitalize="none"
            autocomplete="off"
            style="width:100%; padding:16px 20px; font-size:15px; border:2px solid transparent; border-radius:10px; background:#fff; color:#222; outline:none; box-sizing:border-box; margin-bottom:16px;"
            required
          />

          <div class="domain-buttons-modern" style="display:grid; grid-template-columns:1fr 1fr; gap:12px;">
            <button type="button" class="btn-domain-primary" onclick="handleDomainSearch(event)"
              style="padding:14px 24px; border:none; border-radius:10px; font-size:15px; font-weight:900; cursor:pointer; background:#fdd700; color:#000;">
              Search Domain
            </button>

            <button type="button" class="btn-domain-secondary" onclick="handleDomainTransfer(event)" title="Transfer"
              style="padding:14px 24px; border:none; border-radius:10px; font-size:15px; font-weight:900; cursor:pointer; background:linear-gradient(135deg,#ff5a7e 0%,#ff3d6b 100%); color:#fff;">
              Transfer Domain
            </button>
          </div>

          <div style="text-align:center; margin-top:18px; color:rgba(255,255,255,.78); font-size:14px;">
            Tip: Type your full name including TLD (example: <b style="color:#fdd700;">mybrand.com</b>).
          </div>
        </form>
      </div>
    </div>
  </section>

  <!-- 2) POPULAR TLD LIST (renowned only) -->
  <section class="cm-section">
    <div class="cm-wrap cm-center">
      <h2 class="cm-h2">Popular top-level domains</h2>
      <p class="cm-p">Choose a trusted extension and search instantly (clicking a TLD will apply it to your query).</p>
    </div>

    <div class="cm-wrap">
      <div class="tld-grid">
        <!-- Edit this list freely -->
        <div class="tld"><div><strong>.com</strong><br><span>Best for brands</span></div><button type="button" onclick="applyTld('.com')">Use</button></div>
        <div class="tld"><div><strong>.org</strong><br><span>Organizations</span></div><button type="button" onclick="applyTld('.org')">Use</button></div>
        <div class="tld"><div><strong>.net</strong><br><span>Tech & networks</span></div><button type="button" onclick="applyTld('.net')">Use</button></div>
        <div class="tld"><div><strong>.shop</strong><br><span>Online stores</span></div><button type="button" onclick="applyTld('.shop')">Use</button></div>

        <div class="tld"><div><strong>.xyz</strong><br><span>Modern & short</span></div><button type="button" onclick="applyTld('.xyz')">Use</button></div>
        <div class="tld"><div><strong>.info</strong><br><span>Information sites</span></div><button type="button" onclick="applyTld('.info')">Use</button></div>
        <div class="tld"><div><strong>.io</strong><br><span>Startups & apps</span></div><button type="button" onclick="applyTld('.io')">Use</button></div>
        <div class="tld"><div><strong>.co</strong><br><span>Company/brand</span></div><button type="button" onclick="applyTld('.co')">Use</button></div>

        <div class="tld"><div><strong>.me</strong><br><span>Personal brands</span></div><button type="button" onclick="applyTld('.me')">Use</button></div>
        <div class="tld"><div><strong>.online</strong><br><span>General use</span></div><button type="button" onclick="applyTld('.online')">Use</button></div>
        <div class="tld"><div><strong>.site</strong><br><span>Simple websites</span></div><button type="button" onclick="applyTld('.site')">Use</button></div>
        <div class="tld"><div><strong>.store</strong><br><span>Ecommerce</span></div><button type="button" onclick="applyTld('.store')">Use</button></div>
      </div>

      <p class="cm-note">
        If you want country TLDs (like .bd, .uk, .us) or niche TLDs (like .dev, .app), tell me and I’ll add them as an optional “More TLDs” section.
      </p>
    </div>
  </section>

</div>

<script>
/* Uses the same redirect-to-WHMCS-cart approach already present in your paste. [file:1] */
(function () {
  'use strict';

  window.handleDomainSearch = function (e) {
    e.preventDefault();
    const domain = document.getElementById('domainInput').value.trim();
    if (!domain) { alert('Please enter a domain name'); return; }

    const cartUrl = new URL('cart.php', window.location.origin);
    cartUrl.searchParams.append('a', 'add');
    cartUrl.searchParams.append('domain', 'register');
    cartUrl.searchParams.append('query', domain);
    window.location.href = cartUrl.toString();
  };

  window.handleDomainTransfer = function (e) {
    e.preventDefault();
    const domain = document.getElementById('domainInput').value.trim();
    if (!domain) { alert('Please enter a domain name'); return; }

    const cartUrl = new URL('cart.php', window.location.origin);
    cartUrl.searchParams.append('a', 'add');
    cartUrl.searchParams.append('domain', 'transfer');
    cartUrl.searchParams.append('query', domain);
    window.location.href = cartUrl.toString();
  };

  window.applyTld = function (tld) {
    const input = document.getElementById('domainInput');
    if (!input) return;

    let v = (input.value || '').trim();
    if (!v) { input.value = 'mybrand' + tld; input.focus(); return; }

    // If user already typed a TLD, replace it; otherwise append.
    v = v.replace(/\s+/g, '');
    v = v.replace(/\.[a-z0-9-]+$/i, '');
    input.value = v + tld;
    input.focus();
  };

  document.addEventListener('DOMContentLoaded', function () {
    const domainInput = document.getElementById('domainInput');
    if (!domainInput) return;

    domainInput.addEventListener('keypress', function (e) {
      if (e.key === 'Enter') { e.preventDefault(); window.handleDomainSearch(e); }
    });
  });
})();
</script>
