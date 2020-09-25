package com.example.admin;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.widget.Toast;

import com.android.volley.Request;
import com.android.volley.VolleyError;
import com.example.admin.Config.Config;
import com.example.admin.Helper.Auth;
import com.example.admin.Helper.RequestURL;

import org.json.JSONException;

import java.util.Map;

public class Produk extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_produk);

//        langsung test aja ya, yang menggunkan login
        new RequestURL(getApplicationContext(), new RequestURL.MyRequest() {
            @Override
            public int getMethod() {
                return Request.Method.GET;
            }

            @Override
            public String getURL() {
                return Config.API_URL+"/konsumen/produk";
            }

            @Override
            public Map<String, String> param(Map<String, String> data) {
//                tidak data yang kita kirim
                return data;
            }

            @Override
            public Map<String, String> header(Map<String, String> data) {
                String apiToken  = Auth.getApiToken(Produk.this);
                data.put("Authorization", apiToken );
                return data;
            }

            @Override
            public void response(Object response) throws JSONException {
                Toast.makeText(getApplicationContext(), response.toString(), Toast.LENGTH_LONG).show();
            }

            @Override
            public void err(VolleyError error, String dataMsgError) throws JSONException {
                Toast.makeText(getApplicationContext(), dataMsgError, Toast.LENGTH_LONG).show();
            }
        });
    }
}
