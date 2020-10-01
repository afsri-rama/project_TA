package com.example.admin;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;

import com.android.volley.Request;
import com.android.volley.VolleyError;
import com.example.admin.Adapter.DetailPesananAdapter;
import com.example.admin.Config.Config;
import com.example.admin.Helper.Auth;
import com.example.admin.Helper.RequestURL;
import com.google.gson.JsonArray;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.util.Map;

public class DetailCostumer extends AppCompatActivity {

    public  static String KEY_DETAIL_COSTUMER = "DetailCostumer" ;

    JSONObject data ;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_detail_costumer);



        try {
            data = new JSONObject(getIntent().getSerializableExtra(KEY_DETAIL_COSTUMER).toString());

            String idPem = data.getString("id_pembayaran");
            String tgl = data.getString("tgl");
            String nmKon = data.getString("nama_konsumen");
            String noWa = data.getString("wa_konsumen");
            String alamat = data.getString("alamat_konsumen");
            String totPem = data.getString("total_pembayaran");
            final JSONArray pembelian = data.getJSONArray("pembelian") ;



            //LIST PRODUK
            //JSONArray list = new JSONObject(data.toString()).getJSONArray("data");
//            String nmPro = data.getString("nama_produk");
//            String totPro = data.getString("total_produk");
//            String hgPro = data.getString("harga_produk");

            TextView dcPem = findViewById(R.id.dc_idPem);
            TextView dcTgl = findViewById(R.id.dc_idTgl);
            TextView dcnm = findViewById(R.id.dc_namaKon);
            TextView dcNo = findViewById(R.id.dc_noWa);
            TextView dcAlamat = findViewById(R.id.dc_Alamat);
            TextView dcTotPem = findViewById(R.id.dc_totPem);
            ListView listDetail= findViewById(R.id.listDetailPesan);

            //LIST PRODUK
            // ListView listPesan = findViewById(R.id.listDetailPesan);
//            TextView dcNm = findViewById(R.id.dc_namaPro);
//            TextView dcTot = findViewById(R.id.dc_totPro);
//            TextView dcHg = findViewById(R.id.dc_totHar);

            dcPem.setText("ID Pembayaran : "+idPem);
            dcTgl.setText(" "+tgl);
            dcnm.setText(" "+nmKon);
            dcNo.setText(" "+noWa);
            dcAlamat.setText(" "+alamat);
            dcTotPem.setText(" "+totPem);

            listDetail.setAdapter(new DetailPesananAdapter(pembelian));

            //LIST PRODUK
            // listPesan.setAdapter(new DetailPesananAdapter(list));
//            dcNm.setText(" "+nmPro);
//            dcTot.setText(" "+totPro);
//            dcHg.setText(" "+hgPro);



            //sama seperti TextView lkPem = findViewById(R.id.lk_idPem); lkPem.setText("ID Pembayaran: "+idPem);

//            Toast.makeText(getApplicationContext(), nmKon, Toast.LENGTH_LONG).show();
        } catch (JSONException e) {
            e.printStackTrace();
        }

    }
}
