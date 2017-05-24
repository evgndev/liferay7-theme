<!DOCTYPE html>

<#include init />

<html class="${root_css_class}" dir="<@liferay.language key="lang.dir" />" lang="${w3c_language_id}">

<head>
    <title>${the_title} - ${company_name}</title>

    <meta content="initial-scale=1.0, width=device-width" name="viewport"/>
    <script src="/o/liferay7-theme/js/jquery-3.2.1.js"></script>
    <script src="/o/liferay7-theme/js/theme.js"></script>
<@liferay_util["include"] page=top_head_include />
</head>

<body class="${css_class}">

<@liferay_ui["quick-access"] contentId="#main-content" />

<@liferay_util["include"] page=body_top_include />

<@liferay.control_menu />

<#include "${full_templates_path}/header.ftl" />
<#if has_navigation && is_setup_complete>
    <#include "${full_templates_path}/navigation.ftl" />
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

<@liferay_util["include"] page=body_bottom_include />

<@liferay_util["include"] page=bottom_include />

</body>
</html>