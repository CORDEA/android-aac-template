package ${packageName}.di

import android.arch.lifecycle.ViewModel
import android.arch.lifecycle.ViewModelProvider
import javax.inject.Inject
import javax.inject.Provider

class ViewModelFactory @Inject constructor(
        private val viewModels: Map<Class<*>, @JvmSuppressWildcards Provider<ViewModel>>
) : ViewModelProvider.Factory {

    @Suppress("UNCHECKED_CAST")
    override fun <T : ViewModel?> create(modelClass: Class<T>): T {
        val viewModel = viewModels[modelClass] ?: viewModels
                .filter { modelClass.isAssignableFrom(it.key) }
                .map { it.value }
                .firstOrNull()
        viewModel?.let {
            return it.get() as T
        }
        throw IllegalStateException()
    }
}
