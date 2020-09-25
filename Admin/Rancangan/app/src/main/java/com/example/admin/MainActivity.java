package com.example.admin;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
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
}
