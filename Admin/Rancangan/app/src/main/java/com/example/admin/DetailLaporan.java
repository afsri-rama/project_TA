package com.example.admin;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.widget.ListView;

import com.example.admin.Adapter.ListDetailLaporanAdapter;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class DetailLaporan extends AppCompatActivity {
    public static String KEY_DETAIL_LAPORAN ="DetailLaporan";
    JSONArray data;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_detail_laporan);

        try {
            data = new JSONArray(getIntent().getSerializableExtra(KEY_DETAIL_LAPORAN).toString());
//            String namaDistributor = data.getString("des_distributor") ;
//            final JSONArray pembelian = data.getJSONArray("pembelian");

            ListView listDetail = findViewById(R.id.list_laporan);

            listDetail.setAdapter(new ListDetailLaporanAdapter(data));

        } catch (JSONException e) {
            e.printStackTrace();
        }
    }
}
