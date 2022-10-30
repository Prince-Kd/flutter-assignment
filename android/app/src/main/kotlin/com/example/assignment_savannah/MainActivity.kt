package com.example.assignment_savannah

import android.content.Intent
import android.os.Bundle
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugins.GeneratedPluginRegistrant

class MainActivity: FlutterActivity(){
    private val CHANNEL = "test_activity"

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        GeneratedPluginRegistrant.registerWith(flutterEngine)
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CHANNEL).setMethodCallHandler { call, result ->
            if (call.method.equals("startNewActivity")) {
                startNewActivity(call)
                result.success("ActivityStarted")
            }
        }
    }

    private fun startNewActivity(call: MethodCall) {
        val screen1 = call.argument<String>("home")
        val screen2 = call.argument<String>("second")
        val screen3 = call.argument<String>("native")

        val intent = Intent(this, SecondActivity::class.java).apply {
            putExtra("home", screen1)
            putExtra("second", screen2)
            putExtra("native", screen3)
        }

        startActivity(intent)
    }
}

