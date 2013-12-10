package com.cn;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

import org.xml.sax.InputSource;
import org.xmlpull.v1.XmlPullParserException;

import com.cn.data.River;
import com.cn.prase.PraseXml;

import android.app.Activity;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;

public class ReadXml extends Activity {
	private Button Dom;
	private Button Sax;
	private Button Pull;
	private InputStream in;
	private List<River> Rivers=new ArrayList<River>();
	
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.main);
        
        Dom=(Button)findViewById(R.id.Dom);
        Sax=(Button)findViewById(R.id.SAX);
        Pull=(Button)findViewById(R.id.Pull);
        Dom.setOnClickListener(new OnClickListener() {
			public void onClick(View v) {
				// TODO Auto-generated method stub
				try {
					 in=getResources().getAssets().open("river.xml");
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
		        Rivers=new PraseXml().Dom(in);
		        Log.v("Rivers",Rivers.toString());
			}
		});
        Sax.setOnClickListener(new OnClickListener() {
			
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				try {
					InputSource insource=new InputSource(getAssets().open("river.xml"));
					Rivers=new PraseXml().Sax(insource);
					
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				for(int i=0;i<Rivers.size();i++)
				Log.v("Rivers",Rivers.get(i).toString());
			}
		});
        
        Pull.setOnClickListener(new OnClickListener() {
			public void onClick(View v) {
				// TODO Auto-generated method stub
				try {
					 in=getResources().getAssets().open("river.xml");
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
		        try {
					Rivers=new PraseXml().Pull(in);
				} catch (XmlPullParserException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
		        Log.v("Rivers",Rivers.toString());
			}
		});
        
      
        
    }
}