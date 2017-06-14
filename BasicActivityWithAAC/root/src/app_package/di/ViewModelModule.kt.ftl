package ${packageName}.di

import android.arch.lifecycle.ViewModel
import android.arch.lifecycle.ViewModelProvider
import dagger.Binds
import dagger.Module
import dagger.multibindings.ClassKey
import dagger.multibindings.IntoMap
import ${packageName}.viewmodels.${viewModelClass}

@Module
abstract class ViewModelModule {

    @Binds
    @IntoMap
    @ClassKey(${viewModelClass}::class)
    abstract fun bind${viewModelClass}(viewModel: ${viewModelClass}): ViewModel

    @Binds
    abstract fun bindViewModelFactory(factory: ViewModelFactory): ViewModelProvider.Factory
}