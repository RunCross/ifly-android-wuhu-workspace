package com.runcross.vpfragmenutab;

import java.util.ArrayList;
import java.util.List;

import com.runcross.vpfragmenutab.po.Person;

import android.app.Activity;
import android.app.Fragment;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.BaseAdapter;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;

public class PersonFragement extends Fragment {

	private List<Person> persons = new ArrayList<Person>();

	
	public interface ItemClick
	{
		public void onItemClick(Bundle bundle);

		
	}
	@Override
	public void onAttach(Activity activity) {
		super.onAttach(activity);
	}

	@Override
	public void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
	}

	@SuppressWarnings("unchecked")
	@Override
	public View onCreateView(LayoutInflater inflater, final ViewGroup container,
			Bundle savedInstanceState) {
		View fraView = inflater.inflate(R.layout.personlist, null);
		ListView listView = (ListView) fraView.findViewById(R.id.personList);
//		String type= getArguments().getString("type");
		persons.clear();
		persons=(ArrayList) getArguments().getSerializable("datas"); 
		listView.setAdapter(myAdapter);
		final ItemClick click=(ItemClick) getActivity();
		listView.setOnItemClickListener(new OnItemClickListener() {

			@Override
			public void onItemClick(AdapterView<?> parent, View view,
					int position, long id) {
				Bundle datas = new Bundle();
				datas.putString("name", persons.get(position).getName());
				datas.putString("sex", persons.get(position).getSex());
				Toast.makeText(container.getContext(), "perf", Toast.LENGTH_SHORT).show();
				click.onItemClick(datas);
				
			}

			
		});
		
		return fraView;
	}

	private BaseAdapter myAdapter = new BaseAdapter() {

		@Override
		public View getView(int position, View convertView, ViewGroup parent) {
			LayoutInflater inflater = LayoutInflater.from(getActivity());
			convertView = inflater.inflate(R.layout.personlistitem, null);
			TextView txtName = (TextView) convertView
					.findViewById(R.id.txtName);
			TextView txtSex = (TextView) convertView.findViewById(R.id.txtSex);
			Person person = persons.get(position);
			txtName.setText(person.getName());
			txtSex.setText(person.getSex());

			return convertView;
		}

		@Override
		public long getItemId(int position) {
			return position;
		}

		@Override
		public Object getItem(int position) {
			return null;
		}

		@Override
		public int getCount() {

			return persons.size();
		}
	};
}
