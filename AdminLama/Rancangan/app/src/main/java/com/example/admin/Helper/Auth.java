package com.example.admin.Helper;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;

import com.example.admin.Login;
import com.example.admin.MainActivity;
import com.example.admin.Produk;

import org.json.JSONException;
import org.json.JSONObject;

public class Auth {
    public static String AUTH_API_TOKEN = "@authApiToken" ;
    public static String AUTH_USER_DATA = "@authUserData" ;

    public static void login(Context context, String apiToken, String userData){
        LocalStorage.setItem(context, AUTH_API_TOKEN, apiToken);
        LocalStorage.setItem(context, AUTH_USER_DATA, userData);
    }

    public static void logout(Context context){
        LocalStorage.setItem(context, AUTH_API_TOKEN, "");
        LocalStorage.setItem(context, AUTH_USER_DATA, "{}");
    }

    public static String getApiToken(Context context){
        return LocalStorage.getItem(context, AUTH_API_TOKEN);
    }

    public static void loginRedirect(Context context){
        String apiToken = getApiToken(context);
        if (apiToken.equalsIgnoreCase("")){
//            kalau tidak login intent ya keman
            ((Activity) context).startActivity(new Intent(context, Login.class));
        }
        else {
//            kalau login intent nya keman
            ((Activity) context).startActivity(new Intent(context, MainActivity.class));
        }
    }

    public static JSONObject getUserData(Context context){
        try {
            JSONObject dataUser =  new JSONObject(LocalStorage.getItem(context, AUTH_USER_DATA));
            return dataUser ;
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return null ;
    }
}
