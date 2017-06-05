<!DOCTYPE html>

<#include init />

<html class="${root_css_class}" dir="<@liferay.language key="lang.dir" />" lang="${w3c_language_id}">

<head>
    <title>${the_title} - ${company_name}</title>
    <link rel="apple-touch-icon" sizes="180x180"
          href="/o/liferay7-theme/images/russiaeasy/favicon/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32"
          href="/o/liferay7-theme/images/russiaeasy/favicon/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16"
          href="/o/liferay7-theme/images/russiaeasy/favicon/favicon-16x16.png">
    <link rel="shortcut icon" type="image/x-icon" sizes="16x16"
          href="/o/liferay7-theme/images/russiaeasy/favicon/favicon.ico">
    <link rel="manifest" href="/o/liferay7-theme/images/russiaeasy/favicon/manifest.json">
    <link rel="mask-icon" href="/o/liferay7-theme/images/russiaeasy/favicon/safari-pinned-tab.svg" color="#d55b5b">
    <meta name="msapplication-config" content="/o/liferay7-theme/images/russiaeasy/favicon/browserconfig.xml"/>
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

<#assign privateAreaCSS = ""/>
<#list nav_items as nav_item>
    <#if nav_item.isSelected()>
        <#assign
        privateAreaCSS = "private-area"
        />
    </#if>
</#list>

<body class="${css_class} ${privateAreaCSS} russiaeasyBody">

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
    <div class="navigationPanelWrapper">
        <div class="navigationPanel">
            <ul>
            <#list nav_items as nav_item>
                <#assign nav_item_layout = nav_item.getLayout()/>
                <#if nav_item_layout.getFriendlyURL() != '/privatearea' >
                    <#assign
                    nav_css_class = ""
                    />
                    <#if nav_item.isSelected()>
                        <#assign nav_css_class = "selected"/>
                    </#if>
                    <#if nav_item.hasChildren()>
                        <#list nav_item.getChildren() as nav_child>
                            <#if nav_child.isSelected()>
                                <#assign nav_css_class = "selected"/>
                            </#if>
                            <#if nav_child.hasChildren()>
                                <#list nav_child.getChildren() as nav_child_two>
                                    <#if nav_child_two.isSelected()>
                                        <#assign nav_css_class = "selected"/>
                                    </#if>
                                </#list>
                            </#if>
                        </#list>
                    </#if>
                    <li class="${nav_css_class}">
                        <a aria-labelledby="layout_${nav_item.getLayoutId()}"
                           href="${nav_item.getURL()}"
                        >
                        ${nav_item.getName()}
                        </a>

                        <#if nav_item.hasChildren()>
                            <ul>
                                <#list nav_item.getChildren() as nav_child>
                                    <#assign
                                    nav_child_css_class = ""
                                    />
                                    <#if nav_child.isSelected()>
                                        <#assign nav_child_css_class = "selected"/>
                                    </#if>

                                    <#if nav_child.hasChildren()>
                                        <#list nav_child.getChildren() as nav_child_two>
                                            <#if nav_child_two.isSelected()>
                                                <#assign nav_child_css_class = "selected"/>
                                            </#if>
                                        </#list>
                                    </#if>

                                    <li class="${nav_child_css_class}"
                                        id="layout_${nav_child.getLayoutId()}"
                                    >
                                        <a aria-labelledby="layout_${nav_child.getLayoutId()}"
                                           href="${nav_child.getURL()}"
                                        >
                                        ${nav_child.getName()}
                                        </a>

                                        <#if nav_child.hasChildren()>
                                            <ul class="child-menu">
                                                <#list nav_child.getChildren() as nav_child_two>
                                                    <#assign
                                                    nav_child_two_css_class = ""
                                                    />

                                                    <#if nav_child_two.isSelected()>
                                                        <#assign
                                                        nav_child_two_css_class = "selected"
                                                        />
                                                    </#if>

                                                    <li class="${nav_child_two_css_class}"
                                                        id="layout_${nav_child_two.getLayoutId()}"
                                                    >
                                                        <a aria-labelledby="layout_${nav_child_two.getLayoutId()}"
                                                           href="${nav_child_two.getURL()}"
                                                        >
                                                            &mdash;&nbsp;${nav_child_two.getName()}
                                                        </a>
                                                    </li>
                                                </#list>
                                            </ul>
                                        </#if>
                                    </li>
                                </#list>
                            </ul>
                        </#if>
                    </li>
                </#if>
            </#list>
            </ul>

        </div>
    </div>
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