<?xml version="1.0"?>
<globals>
    <global id="requireTheme" type="boolean" value="true" />
    <global id="relativePackage" value=".activities" />
    <#include "../common/common_globals.xml.ftl" />
    <global id="simpleLayoutName" value="<#if appCompatActivity>${contentLayoutName}<#else>${layoutName}</#if>" />
    <global id="appBarLayoutName" value="${layoutName}" />
</globals>
