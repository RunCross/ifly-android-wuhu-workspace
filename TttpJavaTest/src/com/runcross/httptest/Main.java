package com.runcross.httptest;

import java.io.IOException;
import java.security.InvalidAlgorithmParameterException;

public class Main {

	private static String uri = HTTPLink.host[0]+"connect/app/check_inspection?cyt=1";
	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		try {
			HttpPostTest.post(uri);
		} catch (IOException | InvalidAlgorithmParameterException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
