package ${packageName}.di

import dagger.Module
import dagger.android.ContributesAndroidInjector
import ${packageName}.activities.${activityClass}Module

@Module(includes = [
    ${activityClass}Module::class
])
interface ActivityModule
