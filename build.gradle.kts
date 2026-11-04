plugins {
    alias(libs.plugins.kotlinMultiplatform)
    alias(libs.plugins.antlr.plugin)
}

kotlin {
    linuxArm64()
    linuxX64()
    mingwX64()
    macosArm64()

    sourceSets {
        commonMain.dependencies {
            implementation(libs.kotlinx.io)
            implementation(libs.coroutines.core)
            implementation(libs.antlr.runtime)
        }
    }
}