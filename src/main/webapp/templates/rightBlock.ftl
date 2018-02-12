<div id="rightBlockContainer">
    <div id="rightBlock">
        <div class="horizontalLogo">
            <a href="/"><img src="/o/liferay7-theme/images/russiaeasy/horizontalLogo240.png"></a>
        </div>

        <div class="userArea">
            <div class="userName">
                ${user.firstName}
                <br>
                ${user.lastName}
                <div id="registrationNumber"></div>
            </div>
            <div class="userNotifications">
                <div class="notificationIcon">
                    <a href="/messaging">
                        <img src="/o/liferay7-theme/images/russiaeasy/messageDark.png" alt=">">
                    </a>
                </div>
                <div class="notificationCount hidden">
                    0
                </div>
            </div>
        </div>
        <div class="rightBlockMenu">
            <div class="privateAreaList " id="privateAreaList">
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
            </div>

            <div class="paidServices">

            </div>
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