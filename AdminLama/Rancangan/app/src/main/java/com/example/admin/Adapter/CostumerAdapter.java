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
import org.w3c.dom.Text;

public class CostumerAdapter extends BaseAdapter {

    public JSONArray jsonArray ;

    public CostumerAdapter(JSONArray jsonArray){
        this.jsonArray = jsonArray ;
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
        return null ;
    }

    @Override
    public long getItemId(int position) {
        return 0;
    }

    @Override
    public View getView(int position, View convertView, ViewGroup parent) {
        convertView = LayoutInflater.from(parent.getContext()).inflate(R.layout.list_konsumen, null);

        try {
//            String idPem = getItem(position).getString("id_pembayaran");
            String idPem = jsonArray.getJSONObject(position).getString("id_pembayaran");
            String namaKon = getItem(position).getString("nama_konsumen");
            String alamaKon = getItem(position).getString("alamat_konsumen");


            TextView lkPem = convertView.findViewById(R.id.lk_idPem);
            TextView lkNama= convertView.findViewById(R.id.lk_nmKon);
            TextView lkAlamat= convertView.findViewById(R.id.lk_Alamat);

            lkPem.setText("ID Pembayaran: "+idPem);
            lkNama.setText(" "+namaKon);
            lkAlamat.setText(" "+alamaKon);
        } catch (JSONException e) {
            e.printStackTrace();
        }

        return convertView;
    }
}
