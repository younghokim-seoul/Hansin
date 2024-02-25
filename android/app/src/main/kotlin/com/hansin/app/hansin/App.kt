package com.hansin.app.hansin

import android.app.Activity
import android.app.Application
import android.content.Intent
import android.content.pm.PackageManager
import android.os.Bundle
import android.util.Log
import kotlin.system.exitProcess

class App : Application() , Application.ActivityLifecycleCallbacks {

    override fun onCreate() {
        super.onCreate()
        registerActivityLifecycleCallbacks(this)
    }

    override fun onActivityCreated(activity: Activity, bundle: Bundle?) {
        Log.d("Hansin","[onActivityCreated] activity: " + activity.toString() + ", bundle: " + bundle + ", Thread: " + Thread.currentThread())

        if(bundle != null){
            Log.d("Hansin","[onActivityCreated] reCreated")
            val packageManager: PackageManager = applicationContext.packageManager
            val intent = packageManager.getLaunchIntentForPackage(applicationContext.packageName)
            val componentName = intent!!.component
            val mainIntent = Intent.makeRestartActivityTask(componentName)
            applicationContext.startActivity(mainIntent)
            Log.d("Hansin","[onActivityCreated] reCreated finish.")
            exitProcess(0)
        }
    }

    override fun onActivityStarted(p0: Activity) {

    }

    override fun onActivityResumed(p0: Activity) {

    }

    override fun onActivityPaused(p0: Activity) {

    }

    override fun onActivityStopped(p0: Activity) {

    }

    override fun onActivitySaveInstanceState(p0: Activity, p1: Bundle) {

    }

    override fun onActivityDestroyed(p0: Activity) {

    }

}