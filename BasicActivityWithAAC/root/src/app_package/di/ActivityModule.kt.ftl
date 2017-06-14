package ${packageName}.di

import dagger.Module
import dagger.android.ContributesAndroidInjector
import ${packageName}.activities.${activityClass}

@Module
abstract class ActivityModule {

    @ContributesAndroidInjector
    abstract fun contribute${activityClass}(): ${activityClass}
}