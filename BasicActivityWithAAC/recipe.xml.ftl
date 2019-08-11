<?xml version="1.0"?>
<recipe>
    <#include "../common/recipe_no_actionbar.xml.ftl" />

    <merge from="root/build.gradle.ftl"
            to="${escapeXmlAttribute(projectOut)}/build.gradle" />

    <#if requireTheme!false>
    <#include "../common/recipe_theme.xml.ftl" />
    </#if>

    <merge from="root/AndroidManifest.xml.ftl"
           to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />

    <merge from="../common/root/res/values/manifest_strings.xml.ftl"
             to="${escapeXmlAttribute(resOut)}/values/strings.xml" />

    <merge from="../common/root/res/values/app_bar_dimens.xml"
                to="${escapeXmlAttribute(resOut)}/values/dimens.xml" />

    <dependency mavenUrl="com.android.support:appcompat-v7:${buildApi}.+"/>
    <dependency mavenUrl="com.android.support:design:${buildApi}.+"/>
    <dependency mavenUrl="com.android.support.constraint:constraint-layout:+" />

    <dependency mavenUrl="org.jetbrains.kotlinx:kotlinx-coroutines-core:+" />
    <dependency mavenUrl="org.jetbrains.kotlinx:kotlinx-coroutines-android:+" />

    <dependency mavenUrl="com.android.databinding:compiler:+" gradleConfiguration="kapt" />

    <dependency mavenUrl="android.arch.lifecycle:runtime:+" />
    <dependency mavenUrl="android.arch.lifecycle:extensions:+" />
    <dependency mavenUrl="android.arch.lifecycle:compiler:+" gradleConfiguration="kapt" />

    <dependency mavenUrl="android.arch.persistence.room:runtime:+" />
    <dependency mavenUrl="android.arch.persistence.room:compiler:+" gradleConfiguration="kapt" />

    <dependency mavenUrl="com.google.dagger:dagger:+" />
    <dependency mavenUrl="com.google.dagger:dagger-android:+" />
    <dependency mavenUrl="com.google.dagger:dagger-android-support:+" />
    <dependency mavenUrl="com.google.dagger:dagger-compiler:+" gradleConfiguration="kapt" />
    <dependency mavenUrl="com.google.dagger:dagger-android-processor:+" gradleConfiguration="kapt" />

    <instantiate from="root/res/layout/activity_main.xml.ftl"
                to="${escapeXmlAttribute(resOut)}/layout/activity_${baseName?lower_case}.xml" />

    <instantiate from="root/res/layout/content_main.xml.ftl"
                to="${escapeXmlAttribute(resOut)}/layout/content_${baseName?lower_case}.xml" />

    <copy from="root/res/drawable/ic_add_white_24dp.xml"
                to="${escapeXmlAttribute(resOut)}/drawable/ic_add_white_24dp.xml" />

    <instantiate from="root/src/app_package/App.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/App.kt" />

    <instantiate from="root/src/app_package/di/ActivityModule.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/di/ActivityModule.kt" />

    <instantiate from="root/src/app_package/di/AppComponent.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/di/AppComponent.kt" />

    <instantiate from="root/src/app_package/di/AppModule.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/di/AppModule.kt" />

    <instantiate from="root/src/app_package/di/ViewModelFactory.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/di/ViewModelFactory.kt" />

    <instantiate from="root/src/app_package/di/ViewModelModule.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/di/ViewModelModule.kt" />

    <instantiate from="root/src/app_package/repositories/MainRepository.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/repositories/${repositoryClass}.kt" />

    <instantiate from="root/src/app_package/viewmodels/MainViewModel.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/viewmodels/${viewModelClass}.kt" />

    <instantiate from="root/src/app_package/activities/MainActivity.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/activities/${activityClass}.kt" />

    <instantiate from="root/src/app_package/activities/MainActivityModule.kt.ftl"
                 to="${escapeXmlAttribute(srcOut)}/activities/${activityClass}Module.kt" />

    <open file="${escapeXmlAttribute(srcOut)}/${activityClass}.kt" />

    <open file="${escapeXmlAttribute(resOut)}/layout/layout_${baseName?lower_case}.xml" />

</recipe>
