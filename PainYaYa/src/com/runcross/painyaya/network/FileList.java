package com.runcross.painyaya.network;

import com.runcross.painyaya.util.HttpClientUtil;

public class FileList {

	public static String fileList() throws Exception{
		
		HttpClientUtil.initNet();
		
		return HttpClientUtil.get("\204\250platform\001\243ver\2511.00.3801\245UsrID\240\246TimeID\000");
		
//		return null;
	}
}
