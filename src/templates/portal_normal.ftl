<!DOCTYPE html>

<#include init />

<html class="${root_css_class}" dir="<@liferay.language key="lang.dir" />" lang="${w3c_language_id}">

<head>
	<title>${the_title} - ${company_name}</title>

	<meta content="initial-scale=1.0, width=device-width" name="viewport" />

	<@liferay_util["include"] page=top_head_include />
</head>

<body class="${css_class}">

<@liferay_ui["quick-access"] contentId="#main-content" />

<@liferay_util["include"] page=body_top_include />

<@liferay.control_menu />

<div class="container-fluid" id="wrapper">
	<header id="banner" role="banner">
	<#-- 
		<div id="heading"> 
			<div aria-level="1" class="site-title" role="heading">
				<a class="${logo_css_class}" href="${site_default_url}" title="<@liferay.language_format arguments="${site_name}" key="go-to-x" />">
					<img alt="${logo_description}" height="${site_logo_height}" src="${site_logo}" width="${site_logo_width}" />
				</a>

				<#if show_site_name>
					<span class="site-name" title="<@liferay.language_format arguments="${site_name}" key="go-to-x" />">
						${site_name}
					</span>
				</#if>
				
			</div>
			
		</div> -->

		<#if !is_signed_in>
			<a data-redirect="${is_login_redirect_required?string}" href="${sign_in_url}" id="sign-in" rel="nofollow">${sign_in_text}</a>
		</#if>

		<#if has_navigation && is_setup_complete>
			<#include "${full_templates_path}/navigation.ftl" />

		</#if>
	</header>

	<section id="content">
		<h2 class="hide-accessible" role="heading" aria-level="1">${the_title}</h2>

		<#if selectable>
			<@liferay_util["include"] page=content_include />
		<#else>
			${portletDisplay.recycle()}

			${portletDisplay.setTitle(the_title)}

			<@liferay_theme["wrap-portlet"] page="portlet.ftl">
				<@liferay_util["include"] page=content_include />
			</@>
		</#if>
	</section>


<footer>

        <div class="container">
            <div class="footer-info d-flex justify-content-between pt-3 centralizar">
                <div class="nossa-history">
                    <h4 class="text-uppercase">Nossa Historia</h4>
                    <hr class="bottom-line">
                    <p>
                        Quando iniciamos a Audiomack queriamos apenas um produto que <br>adoraríamos utilizar. Eramos apaixonados
                         por pedalar e também por fazer<br>as coisas com as nossas próprias mãos. Assim surgiu um sonho na<br>garagem da 
                        nossa casa.
                    </p>
                </div>
                <div class="contato">
                    <h4 class="text-uppercase">contato</h4>
                    <hr class="bottom-line">
                    <p>
                        <ul class="info-contatos contact-list list-unstyled">
                            <li>21 9999-9999</li>
                            <li>contato@audiomack.com</li>
                            <li>Botafogo - RJ</li>

                        </ul>
                    </p>
                </div>
                <div class="contatosocial">
                    <h4 class="text-uppercase">Contato</h4>
                    <hr class="bottom-line">
                    <ul class="social-media list-unstyled d-flex justify-content-between">
                        <li class="social-media-icon "><i class="icon-facebook"></i></li>
                        <li class="social-media-icon"><i class="icon-instagram"></i></li>
                        <li class="social-media-icon"><i class="icon-twitter"></i></li>
                    </ul>
                </div>
            </div>
        </div>

        <div class="container-fluid">
            <div class="footer-bottom">
                <p class="direitos-autorais pt-3 pb-3 mb-0">Audiomack 2015 - Alguns direitos reservados.</p>
            </div>
        </div>
		
</footer> 
</div>


<@liferay_util["include"] page=body_bottom_include />

<@liferay_util["include"] page=bottom_include />

<!-- inject:js -->
<!-- endinject -->

</body>

</html>