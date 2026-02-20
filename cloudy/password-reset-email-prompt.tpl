<div class="bg-seccolorstyle" style="min-height: 100vh; padding: 80px 20px; display: flex; align-items: center; justify-content: center;">

  <div style="
    max-width: 440px; 
    width: 100%; 
    background: rgba(255,255,255,0.03); 
    backdrop-filter: blur(20px); 
    border: 1px solid rgba(255,255,255,0.08); 
    border-radius: 24px; 
    padding: 3rem 2.25rem; 
    box-shadow: 0 25px 80px rgba(0,0,0,0.4); 
    box-sizing: border-box;
  ">

    <!-- HEADER -->
    <div style="text-align: center; margin-bottom: 2.25rem;">
      <div style="
        width: 68px; 
        height: 68px; 
        margin: 0 auto 1rem; 
        background: rgba(253,215,0,0.12); 
        border: 1px solid rgba(253,215,0,0.25); 
        border-radius: 14px; 
        display: flex; 
        align-items: center; 
        justify-content: center;
      ">
        <i class="icon-lock" style="font-size: 3.5rem; color: #fdd700;"></i>
      </div>
      <h2 class="mergecolor" style="
        font-size: 2.1rem; 
        font-weight: 700; 
        margin: 0 0 0.6rem 0; 
        letter-spacing: -0.015em;
      ">
        Reset Password
      </h2>
      <p class="mergecolor" style="
        font-size: 1.2rem; 
        margin: 0; 
        opacity: 0.75; 
        line-height: 1.65;
      ">
        {$LANG.pwresetemailneeded}
      </p>
    </div>

    <!-- FORM -->
    <form method="post" action="{routePath('password-reset-validate-email')}" role="form">
      <input type="hidden" name="action" value="reset" />

      <!-- EMAIL FIELD -->
      <div style="margin-bottom: 1.75rem;">
        <label for="inputEmail" class="mergecolor" style="
          display: block; 
          font-size: 0.9rem; 
          font-weight: 600; 
          text-transform: uppercase; 
          letter-spacing: 0.06em; 
          margin-bottom: 0.65rem; 
          opacity: 0.65;
        ">
          Email Address
        </label>
        <div style="position: relative;">
          <input type="email" 
                 name="email" 
                 class="form-control" 
                 id="inputEmail" 
                 placeholder="yourname@domain.com" 
                 autofocus 
                 style="
                   max-width: 39rem; 
                   width: 100%; 
                   padding: 1.15rem 1.4rem; 
                   border: 1px solid rgba(255,255,255,0.15); 
                   border-radius: 12px; 
                   background: rgba(255,255,255,0.05); 
                   color: #fff; 
                   font-size: 1rem;
                   backdrop-filter: blur(10px);
                 " />
        </div>
      </div>

      {if $captcha->isEnabled()}
        <div style="margin-bottom: 1.75rem;">
          {include file="$template/includes/captcha.tpl"}
        </div>
      {/if}

      <!-- SUBMIT BUTTON -->
      <button type="submit" class="btn btn-default-yellow-fill {$captcha->getButtonClass($captchaForm)}" style="
        width: 100%; 
        padding: 1.3rem 2rem; 
        font-size: 15px; 
        font-weight: 700; 
        border-radius: 12px; 
        background: linear-gradient(135deg, #fdd700 0%, #f5cc00 100%); 
        color: #000; 
        border: none; 
        box-shadow: 0 12px 40px rgba(253,215,0,0.30); 
        transition: all 0.25s cubic-bezier(0.4,0,0.2,1);
      ">
        {$LANG.pwresetsubmit}
      </button>

    </form>

    <!-- BACK LINK -->
    <div style="margin-top: 2rem; text-align: center;">
      <a href="{$WEB_ROOT}/login" class="mergecolor" style="
        display: inline-flex; 
        align-items: center; 
        gap: 0.4rem; 
        color: rgba(255,255,255,0.7); 
        text-decoration: none; 
        font-weight: 600; 
        font-size: 1rem; 
        padding: 0.7rem 1.2rem; 
        border: 1px solid rgba(255,255,255,0.12); 
        border-radius: 10px; 
        backdrop-filter: blur(10px); 
        transition: all 0.2s ease;
      ">
        ← Back to Login
      </a>
    </div>

  </div>

</div>

<style>
  /* ── FIXED: EMAIL INPUT CONTAINER ── */
  .cx-password-section input:focus {
    outline: none;
    border-color: rgba(253,215,0,0.5);
    box-shadow: 0 0 0 3px rgba(253,215,0,0.15);
    background: rgba(255,255,255,0.08);
  }

  /* ── BUTTON HOVER ── */
  .cx-password-section button:hover {
    transform: translateY(-2px);
    box-shadow: 0 20px 55px rgba(253,215,0,0.45);
  }
  .cx-password-section button:active {
    transform: translateY(0);
  }

  /* ── LINK HOVER ── */
  .cx-password-section a:hover {
    background: rgba(255,255,255,0.08);
    color: #fff;
    border-color: rgba(255,255,255,0.25);
    transform: translateY(-1px);
  }

  /* ── RESPONSIVE ── */
  @media (max-width: 640px) {
    .cx-password-section {
      padding: 2rem 1rem;
    }
    .cx-password-card {
      padding: 2.25rem 1.75rem !important;
      max-width: 95vw;
    }
    .cx-password-section input[type='email'] {
      max-width: 100% !important;
    }
  }
</style>
