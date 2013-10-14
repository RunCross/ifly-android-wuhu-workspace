package run.cross.autorefuse;

import android.os.Bundle;
import android.app.TabActivity;
import android.view.GestureDetector;
import android.view.Menu;
import android.view.MotionEvent;
import android.view.View;
import android.view.GestureDetector.OnGestureListener;
import android.view.View.OnTouchListener;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.TabHost;
import android.widget.Toast;
import android.widget.TabHost.OnTabChangeListener;
import android.widget.TabHost.TabSpec;

@SuppressWarnings("deprecation")
public class MainActivity extends TabActivity implements OnTouchListener ,OnGestureListener{

	//���Ƽ���
	GestureDetector mGestureDetector;  
	
	//��������
	private int verticalMinDistance = 50;
	//xλ�ƴ�С
	private int minVelocity         = 0; 
	//��������
	private boolean isOpenAnimation =true ; 
	//��ҳ��
	private int mTabCount = 3;
	
	private int index = 0;
	TabHost tab;
	
	private Animation slideLeftIn;// ����Ļ��߽��� 
	private Animation slideLeftOut;// ����Ļ��߳�ȥ 
	private Animation slideRightIn;// ����Ļ�ұ߽��� 
	private Animation slideRightOut;// ����Ļ�ұ߳�ȥ
	
	@Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        
        mGestureDetector = new GestureDetector(this);  
        
        slideLeftIn = AnimationUtils.loadAnimation(this, 
				R.anim.push_left_in); 
		slideLeftOut = AnimationUtils.loadAnimation(this, 
				R.anim.push_left_out); 
		slideRightIn = AnimationUtils.loadAnimation(this, 
				R.anim.push_right_in); 
		slideRightOut = AnimationUtils.loadAnimation(this, 
				R.anim.push_right_out); 
        
        
        tab = (TabHost) getTabHost();
//        TabHost th = getTabHost() ;        
//        tab =  (TabHostSlide) th;
        //TabSpec tabs1 = tab.newTabSpec("tab1").setIndicator("����").setContent(R.id.tab1);
        //tabs1.setContent(new Intent(this,SstartActivity.class));
        //tab.addTab(tabs1);
        TabSpec tabs1 =tab
		.newTabSpec("tab1")
		.setIndicator("����",
				getResources()
				.getDrawable(R.drawable.ic_launcher))
		.setContent(R.id.tab1);        
        tab.addTab(tabs1);
        
        TabSpec tabs2 = tab.newTabSpec("tab2").setIndicator("�û���").setContent(R.id.tab2);
        tab.addTab(tabs2);
        
        TabSpec tabs3 = tab.newTabSpec("tab3").setIndicator("����").setContent(R.id.tab3);
        tab.addTab(tabs3);
        
        
        tab.setOnTabChangedListener(new OnTabChangeListener() {
			
			@Override
			public void onTabChanged(String arg0) {
				// TODO Auto-generated method stub
				
			}
		});
        
        tab.setOnTouchListener(this);
        tab.setLongClickable(true);
        
    }


    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        // Inflate the menu; this adds items to the action bar if it is present.
        getMenuInflater().inflate(R.menu.main, menu);
        return true;
    }


	@Override
	public boolean onTouchEvent(MotionEvent event) {
		// TODO Auto-generated method stub
		return super.onTouchEvent(event);
	}
    
	@Override
	public boolean onDown(MotionEvent e) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean onFling(MotionEvent e1, MotionEvent e2, float velocityX,
			float velocityY) {
		if (e1.getX() - e2.getX() > verticalMinDistance && Math.abs(velocityX) > minVelocity) {  
			  
	        // �л�Activity  
//	         Intent intent = new Intent(MainActivity.this, GroupsActivity.class);  
//	         startActivity(intent);  
//	         //����ǳ��
//	         overridePendingTransition(R.anim.left_in, R.anim.left_out);			
			if( index>= 2) index =-1;
			tab.setCurrentTab(++index);
			if (isOpenAnimation) AnamationTab();
	        Toast.makeText(this, "��������"+index+tab.getCurrentTab(), Toast.LENGTH_SHORT).show();  
	    } else if (e2.getX() - e1.getX() > verticalMinDistance && Math.abs(velocityX) > minVelocity) {  
	  
	        // �л�Activity  
	        // Intent intent = new Intent(ViewSnsActivity.this, UpdateStatusActivity.class);  
	        // startActivity(intent);  
	    	if( index<= 0) index =3;
			tab.setCurrentTab(--index);
			if (isOpenAnimation) AnamationTab();
	        Toast.makeText(this, "��������"+index+tab.getCurrentTab(), Toast.LENGTH_SHORT).show();  
	    }  
		return false;
	}

	@Override
	public void onLongPress(MotionEvent e) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public boolean onScroll(MotionEvent e1, MotionEvent e2, float distanceX,
			float distanceY) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public void onShowPress(MotionEvent e) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public boolean onSingleTapUp(MotionEvent e) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean onTouch(View v, MotionEvent event) {
		return mGestureDetector.onTouchEvent(event);  
	}
	

	private void AnamationTab(){
		int mCurrentTabID = tab.getCurrentTab(); 
		int indexx = index - 1;
			// ��ǰҳ�����Ƕ��� 
			// ѭ��ʱ��ĩҳ����һҳ 
			if (mCurrentTabID == (mTabCount - 1) && indexx == 0) { 
			    tab.getCurrentView().startAnimation(slideRightIn); 
			    System.out.println(1);
			} 
			// ѭ��ʱ����ҳ��ĩҳ(�߽紦��) 
			else if (mCurrentTabID == 0 && indexx == (mTabCount - 1)) { 
			    tab.getCurrentView().startAnimation(slideLeftIn);
			    System.out.println(2);
			} 
			// �л����ұߵĽ��棬���ұ߽��� 
			else if (indexx > mCurrentTabID) { 
				tab.getCurrentView().startAnimation(slideRightIn);
				System.out.println(3);
			} 
			// �л�����ߵĽ��棬����߽��� 
			else if (indexx < mCurrentTabID) { 
				tab.getCurrentView().startAnimation(slideLeftIn);
				System.out.println(4);
			} 
			System.out.println("go");
			}
    
}
