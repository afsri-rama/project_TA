package com.example.admin.Adapter;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Adapter;
import android.widget.BaseAdapter;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;

import com.example.admin.R;
import com.google.gson.JsonArray;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class ListDetailLaporanAdapter extends BaseAdapter {
    public JSONArray data;

    public ListDetailLaporanAdapter(JSONArray pembelian) {
        this.data = pembelian;
    }

    @Override
    public int getCount() {
        return data.length();
    }

    @Override
    public JSONObject getItem(int position) {
        try {
            return data.getJSONObject(position);
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
        convertView = LayoutInflater.from(parent.getContext()).inflate(R.layout.list_detail_laporan, null);
        try {
            String nmDis = getItem(position).getString("nama_distributor");
            String desDis = getItem(position).getString("des_distributor");
            String totJum = getItem(position).getString("total_produk");
            String tgll=getItem(position).getString("tgl");
            String totHarga = getItem(position).getString("total_harga");
            final JSONArray pembelian = getItem(position).getJSONArray("pembelian");

            TextView NmDis = convertView.findViewById(R.id.lp_NamaDis);
            TextView tgl =convertView.findViewById(R.id.lapTanggal);
            TextView totjuml = convertView.findViewById(R.id.lp_totJum);
            TextView totHrg = convertView.findViewById(R.id.lp_totHarga);
            ListView listtabel = convertView.findViewById(R.id.lp_list_tabel);

            NmDis.setText("  "+nmDis+":  "+desDis);
            totjuml.setText("Total Jumlah : "+totJum);
             totHrg.setText("Total Harga  : Rp.  "+totHarga);
            tgl.setText(" "+tgll);
             listtabel.setAdapter(new ListTabelLaporanAdapter(pembelian));



        } catch (JSONException e) {
            e.printStackTrace();
        }
        return convertView;
    }

//    <!--    Detaillistdetailnya laporan-->
}
