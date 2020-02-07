<!-- Global site tag (gtag.js) - Google Analytics -->
<#--https://developers.google.com/analytics/devguides/collection/gtagjs/migration?hl=ru-->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-80329921-1"></script>
<script>
    window.dataLayer = window.dataLayer || [];
    function gtag(){dataLayer.push(arguments);}
    gtag('js', new Date());

    gtag('config', 'UA-80329921-1', {
        <#if is_signed_in>
            'user_id': '${user.getUserId()}'
        </#if>
    });
</script>