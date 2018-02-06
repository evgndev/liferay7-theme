<div class="shortLogo">
    <div class="horizontalLogo">
        <a href="/"><img src="/o/liferay7-theme/images/russiaeasy/horizontalLogo.png"></a>
    </div>
    <div class="lang">
        <@liferay_portlet["runtime"]
                            defaultPreferences=default_preferences
        portletProviderAction=portletProviderAction.VIEW
        portletProviderClassName="com.liferay.portal.kernel.servlet.taglib.ui.LanguageEntry"
                    />
    </div>
    <div class="log-in">
        <a href="/login#login">
            <img src="/o/liferay7-theme/images/russiaeasy/key.png"/>
        </a>
    </div>
</div>
<div class="header">
    <div class="container">
        <div class="withLogo">
            <div class="logoLeft">
            </div>
            <div class="logo">
                <a class="${logo_css_class}" href="${site_default_url}"
                   title="<@liferay.language_format arguments="${site_name}" key="go-to-x" />">
                    <img alt="${logo_description}" src="${site_logo}"/>
                </a>
            </div>
            <div class="logoRight">
            </div>
        </div>
        <div class="education">
            <div class="educationHeader">
                <h1>
                    <@liferay.language key="theme.header.mainText.part1" />
                    <br>
                    <@liferay.language key="theme.header.mainText.part2" />
                </h1>
            </div>
            <div class="redLine"></div>
            <div class="educationText">
                <p>
                    <@liferay.language key="theme.header.mainTextNext.part1" />
                    <br>
                    <@liferay.language key="theme.header.mainTextNext.part2" />
                </p>
            </div>

            <#if !is_signed_in>
                <button class="registrationButton" onclick="location.href='/registration#registration';">
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