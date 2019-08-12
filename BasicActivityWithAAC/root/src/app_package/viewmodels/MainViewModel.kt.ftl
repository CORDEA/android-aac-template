package ${packageName}.viewmodels

import androidx.lifecycle.LiveData
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import android.view.View
import ${packageName}.repositories.${repositoryClass}
import javax.inject.Inject

class ${viewModelClass} @Inject constructor(
    private val repository: ${repositoryClass}
) : ViewModel() {

    private val text = MutableLiveData<String>()

    fun getText(): LiveData<String> {
        return text
    }

    fun onClick(view: View) {
        repository.inc()
        text.value = repository.countString
    }

    init {
        text.value = repository.countString
    }
}
