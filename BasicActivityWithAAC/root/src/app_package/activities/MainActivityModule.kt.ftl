package ${packageName}.activities

import dagger.Module
import dagger.android.ContributesAndroidInjector
import ${packageName}.activities.${activityClass}

@Module
interface ${activityClass}Module {
    @ContributesAndroidInjector
    fun contribute${activityClass}(): ${activityClass}
}
