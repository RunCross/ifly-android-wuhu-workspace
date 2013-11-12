package com.example.demo;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
 

import com.iflytek.speech.RecognizerResult;
import com.iflytek.speech.SpeechError;
import com.iflytek.speech.SpeechConfig.RATE;
import com.iflytek.ui.RecognizerDialog;
import com.iflytek.ui.RecognizerDialogListener;

import android.R.string;
import android.os.Bundle;
import android.app.Activity;
import android.speech.RecognitionListener;
import android.view.Menu;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;

public class MainActivity extends Activity  implements OnClickListener
  {

	EditText textView;
	Button button;
    RecognizerDialog iatDialog;
	RecognizerDialogListener recognizerDialogListener = new RecognizerDialogListener() {

		String text="";
		@Override
		public void onEnd(SpeechError arg0) {
			// TODO Auto-generated method stub
			
				textView.setText(text);
				text="";
			
			
		}

		@Override
		public void onResults(ArrayList<RecognizerResult> arg0, boolean arg1) {
			// TODO Auto-generated method stub
			text+=arg0.get(0).text.toString();
		}
		
	};
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        textView=(EditText)this.findViewById(R.id.editText1);
        button=(Button)this.findViewById(R.id.button1);
        button.setOnClickListener(this);
		//iatDialog=new RecognizerDialog(this,"appid=4d6774d0");
		//iatDialog.setEngine("sms", null, null);
		//iatDialog.setListener(recognizerDialogListener);//http://61.191.24.237:9500/index.htm
		//
        //iatDialog = new RecognizerDialog(this,"appid=4df84c47,server_url=http://61.191.24.237:9500/index.htm,search_best_url=0","sample");
        //iatDialog = new RecognizerDialog(this,"appid=4df84c47,server_url=http://demo.voicecloud.cn/index.htm");
        //iatDialog = new RecognizerDialog(this,"appid=4df84c47,server_url=http://demo.voicecloud.cn/medical.htm,search_best_url=0");
        
/*        String date = df.format(new Date());
		String audioId = "anYi-" + date + "-{" + UUID.randomUUID().toString()
				+ "}";
		String clp = "clp=" + audioId;*/
    	
        //iatDialog = new RecognizerDialog(this,"appid=4df84c47,server_url=http://demo.voicecloud.cn/medical.htm");
        
/*        iatDialog.setEngine("sms", "",
				null);
		iatDialog.setListener(recognizerDialogListener);*/
        
        //iatDialog.setEngine("sms", null, null);
        //iatDialog.setSampleRate(RATE.rate16k);
        //iatDialog.setListener(recognizerDialogListener);
        
        iatDialog = new RecognizerDialog(
		  this,
		  "appid=4df84c47,server_url=demo.voicecloud.cn/index.htm"
		  );
		 

		  //iatDialog.setEngine("nurse", null, null);
		  iatDialog.setEngine("sms", null, null);

		  iatDialog.setSampleRate(RATE.rate16k);
		  iatDialog.setListener(recognizerDialogListener);
		
		
      }
	@Override
	public void onClick(View v) {
		// TODO Auto-generated method stub
		textView.setText("");
		iatDialog.show();
		
	}

   
}
