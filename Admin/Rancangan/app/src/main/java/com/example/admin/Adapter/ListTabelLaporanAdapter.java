package com.example.admin.Adapter;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;

import com.example.admin.R;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class ListTabelLaporanAdapter extends BaseAdapter {
    JSONArray pembelian;

    public ListTabelLaporanAdapter(JSONArray pembelian) {
        this.pembelian=pembelian;
    }

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
        return null;
    }

    @Override
    public long getItemId(int position) {
        return 0;
    }

    @Override
    public View getView(int position, View convertView, ViewGroup parent) {
        convertView = LayoutInflater.from(parent.getContext()).inflate(R.layout.list_item_detail_tabel_konsumen, null);
        int no = 0;
        try {
            String namaKon = getItem(position).getString("nama_konsumen");
            String jum = getItem(position).getString("total_produk");
            String tgll=getItem(position).getString("tgl");
            String hrg = getItem(position).getString("total_harga");
            Integer nomor = no + 1;

            TextView No =convertView.findViewById(R.id.lapNo);
            TextView tgl =convertView.findViewById(R.id.lapTanggal);
            TextView nama = convertView.findViewById(R.id.lapNama);
            TextView tot = convertView.findViewById(R.id.lapJum);
            TextView harga = convertView.findViewById(R.id.lapHarga);

            No.setText(" "+nomor);
            nama.setText(" "+namaKon);
            tot.setText(" "+jum);
            harga.setText(" "+hrg);
            tgl.setText(" "+tgll);


        } catch (JSONException e) {
            e.printStackTrace();
        }
        return convertView;
    }
    //List_item_detail_laporan
}
