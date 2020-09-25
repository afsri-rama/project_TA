package com.example.admin.Helper;

import android.content.Context;
import android.content.SharedPreferences;

public class LocalStorage {
    public static String NAME_LOCAL_STORAGE = "LOCAL_STORAGE" ;

    private Context context ;
    private String fileName ;
    private SharedPreferences sharedPreferences ;
    public LocalStorage(Context context, String fileName){
        this.context = context ;
        this.fileName = fileName ;
        sharedPreferences = this.context.getSharedPreferences("hallo", this.context.MODE_PRIVATE);
    }
    public void write(String key, String value){
        sharedPreferences.edit()
                .putString(key, value)
                .commit();

    }
    public String read(String key){
        String data = ""  ;
        try {
            data = sharedPreferences.getAll().get(key).toString() ;
        } catch (Exception e ){
            data = "" ;
        }
        return data ;
    }

    public static void setItem(Context context, String key, String value){
        LocalStorage storage = new LocalStorage(context, LocalStorage.NAME_LOCAL_STORAGE);
        storage.write(key, value);
    }

    public static String getItem(Context context, String key){
        LocalStorage storage = new LocalStorage(context, LocalStorage.NAME_LOCAL_STORAGE);
        return  storage.read(key);
    }
}
