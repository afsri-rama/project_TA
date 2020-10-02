package com.example.admin;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.widget.TextView;

import org.json.JSONException;
import org.json.JSONObject;

public class DetailDistributor extends AppCompatActivity {

    public  static String KEY_DETAIL_DISTRIBUTOR= "DetailDistributor" ;

    JSONObject data ;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_detail_distributor);

        try {
            data = new JSONObject(getIntent().getSerializableExtra(KEY_DETAIL_DISTRIBUTOR).toString());

            String idDis = data.getString("id");
            String nmDis = data.getString("nama_distributor");
            String noDis = data.getString("wa_distributor");
            String desDis = data.getString("des_distributor");

            TextView ddId = findViewById(R.id.dd_Id);
            TextView tlDis = findViewById(R.id.tl_namaDistributor);
            TextView ddNm = findViewById(R.id.dd_nama);
            TextView ddNo = findViewById(R.id.dd_noWa);
            TextView ddDes = findViewById(R.id.dd_Des);

             ddId.setText("ID Distributor :  "+idDis);
             ddNm.setText("Nama           :  "+nmDis);
             ddNo.setText("No Hp          :  "+noDis);
            ddDes.setText("Produk         :  "+desDis);
            tlDis.setText(" "+nmDis);

        } catch (JSONException e) {
            e.printStackTrace();
        }
    }
}
