package com.example.admin;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;

import com.example.admin.Helper.Auth;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        requestWindowFeature(Window.FEATURE_NO_TITLE);
        this.getWindow().setFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN, WindowManager.LayoutParams.FLAG_FULLSCREEN);
        setContentView(R.layout.activity_main);
    }

    public void Pemesanan(View view) {
        startActivity(new Intent(getApplicationContext(), Costumer.class));
    }

    public void Laporan(View view) {
        startActivity(new Intent(getApplicationContext(), Laporan.class));
    }

    public void Kurir(View view) {
        startActivity(new Intent(getApplicationContext(), Kurir.class));
    }

    public void Distributor(View view) {
        startActivity(new Intent(getApplicationContext(), Distributor.class));
    }

    public void Logout(View view) {
        Auth.logout(MainActivity.this);
        startActivity(new Intent(MainActivity.this, SplashScreen.class));
    }
}
