package run.cross.autorefuse;

import android.os.Bundle;
import android.app.TabActivity;
import android.view.GestureDetector;
import android.widget.TabHost;
import android.widget.TabHost.TabSpec;

@SuppressWarnings("deprecation")
public class TabH extends TabActivity {

	//���Ƽ���
	GestureDetector mGestureDetector;  

	TabHostSlide tab;

	
	@Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        TabHost th = getTabHost() ;        
        tab = (TabHostSlide) th;
//        tab = (TabHostSlide) findViewById(R.id.tabh);
//        tab = (TabHostSlide) getTabHost();
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
        
        
        tab.setOnTabChangedListener(new AnimatedTabHostListener(tab));
                
    }

    
}
