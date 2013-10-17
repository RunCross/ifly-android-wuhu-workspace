package com.runcross.adaptviewtest;

import android.app.Activity;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseExpandableListAdapter;
import android.widget.ExpandableListView;
import android.widget.TextView;

public class ExpandListView extends Activity {

	private String[] groups={"A","C","V"};
	private String[][] persons={{"AAAAAAA","B","V"},{"SSSSSS","D","T"},{"HHHHHHH","G","F"}};
	private LayoutInflater inflater;
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onCreate(savedInstanceState);
		setContentView(R.layout.expendlistviewtest);
		inflater  = LayoutInflater.from(this);
		ExpandableListView expand = (ExpandableListView) findViewById(R.id.expand);
		
		expand.setAdapter(adapter);
		
	}
	
	private BaseExpandableListAdapter adapter = new BaseExpandableListAdapter() {
		
		@Override
		public boolean isChildSelectable(int groupPosition, int childPosition) {
			// TODO Auto-generated method stub
			return false;
		}
		
		@Override
		public boolean hasStableIds() {
			// TODO Auto-generated method stub
			return false;
		}
		
		@Override
		public View getGroupView(int groupPosition, boolean isExpanded,
				View convertView, ViewGroup parent) {
			View group  = inflater.inflate(R.layout.expandlistviewitem, null);
			TextView txtView = (TextView) group.findViewById(R.id.txtContent);
			txtView.setText(groups[groupPosition]);
			return group;
		}
		
		@Override
		public long getGroupId(int groupPosition) {
			// TODO Auto-generated method stub
			return 0;
		}
		
		@Override
		public int getGroupCount() {
			// TODO Auto-generated method stub
			return groups.length;
		}
		
		@Override
		public Object getGroup(int groupPosition) {
			// TODO Auto-generated method stub
			return null;
		}
		
		@Override
		public int getChildrenCount(int groupPosition) {
			// TODO Auto-generated method stub
			return persons[groupPosition].length;
		}
		
		@Override
		public View getChildView(int groupPosition, int childPosition,
				boolean isLastChild, View convertView, ViewGroup parent) {
			View person  = inflater.inflate(R.layout.expandlistviewitem, null);
			TextView txtView = (TextView) person.findViewById(R.id.txtContent);
			txtView.setText(persons[groupPosition][childPosition]);
			return person;
		}
		
		@Override
		public long getChildId(int groupPosition, int childPosition) {
			// TODO Auto-generated method stub
			return 0;
		}
		
		@Override
		public Object getChild(int groupPosition, int childPosition) {
			// TODO Auto-generated method stub
			return null;
		}
	};

}
