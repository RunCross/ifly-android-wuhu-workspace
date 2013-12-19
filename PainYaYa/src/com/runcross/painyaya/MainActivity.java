package com.runcross.painyaya;

import java.net.URLDecoder;
import java.util.List;

import com.runcross.painyaya.util.HttpClientUtil;

import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Environment;
import android.app.Activity;
import android.app.ProgressDialog;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;

public class MainActivity extends Activity {

	/**
	 * 连接
	 */
	private static final String[] urls;
	/**
	 * 参数
	 */
	private static String[] values;
	/**
	 * 转移码
	 */
	private List<String> code;
	/**
	 * User-Id
	 */
	private String uid;
	/**
	 * 姓名
	 */
	private String name;
	/**
	 * 次数
	 */
	private String count;
	/**
	 * 姓名输入
	 */
	private EditText nameInput;
	/**
	 * 次数输入
	 */
	private EditText countInput;
	/**
	 * 结果显示
	 */
	private TextView result;
	/**
	 * 保存位置
	 */
	private static final String FILE_PATH;
	/**
	 * 文件名
	 */
	private static final String FILE_NAME;
	static {
		FILE_PATH = Environment.getExternalStorageDirectory().getPath();
		FILE_NAME = "yaya.txt";

		urls = new String[] {
				"/pain/?controller=filelist/FilelistAndroid",
				"/pain/?controller=login/Entry&AppVer=100",
				"/pain/?controller=tutorial/Forward&AppVer=100",
				"/pain/?controller=tutorial/StageSelectGetStageList&AppVer=100",
				"/pain/?controller=tutorial/Forward&AppVer=100",
				"/pain/?controller=tutorial/AutomatonInit&AppVer=100",
				"/pain/?controller=mypage/Init&AppVer=100",
				"/pain/?controller=tutorial/AutomatonInit&AppVer=100",
				"/pain/?controller=tutorial/AutomatonUnitList&AppVer=100",
				"/pain/?controller=tutorial/Forward&AppVer=100",
				"/pain/?controller=tutorial/AutomatonSetFormation&AppVer=100",
				"/pain/?controller=tutorial/StageSelectGetStageList&AppVer=100",
				"/pain/?controller=tutorial/BattleStart&AppVer=100",
				"/pain/?controller=tutorial/Forward&AppVer=100",
				"/pain/?controller=tutorial/BattleResult&AppVer=100",
				"/pain/?controller=tutorial/BattleGetCompanion&AppVer=100",
				"/pain/?controller=tutorial/Forward&AppVer=100",
				"/pain/?controller=tutorial/MypageInit&AppVer=100",
				"/pain/?controller=tutorial/Forward&AppVer=100",
				"/pain/?controller=login/TransferCode&AppVer=100" };

		values = new String[] {
				"\204\250platform\001\243ver\2511.00.3801\245UsrID\240\246TimeID\000",
				"\203\250userName\243Aoi\245UsrID\240\246TimeID\000",
				"\203\252tutorialNo\321\000\310\245UsrID\240\246TimeID\000",
				"\001",
				"\203\252tutorialNo\321\001,\245UsrID\240\246TimeID\000",
				"\001",
				"\001",
				"\001",
				"\001",
				"\203\252tutorialNo\321\001^\245UsrID\240\246TimeID\000",
				"\205\256formationIndex\001\246slotNo\002\246unitID\002\245UsrID\240\246TimeID\000",
				"\001",
				"\203\255selectStageId\000\261selectFormationId\001\252takeUserId\322\000\002Hf",
				"\203\252tutorialNo\321\001\220\245UsrID\240\246TimeID\000",
				"\207\246result\221\001\252battleCtrl\240\250battleID\316\000\006\364\332\251battleKey\332\00087b7ddaab00de6f4d385ab57e1dd14a6\255maxComboCount\005\245UsrID\240\246TimeID\000",
				"/pain/?controller=tutorial/BattleGetCompanion&AppVer=100",
				"\203\252tutorialNo\321\001\364\245UsrID\240\246TimeID\000",
				"\001",
				"\203\252tutorialNo\321'\020\245UsrID\240\246TimeID\000",
				"\001" };
	}

	static{
		System.loadLibrary("myjni");
	}
	JNIHttpPost post;
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
		nameInput = (EditText) findViewById(R.id.name);
		countInput = (EditText) findViewById(R.id.count);
		result = (TextView) findViewById(R.id.result);
		System.out.println("go");
		post = new JNIHttpPost();		
// 		System.out.println(	URLDecoder.decode("\203\250userName\245talon\245UsrID\240\246TimeID\000"));
	}

	public void onClick(View view) {
		switch (view.getId()) {
		case R.id.go:
//			name = nameInput.getText().toString();
//			count = countInput.getText().toString();
//			name = "Aoi";
//			count = "1";
//			if (name == null || name.length() == 0 || count == null
//					|| count.length() == 0) {
//				break;
//			}
//			FindYaya find = new FindYaya();
//			find.execute("go");
//			new Thread(new Runnable() {
//				
//				@Override
//				public void run() {
//					System.out.println(post.post());
//				}
//			}).start();
			System.out.println("---"+post.post());
			break;
		}
	}

	class FindYaya extends AsyncTask<String, Integer, String> {
		ProgressDialog pdialog;

		@Override
		protected String doInBackground(String... params) {

			try {
				HttpClientUtil.initNet();
				String st;
				int step = 0;

				// st = HttpClientUtil.post(urls[step], values[step]);
				// st = HttpClientUtil.urlPost(urls[step], values[step]);
				step++;
				// System.out.println(st);

				// 姓名
				// values[step].replace("?", name);
//				values[step] = "\203\250userName\243" + name
//						+ "\245UsrID\240\246TimeID\000";
//				values[step] = "%83%A8userName%A3" + name
//						+ "%A5UsrID%A0%A6TimeID%00";
//				System.out.println(values[step]);
//				char[] ch = new char[29];
//				ch[0]='\203';
//				ch[1]='\250';
//				ch[2]='u';
//				ch[3]='s';
//				ch[4]='e';
//				ch[5]='r';
//				ch[6]='N';
//				ch[7]='a';
//				ch[8]='m';
//				ch[9]='e';
//				ch[10]='\243';
//				ch[11]='A';
//				ch[12]='o';
//				ch[13]='i';
//				ch[14]='\245';
//				ch[15]='U';
//				ch[16]='s';
//				ch[17]='r';
//				ch[18]='I';
//				ch[19]='D';
//				ch[20]='\240';
//				ch[21]='\246';
//				ch[22]='T';
//				ch[23]='i';
//				ch[24]='m';
//				ch[25]='e';
//				ch[26]='E';
//				ch[27]='D';
//				ch[28]='\00';
//				
//				System.out.println("-"+ch[0]+"-");
//				System.out.println("-"+ch[1]+"-");
//				System.out.println("-"+ch[10]+"-");
//				System.out.println("-"+ch[14]+"-");
//				System.out.println("-"+ch[20]+"-");
//				System.out.println("-"+ch[21]+"-");
//				System.out.println("-"+ch[28]+"-");
//				String rawst = "1000001110101000011101010111001101100101011100100100111001100001011011010110010110100011010000010110111101101001101001010101010101110011011100100100100101000100101000001010011001010100011010010110110101100101010010010100010000000000";
//				byte[] raw = new byte[rawst.length()];
//				for(int i=0;i<rawst.length();i++){
//					
//					String temp  = rawst.substring(i, i+1);
//					raw[i] = Byte.valueOf(temp);
//				System.out.print(raw[i]);	
//				}
//				System.out.println();
//				System.out.println("ch-"+new String(ch));
//				 st = HttpClientUtil.post(urls[step], values[step]);
				 st = HttpClientUtil.urlPost(urls[step],new String(values[step].getBytes(),"ISO-2022-JP"));
				step++;
//				System.out.println("ch =" + ch.length);
//				for (int i = 0; i < ch.length; i++) {
//					System.out.println(i + "-" + ch[i]);
//				}
				 System.out.println(new String(st.getBytes(),"utf-8"));
//				 System.out.println(new String(st.getBytes(),"gbk"));

				// for (; step < urls.length; step++) {
				// System.out.println(step + "-" + urls.length + "-"
				// + values.length);
				// st = HttpClientUtil.post(urls[step], values[step]);
				// System.out.println(st);
				// }
			} catch (Exception e) {
				e.printStackTrace();
			}

			return null;
		}

		@Override
		protected void onPreExecute() {
			super.onPreExecute();
			pdialog = new ProgressDialog(MainActivity.this);
			pdialog.setTitle("正在YAYA");
			pdialog.setProgressStyle(ProgressDialog.STYLE_SPINNER);
			pdialog.setIndeterminate(false);
			pdialog.setCancelable(false);
			pdialog.show();
		}

		@Override
		protected void onPostExecute(String result) {
			super.onPostExecute(result);
			pdialog.dismiss();
			pdialog = null;
		}
	}

}
