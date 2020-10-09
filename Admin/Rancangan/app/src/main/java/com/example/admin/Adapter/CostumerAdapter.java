package com.example.admin.Adapter;

import android.content.Intent;
import android.net.Uri;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.ListView;
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
    public View getView(int position, View convertView, final ViewGroup parent) {
        convertView = LayoutInflater.from(parent.getContext()).inflate(R.layout.list_konsumen, null);

        try {
//            String idPem = getItem(position).getString("id_pembayaran");
            String idPem = jsonArray.getJSONObject(position).getString("id_pembayaran");
            String namaKon = getItem(position).getString("nama_konsumen");
            String alamaKon = getItem(position).getString("alamat_konsumen");
            String tglP = getItem(position).getString("tgl");
            final String WaKon = getItem(position).getString("wa_konsumen");

            TextView lkPem = convertView.findViewById(R.id.lk_idPem);
            TextView lkNama= convertView.findViewById(R.id.lk_nmKon);
            TextView lkAlamat= convertView.findViewById(R.id.lk_Alamat);
            TextView lkTgl = convertView.findViewById(R.id.lk_tanggalDepan);
            ImageView lkWa = convertView.findViewById(R.id.chatKonsumen);


            lkPem.setText("ID Pembayaran: "+idPem);
            lkNama.setText(" "+namaKon);
            lkAlamat.setText(" "+alamaKon);
            lkTgl.setText(" "+tglP);

            lkWa.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    parent.getContext().startActivity(new Intent(Intent.ACTION_VIEW,
                            Uri.parse("https://wa.me/"+WaKon)));
                }
            });

        } catch (JSONException e) {
            e.printStackTrace();
        }

        return convertView;
    }
}
