package com.runcross.sdfilemanager;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import com.runcross.sdfilemanager.adapter.FileAdapter;
import com.runcross.sdfilemanager.util.FileComparator;

import android.os.Bundle;
import android.os.Environment;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemLongClickListener;
import android.widget.EditText;
import android.widget.Toast;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListView;

public class MainActivity extends Activity  {

	private ListView fileList;

	private List<File> files = new ArrayList<File>();

	private FileAdapter adapter;

	private static final String root = Environment
			.getExternalStorageDirectory().getPath();

	private File currentFile;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);

		
		fileList = (ListView) findViewById(R.id.fileList);

		File path = new File(root);

		initList(path);

		adapter = new FileAdapter(files, MainActivity.this);

		fileList.setAdapter(adapter);

		fileList.setOnItemClickListener(new OnItemClickListener() {

			@Override
			public void onItemClick(AdapterView<?> parent, View view,
					int position, long id) {
				File f = files.get(position);
				if (f.isDirectory()) {
					if (f.list() == null) {
						System.out.println("���ļ� " + 0);
						Toast.makeText(MainActivity.this, "���ļ���",
								Toast.LENGTH_SHORT).show();

					} else {
						flashView(f);
					}
				}else {
					
				}
			}

		});
				
		fileList.setOnItemLongClickListener(new OnItemLongClickListener() {

			@Override
			public boolean onItemLongClick(AdapterView<?> parent, View view,
					int position, long id) {
				
				return false;
			}
		});
		
	}

	private void initList(File path) {

		currentFile = path;
		
		files.clear();
		
		if (path.isDirectory()) {
			// ��ȡ�ļ��������ļ�
			File[] filelists = path.listFiles();
//			System.out.println("���ļ�����  " + filelists.length);
			for (File f : filelists) {
				files.add(f);
			}
		} else {
			files.add(path);
		}
		FileComparator comparator = new FileComparator();
		// System.out.println(-1);
		Collections.sort(files, comparator);
	}

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		getMenuInflater().inflate(R.menu.operation, menu);
		
		
		return true;
	}
	
	@Override
	public boolean onOptionsItemSelected(MenuItem item) {
		switch(item.getItemId()){
		case R.id.addFolder:
			
			final EditText input = new EditText(MainActivity.this);
			
			new AlertDialog.Builder(MainActivity.this)  
			.setTitle("�������ļ�����")  
			.setIcon(android.R.drawable.ic_dialog_info)  
			.setView(input)  
			.setPositiveButton("ȷ��", new DialogInterface.OnClickListener() {

				@Override
				public void onClick(DialogInterface dialog,
						int which) {
					
					String temp  = input.getText().toString();
					
					File file = new File(currentFile.getPath()+"/"+temp);
					
					if(file.exists()){
					
					Toast.makeText(MainActivity.this,
							temp+"�ļ����Ѿ�����", Toast.LENGTH_SHORT)
							.show();
					dialog.dismiss();}
					else {
						System.out.println(currentFile.getPath()+"/"+temp);
						try {
							file.createNewFile();
						} catch (IOException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
						Toast.makeText(MainActivity.this,
								temp+"�ļ����Ѿ�����", Toast.LENGTH_SHORT)
								.show();
						flashView(currentFile);
					}
				}
			})  
			.setNegativeButton("ȡ��", null)  
			.show();
			
			break;
		case R.id.addFile:
			
			final EditText input1 = new EditText(MainActivity.this);
			
			new AlertDialog.Builder(MainActivity.this)  
			.setTitle("�������ļ���")  
			.setIcon(android.R.drawable.ic_dialog_info)  
			.setView(input1)  
			.setPositiveButton("ȷ��", new DialogInterface.OnClickListener() {

				@Override
				public void onClick(DialogInterface dialog,
						int which) {
					
					String temp  = input1.getText().toString();
					
					File file = new File(currentFile.getPath()+"/"+temp);
					
					if(file.exists()){
					
					Toast.makeText(MainActivity.this,
							temp+"�ļ��Ѿ�����", Toast.LENGTH_SHORT)
							.show();
					dialog.dismiss();}
					else {
						System.out.println(currentFile.getPath()+"/"+temp);
						file.mkdir();
						Toast.makeText(MainActivity.this,
								temp+"�ļ��Ѿ�����", Toast.LENGTH_SHORT)
								.show();
						flashView(currentFile);
					}
				}
			})  
			.setNegativeButton("ȡ��", null)  
			.show();
			
			break;
		}
		
		return super.onOptionsItemSelected(item);
	}
	
	/**
	 * ��д���ؼ���������һ��Ŀ¼
	 */
	@Override
	public void onBackPressed() {
//		System.out.println(currentFile.getName()+"  "+root.ge);
		if (currentFile.getPath().equals(root))
		{
			super.onBackPressed();
		}else{
		initList(currentFile.getParentFile());
		adapter.notifyDataSetChanged();}
	}
	
	public void flashView(File f){
		initList(f);
		adapter.notifyDataSetChanged();
	}
}
