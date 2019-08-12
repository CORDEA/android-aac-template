<#import "root://activities/common/kotlin_macros.ftl" as kt>
package ${packageName}.activities

import android.arch.lifecycle.*
import android.databinding.DataBindingUtil
import android.os.Bundle
import android.support.v7.app.AppCompatActivity
import dagger.android.AndroidInjection
import ${packageName}.R
import ${packageName}.databinding.ActivityMainBinding
import ${packageName}.viewmodels.MainViewModel
import javax.inject.Inject

class ${activityClass} : ${superClassFqcn}(), LifecycleRegistryOwner {

    @Inject
    lateinit var factory: ViewModelProvider.Factory

    private val viewModel by lazy {
        ViewModelProviders.of(this, factory).get(${viewModelClass}::class.java)
    }

    private val binding by lazy {
        DataBindingUtil.setContentView<Activity${baseName}Binding>(this, R.layout.activity_${baseName?lower_case})
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
                binding.content?.textView?.text = it
            }
        })
    }
<#include "../../../../../common/jni_code_snippet.kt.ftl">
}
