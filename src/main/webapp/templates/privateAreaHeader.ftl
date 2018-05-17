<section class="fullSizeContent privateAreaHeader" id="privateAreaHeader">
    <div class="horizontalLogo">
        <div><a href="/"><img alt="logo" src="/o/liferay7-theme/images/russiaeasy/horizontalLogo301.png"/></a></div>
    </div>

    <div class="areaSiteLabel">
        <div id="privateAreaName">Private area</div>
    </div>

    <div class="languageSelector">
        <div class="lang">
        <@liferay_portlet["runtime"]
                        defaultPreferences=default_preferences
        portletProviderAction=portletProviderAction.VIEW
        portletProviderClassName="com.liferay.portal.kernel.servlet.taglib.ui.LanguageEntry"
                />
        </div>
    </div>

    <div class="userArea">
        <div>
            <div>
                <img alt="logo" src="/o/liferay7-theme/images/russiaeasy/user.png"/>
                ${user.firstName}&nbsp;${user.lastName}
                <div class="logoutLink pull-right">
                    <a href="/c/portal/logout">
                        <img src="/o/liferay7-theme/images/russiaeasy/logout.png" alt=">">
                    </a>
                </div>
            </div>

            <div class="privateAreaList " id="privateAreaList">
                <div id="registrationNumber"></div>
            <#list nav_items as nav_item>
                <#assign nav_item_layout = nav_item.getLayout()/>
                <#if nav_item_layout.getFriendlyURL() == '/privatearea' >
                    <#if nav_item.hasChildren()>
                        <ul aria-label="<@liferay.language key="site-pages" />" role="menubar">
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
                </#if>
            </#list>

            <#if is_signed_in>
                <hr>
                <div class="logoutLink">
                    <a href="/c/portal/logout">
                        <@liferay.language key="sign-out" />
                        <img src="/o/liferay7-theme/images/russiaeasy/logout.png" alt=">">
                    </a>
                </div>
            </#if>
            </div>
        </div>
    </div>
</section>
