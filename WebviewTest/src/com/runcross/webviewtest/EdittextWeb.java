package com.runcross.webviewtest;

import android.app.Activity;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.Html;
import android.text.Html.ImageGetter;
import android.text.Spanned;
import android.text.method.LinkMovementMethod;
import android.view.ViewGroup.LayoutParams;
import android.widget.EditText;

public class EdittextWeb extends Activity {

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onCreate(savedInstanceState);
		EditText edit = new EditText(this);
		
		edit.setLayoutParams(new LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.MATCH_PARENT));
		
		setContentView(edit);
		
		Spanned html = Html.fromHtml("<img src='"+R.drawable.ic_launcher+"'/>",imageGetter,null);
		
		Spanned string = Html.fromHtml("<a href='http://www.baidu.com'>°Ù¶È</a>");
		
		
		edit.append(html);
		edit.append(string);
		edit.setMovementMethod(LinkMovementMethod.getInstance()); 
				
	}
	
	private ImageGetter imageGetter = new ImageGetter() {
		
		@Override
		public Drawable getDrawable(String source) {
			int id = Integer.parseInt(source);
			Drawable d = getResources().getDrawable(id);
			d.setBounds(0, 0, d.getIntrinsicWidth(), d.getIntrinsicHeight());
			
			return d;
		}
	};
}
