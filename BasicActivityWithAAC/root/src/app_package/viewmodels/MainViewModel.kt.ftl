package ${packageName}.viewmodels

import android.arch.lifecycle.LiveData
import android.arch.lifecycle.MutableLiveData
import android.arch.lifecycle.ViewModel
import android.view.View
import ${packageName}.repositories.${repositoryClass}
import javax.inject.Inject

class ${viewModelClass} @Inject constructor(repository: ${repositoryClass}) : ViewModel() {

    private val text = MutableLiveData<String>()

    fun getText(): LiveData<String> {
        return text
    }

    val onClick = View.OnClickListener {
        repository.inc()
        text.value = repository.countString
    }

    init {
        text.value = repository.countString
    }
}
