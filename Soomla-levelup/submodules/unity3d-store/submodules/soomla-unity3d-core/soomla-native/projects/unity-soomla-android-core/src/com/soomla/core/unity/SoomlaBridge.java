package com.soomla.core.unity;

import android.text.TextUtils;
import com.soomla.data.KeyValueStorage;

import java.util.List;

/**
 * @author vedi
 *         date 23/09/15
 */
public class SoomlaBridge {
    public static String keyValStorage_GetEncryptedKeys() {
        return TextUtils.join(",", KeyValueStorage.getEncryptedKeys());
    }
}
