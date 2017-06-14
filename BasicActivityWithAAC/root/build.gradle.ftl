android {
    apply plugin: 'kotlin-kapt'
    defaultConfig {
        javaCompileOptions {
            annotationProcessorOptions {
                arguments = ["room.schemaLocation": "$projectDir/schemas".toString()]
            }
        }
    }
    dataBinding {
        enabled = true
    }
}
