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

//    TextView namaDis, lpTotJum, lpTotHarga ;
//    ListView listTable ;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_detail_tabel_laporan);

        try {
            data = new JSONObject(getIntent().getSerializableExtra(KEY_DETAIL_LAPORAN).toString());

            String desDis = data.getString("des_distributor") ;
            String  namaDistributor = data.getString("nama_distributor");
            String totalProduk = "Total Jumlah Produk :  "+data.getString("total_produk");
             String totalHarga = "Total Harga Produk   : Rp. "+data.getString("total_harga");
            final JSONArray pembelian = data.getJSONArray("pembelian");


           TextView namadistri = findViewById(R.id.namaDistri);
           TextView namaDis = findViewById(R.id.lp_NamaDis);
           ListView listTable = findViewById(R.id.lp_list_tabel);
           TextView lpTotJum = findViewById(R.id.lp_totJum);
           TextView lpTotHarga = findViewById(R.id.lp_totHarga);

            namaDis.setText(" "+namaDistributor+" : "+desDis);
            namadistri.setText(namaDistributor);
            lpTotJum.setText(" " +totalProduk);
            lpTotHarga.setText(" " +totalHarga);

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
