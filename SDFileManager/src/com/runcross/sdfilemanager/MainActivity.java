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
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemLongClickListener;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
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
	
//	private boolean suspen;
//	
//	private int location;
//	
//	private LinearLayout extra;
//	
//	private ImageView extraImg;
//	
//	private TextView extraTxt;
//	
//	private LayoutInflater inflater;
//	
//	private RelativeLayout extraRoot;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);

//		suspen = false;
//		extraRoot = (RelativeLayout) findViewById(R.id.root);
//		inflater = LayoutInflater.from(MainActivity.this);
//		extra = (LinearLayout) inflater.inflate(R.layout.fileitem, null);
//		extraImg = (ImageView) extra.findViewById(R.id.fileType);
//		extraTxt = (TextView) extra.findViewById(R.id.fileName);
//		extra.setVisibility(View.GONE);
//		extraRoot.addView(extra);
		
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
						System.out.println("子文件 " + 0);
						Toast.makeText(MainActivity.this, "空文件夹",
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
		
		
//		fileList.setOnItemLongClickListener(new OnItemLongClickListener() {
//
//			@Override
//			public boolean onItemLongClick(AdapterView<?> parent, View view,
//					int position, long id) {
//				suspen = true;
//				
//				location  = position;
//				File f = (File) files.get(location);
//				
//				if(f.isDirectory()){
//					extraImg.setImageResource(R.drawable.generic_folder);
//				}else {
//					extraImg.setImageResource(R.drawable.text_enriched);
//				}
//				extraTxt.setText(f.getName());
//				extra.setVisibility(View.VISIBLE);
//				extra.layout(200, 500, 0, 0);
//				return false;
//			}
//		});
		
	}

	private void initList(File path) {

		currentFile = path;
		
		files.clear();
		
		if (path.isDirectory()) {
			// 获取文件下所有文件
			File[] filelists = path.listFiles();
//			System.out.println("子文件数量  " + filelists.length);
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
			.setTitle("请输入文件夹名")  
			.setIcon(android.R.drawable.ic_dialog_info)  
			.setView(input)  
			.setPositiveButton("确定", new DialogInterface.OnClickListener() {

				@Override
				public void onClick(DialogInterface dialog,
						int which) {
					
					String temp  = input.getText().toString();
					
					File file = new File(currentFile.getPath()+"/"+temp);
					
					if(file.exists()){
					
					Toast.makeText(MainActivity.this,
							temp+"文件夹已经存在", Toast.LENGTH_SHORT)
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
								temp+"文件夹已经创建", Toast.LENGTH_SHORT)
								.show();
						flashView(currentFile);
					}
				}
			})  
			.setNegativeButton("取消", null)  
			.show();
			
			break;
		case R.id.addFile:
			
			final EditText input1 = new EditText(MainActivity.this);
			
			new AlertDialog.Builder(MainActivity.this)  
			.setTitle("请输入文件名")  
			.setIcon(android.R.drawable.ic_dialog_info)  
			.setView(input1)  
			.setPositiveButton("确定", new DialogInterface.OnClickListener() {

				@Override
				public void onClick(DialogInterface dialog,
						int which) {
					
					String temp  = input1.getText().toString();
					
					File file = new File(currentFile.getPath()+"/"+temp);
					
					if(file.exists()){
					
					Toast.makeText(MainActivity.this,
							temp+"文件已经存在", Toast.LENGTH_SHORT)
							.show();
					dialog.dismiss();}
					else {
						System.out.println(currentFile.getPath()+"/"+temp);
						file.mkdir();
						Toast.makeText(MainActivity.this,
								temp+"文件已经创建", Toast.LENGTH_SHORT)
								.show();
						flashView(currentFile);
					}
				}
			})  
			.setNegativeButton("取消", null)  
			.show();
			
			break;
		}
		
		return super.onOptionsItemSelected(item);
	}
	
	/**
	 * 重写返回键，返回上一级目录
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
	
//	@Override
//	public boolean onTouchEvent(MotionEvent event) {
//		if(suspen){
//			
////			extra.layout((int)event.getX(), (int)event.getY(), 0, 0);
//			extraTxt.setText(String.valueOf(event.getX()));
//		}
//		return super.onTouchEvent(event);
//	}
//	
}
