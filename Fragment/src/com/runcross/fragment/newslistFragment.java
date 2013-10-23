package com.runcross.fragment;

import android.app.Fragment;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ListView;

public class newslistFragment extends Fragment {

	@Override
	public View onCreateView(LayoutInflater inflater, ViewGroup container,
			Bundle savedInstanceState) {
		View view = inflater.inflate(R.layout.newlist, null);
		ListView listView = (ListView) view.findViewById(R.id.list);
		ArrayAdapter<String> arr = new ArrayAdapter<String>(getActivity(), android.R.layout.simple_list_item_1, new String[]{"新闻","娱乐","科技"});
		listView.setAdapter(arr);
		return super.onCreateView(inflater, container, savedInstanceState);
	}
}
