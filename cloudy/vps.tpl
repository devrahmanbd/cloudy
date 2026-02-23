<!-- =========================
 Cloudman KVM VPS (Upcoming) Page
 WHMCS-friendly, responsive, scoped CSS
========================== -->

<style>
/* Scoped under .cm-kvm so it won't affect other pages */
.cm-kvm { --cm-accent:#fdd700; --cm-bg1:#0f1225; --cm-bg2:#131a35; --cm-text:rgba(255,255,255,.92); --cm-muted:rgba(255,255,255,.72); }
.cm-kvm .cm-wrap { max-width:1200px; margin:0 auto; padding:0 16px; }

.cm-kvm .cm-hero { position:relative; overflow:hidden; background:linear-gradient(135deg,#0b1b3a 0%,#1a2a55 100%); padding:86px 0 52px; }
.cm-kvm .cm-hero:before { content:""; position:absolute; inset:0; background:rgba(0,0,0,.50); }
.cm-kvm .cm-hero > * { position:relative; z-index:1; }

.cm-kvm .cm-title { color:#fff; font-weight:900; line-height:1.12; letter-spacing:-.6px; font-size:clamp(30px,4.4vw,54px); margin:0 0 12px; }
.cm-kvm .cm-sub { color:var(--cm-text); font-size:clamp(15px,1.35vw,18px); line-height:1.75; margin:0 0 18px; max-width:760px; }

.cm-kvm .cm-alert {
  display:flex; align-items:flex-start; gap:12px; flex-wrap:wrap;
  background:rgba(253,215,0,.12); border:1px solid rgba(253,215,0,.35);
  border-radius:16px; padding:14px 14px; margin:18px 0 0;
}
.cm-kvm .cm-alert strong { color:#fff; font-weight:900; }
.cm-kvm .cm-alert p { margin:0; color:rgba(255,255,255,.82); line-height:1.6; }

.cm-kvm .cm-ctas { display:flex; gap:12px; flex-wrap:wrap; margin-top:18px; }
.cm-kvm .cm-btn { display:inline-flex; align-items:center; justify-content:center; gap:8px; padding:13px 20px; border-radius:999px; font-weight:900; text-decoration:none; transition:.2s ease; white-space:nowrap; }
.cm-kvm .cm-btn-primary { background:var(--cm-accent); color:#000; }
.cm-kvm .cm-btn-primary:hover { filter:brightness(.95); transform:translateY(-1px); }
.cm-kvm .cm-btn-ghost { background:rgba(255,255,255,.08); border:1px solid rgba(255,255,255,.14); color:#fff; }
.cm-kvm .cm-btn-ghost:hover { background:rgba(255,255,255,.12); transform:translateY(-1px); }

.cm-kvm .cm-section { padding:64px 0; background:var(--cm-bg1); }
.cm-kvm .cm-section.cm-alt { background:var(--cm-bg2); }
.cm-kvm .cm-center { text-align:center; }
.cm-kvm .cm-h2 { color:#fff; font-size:clamp(22px,2.4vw,34px); font-weight:900; letter-spacing:-.4px; margin:0 0 10px; }
.cm-kvm .cm-p { color:var(--cm-muted); margin:0; line-height:1.8; }

.cm-kvm .cm-grid { display:grid; grid-template-columns:repeat(12,1fr); gap:18px; margin-top:26px; }
.cm-kvm .cm-card { grid-column:span 4; background:rgba(255,255,255,.04); border:1px solid rgba(255,255,255,.10); border-radius:18px; padding:18px; }
.cm-kvm .cm-card h3 { color:#fff; font-size:18px; margin:0 0 8px; font-weight:900; }
.cm-kvm .cm-card p { color:var(--cm-muted); margin:0; line-height:1.7; }
.cm-kvm .cm-card ul { margin:14px 0 0; padding-left:18px; color:var(--cm-muted); }
.cm-kvm .cm-card li { margin:6px 0; }

.cm-kvm .cm-plans { margin-top:26px; display:grid; grid-template-columns:repeat(12,1fr); gap:18px; }
.cm-kvm .cm-plan { grid-column:span 4; background:linear-gradient(180deg, rgba(255,255,255,.06), rgba(255,255,255,.03)); border:1px solid rgba(255,255,255,.12); border-radius:22px; padding:22px; position:relative; }
.cm-kvm .cm-pill { position:absolute; top:16px; right:16px; background:rgba(255,255,255,.10); border:1px solid rgba(255,255,255,.16); color:#fff; font-weight:900; font-size:11px; letter-spacing:.5px; padding:7px 10px; border-radius:999px; text-transform:uppercase; }
.cm-kvm .cm-plan-name { color:#fff; font-weight:900; font-size:20px; margin:0 0 6px; }
.cm-kvm .cm-plan-for { color:var(--cm-muted); margin:0 0 12px; }
.cm-kvm .cm-price { display:flex; align-items:baseline; gap:8px; margin:10px 0 14px; opacity:.85; }
.cm-kvm .cm-price strong { color:#fff; font-size:34px; letter-spacing:-.6px; }
.cm-kvm .cm-price span { color:var(--cm-muted); }

.cm-kvm .cm-btn-disabled {
  width:100%; border-radius:14px; padding:13px 14px;
  background:rgba(255,255,255,.08); border:1px solid rgba(255,255,255,.14);
  color:rgba(255,255,255,.65); cursor:not-allowed; text-align:center;
  font-weight:900; text-decoration:none; display:inline-flex; justify-content:center;
}
.cm-kvm .cm-btn-disabled:hover { transform:none; }

.cm-kvm .cm-spec { margin:14px 0 0; padding:0; list-style:none; display:grid; gap:10px; }
.cm-kvm .cm-spec li { display:flex; justify-content:space-between; gap:12px; color:var(--cm-muted); border-top:1px dashed rgba(255,255,255,.12); padding-top:10px; }
.cm-kvm .cm-spec b { color:#fff; font-weight:900; }

.cm-kvm .cm-cta {
  background:linear-gradient(135deg, rgba(253,215,0,.12), rgba(255,255,255,.04));
  border:1px solid rgba(255,255,255,.12);
  border-radius:22px; padding:22px; margin-top:28px;
  display:flex; align-items:center; justify-content:space-between; gap:14px; flex-wrap:wrap;
}
.cm-kvm .cm-cta p { margin:0; color:var(--cm-muted); }
.cm-kvm .cm-cta strong { color:#fff; font-weight:900; }

.cm-kvm .cm-note { margin-top:14px; color:rgba(255,255,255,.70); font-size:13px; line-height:1.7; }

.cm-kvm .cm-form { display:flex; gap:10px; flex-wrap:wrap; align-items:center; }
.cm-kvm .cm-input {
  min-width:240px; flex:1;
  padding:12px 14px; border-radius:14px;
  border:1px solid rgba(255,255,255,.14); background:rgba(0,0,0,.15);
  color:#fff; outline:none;
}
.cm-kvm .cm-input::placeholder { color:rgba(255,255,255,.55); }

@media (max-width: 991px){
  .cm-kvm .cm-card, .cm-kvm .cm-plan { grid-column:span 12; }
  .cm-kvm .cm-hero { padding:72px 0 44px; }
}
@media (max-width: 480px){
  .cm-kvm .cm-ctas { flex-direction:column; align-items:stretch; }
  .cm-kvm .cm-btn, .cm-kvm .cm-btn-disabled { width:100%; }
  .cm-kvm .cm-form { flex-direction:column; align-items:stretch; }
  .cm-kvm .cm-input { width:100%; min-width:0; }
}
</style>

<div class="cm-kvm">

  <!-- HERO -->
  <section class="cm-hero">
    <div class="cm-wrap">
      <h1 class="cm-title">KVM VPS</h1>
      <p class="cm-sub">
        High-isolation virtual servers for developers, agencies, and production workloads—ideal for custom stacks, containers, and predictable performance.
      </p>

      <div class="cm-alert" role="status" aria-live="polite">
        <strong>Upcoming:</strong>
        <p>KVM VPS plans are not available for purchase yet. Join the waitlist and we’ll notify you when ordering opens.</p>
      </div>

      <div class="cm-ctas">
        <a class="cm-btn cm-btn-primary" href="#waitlist">Join Waitlist</a>
        <a class="cm-btn cm-btn-ghost" href="{$WEB_ROOT}/contact">Talk to Sales</a>
        <a class="cm-btn cm-btn-ghost" href="{$WEB_ROOT}/submitticket.php">Ask Support</a>
      </div>

      <p class="cm-note">
        Tip: If you need VPS today, contact us and we can suggest an interim solution based on your workload and region.
      </p>
    </div>
  </section>

  <!-- WHAT IT'S FOR -->
  <section class="cm-section">
    <div class="cm-wrap cm-center">
      <h2 class="cm-h2">What you’ll use KVM VPS for</h2>
      <p class="cm-p">Full control for apps that don’t fit shared hosting—while staying cost-effective.</p>
    </div>

    <div class="cm-wrap">
      <div class="cm-grid">
        <div class="cm-card">
          <h3>Custom stacks</h3>
          <p>Run your preferred web server, runtime, and services—your way.</p>
          <ul>
            <li>Nginx/Apache/OpenLiteSpeed</li>
            <li>Node/PHP/Python</li>
            <li>Redis/MariaDB/PostgreSQL</li>
          </ul>
        </div>
        <div class="cm-card">
          <h3>Isolation & control</h3>
          <p>Dedicated resources per VPS and better isolation vs shared environments.</p>
          <ul>
            <li>Root access (planned)</li>
            <li>Dedicated CPU/RAM allocation (planned)</li>
            <li>Private networking options (planned)</li>
          </ul>
        </div>
        <div class="cm-card">
          <h3>Scale-ready</h3>
          <p>Start small and grow as traffic increases or your app expands.</p>
          <ul>
            <li>Easy plan upgrades (planned)</li>
            <li>Snapshots/backups (planned)</li>
            <li>Monitoring and alerts (planned)</li>
          </ul>
        </div>
      </div>
    </div>
  </section>

  <!-- UPCOMING PLANS (disabled) -->
  <section class="cm-section cm-alt">
    <div class="cm-wrap cm-center">
      <h2 class="cm-h2">Planned KVM VPS tiers (coming soon)</h2>
      <p class="cm-p">These are placeholder specs to show direction. Final pricing/specs may change.</p>
    </div>

    <div class="cm-wrap">
      <div class="cm-plans">
        <div class="cm-plan">
          <div class="cm-pill">Upcoming</div>
          <div class="cm-plan-name">KVM Starter</div>
          <p class="cm-plan-for">For small apps & dev environments.</p>
          <div class="cm-price"><strong>$6.99</strong><span>/mo (est.)</span></div>
          <a class="cm-btn-disabled" href="javascript:void(0)" aria-disabled="true">Not available yet</a>
          <ul class="cm-spec">
            <li><span>vCPU</span><b>1</b></li>
            <li><span>RAM</span><b>1 GB</b></li>
            <li><span>NVMe</span><b>25 GB</b></li>
            <li><span>Bandwidth</span><b>1 TB</b></li>
            <li><span>IPv4</span><b>1 (planned)</b></li>
          </ul>
        </div>

        <div class="cm-plan">
          <div class="cm-pill">Upcoming</div>
          <div class="cm-plan-name">KVM Pro</div>
          <p class="cm-plan-for">For production websites and APIs.</p>
          <div class="cm-price"><strong>$12.99</strong><span>/mo (est.)</span></div>
          <a class="cm-btn-disabled" href="javascript:void(0)" aria-disabled="true">Not available yet</a>
          <ul class="cm-spec">
            <li><span>vCPU</span><b>2</b></li>
            <li><span>RAM</span><b>4 GB</b></li>
            <li><span>NVMe</span><b>60 GB</b></li>
            <li><span>Bandwidth</span><b>2 TB</b></li>
            <li><span>Backups</span><b>Optional (planned)</b></li>
          </ul>
        </div>

        <div class="cm-plan">
          <div class="cm-pill">Upcoming</div>
          <div class="cm-plan-name">KVM Scale</div>
          <p class="cm-plan-for">For heavier workloads and teams.</p>
          <div class="cm-price"><strong>$24.99</strong><span>/mo (est.)</span></div>
          <a class="cm-btn-disabled" href="javascript:void(0)" aria-disabled="true">Not available yet</a>
          <ul class="cm-spec">
            <li><span>vCPU</span><b>4</b></li>
            <li><span>RAM</span><b>8 GB</b></li>
            <li><span>NVMe</span><b>120 GB</b></li>
            <li><span>Bandwidth</span><b>4 TB</b></li>
            <li><span>Support</span><b>Priority option (planned)</b></li>
          </ul>
        </div>
      </div>

      <p class="cm-note">
        “Planned” items depend on vendor availability and final launch scope. If you need a specific feature (IPv6, backups, location), use the waitlist form below and mention it.
      </p>
    </div>
  </section>

  <!-- WAITLIST -->
  <section id="waitlist" class="cm-section">
    <div class="cm-wrap">
      <div class="cm-center">
        <h2 class="cm-h2">Get notified at launch</h2>
        <p class="cm-p">Leave your email and we’ll notify you when KVM VPS ordering is open.</p>
      </div>

      <div class="cm-cta" role="region" aria-label="Waitlist signup">
        <div>
          <strong>Join the KVM VPS waitlist</strong>
          <p>We’ll send one launch email (no spam). For business needs, contact sales for early access discussion.</p>
        </div>

        <!-- Simple, WHMCS-friendly approach:
             Use WHMCS contact form with subject prefilled.
             If you have a newsletter system, swap this for your embed. -->
        <div class="cm-form">
          <input id="kvmEmail" class="cm-input" type="email" placeholder="Your email address" autocomplete="email">
          <a id="kvmNotifyBtn" class="cm-btn cm-btn-primary" href="{$WEB_ROOT}/contact?subject=KVM%20VPS%20Waitlist">Notify me</a>
        </div>
      </div>

      <p class="cm-note">
        Prefer tickets? Open one here: <a href="{$WEB_ROOT}/submitticket.php" style="color:#fff; text-decoration:underline;">Support ticket</a>.
      </p>
    </div>
  </section>

</div>

<script>
/* Small helper: if user types email, include it in the contact message via URL.
   Keeps it WHMCS-friendly without backend changes. */
document.addEventListener('DOMContentLoaded', function () {
  var email = document.getElementById('kvmEmail');
  var btn = document.getElementById('kvmNotifyBtn');
  if (!email || !btn) return;

  function updateLink() {
    var v = (email.value || '').trim();
    var base = "{$WEB_ROOT}/contact?subject=KVM%20VPS%20Waitlist";
    if (!v) { btn.setAttribute('href', base); return; }
    btn.setAttribute('href', base + "&message=" + encodeURIComponent("Please add me to the KVM VPS waitlist. Email: " + v));
  }
  email.addEventListener('input', updateLink);
  updateLink();
});
</script>
