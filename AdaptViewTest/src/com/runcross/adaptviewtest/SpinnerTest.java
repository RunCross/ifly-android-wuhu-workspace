package com.runcross.adaptviewtest;

import java.util.ArrayList;
import java.util.List;

import com.runcross.adapter.MySpinnerAdapter;
import com.runcross.pojo.ImageShow;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.ArrayAdapter;
import android.widget.Spinner;

public class SpinnerTest extends Activity {

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onCreate(savedInstanceState);
		setContentView(R.layout.spinnertest);

		Spinner sp = (Spinner) findViewById(R.id.spinnerTest);
//		String[] arrs = getResources().getStringArray(R.array.listArr);
//		ArrayAdapter<String> arrsAdapter = new ArrayAdapter<String>(
//				SpinnerTest.this, R.layout.textiewitem, arrs);
//		sp.setAdapter(arrsAdapter);

		List<ImageShow> imageShows = new ArrayList<ImageShow>();
		imageShows.add(new ImageShow(R.drawable.ic_launcher, "ͼƬ1"));
		imageShows.add(new ImageShow(R.drawable.ic_launcher, "ͼƬ2"));
		
		MySpinnerAdapter myspinner = new MySpinnerAdapter(SpinnerTest.this, imageShows);
		sp.setAdapter(myspinner);
		
		sp.setOnItemSelectedListener(new OnItemSelectedListener() {

			@Override
			public void onItemSelected(AdapterView<?> parent, View view,
					int position, long id) {
				// TODO Auto-generated method stub
				
			}

			@Override
			public void onNothingSelected(AdapterView<?> parent) {
				// TODO Auto-generated method stub
				
			}
		});

	}

}
