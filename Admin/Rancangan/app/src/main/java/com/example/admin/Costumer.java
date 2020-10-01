package com.example.admin;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;

import com.android.volley.Request;
import com.android.volley.VolleyError;
import com.example.admin.Adapter.CostumerAdapter;
import com.example.admin.Config.Config;
import com.example.admin.Helper.Auth;
import com.example.admin.Helper.RequestURL;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.util.Map;

public class Costumer extends AppCompatActivity {
    ListView listKo;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_costumer);

        listKo=(ListView)findViewById(R.id.list_konsumen);


        new RequestURL(getApplicationContext(), new RequestURL.MyRequest() {
            @Override
            public int getMethod() {
                return Request.Method.GET;
            }

            @Override
            public String getURL() {
                return Config.API_URL+"/konsumen/pembayaran";
            }

            @Override
            public Map<String, String> param(Map<String, String> data) {
                return data;
            }

            @Override
            public Map<String, String> header(Map<String, String> data) {
                String apiToken  = Auth.getApiToken(Costumer.this);
                data.put("Authorization", apiToken );
                return data;
            }

            @Override
            public void response(Object response) throws JSONException {

                final JSONArray data = new JSONObject(response.toString()).getJSONArray("data");

                listKo.setAdapter(new CostumerAdapter(data));

                listKo.setOnItemClickListener(new AdapterView.OnItemClickListener() {
                    @Override
                    public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
                        Intent intent = new Intent(getApplicationContext(), DetailCostumer.class);
                        try {
                            intent.putExtra(DetailCostumer.KEY_DETAIL_COSTUMER, data.getJSONObject(position).toString());
                            startActivity(intent);
                        } catch (JSONException e) {
                            e.printStackTrace();
                        }

                    }
                });

//                Toast.makeText(getApplicationContext(), response.toString(), Toast.LENGTH_LONG).show();

            }

            @Override
            public void err(VolleyError error, String dataMsgError) throws JSONException {
                Toast.makeText(getApplicationContext(), dataMsgError, Toast.LENGTH_LONG).show();

            }
        });

    }


    public void btnChat(View view) {
        Toast.makeText(getApplicationContext(),"Bisa diklik", Toast.LENGTH_LONG).show();
    }
}
