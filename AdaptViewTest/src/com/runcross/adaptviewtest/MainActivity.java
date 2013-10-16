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
import android.widget.ArrayAdapter;
import android.widget.ListView;
import android.widget.SimpleAdapter;

public class MainActivity extends Activity {

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.listview);

		// ��ȡadapterView
		ListView listview = (ListView) findViewById(R.id.listView2);

		// ����������
		String[] arrs = getResources().getStringArray(R.array.listArr);
		ArrayAdapter<String> arrsAdapter = new ArrayAdapter<String>(
				MainActivity.this, R.layout.textiewitem, arrs);

		// ����������
//		listview.setAdapter(arrsAdapter);

		List objlist = new ArrayList();

		Map objmap = new HashMap();
		objmap.put("id", 1);
		objmap.put("name", "ѧ��1");
		objmap.put("gender", "��");

		Map objmap1 = new HashMap();
		objmap1.put("id", 2);
		objmap1.put("name", "ѧ��2");
		objmap1.put("gender", "Ů");

		objlist.add(objmap);
		objlist.add(objmap1);

		SimpleAdapter simpleAdapter = new SimpleAdapter(MainActivity.this,
				objlist, R.layout.simpleadapterlayout, new String[] { "id",
						"name" ,"gender"}, new int[]{R.id.textId,R.id.textName,R.id.textGender});
		
		listview.setAdapter(simpleAdapter);
		
		List<Student> students = new ArrayList<Student>();
		students.add(new Student(1,"ѧ��1","��"));
		students.add(new Student(2,"ѧ��2","��"));
		students.add(new Student(3,"ѧ��3","��"));
		
		MyAdapter myadapter = new MyAdapter(MainActivity.this, students);
		
		listview.setAdapter(myadapter);
	}

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.main, menu);
		return true;
	}

}
