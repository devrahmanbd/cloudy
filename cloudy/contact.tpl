
{if $errormessage}
    {include file="$template/includes/alert.tpl" type="error" errorshtml=$errormessage}
{/if}

<style>
  /* ── LAYOUT ── */
  .cx-section {
    display: flex;
    min-height: 88vh;
    width: 100%;
    box-sizing: border-box;
    overflow: hidden;
  }
  .cx-left {
    flex: 0 0 42%;
    padding: 6rem 5rem;
    display: flex;
    flex-direction: column;
    justify-content: center;
  }
  .cx-right {
    flex: 1;
    padding: 6rem 4.5rem;
    display: flex;
    flex-direction: column;
    justify-content: center;
  }
  .cx-sep {
    width: 1px;
    opacity: 0.10;
    align-self: stretch;
    flex-shrink: 0;
    background: currentColor;
  }

  /* ── EYEBROW PILL (matches mvp-pill from pricing) ── */
  .cx-eyebrow-pill {
    display: inline-flex;
    align-items: center;
    padding: 7px 14px;
    border-radius: 999px;
    font-weight: 800;
    font-size: 11px;
    letter-spacing: 0.25px;
    text-transform: uppercase;
    margin-bottom: 1.5rem;
    color: rgba(255,255,255,0.92);
    background: rgba(255,255,255,0.08);
    border: 1px solid rgba(255,255,255,0.16);
    box-shadow: 0 10px 30px rgba(0,0,0,0.18);
    width: fit-content;
  }

  /* ── HEADING (matches hero-title scale) ── */
  .cx-heading {
    font-size: 5rem;
    font-weight: 800;
    line-height: 1.1;
    margin-bottom: 1.25rem;
    letter-spacing: -0.02em;
  }

  /* ── DESC (matches section-subheading style) ── */
  .cx-desc {
    font-size: 1.45rem;
    line-height: 1.8;
    margin-bottom: 3rem;
    max-width: 380px;
  }

  /* ── CONTACT INFO (matches list-info vibe from pricing) ── */
  .cx-info {
    list-style: none;
    padding: 0;
    margin: 0;
    display: flex;
    flex-direction: column;
    gap: 0;
  }
  .cx-info li {
    display: flex;
    align-items: center;
    gap: 1rem;
    padding: 1rem 0;
    border-bottom: 1px solid rgba(255,255,255,0.07);
  }
  .cx-info li:first-child {
    border-top: 1px solid rgba(255,255,255,0.07);
  }
  .cx-info-icon {
    width: 46px;
    height: 46px;
    border-radius: 12px;
    display: inline-flex;
    align-items: center;
    justify-content: center;
    flex-shrink: 0;
    background: rgba(253,215,0,0.12);
    border: 1px solid rgba(253,215,0,0.24);
  }
  .cx-info-icon i {
    font-size: 2.15rem;
    color: #fdd700;
  }
  .cx-info-label {
    font-size: 0.71rem;
    font-weight: 700;
    text-transform: uppercase;
    letter-spacing: 0.09em;
    opacity: 0.45;
    display: block;
    margin-bottom: 3px;
  }
  .cx-info-value {
    font-size: 1rem;
    font-weight: 600;
    display: block;
    opacity: 0.95;
  }

  /* ── RIGHT: FORM HEADER ── */
  .cx-form-title {
    font-size: 5rem;
    font-weight: 700;
    margin-bottom: 0.35rem;
    letter-spacing: -0.01em;
  }
  .cx-form-sub {
    font-size: 1rem;
    opacity: 0.42;
    margin-bottom: 2rem;
  }

  /* ── FORM GRID ── */
  .cx-grid {
    display: grid;
    grid-template-columns: 1fr 1fr;
    gap: 1.25rem;
  }
  .cx-field {
    display: flex;
    flex-direction: column;
    gap: 0.4rem;
    min-width: 0;
  }
  .cx-field label {
    font-size: 0.78rem;
    font-weight: 700;
    letter-spacing: 0.06em;
    text-transform: uppercase;
    opacity: 0.55;
  }
  .cx-field input,
  .cx-field textarea {
    width: 100%;
    box-sizing: border-box;
    min-width: 0;
  }
  .cx-full { grid-column: 1 / -1; }

  /* ── BUTTON (matches btn-default-yellow-fill + btnShine from pricing) ── */
  .cx-actions {
    margin-top: 2rem;
    display: flex;
    align-items: center;
    gap: 1.25rem;
    flex-wrap: wrap;
  }
  .cx-btn {
    display: inline-flex;
    align-items: center;
    gap: 10px;
    padding: 14px 32px;
    border-radius: 999px;
    background: #fdd700;
    color: #000;
    font-weight: 800;
    font-size: 15px;
    border: none;
    cursor: pointer;
    position: relative;
    overflow: hidden;
    transition: box-shadow 0.25s ease, transform 0.2s ease;
    white-space: nowrap;
    text-decoration: none;
  }
  .cx-btn .cta-arrow {
    display: inline-block;
    transition: transform 0.22s ease;
  }
  .cx-btn:hover .cta-arrow { transform: translateX(6px); }
  .cx-btn:hover {
    box-shadow: 0 16px 45px rgba(253,215,0,0.22), 0 10px 28px rgba(0,0,0,0.28);
    transform: translateY(-2px);
  }
  .cx-btn:after {
    content: "";
    position: absolute;
    top: -30%;
    left: -120%;
    width: 70%;
    height: 160%;
    background: linear-gradient(90deg, transparent, rgba(255,255,255,0.38), transparent);
    transform: skewX(-20deg);
    opacity: 0;
  }
  .cx-btn:hover:after {
    opacity: 0.9;
    animation: cxBtnShine 0.9s ease forwards;
  }
  @keyframes cxBtnShine { to { left: 140%; } }

  .cx-note { font-size: 1rem; opacity: 0.38; }

  /* ── RESPONSIVE ── */
  @media (max-width: 900px) {
    .cx-section { flex-direction: column; min-height: auto; }
    .cx-left { flex: none; padding: 3.5rem 1.5rem 2rem; }
    .cx-sep { display: none; }
    .cx-right { padding: 2rem 1.5rem 4rem; }
    .cx-heading { font-size: 4.5rem; }
    .cx-desc { max-width: 100%; }
    .cx-grid { grid-template-columns: 1fr; }
    .cx-full { grid-column: auto; }
  }
  
.cx-section.bg-seccolorstyle {
    padding-top: 5rem;
}
.cx-right.aos-init.aos-animate {
    padding-bottom: 10rem;
}
</style>

{if !$sent}
<div class="cx-section bg-seccolorstyle">

  {* ── LEFT PANEL ── *}
  <div class="cx-left" data-aos="fade-right" data-aos-duration="900">

    <span class="cx-eyebrow-pill">Get In Touch</span>

    <h1 class="cx-heading hero-title mergecolor">
      We'd Love<br>To Hear<br>From You
    </h1>

    <p class="cx-desc seccolor">
      Have a question, a project in mind, or just want to say hello?
      Fill in the form and we'll get back to you as soon as possible.
    </p>

    <ul class="cx-info">
      <li>
        <span class="cx-info-icon">
          <i class="icon-emailopen"></i>
        </span>
        <span>
          <span class="cx-info-label mergecolor">Email Us</span>
          <a href="mailto:cloud@cloudman.one" class="cx-info-value mergecolor">cloud@cloudman.one</a>
        </span>
      </li>
      <li>
        <span class="cx-info-icon">
          <i class="icon-support"></i>
        </span>
        <span>
          <span class="cx-info-label mergecolor">Call Us</span>
          <a href="tel:+8801540203662" class="cx-info-value mergecolor">+8801540203662</a>
        </span>
      </li>
      <li>
        <span class="cx-info-icon">
          <i class="icon-domains"></i>
        </span>
        <span>
          <span class="cx-info-label mergecolor">Location</span>
          <span class="cx-info-value mergecolor">Dhaka, Bangladesh</span>
        </span>
      </li>
    </ul>

  </div>

  <div class="cx-sep"></div>

  {* ── RIGHT PANEL ── *}
  <div class="cx-right" data-aos="fade-left" data-aos-duration="900">

    <p class="cx-form-title mergecolor">Send Us a Message</p>
    <p class="cx-form-sub mergecolor">All fields are required. We'll respond within 24 hours.</p>

    <form method="post" action="contact" role="form">
      <input type="hidden" name="action" value="send" />

      <div class="cx-grid">

        <div class="cx-field cx-full">
          <label for="inputName" class="mergecolor">{$LANG.supportticketsclientname}</label>
          <input type="text" name="name" value="{$name}" class="form-control" id="inputName" />
        </div>

        <div class="cx-field cx-full">
          <label for="inputEmail" class="mergecolor">{$LANG.supportticketsclientemail}</label>
          <input type="email" name="email" value="{$email}" class="form-control" id="inputEmail" />
        </div>

        <div class="cx-field cx-full">
          <label for="inputSubject" class="mergecolor">{$LANG.supportticketsticketsubject}</label>
          <input type="text" name="subject" value="{$subject}" class="form-control" id="inputSubject" />
        </div>

        <div class="cx-field cx-full">
          <label for="inputMessage" class="mergecolor">{$LANG.contactmessage}</label>
          <textarea name="message" rows="6" class="form-control br-12" id="inputMessage">{$message}</textarea>
        </div>

      </div>

      {if $captcha}
        <div style="margin-top: 1.5rem;">
          {include file="$template/includes/captcha.tpl"}
        </div>
      {/if}

      <div class="cx-actions">
        <button type="submit" class="cx-btn{$captcha->getButtonClass($captchaForm)}">
          {$LANG.contactsend} <span class="cta-arrow">→</span>
        </button>
        <span class="cx-note mergecolor">We typically reply within 24 hours.</span>
      </div>

    </form>
  </div>

</div>
{/if}

{if $sent}
<div class="cx-section bg-seccolorstyle" style="align-items:center;justify-content:center;text-align:center;flex-direction:column;gap:1rem;padding:4rem 2rem;">
  <h2 class="hero-title mergecolor" style="margin:0;">{$LANG.contactsent}</h2>
  <p class="seccolor" style="max-width:420px;margin:0;font-size:1.05rem;">{$LANG.contactsentdesc}</p>
</div>
{/if}
