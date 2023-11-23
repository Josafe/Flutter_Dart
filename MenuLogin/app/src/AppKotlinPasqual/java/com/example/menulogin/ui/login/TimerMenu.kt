package com.example.menulogin.ui.login

import android.content.ContentValues.TAG
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.os.CountDownTimer
import android.util.Log
import kotlinx.coroutines.*
import java.text.SimpleDateFormat
import java.util.*

private var Int.text: String
    get() {}
    set() {}

class TimerMenu : AppCompatActivity() {

    private lateinit var countDownTimer: CountDownTimer

    fun printDifferenceDateForHours() {

        val currentTime = Calendar.getInstance().time
        val endDateDay = "03/02/2020 21:00:00"
        val format1 = SimpleDateFormat("dd/MM/yyyy hh:mm:ss",Locale.getDefault())
        val endDate = format1.parse(endDateDay)
        val txt_timeleft = 100;

        //milliseconds
        var different = endDate.time - currentTime.time
        countDownTimer = object : CountDownTimer(different, 1000) {

            override fun onTick(millisUntilFinished: Long) {
                var diff = millisUntilFinished
                val secondsInMilli: Long = 1000
                val minutesInMilli = secondsInMilli * 60
                val hoursInMilli = minutesInMilli * 60
                val daysInMilli = hoursInMilli * 24

                val elapsedDays = diff / daysInMilli
                diff %= daysInMilli

                val elapsedHours = diff / hoursInMilli
                diff %= hoursInMilli

                val elapsedMinutes = diff / minutesInMilli
                diff %= minutesInMilli

                val elapsedSeconds = diff / secondsInMilli


                txt_timeleft.text = "$elapsedDays days $elapsedHours hs $elapsedMinutes min $elapsedSeconds sec"
            }

            override fun onFinish() {
                txt_timeleft.text = "done!"
            }
        }.start()
    }}