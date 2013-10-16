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

		// 获取adapterView
		ListView listview = (ListView) findViewById(R.id.listView2);

		// 数字适配器
		String[] arrs = getResources().getStringArray(R.array.listArr);
		ArrayAdapter<String> arrsAdapter = new ArrayAdapter<String>(
				MainActivity.this, R.layout.textiewitem, arrs);

		// 设置适配器
//		listview.setAdapter(arrsAdapter);

		List objlist = new ArrayList();

		Map objmap = new HashMap();
		objmap.put("id", 1);
		objmap.put("name", "学生1");
		objmap.put("gender", "男");

		Map objmap1 = new HashMap();
		objmap1.put("id", 2);
		objmap1.put("name", "学生2");
		objmap1.put("gender", "女");

		objlist.add(objmap);
		objlist.add(objmap1);

		SimpleAdapter simpleAdapter = new SimpleAdapter(MainActivity.this,
				objlist, R.layout.simpleadapterlayout, new String[] { "id",
						"name" ,"gender"}, new int[]{R.id.textId,R.id.textName,R.id.textGender});
		
		listview.setAdapter(simpleAdapter);
		
		List<Student> students = new ArrayList<Student>();
		students.add(new Student(1,"学生1","男"));
		students.add(new Student(2,"学生2","男"));
		students.add(new Student(3,"学生3","男"));
		
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
