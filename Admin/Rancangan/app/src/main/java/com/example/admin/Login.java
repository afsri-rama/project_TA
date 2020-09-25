package com.example.admin;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

import com.android.volley.AuthFailureError;
import com.android.volley.Request;
import com.android.volley.RequestQueue;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.StringRequest;
import com.android.volley.toolbox.Volley;
import com.example.admin.Config.Config;
import com.example.admin.Helper.Auth;
import com.example.admin.Helper.RequestURL;
import com.google.gson.JsonArray;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class Login extends AppCompatActivity {
    private EditText username, password;
    private Button btnlogin;
    private static String URL_LOGIN = "http://192.168.43.26:8000/api/login";


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        requestWindowFeature(Window.FEATURE_NO_TITLE);
        this.getWindow().setFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN, WindowManager.LayoutParams.FLAG_FULLSCREEN);
        setContentView(R.layout.activity_login);

        Auth.loginRedirect(Login.this);

        username = findViewById(R.id.editUser);
        password = findViewById(R.id.editPass);
        btnlogin = findViewById(R.id.btn_login);

        handleLogin();


    }

    private void handleLogin() {
        btnlogin.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                handleRequestLogin();
            }
        });

    }

    private void handleRequestLogin() {
        new RequestURL(getApplicationContext(), new RequestURL.MyRequest() {
            @Override
            public int getMethod() {
                return Request.Method.POST;
            }

            @Override
            public String getURL() {
                return Config.API_URL+"/login";
            }

            @Override
            public Map<String, String> param(Map<String, String> data) {
                String tUsername = username.getText().toString();
                String tPassword = password.getText().toString();
                data.put("username", tUsername);
                data.put("password", tPassword);
                return data;
            }

            @Override
            public Map<String, String> header(Map<String, String> data) {
//                kalau kosong
                return data;
            }

            @Override
            public void response(Object response) throws JSONException {
//                {
//                    "msg": [
//                        "berhasil login"
//                    ],
//                    "data": {
//                              "id": 3,
//                            "id_level": 2,
//                            "username": "konsumen",
//                            "email": "konsumen@konsumen.com",
//                            "email_verified_at": null,
//                            "created_at": "2020-08-28T04:49:54.000000Z",
//                            "updated_at": "2020-09-09T06:50:33.000000Z"
//                },
//                    "apiToken": "9eXLu7y8M8qjrbVFU8ZMAqe2yfm91cX1MgndAMUESjLqJWdWscLs3Mhyj2qwhxZXB7QXEjNKmjLPKKB5Ancq2C4K8bXkbhZ68hVN8N0MIrUFSnPGNP8vVCZhwP0U8m3vHdyL5wHw1XwGomf07H8IDX3"
//                }
                JSONObject dataResponse = new JSONObject(response.toString());
                JSONObject data = dataResponse.getJSONObject("data");
                String apiToken = "Bearer "+dataResponse.getString("apiToken");
//                inisial akun login
                Auth.login(Login.this, apiToken, data.toString());
//                simpan data authorize api token
//                simpan data akun

                startActivity(new Intent(getApplicationContext(), MainActivity.class));
            }

            @Override
            public void err(VolleyError error, String dataMsgError) throws JSONException {
                Toast.makeText(getApplicationContext(), "Login Gagal", Toast.LENGTH_LONG).show();

            }
        });
    }


}
