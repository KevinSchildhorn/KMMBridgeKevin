import java.io.FileInputStream
import java.util.Properties

plugins {
    alias(libs.plugins.kotlin.multiplatform)
    alias(libs.plugins.kotlin.serialization)
    alias(libs.plugins.sqlDelight)
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
            baseName = "breeds"
        }
    }



    sourceSets {
        commonMain.dependencies {
            implementation(project(":analytics"))
            implementation(libs.coroutines.core)
            implementation(libs.bundles.ktor.common)
            implementation(libs.multiplatformSettings)
            implementation(libs.kotlinx.dateTime)
            implementation(libs.touchlab.kermit)
            implementation(libs.sqlDelight.coroutinesExt)
        }
        androidMain.dependencies {
            implementation(libs.sqlDelight.android)
            implementation(libs.ktor.client.okHttp)
        }
        iosMain.dependencies {
            implementation(libs.touchlab.stately.common)
            implementation(libs.sqlDelight.native)
            implementation(libs.ktor.client.ios)
        }
    }
}

android {
    compileSdk = libs.versions.compileSdk.get().toInt()

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_17
        targetCompatibility = JavaVersion.VERSION_17
    }

    defaultConfig {
        minSdk = libs.versions.minSdk.get().toInt()
    }
    namespace = "co.touchlab.kmmbridgekickstart.breeds"
}

// For publishing Android AAR files to GitHub Packages
addGithubPackagesRepository()

sqldelight {
    databases.create("KMMBridgeKickStartDb") {
        packageName.set("co.touchlab.kmmbridgekickstart.db")
    }
}

val localProperties = Properties()
val localPropertiesFile = rootProject.file("local.properties")
if (localPropertiesFile.exists()) {
    localProperties.load(FileInputStream(rootProject.file("local.properties")))
}

kmmbridge {
    frameworkName = "breeds"
    s3PublicArtifacts(
        "us-east-2",
        "kevins-kmm-bucket",
        System.getenv("ACCESS_KEY") ?: localProperties.getProperty("ACCESS_KEY"),
        System.getenv("SECRET_ACCESS_KEY") ?: localProperties.getProperty("SECRET_ACCESS_KEY")
    )
}