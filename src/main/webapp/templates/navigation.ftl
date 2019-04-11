<div class="navigationLineTopPlaceholder">
    <#-- navigation line -->
</div>
<div class="navigationLine">
    <nav class="${nav_css_class}" id="navigation" role="navigation">
        <h1 class="hide-accessible"><@liferay.language key="navigation" /></h1>

        <div class="hamburger">
            <a class="dot collapsed" data-toggle="collapse" href="#navigationList" title="">&#9776;</a>
        </div>

        <ul aria-label="<@liferay.language key="site-pages" />" role="menubar" id="navigationList">
            <#list nav_items as nav_item>
                <#assign
                nav_item_attr_has_popup = ""
                nav_item_attr_selected = ""
                nav_item_css_class = ""
                nav_item_layout = nav_item.getLayout()
                />

                <#if nav_item.isSelected()>
                    <#assign
                    nav_item_attr_has_popup = "aria-haspopup='true'"
                    nav_item_attr_selected = "aria-selected='true'"
                    nav_item_css_class = "selected"
                    />
                </#if>

                <#assign nav_item_layout = nav_item.getLayout()/>
                <#if nav_item_layout.getFriendlyURL() == '/enrollee-area' >
                    <#assign nav_item_css_class = "${nav_item_css_class} enrollee-area"/>
                </#if>

                <#if nav_item_layout.getFriendlyURL() == '/privatearea' >
                    <#if !is_signed_in>
                        <#assign nav_item_css_class = "${nav_item_css_class} hidden"/>
                    </#if>
                </#if>

                <li ${nav_item_attr_selected} class="${nav_item_css_class}" id="layout_${nav_item.getLayoutId()}"
                                              role="presentation">
                    <a aria-labelledby="layout_${nav_item.getLayoutId()}" ${nav_item_attr_has_popup}
                       href="${nav_item.getURL()}" ${nav_item.getTarget()}
                       role="menuitem"><span><@liferay_theme["layout-icon"] layout=nav_item_layout /> ${nav_item.getName()}</span></a>

                    <#if nav_item.hasChildren()>
                        <ul class="child-menu" role="menu">
                            <#list nav_item.getChildren() as nav_child>
                                <#assign
                                nav_child_attr_selected = ""
                                nav_child_css_class = ""
                                />

                                <#if nav_item.isSelected()>
                                    <#assign
                                    nav_child_attr_selected = "aria-selected='true'"
                                    nav_child_css_class = "selected"
                                    />
                                </#if>

                                <li ${nav_child_attr_selected}
                                        class="${nav_child_css_class}"
                                        id="layout_${nav_child.getLayoutId()}"
                                        role="presentation"
                                >
                                    <a aria-labelledby="layout_${nav_child.getLayoutId()}"
                                       href="${nav_child.getURL()}"
                                       role="menuitem"
                                            ${nav_child.getTarget()}>
                                        ${nav_child.getName()}
                                    </a>
                                </li>
                            </#list>
                        </ul>
                    </#if>
                </li>
            </#list>
        </ul>

        <div class="rightNavBlock">
            <div class="account">
                <#--<#if is_signed_in>-->
                <#--<a href="/c/portal/logout">-->
                <#--<img src="/o/liferay7-theme/images/russiaeasy/logout.png" alt="">-->
                <#--<@liferay.language key="sign-out" />-->
                <#--</a>-->
                <#--</#if>-->
                <#if !is_signed_in>
                    <a href="/login#login">
                        <img src="/o/liferay7-theme/images/russiaeasy/navigation/profile.png"/>
                        <@liferay.language key="sign-in"/>
                    </a>
                    <span>&nbsp;/&nbsp;</span>
                    <a href="/registration#registration">
                        <@liferay.language key="sign-up"/>
                    </a>
                </#if>
            </div>

            <div class="writeUsOnNav">
                <a onclick="showQuestionFormModal();" title="<@liferay.language key="theme.writeUsButton" />">
                    <img src="/o/liferay7-theme/images/russiaeasy/navigation/mail.png" alt="contact us"/>
                </a>
            </div>

            <div class="searchView" id="searchView">
                <div class="searchField">
                    <@liferay.search/>
                </div>
            </div>
            <div class="searching">
                <a class="searchBtn" id="searchBtn" onClick="theme.toggleSearch()">
                    <img src="/o/liferay7-theme/images/russiaeasy/navigation/search.png" alt="search"/>
                </a>
            </div>
            <div class="languages" onclick="theme.showLanguageDropdown()">
<#--                <div class="shortLabel">${themeDisplay.getLocale().getISO3Country()}&nbsp;&#x25BC;</div>-->

                <@liferay_portlet["runtime"]
                defaultPreferences=default_preferences
                portletProviderAction=portletProviderAction.VIEW
                portletProviderClassName="com.liferay.portal.kernel.servlet.taglib.ui.LanguageEntry"
                />

                <div class="languageDropdown">

                </div>
            </div>
        </div>
    </nav>
</div>
