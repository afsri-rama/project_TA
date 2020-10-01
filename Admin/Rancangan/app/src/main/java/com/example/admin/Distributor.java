package com.example.admin;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.Toast;

import com.android.volley.Request;
import com.android.volley.VolleyError;
import com.example.admin.Adapter.DistributorAdapter;
import com.example.admin.Config.Config;
import com.example.admin.Helper.Auth;
import com.example.admin.Helper.RequestURL;
import com.google.gson.JsonArray;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.util.Map;

public class Distributor extends AppCompatActivity {
    ListView listDis;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_distributor);

        listDis = (ListView)findViewById(R.id.list_distributor);

        new RequestURL(getApplicationContext(), new RequestURL.MyRequest() {
            @Override
            public int getMethod() {
                return Request.Method.GET;
            }

            @Override
            public String getURL() {
                return Config.API_URL+"/admin/distributor";
            }

            @Override
            public Map<String, String> param(Map<String, String> data) {
                return data;
            }

            @Override
            public Map<String, String> header(Map<String, String> data) {
                String apiToken  = Auth.getApiToken(Distributor.this);
                data.put("Authorization", apiToken );
                return data;
            }

            @Override
            public void response(Object response) throws JSONException {
                final JSONArray data = new JSONObject(response.toString()).getJSONArray("data");
                listDis.setAdapter(new DistributorAdapter(data));

                listDis.setOnItemClickListener(new AdapterView.OnItemClickListener() {
                    @Override
                    public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
                        Intent intent = new Intent(getApplicationContext(), DetailDistributor.class);
                        try {
                            intent.putExtra(DetailDistributor.KEY_DETAIL_DISTRIBUTOR, data.getJSONObject(position).toString());
                            startActivity(intent);
                        } catch (JSONException e) {
                            e.printStackTrace();
                        }

                    }
                });

            }

            @Override
            public void err(VolleyError error, String dataMsgError) throws JSONException {
                Toast.makeText(getApplicationContext(), dataMsgError, Toast.LENGTH_LONG).show();

            }
        });
    }

//    public void btnChatDis(View view) {
//        startActivity(new Intent(Intent.ACTION_VIEW,
//                Uri.parse("http://almondmendoza.com/android-applications/")));
//
//    }

//    void openWhatsappContact(String number) {
//        Uri uri = Uri.parse("smsto:" + number);
//        Intent i = new Intent(Intent.ACTION_SENDTO, uri);
//        i.setPackage("com.whatsapp");
//        startActivity(Intent.createChooser(i, ""));
//    }
}
