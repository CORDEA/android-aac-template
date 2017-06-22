# Android AAC Template

Android Studio Template using Kotlin + Android Architecture Components + Data Binding + Dagger 2.

## What is generated

```
.
├── AndroidManifest.xml
├── java
│   └── jp
│       └── cordea
│           └── myapplication
│               ├── App.kt
│               ├── activities
│               │   └── MainActivity.kt
│               ├── di
│               │   ├── ActivityModule.kt
│               │   ├── AppComponent.kt
│               │   ├── AppModule.kt
│               │   ├── ViewModelFactory.kt
│               │   └── ViewModelModule.kt
│               ├── repositories
│               │   └── MainRepository.kt
│               └── viewmodels
│                   └── MainViewModel.kt
└── res
    ├── drawable
    │   └── ic_add_white_24dp.xml
    ├── layout
    │   ├── activity_main.xml
    │   └── content_main.xml
    ├── mipmap-hdpi
    │   ├── ic_launcher.png
    │   └── ic_launcher_round.png
    ├── mipmap-mdpi
    │   ├── ic_launcher.png
    │   └── ic_launcher_round.png
    ├── mipmap-xhdpi
    │   ├── ic_launcher.png
    │   └── ic_launcher_round.png
    ├── mipmap-xxhdpi
    │   ├── ic_launcher.png
    │   └── ic_launcher_round.png
    ├── mipmap-xxxhdpi
    │   ├── ic_launcher.png
    │   └── ic_launcher_round.png
    └── values
        ├── colors.xml
        ├── dimens.xml
        ├── strings.xml
        └── styles.xml

17 directories, 27 files

```

## Usage

Copy BasicActivityWithAAC to templates directory. Like this in MacOS.

```console
$ cp -r BasicActivityWithAAC /Applications/Android\ Studio\ 3.0\ Preview.app/Contents/plugins/android/lib/templates/activities/
```
