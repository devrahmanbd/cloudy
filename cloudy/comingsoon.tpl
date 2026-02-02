<style>
/* Scoped to avoid affecting other pages */
.cm-soon { --cm-accent:#fdd700; --cm-bg1:#0f1225; --cm-bg2:#131a35; --cm-text:rgba(255,255,255,.92); --cm-muted:rgba(255,255,255,.72); }
.cm-soon * { box-sizing:border-box; }
.cm-soon .cm-wrap { max-width:1100px; margin:0 auto; padding:0 16px; }

.cm-soon .hero {
  position:relative; overflow:hidden; min-height:70vh;
  display:flex; align-items:center;
  background:linear-gradient(135deg,#0f3460 0%, #16213e 100%);
  padding:84px 0;
}
.cm-soon .hero:before { content:""; position:absolute; inset:0; background:rgba(0,0,0,.50); }
.cm-soon .hero:after {
  content:""; position:absolute; inset:-40%;
  background:
    radial-gradient(circle at 20% 20%, rgba(253,215,0,.12) 0 25%, transparent 55%),
    radial-gradient(circle at 80% 30%, rgba(255,77,125,.12) 0 25%, transparent 55%),
    radial-gradient(circle at 60% 90%, rgba(255,255,255,.06) 0 18%, transparent 55%);
  z-index:0;
}
.cm-soon .content { position:relative; z-index:1; width:100%; }

.cm-soon .badge{
  display:inline-flex; align-items:center; gap:10px;
  padding:8px 12px; border-radius:999px;
  background:rgba(255,255,255,.10);
  border:1px solid rgba(255,255,255,.16);
  color:#fff; font-weight:900; letter-spacing:.4px; text-transform:uppercase; font-size:11px;
}
.cm-soon .dot{
  width:10px; height:10px; border-radius:50%;
  background:var(--cm-accent);
  box-shadow:
    0 0 0 4px rgba(253,215,0,.18),
    0 0 16px 6px rgba(253,215,0,.25);
}

.cm-soon h1 {
  color:#fff; font-weight:900; letter-spacing:-.7px; line-height:1.12;
  font-size:clamp(30px,4.6vw,56px);
  margin:16px 0 10px;
}
.cm-soon p {
  color:var(--cm-text);
  font-size:clamp(15px,1.3vw,18px);
  line-height:1.75;
  margin:0 0 18px;
  max-width:760px;
}

.cm-soon .grid { display:grid; grid-template-columns:repeat(12,1fr); gap:16px; margin-top:22px; }
.cm-soon .card {
  grid-column:span 6;
  background:rgba(255,255,255,.05);
  border:1px solid rgba(255,255,255,.12);
  border-radius:18px;
  padding:18px;
}
.cm-soon .card h3 { color:#fff; margin:0 0 6px; font-size:16px; font-weight:900; }
.cm-soon .card p { margin:0; color:var(--cm-muted); font-size:14px; }

.cm-soon .countdown { display:flex; gap:10px; flex-wrap:wrap; margin-top:12px; }
.cm-soon .unit{
  min-width:110px;
  background:rgba(0,0,0,.18);
  border:1px solid rgba(255,255,255,.12);
  border-radius:16px;
  padding:12px;
  text-align:center;
}
.cm-soon .unit strong { display:block; font-size:28px; color:#fff; font-weight:900; letter-spacing:-.4px; }
.cm-soon .unit span { display:block; font-size:12px; color:rgba(255,255,255,.75); margin-top:2px; text-transform:uppercase; letter-spacing:.6px; }

.cm-soon .form { display:flex; gap:10px; flex-wrap:wrap; align-items:center; margin-top:12px; }
.cm-soon .input{
  flex:1; min-width:240px;
  padding:12px 14px; border-radius:14px;
  border:1px solid rgba(255,255,255,.16);
  background:rgba(0,0,0,.18);
  color:#fff; outline:none;
}
.cm-soon .input::placeholder { color:rgba(255,255,255,.55); }

.cm-soon .btn{
  display:inline-flex; justify-content:center; align-items:center; gap:8px;
  padding:12px 16px; border-radius:999px;
  font-weight:900; text-decoration:none; border:0; cursor:pointer;
  transition:.18s ease;
  white-space:nowrap;
}
.cm-soon .btn-primary { background:var(--cm-accent); color:#000; }
.cm-soon .btn-primary:hover { filter:brightness(.96); transform:translateY(-1px); }
.cm-soon .btn-ghost {
  background:rgba(255,255,255,.09);
  border:1px solid rgba(255,255,255,.14);
  color:#fff;
}
.cm-soon .btn-ghost:hover { background:rgba(255,255,255,.12); transform:translateY(-1px); }

.cm-soon .links { display:flex; gap:10px; flex-wrap:wrap; margin-top:18px; }
.cm-soon .note { margin-top:14px; color:rgba(255,255,255,.70); font-size:13px; line-height:1.7; }

@media (max-width: 991px){ .cm-soon .card { grid-column:span 12; } }
@media (max-width: 520px){
  .cm-soon .unit { min-width:calc(50% - 6px); }
  .cm-soon .btn { width:100%; }
  .cm-soon .form { flex-direction:column; align-items:stretch; }
  .cm-soon .input { width:100%; min-width:0; }
}
</style>

<div class="cm-soon">
  <section class="hero">
    <div class="cm-wrap content">

      <div class="badge"><span class="dot"></span> Coming soon</div>

      <h1>We’re building something new</h1>
      <p>
        This page is under construction and will be available soon. Join the waitlist and we’ll notify you when we launch.
      </p>

      <div class="grid">
        <div class="card">
          <h3>Launch countdown</h3>
          <p>Set your launch date in the script below (optional). If you don’t want a countdown, remove this card.</p>

          <div class="countdown" aria-live="polite">
            <div class="unit"><strong id="cmDays">--</strong><span>Days</span></div>
            <div class="unit"><strong id="cmHours">--</strong><span>Hours</span></div>
            <div class="unit"><strong id="cmMins">--</strong><span>Minutes</span></div>
            <div class="unit"><strong id="cmSecs">--</strong><span>Seconds</span></div>
          </div>

          <div class="note" id="cmCountdownNote">Countdown will appear once a valid launch date is set.</div>
        </div>

        <div class="card" id="notify">
          <h3>Get notified</h3>
          <p>We’ll send one email when the page is live (no spam).</p>

          <!-- IMPORTANT: this posts into WHMCS root /comingsoon-subscribe.php -->
          <form class="form" method="post" action="{$WEB_ROOT}/comingsoon-subscribe.php" id="cmForm">
            <input name="email" id="cmEmail" class="input" type="email" placeholder="Your email address" autocomplete="email" required>
            <button class="btn btn-primary" type="submit">Notify me</button>
          </form>

          <div class="links">
            <a class="btn btn-ghost" href="{$WEB_ROOT}/clientarea.php">Client Area</a>
            <a class="btn btn-ghost" href="{$WEB_ROOT}/submitticket.php">Support</a>
            <a class="btn btn-ghost" href="{$WEB_ROOT}/contact.php">Contact</a>
          </div>

          <div class="note" id="cmMsg"></div>
        </div>
      </div>

    </div>
  </section>
</div>

<script>
document.addEventListener('DOMContentLoaded', function () {
  /* Optional countdown */
  var launchIso = "2026-03-01T00:00:00+06:00"; // set "" to disable

  var note = document.getElementById('cmCountdownNote');
  var elD = document.getElementById('cmDays');
  var elH = document.getElementById('cmHours');
  var elM = document.getElementById('cmMins');
  var elS = document.getElementById('cmSecs');

  function pad(n){ return String(n).padStart(2, '0'); }

  function tick() {
    if (!launchIso) { if (note) note.textContent = "Countdown disabled."; return; }
    var t = Date.parse(launchIso);
    if (isNaN(t)) { if (note) note.textContent = "Invalid launch date. Update launchIso in the script."; return; }

    var diff = t - Date.now();
    if (diff <= 0) {
      if (elD) elD.textContent = "00";
      if (elH) elH.textContent = "00";
      if (elM) elM.textContent = "00";
      if (elS) elS.textContent = "00";
      if (note) note.textContent = "We’re live (or launching now).";
      return;
    }

    var s = Math.floor(diff / 1000);
    var days = Math.floor(s / 86400); s -= days * 86400;
    var hours = Math.floor(s / 3600); s -= hours * 3600;
    var mins = Math.floor(s / 60); s -= mins * 60;

    if (elD) elD.textContent = String(days);
    if (elH) elH.textContent = pad(hours);
    if (elM) elM.textContent = pad(mins);
    if (elS) elS.textContent = pad(s);

    if (note) note.textContent = "Launching on: " + launchIso;
  }

  tick();
  setInterval(tick, 1000);

  // Optional: show status message after redirect (?ok=1 / ?err=1)
  var msg = document.getElementById('cmMsg');
  var params = new URLSearchParams(location.search);
  if (msg && params.get('ok') === '1') msg.textContent = "You’re on the list. Thank you!";
  if (msg && params.get('err') === '1') msg.textContent = "Sorry—please try again.";
  if (msg && params.get('err') === 'exists') msg.textContent = "You’re already subscribed.";
});
</script>
