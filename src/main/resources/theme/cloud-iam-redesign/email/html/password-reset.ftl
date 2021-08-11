<#import "layoutCloudIAM.ftl" as layout>
<@layout.layoutCloudIAM ; section>
    <#if section = "text">
        ${kcSanitize(msg("passwordResetBodyHtml",link, linkExpiration, realmName, linkExpirationFormatter(linkExpiration)))?no_esc}
    </#if>
</@layout.layoutCloudIAM>