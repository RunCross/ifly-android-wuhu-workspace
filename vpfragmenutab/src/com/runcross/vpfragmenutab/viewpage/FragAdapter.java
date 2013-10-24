package com.runcross.vpfragmenutab.viewpage;

import java.util.ArrayList;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentPagerAdapter;

public class FragAdapter extends FragmentPagerAdapter {

	private ArrayList<ArrayList> datas;
	
	public FragAdapter(FragmentManager fm) {
		super(fm);
		// TODO Auto-generated constructor stub
	}
	
	public FragAdapter(FragmentManager fm, ArrayList<ArrayList> datas) {  
        super(fm);  
        this.datas = datas; 
    }  

	@Override
	public Fragment getItem(int arg0) {
		
		Bundle bund = new Bundle();
		bund.putSerializable("datas", datas.get(arg0));
		
		PersonFragement personFra = new PersonFragement();
		personFra.setArguments(bund);
		//System.out.println("+++++++++++++++++++++++"+arg0);
		
		return personFra;
	}

	@Override
	public int getCount() {
		// TODO Auto-generated method stub
		return datas.size();
	}

}
