<!-- =========================
 Cloudman Shared Hosting Page
 WHMCS-friendly, responsive, scoped CSS
========================== -->

<style>
/* =========================
   Cloudman hosting page (scoped)
   NOTE: scoped under .cm-hosting to avoid breaking global theme styles
========================== */
.cm-hosting { --cm-accent:#fdd700; --cm-bg1:#0f1225; --cm-bg2:#131a35; --cm-card:#171e3d; --cm-text:rgba(255,255,255,.92); --cm-muted:rgba(255,255,255,.72); }
.cm-hosting .cm-wrap { max-width:1200px; margin:0 auto; padding:0 16px; }
.cm-hosting .cm-hero { position:relative; overflow:hidden; background:linear-gradient(135deg,#0f3460 0%,#16213e 100%); padding:88px 0 56px; }
.cm-hosting .cm-hero:before { content:""; position:absolute; inset:0; background:rgba(0,0,0,.45); }
.cm-hosting .cm-hero > * { position:relative; z-index:1; }
.cm-hosting .cm-title { color:#fff; font-weight:800; line-height:1.15; letter-spacing:-.6px; font-size:clamp(30px,4.6vw,56px); margin:0 0 14px; }
.cm-hosting .cm-sub { color:var(--cm-text); font-size:clamp(15px,1.4vw,18px); line-height:1.7; margin:0 0 22px; max-width:720px; }
.cm-hosting .cm-badges { display:flex; flex-wrap:wrap; gap:10px; margin:18px 0 0; }
.cm-hosting .cm-badge { display:inline-flex; align-items:center; gap:8px; padding:10px 12px; border-radius:14px; background:rgba(255,255,255,.08); border:1px solid rgba(253,215,0,.25); color:var(--cm-accent); font-size:12px; font-weight:800; letter-spacing:.4px; text-transform:uppercase; }
.cm-hosting .cm-ctas { display:flex; gap:12px; flex-wrap:wrap; margin-top:18px; }
.cm-hosting .cm-btn { display:inline-flex; align-items:center; justify-content:center; gap:8px; padding:13px 20px; border-radius:999px; font-weight:800; text-decoration:none; transition:.2s ease; white-space:nowrap; }
.cm-hosting .cm-btn-primary { background:var(--cm-accent); color:#000; }
.cm-hosting .cm-btn-primary:hover { filter:brightness(.95); transform:translateY(-1px); }
.cm-hosting .cm-btn-ghost { background:rgba(255,255,255,.08); border:1px solid rgba(255,255,255,.14); color:#fff; }
.cm-hosting .cm-btn-ghost:hover { background:rgba(255,255,255,.12); transform:translateY(-1px); }

.cm-hosting .cm-section { padding:64px 0; background:var(--cm-bg1); }
.cm-hosting .cm-section.cm-alt { background:var(--cm-bg2); }
.cm-hosting .cm-h2 { color:#fff; font-size:clamp(22px,2.4vw,34px); font-weight:800; letter-spacing:-.4px; margin:0 0 10px; }
.cm-hosting .cm-p { color:var(--cm-muted); margin:0; line-height:1.8; }
.cm-hosting .cm-center { text-align:center; }
.cm-hosting .cm-grid { display:grid; grid-template-columns:repeat(12,1fr); gap:18px; margin-top:28px; }
.cm-hosting .cm-card { grid-column:span 4; background:rgba(255,255,255,.04); border:1px solid rgba(255,255,255,.10); border-radius:18px; padding:18px; }
.cm-hosting .cm-card h3 { color:#fff; font-size:18px; margin:0 0 8px; font-weight:800; }
.cm-hosting .cm-card p { color:var(--cm-muted); margin:0; line-height:1.7; }
.cm-hosting .cm-card ul { margin:14px 0 0; padding-left:18px; color:var(--cm-muted); }
.cm-hosting .cm-card li { margin:6px 0; }

.cm-hosting .cm-plans { margin-top:28px; display:grid; grid-template-columns:repeat(12,1fr); gap:18px; }
.cm-hosting .cm-plan { grid-column:span 4; background:linear-gradient(180deg, rgba(255,255,255,.06), rgba(255,255,255,.03)); border:1px solid rgba(255,255,255,.12); border-radius:22px; padding:22px; position:relative; }
.cm-hosting .cm-plan.featured { border-color:rgba(253,215,0,.45); box-shadow:0 18px 40px rgba(0,0,0,.35); }
.cm-hosting .cm-pill { position:absolute; top:16px; right:16px; background:rgba(253,215,0,.16); border:1px solid rgba(253,215,0,.35); color:var(--cm-accent); font-weight:900; font-size:11px; letter-spacing:.5px; padding:7px 10px; border-radius:999px; text-transform:uppercase; }
.cm-hosting .cm-plan-name { color:#fff; font-weight:900; font-size:20px; margin:0 0 6px; }
.cm-hosting .cm-plan-for { color:var(--cm-muted); margin:0 0 12px; }
.cm-hosting .cm-price { display:flex; align-items:baseline; gap:8px; margin:10px 0 14px; }
.cm-hosting .cm-price strong { color:#fff; font-size:34px; letter-spacing:-.6px; }
.cm-hosting .cm-price span { color:var(--cm-muted); }
.cm-hosting .cm-plan .cm-btn { width:100%; border-radius:14px; padding:13px 14px; }
.cm-hosting .cm-spec { margin:14px 0 0; padding:0; list-style:none; display:grid; gap:10px; }
.cm-hosting .cm-spec li { display:flex; justify-content:space-between; gap:12px; color:var(--cm-muted); border-top:1px dashed rgba(255,255,255,.12); padding-top:10px; }
.cm-hosting .cm-spec b { color:#fff; font-weight:800; }

.cm-hosting .cm-split { display:grid; grid-template-columns:repeat(12,1fr); gap:18px; align-items:center; margin-top:26px; }
.cm-hosting .cm-split .left { grid-column:span 6; }
.cm-hosting .cm-split .right { grid-column:span 6; }
.cm-hosting .cm-note { margin-top:14px; color:rgba(255,255,255,.70); font-size:13px; }

.cm-hosting .cm-stack { display:flex; flex-wrap:wrap; gap:10px; margin-top:14px; }
.cm-hosting .cm-chip { padding:9px 12px; border-radius:999px; background:rgba(255,255,255,.06); border:1px solid rgba(255,255,255,.12); color:#fff; font-size:13px; font-weight:700; }

.cm-hosting .cm-cta { background:linear-gradient(135deg, rgba(253,215,0,.12), rgba(255,255,255,.04)); border:1px solid rgba(255,255,255,.12); border-radius:22px; padding:22px; margin-top:28px; display:flex; align-items:center; justify-content:space-between; gap:14px; flex-wrap:wrap; }
.cm-hosting .cm-cta p { margin:0; color:var(--cm-muted); }
.cm-hosting .cm-cta strong { color:#fff; }

/* FAQ: keep Antler look but improve spacing (still compatible) */
.cm-hosting .accordion.faq h3 { margin:34px 0 14px; color:#fff; font-weight:900; letter-spacing:-.2px; }
.cm-hosting .accordion.faq .panel-wrap { margin-bottom:8px; border-radius:14px; overflow:hidden; border:1px solid rgba(255,255,255,.10); background:rgba(255,255,255,.03); }
.cm-hosting .accordion.faq .panel-title { padding:16px 16px; cursor:pointer; }
.cm-hosting .accordion.faq .wrapper-collapse { padding:0 16px 16px; }
.cm-hosting .accordion.faq .info p { margin:0; color:var(--cm-muted); line-height:1.75; }

/* Responsive */
@media (max-width: 991px){
  .cm-hosting .cm-card, .cm-hosting .cm-plan { grid-column:span 12; }
  .cm-hosting .cm-split .left, .cm-hosting .cm-split .right { grid-column:span 12; }
  .cm-hosting .cm-hero { padding:74px 0 46px; }
}
@media (max-width: 480px){
  .cm-hosting .cm-ctas { flex-direction:column; align-items:stretch; }
  .cm-hosting .cm-btn { width:100%; }
}
</style>

<div class="cm-hosting">

  <!-- HERO -->
  <section class="cm-hero">
    <div class="cm-wrap">
      <h1 class="cm-title">Cloudman Shared Hosting</h1>
      <p class="cm-sub">
        Lightning‑fast NVMe hosting with CyberPanel (OpenLiteSpeed), security-first defaults, and real human support—built for WordPress, WooCommerce, and business websites.
      </p>

      <div class="cm-ctas">
        <!-- WHMCS order link: replace pid values -->
        <a class="cm-btn cm-btn-primary" href="{$WEB_ROOT}/cart.php?a=add&pid=101">Get Started</a>
        <a class="cm-btn cm-btn-ghost" href="{$WEB_ROOT}/contact">Talk to Sales</a>
        <a class="cm-btn cm-btn-ghost" href="{$WEB_ROOT}/submitticket.php">Open a Ticket</a>
      </div>

      <div class="cm-badges" aria-label="Key highlights">
        <div class="cm-badge">NVMe Storage</div>
        <div class="cm-badge">CyberPanel</div>
        <div class="cm-badge">Free SSL</div>
        <div class="cm-badge">Daily Backups</div>
        <div class="cm-badge">24/7 Monitoring</div>
      </div>

      <p class="cm-note">Tip: If you’re moving from cPanel, we can help migrate sites and email (scope depends on plan and complexity).</p>
    </div>
  </section>

  <!-- PLANS -->
  <section class="cm-section">
    <div class="cm-wrap cm-center">
      <h2 class="cm-h2">Choose a plan that fits today—and upgrades easily later</h2>
      <p class="cm-p">Start small, scale anytime. Great for personal sites, businesses, agencies, and stores.</p>
    </div>

    <div class="cm-wrap">
      <div class="cm-plans">

        <div class="cm-plan">
          <div class="cm-plan-name">Launch</div>
          <p class="cm-plan-for">For 1 website & personal projects.</p>
          <div class="cm-price"><strong>$7.99</strong><span>/mo</span></div>
          <a class="cm-btn cm-btn-primary" href="{$WEB_ROOT}/cart.php?a=add&pid=101">Order Launch</a>
          <ul class="cm-spec">
            <li><span>Storage</span><b>10GB NVMe</b></li>
            <li><span>Websites</span><b>1 site</b></li>
            <li><span>Bandwidth</span><b>100GB</b></li>
            <li><span>Addon</span><b>+1 Domain</b></li>
            <li><span>Emails</span><b>10</b></li>
            <li><span>Firewall</span><b>Available</b></li>
            <li><span>DDOS Protection</span><b>Basic</b></li>
            <li><span>Malware Scanner</span><b>Available</b></li>
            <li><span>Managed Backup</span><b>Weekly</b></li>            
          </ul>
        </div>

        <div class="cm-plan featured">
          <div class="cm-pill">Most popular</div>
          <div class="cm-plan-name">Scale</div>
          <p class="cm-plan-for">For the promising growing teams.</p>
          <div class="cm-price"><strong>$11.99</strong><span>/mo</span></div>
          <a class="cm-btn cm-btn-primary" href="{$WEB_ROOT}/cart.php?a=add&pid=102">Order Scale</a>
          <ul class="cm-spec">
           <ul class="cm-spec">
            <li><span>Storage</span><b>25GB NVMe</b></li>
            <li><span>Websites</span><b>5 site</b></li>
            <li><span>Bandwidth</span><b>300GB</b></li>
            <li><span>Addon</span><b>+5 Domain</b></li>
            <li><span>Emails</span><b>20</b></li>
            <li><span>Firewall</span><b>Available</b></li>
            <li><span>DDOS Protection</span><b>Pro</b></li>
            <li><span>Malware Scanner</span><b>Available</b></li>
            <li><span>Managed Backup</span><b>Daily</b></li>      
          </ul>
          </ul>
        </div>

        <div class="cm-plan">
          <div class="cm-plan-name">Prime</div>
          <p class="cm-plan-for">For Businesses in their prime.</p>
          <div class="cm-price"><strong>$18.99</strong><span>/mo</span></div>
          <a class="cm-btn cm-btn-primary" href="{$WEB_ROOT}/cart.php?a=add&pid=103">Order Prime</a>
          <ul class="cm-spec">
            <li><span>Storage</span><b>50GB NVMe</b></li>
            <li><span>Websites</span><b>10 site</b></li>
            <li><span>Bandwidth</span><b>800GB</b></li>
            <li><span>Addon</span><b>+20 Domain</b></li>
            <li><span>Emails</span><b>50</b></li>
            <li><span>Firewall</span><b>Available</b></li>
            <li><span>DDOS Protection</span><b>Pro</b></li>
            <li><span>Malware Scanner</span><b>Available</b></li>
            <li><span>Managed Backup</span><b>Daily</b></li>
            <li><span>Support</span><b>On Desk*</b></li>
          </ul>
        </div>

      </div>

      <p class="cm-note">
        *We provide professional hosting support with priority escalation for critical or complex technical issues, ensuring every customer receives the same high standard of care.
        <br>
          *Daily backups are securely generated at 00:00 (UTC+6, Asia/Dhaka), with weekly full backups performed every Friday at 00:00 (UTC+6, Asia/Dhaka) to ensure consistent data protection.
      </p>
    </div>
  </section>

  <!-- WHAT YOU GET -->
  <section class="cm-section cm-alt">
    <div class="cm-wrap cm-center">
      <h2 class="cm-h2">Everything you need to host and grow</h2>
      <p class="cm-p">Performance, security, email, and support—without buying 10 add‑ons.</p>
    </div>

    <div class="cm-wrap">
      <div class="cm-grid">
        <div class="cm-card">
          <h3>Fast by design</h3>
          <p>NVMe storage + OpenLiteSpeed stack tuned for modern PHP apps.</p>
          <ul>
            <li>Better TTFB for dynamic sites</li>
            <li>Optimized for WordPress/WooCommerce</li>
            <li>HTTP/2+ ready (CDN-dependent)</li>
          </ul>
        </div>

        <div class="cm-card">
          <h3>Security first</h3>
          <p>Practical defaults to reduce risk from day one.</p>
          <ul>
            <li>Free SSL and HTTPS support</li>
            <li>Hardened server configuration</li>
            <li>Optional malware cleanup workflow</li>
          </ul>
        </div>

        <div class="cm-card">
          <h3>Email included</h3>
          <p>Professional mailboxes with deliverability guidance.</p>
          <ul>
            <li>IMAP/SMTP + webmail</li>
            <li>SPF/DKIM/DMARC help</li>
            <li>Mailbox limits by plan</li>
          </ul>
        </div>
      </div>
    </div>
  </section>

  <!-- BACKUPS + MONITORING (split) -->
  <section class="cm-section">
    <div class="cm-wrap">
      <div class="cm-split">
        <div class="left">
          <h2 class="cm-h2">Automated daily backups</h2>
          <p class="cm-p">We take regular backups and keep restore points (retention depends on plan) so you can recover quickly after mistakes, plugin issues, or incidents.</p>
          <div class="cm-stack" aria-label="Backup features">
            <span class="cm-chip">Daily snapshots</span>
            <span class="cm-chip">30‑day retention (plan dependent)</span>
            <span class="cm-chip">Fast restore workflow</span>
          </div>
        </div>
        <div class="right">
          <h2 class="cm-h2">24/7/365 proactive monitoring</h2>
          <p class="cm-p">We monitor uptime, load, and network health continuously and respond when something looks abnormal—so you don’t have to babysit hosting.</p>
          <div class="cm-stack" aria-label="Monitoring features">
            <span class="cm-chip">Uptime monitoring</span>
            <span class="cm-chip">Resource alerts</span>
            <span class="cm-chip">Incident response</span>
          </div>
        </div>
      </div>

      <div class="cm-cta" role="region" aria-label="Support call to action">
        <div>
          <strong>Not sure which plan to pick?</strong>
          <p>Tell us your site type (WordPress/store/agency) and monthly traffic estimate, and we’ll recommend the best fit.</p>
        </div>
        <div class="cm-ctas">
          <a class="cm-btn cm-btn-primary" href="{$WEB_ROOT}/contact">Chat with Sales</a>
          <a class="cm-btn cm-btn-ghost" href="{$WEB_ROOT}/submitticket.php">Ask Support</a>
        </div>
      </div>
    </div>
  </section>

  <!-- TECH STACK -->
  <section class="cm-section cm-alt">
    <div class="cm-wrap">
      <div class="cm-center">
        <h2 class="cm-h2">Modern hosting stack</h2>
        <p class="cm-p">Built for speed, easier management, and predictable operations.</p>
      </div>

      <div class="cm-grid">
        <div class="cm-card">
          <h3>Control panel</h3>
          <p>CyberPanel with an OpenLiteSpeed-based stack for modern performance.</p>
        </div>
        <div class="cm-card">
          <h3>Developer-friendly</h3>
          <p>Works well for common PHP apps; supports clean deployments and best-practice site structure.</p>
        </div>
        <div class="cm-card">
          <h3>Safety + limits</h3>
          <p>Shared hosting includes sensible limits to protect all tenants from noisy-neighbor abuse.</p>
        </div>
      </div>
    </div>
  </section>

  <!-- FAQ -->
  <section class="cm-section">
    <div class="cm-wrap cm-center">
      <h2 class="cm-h2">Frequently asked questions</h2>
      <p class="cm-p">Clear answers about performance, email, security, and upgrades.</p>
    </div>

    <div class="cm-wrap">
      <div class="accordion faq pt-3" id="cmFaq">

        <h3>Getting started</h3>

        <div class="panel-wrap">
          <div class="panel-title seccolor active" data-bs-toggle="collapse" data-bs-target="#cmfaq-1" aria-expanded="true" aria-controls="cmfaq-1">
            <span>Is CyberPanel included (instead of cPanel)?</span>
            <div class="float-end"><i class="fa fa-plus"></i><i class="fa fa-minus c-pink"></i></div>
          </div>
          <div id="cmfaq-1" class="panel-collapse collapse show" data-bs-parent="#cmFaq">
            <div class="wrapper-collapse"><div class="info">
              <p>Yes. Cloudman shared hosting includes CyberPanel built around OpenLiteSpeed for modern performance and easier site management.</p>
            </div></div>
          </div>
        </div>

        <div class="panel-wrap">
          <div class="panel-title seccolor" data-bs-toggle="collapse" data-bs-target="#cmfaq-2" aria-expanded="false" aria-controls="cmfaq-2">
            <span>Do you help migrate my website from another host?</span>
            <div class="float-end"><i class="fa fa-plus"></i><i class="fa fa-minus c-pink"></i></div>
          </div>
          <div id="cmfaq-2" class="panel-collapse collapse" data-bs-parent="#cmFaq">
            <div class="wrapper-collapse"><div class="info">
              <p>Yes. We can migrate many WordPress and common PHP sites. Share your total size, number of sites, and whether email migration is needed.</p>
            </div></div>
          </div>
        </div>

        <h3>Performance</h3>

        <div class="panel-wrap">
          <div class="panel-title seccolor" data-bs-toggle="collapse" data-bs-target="#cmfaq-3" aria-expanded="false" aria-controls="cmfaq-3">
            <span>Why is NVMe hosting faster than regular SSD?</span>
            <div class="float-end"><i class="fa fa-plus"></i><i class="fa fa-minus c-pink"></i></div>
          </div>
          <div id="cmfaq-3" class="panel-collapse collapse" data-bs-parent="#cmFaq">
            <div class="wrapper-collapse"><div class="info">
              <p>NVMe typically delivers lower latency and higher throughput, which helps databases and dynamic pages respond faster—especially during traffic spikes and admin tasks.</p>
            </div></div>
          </div>
        </div>

        <div class="panel-wrap">
          <div class="panel-title seccolor" data-bs-toggle="collapse" data-bs-target="#cmfaq-4" aria-expanded="false" aria-controls="cmfaq-4">
            <span>Do you support caching for WordPress?</span>
            <div class="float-end"><i class="fa fa-plus"></i><i class="fa fa-minus c-pink"></i></div>
          </div>
          <div id="cmfaq-4" class="panel-collapse collapse" data-bs-parent="#cmFaq">
            <div class="wrapper-collapse"><div class="info">
              <p>Yes. We support modern caching options aligned with OpenLiteSpeed/CyberPanel setups, and we can suggest best-practice WordPress caching configurations.</p>
            </div></div>
          </div>
        </div>

        <h3>Email</h3>

        <div class="panel-wrap">
          <div class="panel-title seccolor" data-bs-toggle="collapse" data-bs-target="#cmfaq-5" aria-expanded="false" aria-controls="cmfaq-5">
            <span>Does shared hosting include email hosting?</span>
            <div class="float-end"><i class="fa fa-plus"></i><i class="fa fa-minus c-pink"></i></div>
          </div>
          <div id="cmfaq-5" class="panel-collapse collapse" data-bs-parent="#cmFaq">
            <div class="wrapper-collapse"><div class="info">
              <p>Yes. Email is included; mailbox limits depend on your plan. You can use webmail or connect Gmail/Outlook via IMAP/SMTP.</p>
            </div></div>
          </div>
        </div>

        <div class="panel-wrap">
          <div class="panel-title seccolor" data-bs-toggle="collapse" data-bs-target="#cmfaq-6" aria-expanded="false" aria-controls="cmfaq-6">
            <span>Will you help with SPF/DKIM/DMARC?</span>
            <div class="float-end"><i class="fa fa-plus"></i><i class="fa fa-minus c-pink"></i></div>
          </div>
          <div id="cmfaq-6" class="panel-collapse collapse" data-bs-parent="#cmFaq">
            <div class="wrapper-collapse"><div class="info">
              <p>Yes. We provide the right DNS records and guidance to improve deliverability and reduce spam issues.</p>
            </div></div>
          </div>
        </div>

        <h3>Security & upgrades</h3>

        <div class="panel-wrap">
          <div class="panel-title seccolor" data-bs-toggle="collapse" data-bs-target="#cmfaq-7" aria-expanded="false" aria-controls="cmfaq-7">
            <span>Do plans include free SSL certificates?</span>
            <div class="float-end"><i class="fa fa-plus"></i><i class="fa fa-minus c-pink"></i></div>
          </div>
          <div id="cmfaq-7" class="panel-collapse collapse" data-bs-parent="#cmFaq">
            <div class="wrapper-collapse"><div class="info">
              <p>Yes. Free SSL is available so your sites can run on HTTPS by default.</p>
            </div></div>
          </div>
        </div>

        <div class="panel-wrap">
          <div class="panel-title seccolor" data-bs-toggle="collapse" data-bs-target="#cmfaq-8" aria-expanded="false" aria-controls="cmfaq-8">
            <span>Can I upgrade later without migrating?</span>
            <div class="float-end"><i class="fa fa-plus"></i><i class="fa fa-minus c-pink"></i></div>
          </div>
          <div id="cmfaq-8" class="panel-collapse collapse" data-bs-parent="#cmFaq">
            <div class="wrapper-collapse"><div class="info">
              <p>Yes. Upgrades are designed to be seamless; in most cases, you won’t need to move your site to a new server.</p>
            </div></div>
          </div>
        </div>

      </div>

      <div class="cm-cta">
        <div>
          <strong>Ready to launch?</strong>
          <p>Pick a plan and deploy your site today. If you get stuck, our team can help.</p>
        </div>
        <div class="cm-ctas">
          <a class="cm-btn cm-btn-primary" href="{$WEB_ROOT}/cart.php?a=add&pid=101">Start with Launch</a>
          <a class="cm-btn cm-btn-ghost" href="{$WEB_ROOT}/cart.php?a=add&pid=102">Choose Business</a>
        </div>
      </div>
    </div>
  </section>

</div>

<script>
/* Optional: small UX helper (no dependencies).
   If Bootstrap collapse exists, it will handle toggling.
   This just improves keyboard accessibility for panel titles. */
document.addEventListener('DOMContentLoaded', function () {
  document.querySelectorAll('.cm-hosting .accordion.faq .panel-title').forEach(function (t) {
    t.setAttribute('role', 'button');
    t.setAttribute('tabindex', '0');
    t.addEventListener('keydown', function (e) {
      if (e.key === 'Enter' || e.key === ' ') { e.preventDefault(); t.click(); }
    });
  });
});
</script>
