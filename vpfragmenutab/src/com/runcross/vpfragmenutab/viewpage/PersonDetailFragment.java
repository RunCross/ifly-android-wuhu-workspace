package com.runcross.vpfragmenutab.viewpage;

import com.runcross.vpfragmenutab.R;
import com.runcross.vpfragmenutab.po.Person;

import android.app.Activity;

import android.os.Bundle;

import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

public class PersonDetailFragment extends Fragment {

	@Override
	public void onAttach(Activity activity) {
		// TODO Auto-generated method stub
		super.onAttach(activity);
	}

	@Override
	public void onCreate(Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onCreate(savedInstanceState);
	}

	@Override
	public View onCreateView(LayoutInflater inflater, ViewGroup container,
			Bundle savedInstanceState) {
		
		View view = inflater.inflate(R.layout.personitemdetail, null);
		
		TextView tvName = (TextView) view.findViewById(R.id.name);
		TextView tvSex = (TextView) view.findViewById(R.id.sex);

		Person per = (Person) getArguments().getSerializable("datas");
		
		System.out.println("persondetail "+per.getName());
		
		tvName.setText(per.getName());
		tvSex.setText(per.getSex());
		
		return view;
	}

	
	
}
