plugins {
    alias(libs.plugins.kotlin.multiplatform)
    alias(libs.plugins.android.library)
    alias(libs.plugins.kmmbridge)
    `maven-publish`
}

kotlin {
    androidTarget {
        publishAllLibraryVariants()
    }
    listOf(
        iosX64(),
        iosArm64(),
        iosSimulatorArm64()
    ).forEach {
        it.binaries.framework {
            baseName = "analytics"
        }
    }

    sourceSets {
        commonMain.dependencies {
            implementation(libs.touchlab.stately.concurrency)
        }
    }
}

// For publishing Android AAR files to GitHub Packages
addGithubPackagesRepository()

android {
    compileSdk = libs.versions.compileSdk.get().toInt()

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_17
        targetCompatibility = JavaVersion.VERSION_17
    }

    defaultConfig {
        minSdk = libs.versions.minSdk.get().toInt()
    }
    namespace = "co.touchlab.kmmbridgekickstart.analytics"
}
/*
kmmbridge {
    gitHubReleaseArtifacts()
    frameworkName = "analytics"
    spm(
        swiftToolVersion = "5.8",
        useCustomPackageFile = true,
        perModuleVariablesBlock = true
    ) {
        iOS { v("14") }
    }
}*/