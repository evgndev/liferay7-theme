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
                <h1 class="text-uppercase">
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

            <button class="registrationButton" onclick="location.href='#programBanner';">
                <@liferay.language key="theme.toProgramSelection" />
            </button>
            <br>
            <#if false>
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