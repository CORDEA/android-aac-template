package ${packageName}.repositories

import javax.inject.Inject

class ${repositoryClass} @Inject constructor() {

    private var count = 0

    val countString: String
        get() {
            return count.toString()
        }

    fun inc() {
        count = count.inc()
    }
}
