package com.runcross.adaptviewtest;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.runcross.adapter.MyAdapter;
import com.runcross.pojo.Student;

import android.os.Bundle;
import android.app.Activity;
import android.view.Menu;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ArrayAdapter;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.ListView;
import android.widget.SimpleAdapter;

public class ListViewTest extends Activity {

	private List<Student> students;
	
	private ListView listview;
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.listview);

		// ��ȡadapterView
		listview = (ListView) findViewById(R.id.listView2);

		// ����������
//		String[] arrs = getResources().getStringArray(R.array.listArr);
//		ArrayAdapter<String> arrsAdapter = new ArrayAdapter<String>(
//				MainActivity.this, R.layout.textiewitem, arrs);
//
		// ����������
//		listview.setAdapter(arrsAdapter);
//
//		List objlist = new ArrayList();
//
//		Map objmap = new HashMap();
//		objmap.put("id", 1);
//		objmap.put("name", "ѧ��1");
//		objmap.put("gender", "��");
//
//		Map objmap1 = new HashMap();
//		objmap1.put("id", 2);
//		objmap1.put("name", "ѧ��2");
//		objmap1.put("gender", "Ů");
//
//		objlist.add(objmap);
//		objlist.add(objmap1);
//
//		SimpleAdapter simpleAdapter = new SimpleAdapter(MainActivity.this,
//				objlist, R.layout.simpleadapterlayout, new String[] { "id",
//						"name" ,"gender"}, new int[]{R.id.textId,R.id.textName,R.id.textGender});
//		
//		listview.setAdapter(simpleAdapter);
		
		students = new ArrayList<Student>();
		students.add(new Student(1,"ѧ��1","��"));
		students.add(new Student(2,"ѧ��2","��"));
		students.add(new Student(3,"ѧ��3","��"));
		
		final MyAdapter myadapter = new MyAdapter(ListViewTest.this, students);
		
		listview.setAdapter(myadapter);
		
		CheckBox checkAll = (CheckBox) findViewById(R.id.checkAll);
		
		checkAll.setOnCheckedChangeListener(new OnCheckedChangeListener() {
			
			@Override
			public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
				boolean checked = buttonView.isChecked();
				for(Student stu:students){
					stu.setChecked(checked);
				}
				
//				CheckBox check = (CheckBox) findViewById(R.id.check);
//				
//				check.setChecked(checked);
//				MyAdapter myadapter = new MyAdapter(MainActivity.this, students);
//				
//				listview.setAdapter(myadapter);
//				listview.refreshDrawableState();
//				myadapter.notifyDataSetInvalidated();
				myadapter.notifyDataSetChanged();
				
			}
		});
		
		listview.setOnItemClickListener(new OnItemClickListener() {

			@Override
			public void onItemClick(AdapterView<?> parent, View view,
					int position, long id) {
				
			}
		});
	}

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.main, menu);
		return true;
	}

}
