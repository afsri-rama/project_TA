package com.example.admin.Adapter;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;

import com.example.admin.Laporan;
import com.example.admin.R;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class LaporanAdapter extends BaseAdapter {

    public JSONArray jsonArray;

    public LaporanAdapter(JSONArray jsonArray){
        this.jsonArray=jsonArray;
    }
    @Override
    public int getCount() {
        return jsonArray.length();
    }

    @Override
    public JSONObject getItem(int position) {
        try {
            return jsonArray.getJSONObject(position);
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
        convertView = LayoutInflater.from(parent.getContext()).inflate(R.layout.list_item_laporan, null);
        try {
//            final JSONArray tglPem = getItem(position).getJSONArray("pembelian");
            String namaDistributor = getItem(position).getString("nama_distributor");
            String desDitributor = getItem(position).getString("des_distributor");

            TextView tgl = convertView.findViewById(R.id.lp_nama);
            tgl.setText(" "+namaDistributor+" ( "+desDitributor+" )");
        } catch (JSONException e) {
            e.printStackTrace();
        }

        return convertView;

//        try {
//
//            final JSONArray tglPem = getItem(position).getJSONArray("pembelian");
//
//            TextView lptgl = convertView.findViewById(R.id.lp_nama);
//
////            lptgl.setText(" " + tgl);
//
//        } catch (JSONException e) {
//            e.printStackTrace();
//        }
//        return convertView;
//
    }
}
