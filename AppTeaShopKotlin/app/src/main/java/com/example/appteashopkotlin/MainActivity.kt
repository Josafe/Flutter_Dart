package com.example.appteashopkotlin

import android.support.v7.app.AppCompatActivity
import android.os.Bundle

class MainActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        variables_constantes() //Var tipos

        tipos_de_datos() //Tipos de datos

        arrays() //Array
    }

    /* Variables
        i
       constants
        en
       Kotlin
     */
    private fun variables_constantes(){
        //Variables

        var /*Variable*/ myVar /*nom*/ = "Hola primer print"
        println(myVar)

        var myNum = 4646464646
        println(myNum)

        val /*Constant*/ myVal = "Constant tercer print"
        println(myVal)
    }

    private fun tipos_de_datos(){

        //String
        val myString = "Hola mon!"

        //Enters
        val myInt = 1
        val myInt2 = 2
        val myInt3 = myInt + myInt2

        //Decimals
        val double = 0.32112312

        //Booleans o condicionals
        val verdader = true
        val fals = false
    }

    private fun arrays(){
        val name = "Joan"
        val cognom = "Sabater"
        val cognom2 = "Ferré"

        val myArray:ArrayList<String> = arrayListOf<String>();

        myArray.add(name)
        myArray.add(cognom)
        myArray.add(cognom2)
        myArray.add("Hola")

        myArray[3] = "22-08-2000 afegit directament"

        println(myArray)


    }
}