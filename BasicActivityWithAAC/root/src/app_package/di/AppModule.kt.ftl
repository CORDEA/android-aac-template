package ${packageName}.di

import dagger.Module

@Module(includes = arrayOf(ViewModelModule::class))
class AppModule
