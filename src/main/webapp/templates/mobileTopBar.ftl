<div class="mobileTopBarWrapper">
    <div class="mobileTopBar">
        <div class="horizontalLogo">
            <a href="/">
                <img src="/o/liferay7-theme/images/russiaeasy/horizontalLogo.png">
            </a>
        </div>
        <#if !is_signed_in>
            <div class="log-in">
                <a href="/login#login" title="<@liferay.language key="sign-in" />">
                    <img src="/o/liferay7-theme/images/russiaeasy/key.png"/>
                </a>
            </div>
        </#if>
        <#if is_signed_in>
            <div class="log-out">
                <a href="/c/portal/logout" title="<@liferay.language key="sign-out" />">
                    <img src="/o/liferay7-theme/images/russiaeasy/logout.png" alt=">">
                </a>
            </div>
        </#if>
    </div>
</div>