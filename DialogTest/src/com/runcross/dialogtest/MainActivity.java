package com.runcross.dialogtest;

import android.os.Bundle;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.Toast;

public class MainActivity extends Activity {

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);

		Button btn = (Button) findViewById(R.id.simpledialog);
		btn.setOnClickListener(new OnClickListener() {

			@Override
			public void onClick(View v) {
				AlertDialog.Builder dialogBulder = new Builder(
						MainActivity.this);
				AlertDialog dialog = dialogBulder
						.setTitle("简单dialog")
						.setIcon(R.drawable.ic_launcher)
						.setMessage("呦呦")
						.setPositiveButton("Yes",
								new DialogInterface.OnClickListener() {

									@Override
									public void onClick(DialogInterface dialog,
											int which) {
										Toast.makeText(MainActivity.this,
												"yeah", Toast.LENGTH_SHORT)
												.show();
										dialog.dismiss();
									}
								})
						.setNegativeButton("取消",
								new DialogInterface.OnClickListener() {

									@Override
									public void onClick(DialogInterface dialog,
											int which) {
										Toast.makeText(MainActivity.this,
												"NO!!", Toast.LENGTH_SHORT)
												.show();
										dialog.dismiss();
									}
								}).create();
				dialog.show();

			}// click
		});// listener

		
		final String[] classes = {"1","2","3"};
		Button btnlist = (Button) findViewById(R.id.simpllist);
		btnlist.setOnClickListener(new OnClickListener() {

			@Override
			public void onClick(View v) {
				AlertDialog.Builder dialogBulder = new Builder(
						MainActivity.this);
				AlertDialog dialog = dialogBulder
						.setTitle("简单dialog")
						.setIcon(R.drawable.ic_launcher)
						.setItems(classes, new DialogInterface.OnClickListener() {
							
							@Override
							public void onClick(DialogInterface dialog, int which) {
								
							}
						})
						.create();
				dialog.show();

			}// click
		});// listener
		
		
		Button btnchick = (Button) findViewById(R.id.simpldan);
		btnchick.setOnClickListener(new OnClickListener() {

			@Override
			public void onClick(View v) {
				AlertDialog.Builder dialogBulder = new Builder(
						MainActivity.this);
				AlertDialog dialog = dialogBulder
						.setTitle("简单dialog")
						.setSingleChoiceItems(classes, 1, new DialogInterface.OnClickListener() {
							
							@Override
							public void onClick(DialogInterface dialog, int which) {
								
							}
						})
						.create();
				dialog.show();

			}// click
		});// listener
	
		
		
		Button btnduo = (Button) findViewById(R.id.simplduo);
		btnduo.setOnClickListener(new OnClickListener() {

			@Override
			public void onClick(View v) {
				AlertDialog.Builder dialogBulder = new Builder(
						MainActivity.this);
				AlertDialog dialog = dialogBulder
						.setTitle("多选dialog")
						.setMultiChoiceItems(classes, new boolean[]{true,false,true}, new DialogInterface.OnMultiChoiceClickListener() {

							@Override
							public void onClick(DialogInterface dialog,
									int which, boolean isChecked) {
								// TODO Auto-generated method stub
								
							}
							
							
						})
						.create();
				dialog.show();

			}// click
		});// listener
	
		
		Button btnadapter= (Button) findViewById(R.id.simpladapter);
		btnadapter.setOnClickListener(new OnClickListener() {

			@Override
			public void onClick(View v) {
				ArrayAdapter<String> adapter = new ArrayAdapter<String>(MainActivity.this, android.R.layout.simple_list_item_1,classes);
				AlertDialog.Builder dialogBulder = new Builder(
						MainActivity.this);
				AlertDialog dialog = dialogBulder
						.setTitle("自定义列表dialog")
						.setAdapter(adapter, null)
						.create();
				dialog.show();

			}// click
		});// listener
		
		Button btnmine= (Button) findViewById(R.id.simplmine);
		btnmine.setOnClickListener(new OnClickListener() {

			@Override
			public void onClick(View v) {
				ArrayAdapter<String> adapter = new ArrayAdapter<String>(MainActivity.this, android.R.layout.simple_list_item_1,classes);
				LayoutInflater inflater = LayoutInflater.from(MainActivity.this);
				View view = inflater.inflate(R.layout.login, null);
				AlertDialog.Builder dialogBulder = new Builder(
						MainActivity.this);
				AlertDialog dialog = dialogBulder
						.setTitle("自定义布局dialog")
						.setView(view)
						.create();
				dialog.show();

				
				
			}// click
		});// listener
		
		
	}

}
