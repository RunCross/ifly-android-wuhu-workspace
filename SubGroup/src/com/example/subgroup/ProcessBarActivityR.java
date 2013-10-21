package com.example.subgroup;

import android.app.Activity;
import android.os.Bundle;
import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Message;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RatingBar;
import android.widget.RatingBar.OnRatingBarChangeListener;
import android.widget.SeekBar;
import android.widget.SeekBar.OnSeekBarChangeListener;
import android.widget.Toast;

/**
 *
 * 运用ProgressBar，显示任务完成的进度条控制
 * 分别设有系统的大、小圆形bar，水平bar;自定义的添加图片的myCircleprocessBar;滑动条SeekBar;评分条RatingBar
 * @author Administrator
 *
 */
public class ProcessBarActivityR extends Activity implements Callback{

	private int i=0;
	private ProgressBar horizonBar;
	private ProgressBar circleBar;
	private SeekBar seekBarTest; 
	private RatingBar rateBarText;
	
	private Handler handler;
	private Button btnTest;
	private  ImageView myImage;
	@SuppressWarnings("deprecation")
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		
		super.onCreate(savedInstanceState);
		setContentView(R.layout.bartest);
		
		handler=new Handler(this);
		
		ProgressBar circleBar=(ProgressBar)findViewById(R.id.myCircleprocess);
	    horizonBar=(ProgressBar)findViewById(R.id.myHorizontalprocess);
		
	    seekBarTest=(SeekBar)findViewById(R.id.seekBartest);
	    myImage=(ImageView)findViewById(R.id.myimage);
	    myImage.setAlpha(520);	    
	    Toast.makeText(ProcessBarActivityR.this, String.valueOf(myImage.getAlpha()), Toast.LENGTH_SHORT).show();
	    rateBarText=(RatingBar)findViewById(R.id.ratingbarTest);
	    
//		btnTest=(Button)findViewById(R.id.btnTest);
//		btnTest.setOnClickListener(new OnClickListener() {
//			
//			@Override
//			public void onClick(View v) {
//				
//				myThread.start();
//			}
//		});
		
		rateBarText.setOnRatingBarChangeListener(new OnRatingBarChangeListener() {
			
			@Override
			public void onRatingChanged(RatingBar ratingBar, float rating,
					boolean fromUser) {
				// 
				myImage.setAlpha((int)(rating*40));
				Toast.makeText(ProcessBarActivityR.this, String.valueOf(myImage.getAlpha()), Toast.LENGTH_SHORT).show();
//				Toast.makeText(ProcessBarActivityR.this, String.valueOf(rating*40), Toast.LENGTH_SHORT).show();
			}
		});
		
//		seekBarTest.setOnSeekBarChangeListener(new OnSeekBarChangeListener() {
//			
//			@Override
//			public void onStopTrackingTouch(SeekBar seekBar) {
//				// 停止拖动
//				
//			}
//			
//			@Override
//			public void onStartTrackingTouch(SeekBar seekBar) {
//				// 开始拖动
//				
//			}
//			
//			@Override
//			public void onProgressChanged(SeekBar seekBar, int progress,
//					boolean fromUser) {
//				// 拖动过程中，控制下面的图像的透明度
//				myImage.setAlpha(progress);
//			}
//		});
	}
	//在子线程中操作主线程的
       private Thread myThread=new Thread(new Runnable() {
		
		@Override
		public void run() {
			while(i<100){
				i++;
				try{
					Thread.sleep(1000);
				}catch(InterruptedException e){
					e.printStackTrace();
				}
				
				//设置当前进度
				horizonBar.setProgress(i);
				//seekBarTest.setProgress(i);
				
				//不合法，因为我们在自己创建的子线程里操作了UI线程创建的BUTTON控件btnTest
				//btnTest.setText(String.valueOf(i));
				
				Message message=new Message();
				//what是id号
				message.what=1;
				//obj是发送的内容
				message.obj=i;
				handler.sendMessage(message);
			}
			
		}
	});
	@Override
	public boolean handleMessage(Message msg) {
		
		String strObj=String.valueOf(msg.obj);
		btnTest.setText(strObj);
		
		if(Integer.valueOf(msg.obj.toString())==100){
		
			//设置圆形的processbar的可见性，gone消失
			circleBar.setVisibility(View.GONE);
		}
		return false;
	}
}
