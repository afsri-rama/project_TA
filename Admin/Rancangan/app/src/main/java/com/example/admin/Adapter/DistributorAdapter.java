package com.example.admin.Adapter;

import android.content.Intent;
import android.net.Uri;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;

import com.example.admin.R;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class DistributorAdapter extends BaseAdapter {
    public JSONArray jsonArray;

    public DistributorAdapter(JSONArray jsonArray){
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
        return null;
    }

    @Override
    public long getItemId(int position) {
        return 0;
    }

    @Override
    public View getView(int position, View convertView, ViewGroup parent) {
        convertView = LayoutInflater.from(parent.getContext()).inflate(R.layout.list_item_distributor, null);

        try {
            String nmDis = getItem(position).getString("nama_distributor");
            String desDis = getItem(position).getString("des_distributor");
            String imWa = getItem(position).getString("wa_distributor");

            TextView ldNama = convertView.findViewById(R.id.ld_nama);
            TextView ldDes = convertView.findViewById(R.id.ld_des);

            ldNama.setText(" "+nmDis);
            ldDes.setText(" "+desDis);

            
        } catch (JSONException e) {
            e.printStackTrace();
        }

        return convertView;
    }
}
