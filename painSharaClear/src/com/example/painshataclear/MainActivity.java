package com.example.painshataclear;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;

import android.os.Bundle;
import android.os.Environment;
import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Resources;
import android.util.Log;
import android.view.Menu;
import android.view.View;
import android.widget.TextView;

public class MainActivity extends Activity {

	private TextView result;
	
	private static final String PACKAGE_NAME = "jp.co.showgate.machinedollgame";
//	private static final String SHARED_NAME = "jp.co.showgate.machinedollgame";

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
		
		result = (TextView) findViewById(R.id.result);
		
		

	}

	public static String execShellStr(String cmd) {
		String[] cmdStrings = new String[] { "su ", cmd };
		String retString = "";

		try {
			Process process = Runtime.getRuntime().exec(cmdStrings);
			BufferedReader stdout = new BufferedReader(new InputStreamReader(
					process.getInputStream()), 7777);
			BufferedReader stderr = new BufferedReader(new InputStreamReader(
					process.getErrorStream()), 7777);

			String line = null;

			while ((null != (line = stdout.readLine()))
					|| (null != (line = stderr.readLine()))) {

				retString += line + "\n";

			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return retString;
	}
	
	private String execCmd(String cmd){
		Runtime ex = Runtime.getRuntime(); 
		String cmdBecomeSu = "su"; 
//		String script = "busybox chmod a+rw /dev/pmem"; 
		
		java.lang.Process runsum;
		try {
			runsum = ex.exec(cmdBecomeSu);
			int exitVal = 0; 
			
			final OutputStreamWriter out = new OutputStreamWriter(runsum.getOutputStream()); 
			// Write the script to be executed 
			out.write(cmd); 
			// Ensure that the last character is an "enter" 
			out.write("\n"); 
			out.flush(); 
			// Terminate the "su" process 
			out.write("exit\n"); 
			out.flush(); 
			
			exitVal = runsum.waitFor(); 
			if (exitVal == 0) { 
				return "删除成功"; 
			} 
		
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		return "删除失败，可能早已经删除过,或者未root";
	}

	public void onClick(View view){
		switch(view.getId()){
		case R.id.clear:
			String cmd = "rm "+"/data"
					+ Environment.getDataDirectory().getAbsolutePath() + "/"
					+ PACKAGE_NAME+"/shared_prefs/jp.co.showgate.machinedollgame.xml";
//			result.setText(execShellStr(cmd));
			result.setText(execCmd(cmd));
//			System.out.println(execCmd(cmd));
			break;
		}
	}
}
