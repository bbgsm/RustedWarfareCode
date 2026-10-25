package com.corrodinggames.rts.gameFramework.j;

//import android.net.http.AndroidHttpClient;
import com.corrodinggames.rts.gameFramework.k1104;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.ReentrantLock;
import org.apache.http.client.HttpClient;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;

/* loaded from: classes.dex */
public final class s1080 {
    ReentrantLock a = new ReentrantLock();


    public final HttpClient a(boolean z) {
        HttpClient httpClient;
        boolean z2 = false;
        try {
            z2 = this.a.tryLock(300L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        try {
            if (!z2) {
                k1104.a("LoadFromMasterServer", "Could not get getNewHttpClient lock! another thread maybe stuck in getNewHttpClient!");
            }
            // android.net.http.AndroidHttpClient was removed in API 23; fall back to DefaultHttpClient for both branches
            httpClient = new DefaultHttpClient();
            HttpParams params = httpClient.getParams();
            HttpConnectionParams.setConnectionTimeout(params, 30000);
            HttpConnectionParams.setSoTimeout(params, 20000);
        } finally {
            if (z2) {
                this.a.unlock();
            }
        }
        return httpClient;
    }
}
