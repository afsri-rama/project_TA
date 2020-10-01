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

public class KurirAdapter extends BaseAdapter {

    public JSONArray jsonArray;

    public KurirAdapter(JSONArray jsonArray){
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
    public View getView(int position, View convertView, final ViewGroup parent) {
        convertView = LayoutInflater.from(parent.getContext()).inflate(R.layout.list_item_kurir, null);

        try {
            String nmKurir = getItem(position).getString("nama_kurir");
            String nmKon = getItem(position).getString("nama_konsumen");
            String st = getItem(position).getString("status");
            final String WaKurir = getItem(position).getString("hp_kurir");

            TextView lrNm = convertView.findViewById(R.id.lr_nama);
            TextView lrKon= convertView.findViewById(R.id.lr_nmKon);
            ImageView lrWa = convertView.findViewById(R.id.chatKurir);

            lrNm.setText(" "+nmKurir);
            lrKon.setText(" "+nmKon+ "( "+st+" )");

            lrWa.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    parent.getContext().startActivity(new Intent(Intent.ACTION_VIEW,
                            Uri.parse("https://wa.me/"+WaKurir)));
                }
            });

        } catch (JSONException e) {
            e.printStackTrace();
        }

        return convertView;
    }
}
