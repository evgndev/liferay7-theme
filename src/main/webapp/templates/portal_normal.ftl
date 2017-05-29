<!DOCTYPE html>

<#include init />

<html class="${root_css_class}" dir="<@liferay.language key="lang.dir" />" lang="${w3c_language_id}">

<head>
    <title>${the_title} - ${company_name}</title>
    <link rel="apple-touch-icon" sizes="180x180" href="/o/liferay7-theme/images/russiaeasy/favicon/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="/o/liferay7-theme/images/russiaeasy/favicon/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="/o/liferay7-theme/images/russiaeasy/favicon/favicon-16x16.png">
    <link rel="shortcut icon"  type="image/x-icon" sizes="16x16" href="/o/liferay7-theme/images/russiaeasy/favicon/favicon.ico">
    <link rel="manifest" href="/o/liferay7-theme/images/russiaeasy/favicon/manifest.json">
    <link rel="mask-icon" href="/o/liferay7-theme/images/russiaeasy/favicon/safari-pinned-tab.svg" color="#d55b5b">
    <meta name="msapplication-config" content="/o/liferay7-theme/images/russiaeasy/favicon/browserconfig.xml" />
    <meta name="apple-mobile-web-app-title" content="RussiaEasy">
    <meta name="application-name" content="RussiaEasy">
    <meta name="theme-color" content="#ffffff">

    <@liferay_util["include"] page=top_head_include />

    <script>
        define._amd = define.amd;
        define.amd = false;
    </script>
    <script src="/o/liferay7-theme/js/slick.js"></script>
    <script>
        define.amd = define._amd;
    </script>

    <#--<script src="/o/liferay7-theme/js/slick.js"></script>-->
    <script src="/o/liferay7-theme/js/theme.js"></script>
    <link rel="stylesheet" type="text/css" href="/o/liferay7-theme/css/slick.css"/>
    <link rel="stylesheet" type="text/css" href="/o/liferay7-theme/css/slick-theme.css"/>
</head>

<body class="${css_class} russiaeasyBody">

<@liferay_ui["quick-access"] contentId="#main-content" />

<@liferay_util["include"] page=body_top_include />

<@liferay.control_menu />

<#if !is_signed_in>
    <#include "${full_templates_path}/header.ftl" />
</#if>
<#if has_navigation && is_setup_complete>
    <#include "${full_templates_path}/navigation.ftl" />
</#if>
<#if is_signed_in>
    <#include "${full_templates_path}/privateAreaHeader.ftl" />
</#if>
<div class="container-fluid" id="wrapper">
    <section id="content">
        <h1 class="hide-accessible">${the_title}</h1>

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

    <footer id="footer" role="contentinfo">
        <p class="powered-by">
        <@liferay.language key="powered-by" /> <a href="http://www.liferay.com" rel="external">Liferay</a>
        </p>
    </footer>
</div>
<#include "${full_templates_path}/writeUs.ftl" />
<@liferay_util["include"] page=body_bottom_include />
<@liferay_util["include"] page=bottom_include />
</body>
</html>