{* =========================================================
  footer.tpl (Clean / Editorial / Modern)
  - WHMCS compatible (verifyemail, generate-password, footeroutput)
  - No heavy "boxes", uses subtle separators + typography
  - Proper spacing between columns
  - Social icons perfectly centered
========================================================= *}

{if $loginpage eq 0 and $templatefile ne "clientregister"}
                    </div><!-- /.main-content -->
                    <div class="clearfix"></div>
                </div><!-- end row -->
            </div><!-- end container -->
        </section><!-- end main body section -->
    </div><!-- end page wrapper -->
</div><!-- end main body -->
</div><!-- end inner content -->
</div><!-- end content -->
</div><!-- end wrapper -->
</div><!-- end main container -->

{if $loggedin}
<span id="gravataremail" class="hidden">{$clientsdetails.email}</span>
{/if}

<div id="fullpage-overlay" class="hidden">
    <div class="outer-wrapper">
        <div class="inner-wrapper">
            <img src="{$WEB_ROOT}/assets/img/overlay-spinner.svg" alt="Loading">
            <br>
            <span class="msg"></span>
        </div>
    </div>
</div>

{* ------------------------------
   Company details (edit here)
------------------------------ *}
{assign var="companyAddress" value="Dhaka, Bangladesh"}
{assign var="companyPhone" value="+8801540203662"}
{assign var="companyEmail" value="cloud@cloudman.one"}
{assign var="companyWhatsapp" value="+8801540203662"}

<footer id="footer" class="footer footer-dark footer-clean">
    {include file="$template/includes/verifyemail.tpl"}

    <div class="container footer-clean-inner">

        <div class="footer-clean-top">

            <div class="footer-clean-grid">
                <div class="footer-col">
                    <div class="heading">Hosting</div>
                    <ul class="footer-menu classic">
                        <li class="menu-item"><a href="{$WEB_ROOT}/hosting">Dedicated Cpanel Hosting</a></li>
                        <li class="menu-item"><a href="{$WEB_ROOT}/domains">Domain Names</a></li>
                    </ul>
                </div>

                <div class="footer-col">
                    <div class="heading">Support</div>
                    <ul class="footer-menu classic">
                        <li class="menu-item"><a href="{$WEB_ROOT}/knowledgebase">Knowledge Base</a></li>
                        <li class="menu-item"><a href="{$WEB_ROOT}/contact">Contact Us</a></li>
                        <li class="menu-item"><a href="{$WEB_ROOT}/submitticket.php">Open Ticket</a></li>
                    </ul>
                </div>

                <div class="footer-col">
                    <div class="heading">Company</div>
                    <ul class="footer-menu classic">
                        <li class="menu-item"><a href="{$WEB_ROOT}/about">About Us</a></li>
                        <li class="menu-item"><a href="{$WEB_ROOT}/legal">Legal</a></li>
                        <li class="menu-item"><a href="{$WEB_ROOT}/announcements">Announcements</a></li>
                    </ul>
                </div>

                <div class="footer-col footer-brand">
                    <a class="footer-brand-link" href="{$WEB_ROOT}/">
                        <img class="svg footer-logo" src="{$WEB_ROOT}/templates/{$template}/assets/img/logo.svg" alt="{$companyname}">
                    </a>

                    <div class="footer-contact">
                        <div class="footer-contact-item">
                            <i class="fas fa-map-marker-alt"></i>
                            <span>{$companyAddress}</span>
                        </div>

                        <div class="footer-contact-item">
                            <i class="fas fa-phone-alt"></i>
                            <a href="tel:{$companyPhone|replace:' ':''}">{$companyPhone}</a>
                        </div>

                        <div class="footer-contact-item">
                            <i class="fas fa-envelope"></i>
                            <a href="mailto:{$companyEmail}">{$companyEmail}</a>
                        </div>

                        <div class="footer-contact-item">
                            <i class="fab fa-whatsapp"></i>
                            <a href="https://wa.me/{$companyWhatsapp|replace:'+':''|replace:' ':''}" target="_blank" rel="noopener">WhatsApp: {$companyWhatsapp}</a>
                        </div>
                    </div>
                </div>
            </div><!-- /.footer-clean-grid -->

        </div><!-- /.footer-clean-top -->

        <div class="footer-clean-divider"></div>

        <div class="footer-clean-bottom">

            <form action="#" method="post" class="footer-clean-newsletter">
                <div class="footer-clean-newsletter-row">
                    <div class="footer-clean-newsletter-left">
                        <div class="footer-clean-title">Newsletter</div>
                        <div class="footer-clean-subtitle">Subscribe to receive updates, promos, and product news.</div>
                    </div>

                    <div class="footer-clean-newsletter-right">
                        <input type="email" name="email" placeholder="Enter your email address" class="footer-clean-input" required>
                        <button type="submit" class="btn btn-default-yellow-fill footer-clean-btn">Subscribe</button>
                    </div>
                </div>
            </form>

           
            <div class="footer-clean-meta">
                <!-- <div class="footer-clean-social" aria-label="Social links">
                    <a href="#" aria-label="Facebook"><i class="fab fa-facebook-f"></i></a>
                    <a href="#" aria-label="Google Plus"><i class="fab fa-google-plus-g"></i></a>
                    <a href="#" aria-label="Twitter"><i class="fab fa-twitter"></i></a>
                    <a href="#" aria-label="LinkedIn"><i class="fab fa-linkedin-in"></i></a>
                </div> --> 

                <div class="footer-clean-copy">
                    {lang key="copyrightFooterNotice" year=$date_year company=$companyname}
                </div>
            </div>

        </div><!-- /.footer-clean-bottom -->

    </div><!-- /.container -->
</footer>

<style>
.footer.footer-clean{
  position: relative;
  overflow: hidden;
  background:
    radial-gradient(1100px 420px at 15% 0%, rgba(253,215,0,.08), transparent 55%),
    radial-gradient(900px 420px at 85% 10%, rgba(85,189,229,.08), transparent 55%),
    linear-gradient(180deg, #0d1420 0%, #0a0f1f 55%, #070a14 100%);
  border-top: 1px solid rgba(255,255,255,.08);
}

/* Subtle grain/aurora (lighter than before; avoids “neon box” look) */
.footer.footer-clean:before{
  content:"";
  position:absolute;
  inset:-35%;
  background:
    radial-gradient(circle at 20% 30%, rgba(253,215,0,.12), transparent 60%),
    radial-gradient(circle at 70% 35%, rgba(238,85,134,.08), transparent 60%),
    radial-gradient(circle at 60% 80%, rgba(85,189,229,.08), transparent 60%);
  filter: blur(40px);
  opacity:.75;
  z-index:0;
}

.footer.footer-clean .footer-clean-inner{ position: relative; z-index:1; }

/* Layout spacing */
.footer.footer-clean .footer-clean-top{ padding: 80px 0 26px; }
.footer.footer-clean .footer-clean-bottom{ padding: 26px 0 60px; }

/* REAL gaps without heavy cards */
.footer.footer-clean .footer-clean-grid{
  display: grid;
  grid-template-columns: repeat(4, minmax(0, 1fr));
  gap: 34px;
  align-items: start;
}

@media (max-width: 991.98px){
  .footer.footer-clean .footer-clean-grid{
    grid-template-columns: repeat(2, minmax(0, 1fr));
    gap: 26px;
  }
}
@media (max-width: 575.98px){
  .footer.footer-clean .footer-clean-grid{
    grid-template-columns: 1fr;
    gap: 18px;
  }
}

/* Typography (less “boxed UI”, more modern) */
.footer.footer-clean .heading{
  color: rgba(255,255,255,.92);
  font-size: 18px;
  font-weight: 800;
  margin-bottom: 14px;
  letter-spacing: .2px;
}

.footer.footer-clean .footer-menu{ padding: 0; margin: 0; }
.footer.footer-clean .footer-menu .menu-item{
  margin-top: 10px;
  font-weight: 600;
}
.footer.footer-clean .footer-menu .menu-item a{ color: rgba(255,255,255,.70); }
.footer.footer-clean .footer-menu .menu-item a:hover{ color: #fdd700; }

.footer.footer-clean .footer-logo{ width: 180px; margin-bottom: 14px; }

/* Contact */
.footer.footer-clean .footer-contact{ margin-top: 6px; }
.footer.footer-clean .footer-contact-item{
  display: flex;
  gap: 10px;
  align-items: flex-start;
  margin-top: 10px;
  line-height: 1.35;
  color: rgba(255,255,255,.68);
}
.footer.footer-clean .footer-contact-item i{
  margin-top: 2px;
  width: 16px;
  min-width: 16px;
  text-align: center;
  color: rgba(253,215,0,.90);
}
.footer.footer-clean .footer-contact-item a{ color: rgba(255,255,255,.78); }
.footer.footer-clean .footer-contact-item a:hover{ color: #fdd700; }

/* Divider like modern sites (instead of cards) */
.footer.footer-clean .footer-clean-divider{
  height: 1px;
  background: rgba(255,255,255,.10);
}

/* Newsletter: integrated row (no extra “big card”) */
.footer.footer-clean .footer-clean-newsletter{
  margin: 0;
}
.footer.footer-clean .footer-clean-newsletter-row{
  display: flex;
  gap: 18px;
  align-items: center;
  justify-content: space-between;
}
.footer.footer-clean .footer-clean-title{
  color: rgba(255,255,255,.92);
  font-weight: 800;
  font-size: 16px;
  margin-bottom: 6px;
}
.footer.footer-clean .footer-clean-subtitle{
  color: rgba(255,255,255,.62);
  font-size: 13px;
  line-height: 1.6;
  max-width: 520px;
}

.footer.footer-clean .footer-clean-newsletter-right{
  display: flex;
  gap: 12px;
  align-items: center;
  min-width: 440px;
}
.footer.footer-clean .footer-clean-input{
  flex: 1 1 auto;
  height: 52px;
  padding: 0 16px;
  border-radius: 14px;
  background: rgba(255,255,255,.06);
  border: 1px solid rgba(255,255,255,.12);
  color: rgba(255,255,255,.92);
  outline: none;
}
.footer.footer-clean .footer-clean-input::placeholder{ color: rgba(255,255,255,.52); }

.footer.footer-clean .footer-clean-btn{
  height: 52px;
  border-radius: 14px;
  padding: 0 18px;
  font-weight: 800;
  text-transform: none;
}

/* Bottom meta row: socials centered + copyright centered-ish */
.footer.footer-clean .footer-clean-meta{
  margin-top: 18px;
  display: grid;
  grid-template-columns: 1fr auto 1fr;
  align-items: center;
  gap: 14px;
}

.footer.footer-clean .footer-clean-copy{
  justify-self: end;
  color: rgba(255,255,255,.55);
  font-size: 12px;
}

/* Social centered (override Antler’s margin rule that breaks centering) [file:4] */
.footer.footer-clean .footer-clean-social{
  justify-self: center;
  display: flex;
  justify-content: center;
  align-items: center;
  gap: 12px;
}
.footer.footer-clean .footer-clean-social a{
  margin: 0 !important; /* cancels .footer .soc-icons a margins in Antler [file:4] */
  display: inline-flex;
  text-decoration: none;
  color: inherit;
}
.footer.footer-clean .footer-clean-social a i{
  width: 44px;
  height: 44px;
  display: grid;
  place-items: center;
  border-radius: 14px;
  background: rgba(255,255,255,.92);
  color: #0b1020;
  border: 1px solid rgba(255,255,255,.18);
  box-shadow: 0 10px 25px rgba(0,0,0,.28);
  transition: transform .18s ease, background .18s ease;
}
.footer.footer-clean .footer-clean-social a:hover i{ transform: translateY(-2px); }

/* Responsive newsletter stack */
@media (max-width: 991.98px){
  .footer.footer-clean .footer-clean-newsletter-right{ min-width: 0; width: 100%; }
  .footer.footer-clean .footer-clean-newsletter-row{
    flex-direction: column;
    align-items: flex-start;
  }
  .footer.footer-clean .footer-clean-newsletter-right{
    width: 100%;
  }
  .footer.footer-clean .footer-clean-meta{
    grid-template-columns: 1fr;
    justify-items: center;
    text-align: center;
  }
  .footer.footer-clean .footer-clean-copy{ justify-self: center; }
}
@media (max-width: 575.98px){
  .footer.footer-clean .footer-clean-top{ padding: 64px 0 20px; }
  .footer.footer-clean .footer-clean-bottom{ padding: 20px 0 54px; }
  .footer.footer-clean .footer-clean-newsletter-right{
    flex-direction: column;
    align-items: stretch;
    gap: 10px;
  }
  .footer.footer-clean .footer-clean-btn{ width: 100%; }
}
</style>

{/if}

{include file="$template/includes/generate-password.tpl"}
{$footeroutput}

<script>
  if ($("p:contains('Powered by')").length) {
    $("p:contains('Powered by')").hide();
  }
</script>

</body>
</html>
