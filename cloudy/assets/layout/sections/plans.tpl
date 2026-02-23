<section class="pricing pricing special sec-bg2 bg-colorstyle specialposition pricing-focus pricing-focus-v2">
  <div class="container">

    <header class="sec-main-header text-center mb-5 pt-5">
      <h2 class="hero-title mergecolor" data-aos="fade-up" data-aos-duration="800">
        Choose Your Perfect Hosting Plan
      </h2>
      <p class="text-break seccolor section-subheading small-text"
         data-aos="fade-up" data-aos-duration="1200">
        Powerful hosting solutions designed to scale with your business. Get started today with flexible plans and premium features.
      </p>
    </header>

<div class="row justify-content-center pricing-row pricing-gap align-items-start">

  <!-- Launch Plan -->
  <div class="col-12 col-lg-4 d-flex">
    <article class="wrapper first text-left noshadow h-100 pricing-card pricing-standard"
             data-aos="fade-up" data-aos-duration="900">

      <div class="top-content bg-seccolorstyle topradius pricing-top">
        <img class="svg mb-3" src="templates/{$template}/assets/fonts/svg/cloudfiber.svg" alt="">
        <h3 class="title mb-2">Launch</h3>
        <p class="seccolor mb-3">For 1 website & personal projects</p>

        <div class="mvp-pill" aria-label="Key feature">10GB NVMe Storage</div>

        <div class="fromer seccolor">Starting at:</div>
        <div class="price seccolor"><sup>$</sup>7.99 <span class="period">per month</span></div>

        <a href="{$WEB_ROOT}/store/shared-hosting" class="btn btn-default-yellow-fill pricing-cta">
          Order Launch <span class="cta-arrow" aria-hidden="true">→</span>
        </a>

        <div class="pricing-align-spacer" aria-hidden="true"></div>
      </div>

      <ul class="list-info pricing-bottom pricing-bottom-standard">
        <li><i class="icon-drivessd"></i> <span class="c-purple">Storage</span><br><span>10GB NVMe SSD</span></li>
        <li><i class="icon-domains"></i> <span class="c-purple">Websites</span><br><span>+1 Addon Domain</span></li>
        <li><i class="icon-speed"></i> <span class="c-purple">Bandwidth</span><br><span>100GB Transfer</span></li>
        <li><i class="icon-emailopen"></i> <span class="c-purple">Email Accounts</span><br><span>10 Email Accounts</span></li>
        <li><i class="icon-lock"></i> <span class="c-purple">Security</span><br><span>Firewall + Basic DDoS Protection</span></li>
      </ul>

    </article>
  </div>

  <!-- Scale Plan -->
  <div class="col-12 col-lg-4 d-flex">
    <article class="wrapper text-left noshadow h-100 pricing-card pricing-premium"
             data-aos="fade-up" data-aos-duration="900" data-aos-delay="100">

      <div class="plans badge feat bg-pink">Most Popular</div>

      <div class="top-content bg-seccolorstyle topradius pricing-top">
        <img class="svg mb-3" src="templates/{$template}/assets/fonts/svg/dedicated.svg" alt="">
        <h3 class="title mb-2">Scale</h3>
        <p class="seccolor mb-3">For growing teams & businesses</p>

        <div class="mvp-pill mvp-pill-premium" aria-label="Key feature">Daily Backup Included</div>

        <div class="fromer seccolor">Best Value Plan</div>
        <div class="price seccolor"><sup>$</sup>11.99 <span class="period">per month</span></div>

        <a href="{$WEB_ROOT}/store/premium-hosting" class="btn btn-default-yellow-fill pricing-cta">
          Order Scale <span class="cta-arrow" aria-hidden="true">→</span>
        </a>

        <div class="pricing-align-spacer" aria-hidden="true"></div>
      </div>

      <ul class="list-info pricing-bottom pricing-bottom-premium bg-purple">
        <li><i class="icon-drivessd"></i> <span class="c-pink">Storage</span><br><span>25GB NVMe SSD</span></li>
        <li><i class="icon-domains"></i> <span class="c-pink">Websites</span><br><span>+5 Addon Domains</span></li>
        <li><i class="icon-speed"></i> <span class="c-pink">Bandwidth</span><br><span>300GB Transfer</span></li>
        <li><i class="icon-emailopen"></i> <span class="c-pink">Email Accounts</span><br><span>20 Email Accounts</span></li>
        <li><i class="icon-lock"></i> <span class="c-pink">Security</span><br><span>Firewall + Pro DDoS Protection</span></li>
      </ul>

    </article>
  </div>
        <div class="col-12 col-lg-4 d-flex">
        <article class="wrapper first text-left noshadow h-100 pricing-card pricing-standard aos-init aos-animate"
                 data-aos="zoom-in" data-aos-duration="900">

          <div class="top-content bg-seccolorstyle topradius pricing-top pricing-top-trial">
            <div class="trial-badge">TRY IT FREE</div>

            <img class="svg mb-3" src="templates/{$template}/assets/fonts/svg/vps.svg" alt="">
            <h3 class="title mb-2">Request Trial</h3>
            <p class="seccolor mb-3">Try Before You Commit</p>

            <div class="mvp-pill mvp-pill-trial" aria-label="Key feature">No credit card required</div>

            <div class="trial-price-line seccolor">
              <span class="trial-free">FREE</span>
              <span class="trial-days">24 Hours Trial</span>
            </div>

            <a href="{$WEB_ROOT}/contact?subject=trial"
               class="btn btn-default-yellow-fill pricing-cta">
              Request Access <span class="cta-arrow" aria-hidden="true">→</span>
            </a>

            <div class="pricing-align-spacer" aria-hidden="true"></div>
          </div>

          <ul class="list-info pricing-bottom pricing-bottom-trial">
            <li><i class="icon-check"></i> <span class="c-purple">Features</span><br><span>Full Access to All Plans</span></li>
            <li><i class="icon-clock"></i> <span class="c-purple">Duration</span><br><span>24 Hours Free Trial</span></li>
            <li><i class="icon-support"></i> <span class="c-purple">Support</span><br><span>24/7 Expert Assistance</span></li>
          </ul>

        </article>
      </div>
  </div>
</section>

<style>
.pricing-focus-v2 .pricing-gap{
  column-gap: 2rem;
  row-gap: 2.5rem;
  --bs-gutter-x: 0;
  --bs-gutter-y: 0;
}

.pricing-focus-v2 .pricing-card{
  margin-top: 0 !important;
  border-radius: 15px;
  overflow: hidden;
  position: relative;
  isolation: isolate;
  transform: translateZ(0);
  transition: transform .28s ease, box-shadow .28s ease, filter .28s ease;
}

@media (hover:hover){
  .pricing-focus-v2 .pricing-card:hover{
    transform: translateY(-10px) scale(1.01);
    box-shadow: 0 22px 70px rgba(0,0,0,.45), 0 0 0 1px rgba(255,255,255,.06) inset;
    filter: saturate(1.06) contrast(1.02);
  }
}

.pricing-focus-v2 .pricing-card:before{
  content:"";
  position:absolute;
  inset:-2px;
  background: conic-gradient(
    from 180deg,
    rgba(253,215,0,.00),
    rgba(253,215,0,.35),
    rgba(238,85,134,.30),
    rgba(0,213,255,.25),
    rgba(253,215,0,.00)
  );
  filter: blur(10px);
  opacity: 0;
  transition: opacity .25s ease;
  z-index: 0;
  animation: spinGlow 5s linear infinite;
}
@keyframes spinGlow{ to { transform: rotate(360deg); } }
@media (hover:hover){
  .pricing-focus-v2 .pricing-card:hover:before{ opacity: .85; }
}

.pricing-focus-v2 .pricing-card > *{
  position: relative;
  z-index: 1;
}

.pricing-focus-v2 .pricing-premium .plans.badge.feat{
  position: absolute !important;
  right: 10px;
  top: 10px;
  z-index: 3;
}

.pricing-focus-v2 .pricing-top{
  display: flex;
  flex-direction: column;
}

.pricing-focus-v2 .pricing-align-spacer{
  flex: 1 1 auto;
  min-height: 0;
}

.pricing-focus-v2 .pricing-top .pricing-cta{
  margin-top: 0;
}

.pricing-focus-v2 .pricing-trial{
  margin-top: 0;
}

.col-12.col-lg-3.d-flex.pricing-col-trial {
    margin-top: 5rem;
}

.pricing-focus-v2 .trial-badge{
  display: inline-flex;
  align-items: center;
  font-weight: 900;
  font-size: 10px;
  letter-spacing: .7px;
  text-transform: uppercase;
  color: #0b1020;
  background: #fdd700;
  padding: 6px 10px;
  border-radius: 999px;
  margin-bottom: 14px;
}

@media (min-width: 992px){
  .pricing-focus-v2 .pricing-top{
    min-height: 360px;
  }
}

.pricing-focus-v2 .pricing-bottom{ margin: 0; }
.pricing-focus-v2 .pricing-bottom-standard{ background: rgba(238,85,134,.92); }
.pricing-focus-v2 .pricing-bottom-premium{ box-shadow: 0 -1px 0 rgba(255,255,255,.08) inset; }
.pricing-focus-v2 .pricing-bottom-trial{ background: rgba(238,85,134,.90); }

.pricing-focus-v2 .mvp-pill{
  display: inline-flex;
  align-items: center;
  padding: 7px 12px;
  border-radius: 999px;
  font-weight: 800;
  font-size: 11px;
  letter-spacing: .25px;
  margin: 6px 0 16px;
  color: rgba(255,255,255,.92);
  background: rgba(255,255,255,.10);
  border: 1px solid rgba(255,255,255,.18);
  box-shadow: 0 10px 30px rgba(0,0,0,.18);
}
.pricing-focus-v2 .mvp-pill-premium{
  background: rgba(238,85,134,.18);
  border-color: rgba(238,85,134,.35);
}
.pricing-focus-v2 .mvp-pill-trial{
  background: rgba(253,215,0,.16);
  border-color: rgba(253,215,0,.32);
  color: rgba(255,255,255,.95);
}

.pricing-focus-v2 .pricing-cta{
  display: inline-flex;
  align-items: center;
  gap: 10px;
  position: relative;
  overflow: hidden;
}

.pricing-focus-v2 .cta-arrow{
  display:inline-block;
  transform: translateX(0);
  transition: transform .22s ease;
}
@media (hover:hover){
  .pricing-focus-v2 .pricing-card:hover .cta-arrow{ transform: translateX(6px); }
  .pricing-focus-v2 .pricing-card:hover .pricing-cta{
    box-shadow: 0 16px 45px rgba(253,215,0,.18), 0 10px 28px rgba(0,0,0,.28);
  }
}

.pricing-focus-v2 .pricing-cta:after{
  content:"";
  position:absolute;
  top:-30%;
  left:-120%;
  width: 70%;
  height: 160%;
  background: linear-gradient(90deg, transparent, rgba(255,255,255,.35), transparent);
  transform: skewX(-20deg);
  opacity: 0;
}
@media (hover:hover){
  .pricing-focus-v2 .pricing-card:hover .pricing-cta:after{
    opacity: .9;
    animation: btnShine .9s ease forwards;
  }
}
@keyframes btnShine{ to{ left: 140%; } }

.pricing-focus-v2 .trial-price-line{
  display:flex;
  align-items: baseline;
  gap: 10px;
  margin: 6px 0 16px;
}
.pricing-focus-v2 .trial-free{ font-weight: 900; font-size: 36px; letter-spacing: .5px; }
.pricing-focus-v2 .trial-days{ font-weight: 700; font-size: 16px; opacity: .9; }

@media (max-width: 991.98px){
  .pricing-focus-v2 .pricing-gap{
    column-gap: 0;
    row-gap: 2.5rem;
  }
  .pricing-focus-v2 .pricing-top{
    min-height: 0;
  }
}
a.btn.btn-default-yellow-fill.pricing-cta {
    width: 230px;
}
.col-12.col-lg-4.d-flex {
    justify-content: center;
    margin-top: 5rem;
}
</style>
