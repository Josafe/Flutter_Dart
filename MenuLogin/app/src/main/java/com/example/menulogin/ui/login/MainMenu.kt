package com.example.menulogin.ui.login
import android.content.Intent
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.widget.Button
import com.example.menulogin.R


class MainMenu : AppCompatActivity() {
    private TextView countdownText;
    private Button countdownButton;

    private activity_timer count

    override fun onCreate(savedInstanceState: Bundle?) {


        Thread.sleep(20000)

        setTheme(R.style.AppTheme)

        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main_menu)

        val sendpag = findViewById<Button>(R.id.login)

        sendpag.setOnClickListener {
            val intent: Intent = Intent(this, PanelPrincipal::class.java)
            startActivity(intent)
        }
    }
}