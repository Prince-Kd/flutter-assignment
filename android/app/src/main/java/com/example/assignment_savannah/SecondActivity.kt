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
//    val home=intent.getIntExtra("home", 0)
//    val second=intent.getIntExtra("second", 0)
//    val native=intent.getIntExtra("native", 0)

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_second)

//        val listView = findViewById<ListView>(R.id.second_listview)
//
//        listView.adapter = MyAdapter(this)
    }

    private class MyAdapter(context: Context): BaseAdapter() {
        private val mContext: Context
        init {
            mContext = context
        }
        override fun getCount(): Int {
            TODO("Not yet implemented")
            return 3
        }

        override fun getItem(position: Int): Any {
            TODO("Not yet implemented")
            return "Test String"
        }

        override fun getItemId(position: Int): Long {
            TODO("Not yet implemented")
            return position.toLong()
        }

        override fun getView(position: Int, convertView: View?, parent: ViewGroup?): View {
            TODO("Not yet implemented")
            val layoutInflater = LayoutInflater.from(mContext)
            val rowSecond = layoutInflater.inflate(R.layout.row_second, parent, false)
            return rowSecond
//            val textView = TextView(mContext)
//            textView.text = "Kotlin Activity"
//            return textView
        }

    }
}