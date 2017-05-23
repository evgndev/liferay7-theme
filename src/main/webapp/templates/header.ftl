<div class="header">
    <div class="container">
        <div class="row withLogo">
            <div class="col-md-3 col-md-offset-1">
                <div class="writeUs">
                    <button class="writeUsBtn" onclick="location.href='mailto:info@russiaeasy.org';">
                    <@liferay.language key="theme.writeUsButton" />
                    </button>
                    <div class="writeUsText">
                        <p>
                            ← <@liferay.language key="theme.header.writeUsHint" />
                        </p>
                    </div>
                </div>
            </div>
            <div class="logo col-md-4">
                <a class="${logo_css_class}" href="${site_default_url}"
                   title="<@liferay.language_format arguments="${site_name}" key="go-to-x" />">
                    <img alt="${logo_description}" src="${site_logo}"/>
                </a>
            </div>
            <div class="logoRight col-md-3">
                <div class="lang">
                <@liferay_portlet["runtime"]
                        defaultPreferences=default_preferences
                        portletProviderAction=portletProviderAction.VIEW
                        portletProviderClassName="com.liferay.portal.kernel.servlet.taglib.ui.LanguageEntry"
                />
                </div>
                <div class="privateArea">

                    <#if is_signed_in>
                        <a href="/c/portal/logout"><@liferay.language key="sign-out" /></a>
                    </#if>
                    <#if !is_signed_in>
                    <a href="/login"><img src="/o/liferay7-theme/images/russiaeasy/key.png"/>
                        <@liferay.language key="sign-in" />
                    </a>
                    &nbsp;/&nbsp;
                    <a href="/registration">
                        <@liferay.language key="sign-up" />
                    </a>
                    </#if>
                </div>
            </div>
        </div>
        <div class="education">
            <div class="educationHeader">
                <p>
                    <@liferay.language key="theme.header.mainText.part1" />
                    <br>
                    <@liferay.language key="theme.header.mainText.part2" />
                </p>
            </div>
            <div class="redLine">

            </div>
            <div class="educationText">
                <p>
                    <@liferay.language key="theme.header.mainTextNext.part1" />
                    <br>
                    <@liferay.language key="theme.header.mainTextNext.part2" />
                </p>
            </div>

            <#if !is_signed_in>
                <button class="registrationButton" onclick="location.href='/registration';">
                    <@liferay.language key="theme.registrationButton" />
                </button>
                <br>
                <div class="educationWhyReg">
                    <div class="educationWhyRegTextWrapper">
                        <div class="educationWhyRegTextBlock">
                            <p>
                                <@liferay.language key="theme.header.whyRegistrationHint.1" />
                                <br>
                                <@liferay.language key="theme.header.whyRegistrationHint.2" />
                                <br>
                                <@liferay.language key="theme.header.whyRegistrationHint.3" />
                                <br>
                                <@liferay.language key="theme.header.whyRegistrationHint.4" />
                            </p>
                        </div>
                    </div>
                    <p><@liferay.language key="theme.header.whyRegistrationLink" /></p>
                </div>
            </#if>
        </div>
    </div>
</div>