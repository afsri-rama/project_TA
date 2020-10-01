package com.example.admin;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.widget.TextView;

import org.json.JSONException;
import org.json.JSONObject;

public class DetailKurir extends AppCompatActivity {
    public  static String KEY_DETAIL_KURIR= "DetailKurir" ;

    JSONObject data;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_detail_kurir);

        try {
            data = new JSONObject(getIntent().getSerializableExtra(KEY_DETAIL_KURIR).toString());

            String Nk = data.getString("nama_kurir");
            String hpK = data.getString("hp_kurir");
//          String alK = data.getString("alamat_kurir");
            String nmKonsumen = data.getString("nama_konsumen");
            String alKon = data.getString("alamat_konsumen");
            String hpKon = data.getString("hp_konsumen");
            String tgl = data.getString("tgl_pengantaran");

            TextView lrNk= findViewById(R.id.lr_Nk);
            TextView lrHk = findViewById(R.id.lr_nohp);
            TextView lrnmKonsumen = findViewById(R.id.lr_Nmkon);
            TextView lrAlkon = findViewById(R.id.lr_AlKon);
            TextView lrHp = findViewById(R.id.lr_hpKon);
            TextView lrTgl = findViewById(R.id.lr_tgl);

            lrNk.setText(" "+Nk);
            lrHk.setText(" "+hpK);
            lrnmKonsumen.setText(" "+nmKonsumen);
            lrAlkon.setText(" "+alKon);
            lrHp.setText(" "+hpKon);
            lrTgl.setText(" "+tgl);

        } catch (JSONException e) {
            e.printStackTrace();
        }
    }
}
