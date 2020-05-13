package com.example.numberconversion

import android.content.Intent
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.view.View
import android.widget.Button

class MainActivity : AppCompatActivity(), View.OnClickListener {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        val btnStart: Button = findViewById(R.id.btn_Start)
        btnStart.setOnClickListener(this)
        val btnAbout: Button = findViewById(R.id.btn_About)
        btnAbout.setOnClickListener(this)
    }

    override fun onClick(v: View) {
        when(v.id){
            R.id.btn_Start ->{
                val startIntent = Intent(this, Conversion::class.java)
                startActivity(startIntent)
            }

            R.id.btn_About ->{
                val aboutIntent = Intent(this, About::class.java)
                startActivity(aboutIntent)
            }
        }
    }
}
