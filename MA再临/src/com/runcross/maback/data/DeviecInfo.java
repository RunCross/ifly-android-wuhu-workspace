package com.runcross.maback.data;

import android.os.Build;

public class DeviecInfo {

	//�汾��
	public static String app_version = "101";

	/**
	 * ��ȡuseragent
	 * @return
	 */
	public static String getUserAgent() {

		String ua = "Million/";

		ua = ua + app_version;

		ua = ua + " ("+Build.DEVICE + "; " + Build.PRODUCT + "; "
				+ Build.VERSION.RELEASE + ")" + Build.FINGERPRINT;

		return ua;
	}

}
