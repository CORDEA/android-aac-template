<#import "root://activities/common/kotlin_macros.ftl" as kt>
package ${packageName}.activities

import androidx.lifecycle.*
import android.os.Bundle
import androidx.appcompat.app.AppCompatActivity
import androidx.databinding.DataBindingUtil
import dagger.android.AndroidInjection
import ${packageName}.R
import ${packageName}.databinding.${activityClass}Binding
import ${packageName}.viewmodels.${viewModelClass}
import javax.inject.Inject

class ${activityClass} : AppCompatActivity(), LifecycleRegistryOwner {

    @Inject
    lateinit var factory: ViewModelProvider.Factory

    private val viewModel by lazy {
        ViewModelProviders.of(this, factory).get(${viewModelClass}::class.java)
    }

    private val binding by lazy {
        DataBindingUtil.setContentView<${activityClass}Binding>(this, R.layout.${baseName?lower_case}_activity)
    }

    private val lifecycle = LifecycleRegistry(this)

    override fun getLifecycle(): LifecycleRegistry = lifecycle

    override fun onCreate(savedInstanceState: Bundle?) {
        AndroidInjection.inject(this)
        super.onCreate(savedInstanceState)
        binding.vm = viewModel

        setSupportActionBar(binding.toolbar)
<#include "../../../../../common/jni_code_usage.kt.ftl">

        subscribe()
    }

    private fun subscribe() {
        viewModel.getText().observe(this, Observer<String> {
            it?.let {
                binding.content.textView.text = it
            }
        })
    }
<#include "../../../../../common/jni_code_snippet.kt.ftl">
}
