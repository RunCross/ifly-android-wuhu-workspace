package com.runcross.maback.data;

import android.os.Build;

public class DeviecInfo {

	//∞Ê±æ∫≈
	public static String app_version = "101";

	/**
	 * ªÒ»°useragent
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
