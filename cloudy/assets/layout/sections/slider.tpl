<!-- Hero Section (Carousel Slider) -->
<div class="main-container hero-section" style="margin-top: 80px;">
  <div class="hero-carousel" id="heroCarousel">
    <!-- 1. Private Cloud (On‑Premises) -->
<section id="hero-onprem"
  style="
    position:relative;
    overflow:hidden;
    background: linear-gradient(135deg, #1a1a2e 0%, #16213e 100%);
    padding: 140px 0 90px;  /* extra top padding to clear fixed header */
  ">

  <!-- dark overlay -->
  <div style="
    position:absolute; inset:0;
    background: rgba(0,0,0,.50);
    z-index:0;
  "></div>

  <!-- content wrapper -->
  <div style="
    position:relative; z-index:1;
    max-width:1400px;
    margin:0 auto;
    padding:0 24px;
  ">

    <div style="
      display:flex;
      align-items:center;
      justify-content:space-between;
      gap:48px;
      flex-wrap:wrap;
    ">

      <!-- Left: text -->
      <div style="flex: 1 1 520px; min-width: 280px;">
        <h1 style="
          margin:0 0 14px 0;
          color:#fff;
          font-weight:800;
          letter-spacing:-1px;
          line-height:1.08;
          font-size:58px;
        ">
          Private Cloud, On Your Premises
        </h1>

        <p style="
          margin:0 0 26px 0;
          color: rgba(255,255,255,.88);
          font-size:18px;
          line-height:1.7;
          max-width: 560px;
        ">
          Deploy your own private cloud infrastructure with complete control and security.
          Enterprise‑grade solutions for your business needs.
        </p>

        <div style="display:flex; gap:14px; flex-wrap:wrap; align-items:center;">
          <a href="{$WEB_ROOT}/contacts"
             style="
               display:inline-flex; align-items:center; gap:8px;
               padding: 13px 26px;
               border-radius: 999px;
               background:#fdd700;
               color:#000;
               text-decoration:none;
               font-weight:800;
               font-size:15px;
             ">
            {$LANG.ordernowbutton} <i class="fas fa-cart-plus"></i>
          </a>
        </div>
      </div>

      <!-- Right: image -->
      <div style="
        flex: 1 1 520px;
        min-width: 280px;
        display:flex;
        justify-content:flex-end;
        align-items:center;
      ">
        <img
          src="{$WEB_ROOT}/templates/{$template}/assets/patterns/monitoring.svg"
          alt="On-Premises Cloud"
          loading="lazy"
          style="
            width:100%;
            max-width: 560px;
            height:auto;
            max-height: 380px;
            object-fit: contain;
            display:block;
          "
        />
      </div>

    </div>
  </div>

  <!-- small responsive tweaks (scoped only to this hero) -->
  <style>
    @media (max-width: 991px){
      #hero-onprem { padding: 120px 0 70px !important; }
      #hero-onprem h1 { font-size: 40px !important; }
      #hero-onprem > div[style*="max-width:1400px"] > div { gap: 26px !important; }
      #hero-onprem img { max-height: 320px !important; }
    }
    @media (max-width: 480px){
      #hero-onprem h1 { font-size: 30px !important; }
    }
  </style>
</section>

    
    <!-- 2. Domain Search Section -->
<!-- 2. Domain Search Section - MODERN & RESPONSIVE -->
<section id="domain-search-hero" style="position: relative; overflow: hidden; background: linear-gradient(135deg, #0f3460 0%, #16213e 100%); padding: 100px 20px; min-height: auto;">
  
  <!-- Subtle animated background -->
  <div style="position: absolute; inset: 0; background: rgba(0, 0, 0, 0.4); z-index: 0;"></div>
  
  <!-- Content -->
  <div style="position: relative; z-index: 1; max-width: 1200px; margin: 0 auto;">
    
    <!-- Title Section -->
    <div style="text-align: center; margin-bottom: 50px;" data-aos="fade-up" data-aos-duration="600">
      <h2 style="color: #fff; font-size: clamp(28px, 5vw, 52px); font-weight: 800; margin: 0 0 16px 0; letter-spacing: -0.5px;">
        {$LANG.findyourdomain}
      </h2>
      <p style="color: rgba(255, 255, 255, 0.85); font-size: 16px; margin: 0; max-width: 600px; margin-left: auto; margin-right: auto; line-height: 1.6;">
        {$LANG.domainintrotext}
      </p>
    </div>
    
    <!-- Search Form Container -->
    <div style="max-width: 700px; margin: 0 auto;" data-aos="fade-up" data-aos-duration="800">
      
      <form class="domain-search-form" method="post" action="domainchecker.php" id="domainForm">
        
        <!-- Direct parameter for non-iframe usage -->
        <input type="hidden" name="direct" value="true">
        
        <!-- Domain Input Field -->
        <input type="text" 
               class="domain-input-modern" 
               name="domain" 
               id="domainInput"
               placeholder="{$LANG.exampledomain}"
               autocapitalize="none"
               style="margin-bottom: 16px;"
               required>
        
        <!-- Buttons Row -->
        <div class="domain-buttons-modern">
          <button type="button" 
                  class="btn-domain-primary" 
                  id="searchBtn"
                  onclick="handleDomainSearch(event)">
            Search Domain
          </button>
          <button type="button" 
                  class="btn-domain-secondary"
                  id="transferBtn"
                  onclick="handleDomainTransfer(event)"
                  title="{$LANG.domainstransfer}">
            <span class="btn-label">Transfer Domain</span>
            <i class="fa-solid fa-repeat btn-icon-mobile"></i>
          </button>
        </div>
        
        <!-- Price Info -->
        <div style="text-align: center; margin-top: 20px; color: rgba(255, 255, 255, 0.8); font-size: 14px;">
          Starting from <span style="color: #fdd700; font-weight: 700; font-size: 16px;">$6.00/yr</span>
        </div>
        
      </form>
    </div>
    
  </div>
  
  <!-- Responsive Styles -->
  <style>
    /* Form Wrapper */
    .domain-search-form {
      display: flex;
      flex-direction: column;
    }
    
    /* Modern Input Field */
    .domain-input-modern {
      width: 100%;
      padding: 16px 20px;
      font-size: 15px;
      border: 2px solid transparent;
      border-radius: 10px;
      background: #fff;
      color: #222;
      outline: none;
      transition: all 0.3s cubic-bezier(0.4, 0, 0.2, 1);
      font-family: inherit;
      box-sizing: border-box;
      margin-bottom: 16px !important;
    }
    
    .domain-input-modern:focus {
      border-color: #fdd700;
      box-shadow: 0 0 0 3px rgba(253, 215, 0, 0.15);
    }
    
    .domain-input-modern::placeholder {
      color: #aaa;
    }
    
    /* Buttons Container */
    .domain-buttons-modern {
      display: grid;
      grid-template-columns: 1fr 1fr;
      gap: 12px;
      width: 100%;
    }
    
    /* Base Button Style */
    .btn-domain-primary,
    .btn-domain-secondary {
      padding: 14px 24px;
      border: none;
      border-radius: 10px;
      font-size: 15px;
      font-weight: 700;
      cursor: pointer;
      transition: all 0.3s cubic-bezier(0.4, 0, 0.2, 1);
      display: flex;
      align-items: center;
      justify-content: center;
      gap: 8px;
      font-family: inherit;
      white-space: nowrap;
      text-decoration: none;
      background: none;
      color: inherit;
    }
    
    /* Primary Button (Yellow) */
    .btn-domain-primary {
      background: #fdd700;
      color: #000;
    }
    
    .btn-domain-primary:hover {
      background: #f0c000;
      transform: translateY(-2px);
      box-shadow: 0 8px 24px rgba(253, 215, 0, 0.25);
    }
    
    .btn-domain-primary:active {
      transform: translateY(0);
    }
    
    /* Secondary Button (Pink) */
    .btn-domain-secondary {
      background: linear-gradient(135deg, #ff5a7e 0%, #ff3d6b 100%);
      color: #fff;
    }
    
    .btn-domain-secondary:hover {
      background: linear-gradient(135deg, #ff4470 0%, #e63a63 100%);
      transform: translateY(-2px);
      box-shadow: 0 8px 24px rgba(255, 77, 125, 0.25);
    }
    
    .btn-domain-secondary:active {
      transform: translateY(0);
    }
    
    /* Button Icons & Labels */
    .btn-label {
      display: inline;
    }
    
    .btn-icon-mobile {
      display: none;
    }
    
    /* Tablet Optimization (768px - 1024px) */
    @media (max-width: 1024px) {
      #domain-search-hero {
        padding: 80px 20px;
      }
    }
    
    /* Mobile Landscape (600px - 767px) */
    @media (max-width: 767px) {
      #domain-search-hero {
        padding: 60px 16px;
      }
      
      .domain-input-modern {
        padding: 14px 18px;
        font-size: 16px;
      }
      
      .domain-buttons-modern {
        gap: 10px;
      }
      
      .btn-domain-primary,
      .btn-domain-secondary {
        padding: 12px 16px;
        font-size: 14px;
      }
    }
    
    /* Mobile Portrait (up to 599px) */
    @media (max-width: 599px) {
      #domain-search-hero {
        padding: 50px 16px;
      }
      
      .domain-input-modern {
        padding: 13px 16px;
        font-size: 16px;
        border-radius: 8px;
      }
      
      .domain-buttons-modern {
        grid-template-columns: 1fr 1fr;
        gap: 8px;
      }
      
      .btn-domain-primary,
      .btn-domain-secondary {
        padding: 11px 12px;
        font-size: 13px;
        border-radius: 8px;
      }
      
      .btn-label {
        display: none;
      }
      
      .btn-icon-mobile {
        display: inline;
        font-size: 16px;
      }
    }
    
    /* Small Mobile (320px - 399px) */
    @media (max-width: 399px) {
      #domain-search-hero {
        padding: 45px 12px;
      }
      
      .domain-input-modern {
        padding: 12px 14px;
        font-size: 15px;
      }
      
      .btn-domain-primary,
      .btn-domain-secondary {
        padding: 10px 8px;
        font-size: 12px;
      }
    }
  </style>
  
  <!-- Domain Checker Handler Script -->
<script>
(function() {
  'use strict';
  
  window.handleDomainSearch = function(e) {
    e.preventDefault();
    const domain = document.getElementById('domainInput').value.trim();
    
    if (!domain) {
      alert('Please enter a domain name');
      return;
    }
    
    // Direct redirect to cart (no session needed)
    const cartUrl = new URL('cart.php', window.location.origin);
    cartUrl.searchParams.append('a', 'add');
    cartUrl.searchParams.append('domain', 'register');
    cartUrl.searchParams.append('query', domain);
    
    window.location.href = cartUrl.toString();
  };
  
  window.handleDomainTransfer = function(e) {
    e.preventDefault();
    const domain = document.getElementById('domainInput').value.trim();
    
    if (!domain) {
      alert('Please enter a domain name');
      return;
    }
    
    // Direct redirect to cart with transfer action
    const cartUrl = new URL('cart.php', window.location.origin);
    cartUrl.searchParams.append('a', 'add');
    cartUrl.searchParams.append('domain', 'transfer');
    cartUrl.searchParams.append('query', domain);
    
    window.location.href = cartUrl.toString();
  };
  
  document.addEventListener('DOMContentLoaded', function() {
    const domainInput = document.getElementById('domainInput');
    if (domainInput) {
      domainInput.addEventListener('keypress', function(e) {
        if (e.key === 'Enter') {
          e.preventDefault();
          handleDomainSearch(e);
        }
      });
    }
  });
})();
</script>

  
</section>


    
    <!-- 3. DID & Toll Free Numbers -->
    <section class="hero-item overlay item17" style="background: linear-gradient(135deg, #1a1a2e 0%, #16213e 100%);">
      <div class="hero-content">
        <div class="container-fluid hero-wrap">
          
          <!-- Row 1: H1 (full width) -->
          <div class="row hero-row">
            <div class="col-12">
              <h1 class="hero-title mergecolor" data-aos="fade-up" data-aos-duration="800">
                DID &amp; Toll Free Numbers
              </h1>
            </div>
          </div>
          
          <!-- Row 2: Description + Badges | Image -->
          <div class="row hero-row align-items-center">
            <div class="col-lg-6 col-md-12 hero-left">
              <p class="hero-desc text-break seccolor" data-aos="fade-up" data-aos-duration="1200">
                Get local and toll-free numbers for your business. Instant activation with competitive rates and crystal-clear voice quality.
              </p>
              
              <div class="countries-list" data-aos="fade-up" data-aos-duration="1400">
                <div class="country-badge" data-country="US" role="button" tabindex="0">
                  <span class="country-flag">🇺🇸</span>
                  <span class="country-text">United States</span>
                </div>
                <div class="country-badge" data-country="UK" role="button" tabindex="0">
                  <span class="country-flag">🇬🇧</span>
                  <span class="country-text">United Kingdom</span>
                </div>
                <div class="country-badge" data-country="CA" role="button" tabindex="0">
                  <span class="country-flag">🇨🇦</span>
                  <span class="country-text">Canada</span>
                </div>
                <div class="country-badge" data-country="AU" role="button" tabindex="0">
                  <span class="country-flag">🇦🇺</span>
                  <span class="country-text">Australia</span>
                </div>
                <div class="country-badge" data-country="BD" role="button" tabindex="0">
                  <span class="country-flag">🇧🇩</span>
                  <span class="country-text">Bangladesh</span>
                </div>
              </div>
            </div>
            
            <div class="col-lg-6 col-md-12 hero-right">
              <div class="image-wrapper">
                <img class="hero-image img-fluid" 
                     src="{$WEB_ROOT}/templates/{$template}/assets/patterns/api.svg" 
                     alt="DID and Toll-Free Numbers" 
                     loading="lazy">
              </div>
            </div>
          </div>
          
          <!-- Row 3: Buttons (full width) -->
         <div style="display:flex; gap:14px; flex-wrap:wrap; align-items:center;">
          <a href="{$WEB_ROOT}/store/did-numbers"
             style="
               display:inline-flex; align-items:center; gap:8px;
               padding: 13px 26px;
               border-radius: 999px;
               background:#fdd700;
               color:#000;
               text-decoration:none;
               font-weight:800;
               font-size:15px;
             ">
            {$LANG.ordernowbutton} <i class="fas fa-cart-plus"></i>
          </a>
        </div>
          
        </div>
      </div>
    </section>
    
    <!-- 4. Microsoft 365 & AWS Solutions -->
    <section class="hero-item overlay item17" style="background: linear-gradient(135deg, #0f3460 0%, #16213e 100%);">
      <div class="hero-content">
        <div class="container-fluid hero-wrap">
          
          <!-- Row 1: H1 (full width) -->
          <div class="row hero-row">
            <div class="col-12">
              <h1 class="hero-title mergecolor" data-aos="fade-up" data-aos-duration="800">
                Microsoft 365 &amp; AWS Solutions
              </h1>
            </div>
          </div>
          
          <!-- Row 2: Description + Provider badges | Image -->
          <div class="row hero-row align-items-center">
            <div class="col-lg-6 col-md-12 hero-left">
              <p class="hero-desc text-break seccolor" data-aos="fade-up" data-aos-duration="1200">
                Complete Microsoft 365 and AWS services including Exchange, Teams, SharePoint, EC2, S3, and enterprise cloud infrastructure.
              </p>
              
              <div class="providers-list" data-aos="fade-up" data-aos-duration="1400">
                <div class="provider-badge" role="button" tabindex="0">
                  <svg width="60" height="60" viewBox="0 0 23 23" class="provider-logo" aria-label="Microsoft 365">
                    <rect x="0" y="0" width="10" height="10" fill="#F25022"/>
                    <rect x="12" y="0" width="10" height="10" fill="#7FBA00"/>
                    <rect x="0" y="12" width="10" height="10" fill="#00A4EF"/>
                    <rect x="12" y="12" width="10" height="10" fill="#FFB900"/>
                  </svg>
                  <span class="provider-name">Microsoft 365</span>
                </div>
                
                <div class="provider-badge" role="button" tabindex="0">
                  <svg width="60" height="60" viewBox="0 0 100 100" class="provider-logo" aria-label="AWS">
                    <circle cx="50" cy="50" r="45" fill="#FF9900"/>
                    <text x="50" y="62" font-family="Arial, sans-serif" font-size="28" font-weight="bold" fill="white" text-anchor="middle">AWS</text>
                  </svg>
                  <span class="provider-name">AWS</span>
                </div>
              </div>
            </div>
            
            <div class="col-lg-6 col-md-12 hero-right">
              <div class="image-wrapper">
                <img class="hero-image img-fluid" 
                     src="{$WEB_ROOT}/templates/{$template}/assets/patterns/rack.svg" 
                     alt="Cloud Solutions Infrastructure" 
                     loading="lazy">
              </div>
            </div>
          </div>
          
          <!-- Row 3: Buttons (full width) -->
          <div style="display:flex; gap:14px; flex-wrap:wrap; align-items:center;">
          <a href="{$WEB_ROOT}/store/microsoft-365"
             style="
               display:inline-flex; align-items:center; gap:8px;
               padding: 13px 26px;
               border-radius: 999px;
               background:#fdd700;
               color:#000;
               text-decoration:none;
               font-weight:800;
               font-size:15px;
             ">
            {$LANG.ordernowbutton} <i class="fas fa-cart-plus"></i>
          </a>
        </div>
          
        </div>
      </div>
    </section>
    
  </div>
  
  <!-- Carousel Navigation (Optional) -->
  <div class="hero-nav-dots" id="heroNavDots" style="display: none;">
    <button class="nav-dot active" data-slide="0" aria-label="Slide 1"></button>
    <button class="nav-dot" data-slide="1" aria-label="Slide 2"></button>
    <button class="nav-dot" data-slide="2" aria-label="Slide 3"></button>
    <button class="nav-dot" data-slide="3" aria-label="Slide 4"></button>
  </div>
</div>

<style>
/* =========================
   HERO (SCOPED) CORE
========================= */
.hero-section { 
  width: 100%; 
  background-color: #0f0f1e;
}

.hero-carousel { 
  width: 100%; 
  overflow: hidden;
  position: relative;
}

.hero-item {
  position: relative;
  padding: 80px 0;
  min-height: 580px;
  display: flex;
  align-items: center;
  justify-content: center;
  background-attachment: fixed;
  background-size: cover;
  background-position: center;
  overflow: hidden;
}

.hero-item.overlay::before {
  content: "";
  position: absolute;
  inset: 0;
  background: rgba(0, 0, 0, 0.55);
  z-index: 0;
}

.hero-content { 
  position: relative; 
  z-index: 1; 
  width: 100%; 
}

.hero-wrap { 
  max-width: 1400px;
  margin: 0 auto;
  padding: 0 20px;
}

/* Keep gutters consistent without breaking bootstrap globally */
.hero-row { 
  margin-bottom: 24px; 
}

.hero-row:last-child { 
  margin-bottom: 0; 
}

/* Title always full width */
.hero-title {
  color: #fff;
  font-weight: 800;
  line-height: 1.2;
  font-size: 64px;
  letter-spacing: -1.5px;
  margin: 0 0 1rem 2rem;
  word-break: normal;
  overflow-wrap: break-word;
  text-shadow: 2px 2px 8px rgba(0, 0, 0, 0.3);
}

/* Description */
.hero-desc {
  color: rgba(255, 255, 255, 0.92);
  line-height: 1.7;
  font-size: 18px;
  margin: 0 0 24px 0;
  max-width: 540px;
}

/* Buttons row */
.btn-group-hero {
  display: flex;
  gap: 16px;
  flex-wrap: wrap;
  align-items: center;
  margin-top: 24px;
}

.btn-group-hero .btn {
  font-weight: 700;
  padding: 14px 28px;
  border-radius: 50px;
  text-decoration: none;
  transition: all 0.3s cubic-bezier(0.4, 0, 0.2, 1);
  display: inline-flex;
  align-items: center;
  gap: 8px;
  white-space: nowrap;
}

.btn-group-hero .btn:hover {
  transform: translateY(-3px);
  box-shadow: 0 8px 20px rgba(0, 0, 0, 0.25);
}

/* Image column */
.hero-right {
  display: flex;
  justify-content: flex-end;
  align-items: center;
  padding-left: 20px;
}

.image-wrapper {
  width: 100%;
  display: flex;
  justify-content: flex-end;
  align-items: center;
  min-height: 300px;
}

.hero-image {
  max-width: 100%;
  height: auto;
  max-height: 420px;
  object-fit: contain;
  display: block;
  filter: drop-shadow(0 10px 30px rgba(0, 0, 0, 0.2));
}

/* Notes */
.special-note {
  margin-top: 16px;
  color: rgba(255, 255, 255, 0.8);
  font-size: 14px;
  font-weight: 500;
}

.special-note b {
  color: #fdd700;
  font-weight: 700;
}

/* Badges */
.countries-list, .providers-list {
  display: flex;
  flex-wrap: wrap;
  gap: 14px;
  margin-top: 24px;
}

.country-badge {
  display: inline-flex;
  align-items: center;
  gap: 10px;
  padding: 12px 16px;
  background: rgba(255, 255, 255, 0.08);
  border: 1px solid rgba(253, 215, 0, 0.3);
  border-radius: 14px;
  cursor: pointer;
  transition: all 0.3s cubic-bezier(0.4, 0, 0.2, 1);
  user-select: none;
}

.country-badge:hover {
  background: rgba(253, 215, 0, 0.18);
  border-color: rgba(253, 215, 0, 0.65);
  transform: translateY(-3px);
}

.country-badge:active {
  transform: translateY(-1px);
}

.country-flag { 
  font-size: 22px; 
  line-height: 1;
}

.country-text { 
  color: #fdd700; 
  font-size: 12px; 
  font-weight: 700; 
  text-transform: uppercase; 
  letter-spacing: 0.5px;
}

.provider-badge {
  display: flex;
  flex-direction: column;
  align-items: center;
  gap: 12px;
  padding: 18px 24px;
  background: rgba(255, 255, 255, 0.06);
  border: 1px solid rgba(255, 255, 255, 0.12);
  border-radius: 14px;
  transition: all 0.3s cubic-bezier(0.4, 0, 0.2, 1);
  cursor: pointer;
  user-select: none;
}

.provider-badge:hover {
  background: rgba(253, 215, 0, 0.16);
  border-color: rgba(253, 215, 0, 0.5);
  transform: translateY(-3px);
}

.provider-badge:active {
  transform: translateY(-1px);
}

.provider-logo { 
  width: 56px; 
  height: 56px;
  filter: drop-shadow(0 2px 8px rgba(0, 0, 0, 0.15));
}

.provider-name { 
  color: #fdd700; 
  font-size: 12px; 
  font-weight: 800; 
  text-transform: uppercase; 
  letter-spacing: 0.5px;
}

/* Thunder animation (optional) */
.thunder-bg {
  position: absolute;
  inset: 0;
  background: linear-gradient(90deg,
      transparent 0%,
      rgba(255, 255, 255, 0.08) 25%,
      rgba(255, 255, 255, 0.18) 50%,
      rgba(255, 255, 255, 0.08) 75%,
      transparent 100%);
  z-index: 1;
  pointer-events: none;
  opacity: 0;
  animation: thunder-strike 3s ease-in-out infinite;
}

@keyframes thunder-strike {
  0% { 
    opacity: 0; 
    transform: translateX(-100%); 
  }
  10% { 
    opacity: 0.8; 
    transform: translateX(0); 
  }
  20% { 
    opacity: 0; 
    transform: translateX(100%); 
  }
  100% { 
    opacity: 0; 
    transform: translateX(100%); 
  }
}

/* Typing cursor (optional) */
.typing-title {
  display: inline-block;
  border-right: 3px solid #fdd700;
  padding-right: 8px;
  animation: blink-cursor 0.7s step-end infinite;
}

@keyframes blink-cursor {
  from, to { 
    border-color: #fdd700; 
  }
  50% { 
    border-color: transparent; 
  }
}

/* Fade */
.fade-in-text {
  opacity: 0;
  animation: fade-in-up 0.8s ease-out 0.2s forwards !important;
}

@keyframes fade-in-up {
  from { 
    opacity: 0; 
    transform: translateY(20px); 
  }
  to { 
    opacity: 1; 
    transform: translateY(0); 
  }
}

/* Carousel Navigation Dots */
.hero-nav-dots {
  position: absolute;
  bottom: 30px;
  left: 50%;
  transform: translateX(-50%);
  display: flex;
  gap: 12px;
  z-index: 10;
}

.nav-dot {
  width: 12px;
  height: 12px;
  border-radius: 50%;
  border: 2px solid rgba(255, 255, 255, 0.4);
  background: transparent;
  cursor: pointer;
  transition: all 0.3s ease;
  padding: 0;
}

.nav-dot.active {
  background: #fdd700;
  border-color: #fdd700;
  width: 28px;
  border-radius: 6px;
}

.nav-dot:hover {
  border-color: rgba(253, 215, 0, 0.8);
}

/* =========================
   RESPONSIVE
========================= */
@media (max-width: 1399px) {
  .hero-item {
    padding: 70px 0;
    min-height: 540px;
  }
  
  .hero-title { 
    font-size: 56px; 
  }
  
  .hero-image { 
    max-height: 380px; 
  }
}

@media (max-width: 1199px) {
  .hero-title { 
    font-size: 48px; 
  }
  
  .hero-image { 
    max-height: 360px; 
  }
  
  .hero-right {
    padding-left: 0;
  }
}

@media (max-width: 991px) {
  .hero-item { 
    padding: 60px 0; 
    min-height: auto; 
    min-height: 650px;
  }
  
  /* Stack: text first, image second */
  .hero-right { 
    justify-content: center; 
    margin-top: 32px;
  }
  
  .image-wrapper { 
    justify-content: center; 
  }
  
  .hero-title { 
    font-size: 40px; 
  }
  
  .hero-desc {
    max-width: 100%;
  }
    @media (max-width: 991px) {
    .hero-row.align-items-center {
      display: flex !important;
      flex-direction: column !important;
    }
    
    .hero-row.align-items-center .col-lg-6 {
      flex: 0 0 100% !important;
      max-width: 100% !important;
      width: 100% !important;
      padding: 0 20px !important;
      margin-bottom: 30px !important;
    }
    
    .hero-row.align-items-center .hero-right {
      justify-content: center !important;
    }
  }
  
  @media (max-width: 768px) {
    .hero-row.align-items-center {
      display: flex !important;
      flex-direction: column !important;
    }
    
    .hero-row.align-items-center .col-lg-6 {
      flex: 0 0 100% !important;
      max-width: 100% !important;
      width: 100% !important;
      padding: 0 15px !important;
    }
  }
  .btn-group-hero { 
    justify-content: flex-start; 
  }
  
  .domains-search { 
    flex-direction: column; 
    max-width: 100%; 
  }
  
  .domains-search .inputdomainsearch { 
    border-radius: 12px; 
    margin-bottom: 0;
    text-align: left; 
  }
  
  .domains-search .ds-content { 
    width: 100%; 
    flex-direction: column;
  }
  
  .domains-search .ds-content .btn { 
    width: 100%; 
    justify-content: center; 
    border-radius: 12px; 
    padding: 12px 20px;
    border: none !important;
    margin-top: 8px;
  }
  
  .countries-list, .providers-list {
    gap: 12px;
  }
}

@media (max-width: 768px) {
  .hero-item {
    min-height: auto;
    padding: 50px 0;
  }
  
  .hero-wrap {
    padding: 0 15px;
  }
  
  .hero-title { 
    font-size: 2rem; 
    letter-spacing: 0;
  }
  
  .hero-desc { 
    font-size: 16px; 
  }
  
  .btn-group-hero { 
    flex-direction: column; 
  }
  
  .btn-group-hero .btn { 
    width: 100%; 
    justify-content: center;
  }
  
  .countries-list, .providers-list {
    gap: 10px;
  }
  
  .image-wrapper {
    min-height: 250px;
  }
  
  .hero-image { 
    max-height: 300px; 
  }
}

@media (max-width: 480px) {
  .hero-item {
    padding: 40px 0;
  }
  
  .hero-wrap {
    padding: 0 12px;
  }
  
  .hero-title { 
    font-size: 28px; 
    margin-bottom: 12px;
  }
  
  .hero-desc { 
    font-size: 14px; 
    line-height: 1.6;
  }
  
  .btn-group-hero { 
    flex-direction: column; 
    gap: 12px;
  }
  
  .btn-group-hero .btn { 
    width: 100%;
    font-size: 14px;
    padding: 12px 20px;
  }
  
  .special-note {
    font-size: 13px;
  }
  
  .country-badge {
    padding: 10px 12px;
    font-size: 11px;
  }
  
  .country-flag { 
    font-size: 18px; 
  }
  
  .provider-badge {
    padding: 14px 16px;
  }
  
  .provider-logo { 
    width: 48px; 
    height: 48px;
  }
  
  .domains-search {
    max-width: 100%;
  }
  
  .image-wrapper {
    min-height: 200px;
  }
  
  .hero-image { 
    max-height: 250px; 
  }
}
.provider-badge {
    width: 25%;
}
.providers-list.aos-init.aos-animate {
    margin-left: 5rem;
}
@media (prefers-reduced-motion: reduce) {
  .hero-item,
  .btn-group-hero .btn,
  .country-badge,
  .provider-badge,
  .hero-image {
    animation: none;
    transition: none;
  }
}
</style>

<script>
(function () {
  'use strict';
  
  document.addEventListener('DOMContentLoaded', function () {
    // Interactive badges
    document.querySelectorAll('.country-badge, .provider-badge').forEach(function (el) {
      el.addEventListener('click', function () {
        this.classList.add('active');
        setTimeout(() => this.classList.remove('active'), 200);
      });
      
      el.addEventListener('keypress', function (e) {
        if (e.key === 'Enter' || e.key === ' ') {
          e.preventDefault();
          this.click();
        }
      });
    });
    
    // Initialize AOS if available
    if (typeof AOS !== 'undefined') {
      AOS.init({
        duration: 800,
        easing: 'ease-out-cubic',
        once: true
      });
    }
    
    // Optional: Carousel functionality
    const carousel = document.getElementById('heroCarousel');
    const navDots = document.querySelectorAll('.nav-dot');
    const items = document.querySelectorAll('.hero-item');
    let currentSlide = 0;
    
    function showSlide(n) {
      items.forEach(item => item.style.display = 'none');
      navDots.forEach(dot => dot.classList.remove('active'));
      
      if (n >= items.length) { currentSlide = 0; }
      if (n < 0) { currentSlide = items.length - 1; }
      
      items[currentSlide].style.display = 'flex';
      navDots[currentSlide].classList.add('active');
    }
    
    navDots.forEach((dot, index) => {
      dot.addEventListener('click', function () {
        currentSlide = index;
        showSlide(currentSlide);
      });
    });
    
    // Auto-rotate carousel (optional)
    // setInterval(() => {
    //   currentSlide++;
    //   showSlide(currentSlide);
    // }, 6000);
  });
})();
</script>
