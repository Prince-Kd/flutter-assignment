package com.example.assignment_savannah

import android.content.Context
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.BaseAdapter
import android.widget.ListView
import android.widget.TextView

class SecondActivity : AppCompatActivity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_second)

        val home= intent.getStringExtra("home")
        val second=intent.getStringExtra("second")
        val native=intent.getStringExtra("native")

        val homeCount = findViewById<TextView>(R.id.textView2).apply {
            text = "Viewed $home times(s)"
        }

        val secondCount = findViewById<TextView>(R.id.textView3).apply {
            text = "Viewed $second times(s)"
        }

        val nativeCount = findViewById<TextView>(R.id.textView4).apply {
            text = "Viewed $native times(s)"
        }
    }

}