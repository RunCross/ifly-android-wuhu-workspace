package com.example.resttest;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.ImageView;

public class AnimTest extends Activity {

    private ImageView imageView;

	protected void onCreate(Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onCreate(savedInstanceState);
		setContentView(R.layout.animtest);
		
		imageView=(ImageView)findViewById(R.id.imageView1);
	}
    public void buttonClick(View button){
    	switch(button.getId()){
    	case R.id.btn1:
    		//加载动画
    		Animation anim1=AnimationUtils.loadAnimation(AnimTest.this,R.anim.alphatest); 
    		//对imageView设置动画
    		imageView.startAnimation(anim1);
    		break;
    	case R.id.btn2:
    		Animation anim2=AnimationUtils.loadAnimation(AnimTest.this,R.anim.scale);
    		imageView.startAnimation(anim2);
    		break;
    	case R.id.btn3:
    		Animation anim3=AnimationUtils.loadAnimation(AnimTest.this,R.anim.translate);
    		imageView.startAnimation(anim3);
    		break;
    	case R.id.btn4:
    		Animation anim4=AnimationUtils.loadAnimation(AnimTest.this,R.anim.rotate);
    		imageView.startAnimation(anim4);
    		break;
    	case R.id.btn5:
    		Animation anim5=AnimationUtils.loadAnimation(AnimTest.this,R.anim.allanim);
    		imageView.startAnimation(anim5);
    		break;
    	}
    }
}
