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

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class DetailTabelLaporan extends AppCompatActivity {

    public static String KEY_DETAIL_LAPORAN ="DetailTabelLaporan";
    JSONObject data;

    TextView namaDis, lpTotJum, lpTotHarga ;
    ListView listTable ;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_detail_tabel_laporan);

        try {
            data = new JSONObject(getIntent().getSerializableExtra(KEY_DETAIL_LAPORAN).toString());

            String namaDistributor = data.getString("des_distributor") ;
            String totalProduk = "Total Jumlah Produk : "+data.getString("total_produk");
            String totalHarga = "Total Harga Produk : "+data.getString("total_harga");
            final JSONArray pembelian = data.getJSONArray("pembelian");


            namaDis = findViewById(R.id.NamaDis);
            listTable = findViewById(R.id.list_tabel);
            lpTotJum = findViewById(R.id.adtl_totJum);
            lpTotHarga = findViewById(R.id.adtl_totHarga);

            namaDis.setText(namaDistributor);
            lpTotJum.setText(totalProduk);
            lpTotHarga.setText(totalHarga);

            listTable.setAdapter(new BaseAdapter() {
                @Override
                public int getCount() {
                    return pembelian.length();
                }

                @Override
                public JSONObject getItem(int position) {
                    try {
                        return pembelian.getJSONObject(position);
                    } catch (JSONException e) {
                        e.printStackTrace();
                    }
                    return null ;
                }

                @Override
                public long getItemId(int position) {
                    return 0;
                }

                @Override
                public View getView(int position, View convertView, ViewGroup parent) {
                    convertView = LayoutInflater.from(DetailTabelLaporan.this).inflate(R.layout.list_item_detail_tabel_konsumen, null);

                    TextView uiLapNo = convertView.findViewById(R.id.lapNo) ;
                    TextView uiLapNama = convertView.findViewById(R.id.lapNama) ;
                    TextView uiLapJum = convertView.findViewById(R.id.lapJum) ;
                    TextView uiLapHarga = convertView.findViewById(R.id.lapHarga) ;

                    try {
                        String no = String.valueOf(position+1);
                        String nama = getItem(position).getString("nama_konsumen");
                        String jumlah = getItem(position).getString("total_produk");
                        String harga = getItem(position).getString("total_harga");

                        uiLapNo.setText(no);
                        uiLapNama.setText(nama);
                        uiLapJum.setText(jumlah);
                        uiLapHarga.setText(harga);
                    } catch (JSONException e) {
                        e.printStackTrace();
                    }

                    return convertView;
                }
            });
        } catch (JSONException e) {
            e.printStackTrace();
        }

    }
}
