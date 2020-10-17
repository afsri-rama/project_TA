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

public class DetailPesananAdapter extends BaseAdapter {
    public JSONArray pembelian;


    public DetailPesananAdapter(JSONArray pembelian) {
        this.pembelian = pembelian;
    }

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
        convertView = LayoutInflater.from(parent.getContext()).inflate(R.layout.list_item_detail_pesan, null);
        try {
            String namaPro = getItem(position).getString("nama_produk");
            String totPro = getItem(position).getString("total_produk");
            String harga = getItem(position).getString("harga_produk");

            TextView dcNm = convertView.findViewById(R.id.dc_namaPro);
            TextView dcTot = convertView.findViewById(R.id.dc_totPro);
            TextView dcHg = convertView.findViewById(R.id.dc_totHar);

            dcNm.setText(" "+namaPro);
            dcTot.setText(" "+totPro);
            dcHg.setText(" "+harga);


        } catch (JSONException e) {
            e.printStackTrace();
        }
//
        return convertView;
    }
}
