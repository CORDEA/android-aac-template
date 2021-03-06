package ${packageName}.di

import androidx.lifecycle.ViewModel
import androidx.lifecycle.ViewModelProvider
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