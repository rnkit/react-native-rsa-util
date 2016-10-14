package cn.touna.reactnativersautil;

/**
 * Created by SimMan on 5/18/16.
 */

import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.bridge.Promise;


public class ReactNativeRSAUtilModule extends ReactContextBaseJavaModule {
    public ReactNativeRSAUtilModule(ReactApplicationContext reactContext) {
        super(reactContext);
    }

    @Override
    public String getName() {
        return "ReactNativeRSAUtil";
    }


    @ReactMethod
    public void encryptStringWithPublicKey(String str, String publicKey, Promise promise) {

        try {
            String encryptString = RSAEncryptUtils.encryptByPublicKey(str, publicKey);

            if (encryptString != null) {
                promise.resolve(encryptString);
            } else {
                promise.reject("error...", "encryptString is nil!");
            }

        } catch ( Exception exce ) {
            promise.reject("error ...", exce.getMessage());
        }
    }

    @ReactMethod
    public void decryptStringWithPublicKey(String str, String publicKey, Promise promise) {
        try {
            String encryptString = RSAEncryptUtils.decryptByPublicKey(str, publicKey);

            if (encryptString != null) {
                promise.resolve(encryptString);
            } else {
                promise.reject("error...", "encryptString is nil!");
            }

        } catch ( Exception exce ) {
            promise.reject("error ...", exce.getMessage());
        }
    }

    @ReactMethod
    public void encryptStringWithPrivateKey(String str, String privateKey, Promise promise) {
        try {
            String encryptString = RSAEncryptUtils.encryptByPrivateKey(str, privateKey);

            if (encryptString != null) {
                promise.resolve(encryptString);
            } else {
                promise.reject("error...", "encryptString is nil!");
            }

        } catch ( Exception exce ) {
            promise.reject("error ...", exce.getMessage());
        }
    }

    @ReactMethod
    public void decryptStringWithPrivateKey(String str, String privateKey, Promise promise) {
        try {
            String encryptString = RSAEncryptUtils.decryptByPrivateKey(str, privateKey);

            if (encryptString != null) {
                promise.resolve(encryptString);
            } else {
                promise.reject("error...", "encryptString is nil!");
            }

        } catch ( Exception exce ) {
            promise.reject("error ...", exce.getMessage());
        }
    }

}