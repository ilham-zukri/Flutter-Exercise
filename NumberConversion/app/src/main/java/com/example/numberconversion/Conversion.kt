package com.example.numberconversion

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.view.View
import android.widget.Button
import android.widget.EditText
import kotlinx.android.synthetic.main.activity_conversion.*

class Conversion : AppCompatActivity(), View.OnClickListener {

    private lateinit var inpDec: EditText
    private lateinit var inpHex: EditText
    private lateinit var inpBin: EditText
    private lateinit var inpOct: EditText
    private lateinit var btnConv: Button
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_conversion)

        inpDec = findViewById(R.id.input_decimal)
        inpHex = findViewById(R.id.input_hexa)
        inpBin = findViewById(R.id.input_binary)
        inpOct = findViewById(R.id.input_octal)
        btnConv = findViewById(R.id.btn_Convert)
        btnConv.setOnClickListener(this)
    }

    override fun onClick(v: View) {
        if(v.id == R.id.btn_Convert){
            val inputDecimal = inpDec.text.toString().trim()
            //val inputHex = inpHex.text.toString().trim()
            //val inputBiner = inpBin.text.toString().trim()
            //val inputOctal = inpOct.text.toString().trim()

            if (inputDecimal.isNotEmpty()){
                val decimal = inputDecimal.toInt()
                val biner = decimal.toString(2)
                input_binary.setText(biner)
                val hexa = decimal.toString(16).toUpperCase()
                input_hexa.setText(hexa)
                val octa = decimal.toString(8)
                input_octal.setText(octa)


            }

        }
    }
}


