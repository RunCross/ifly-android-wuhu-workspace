package com.runcross.vpfragmenutab.viewpage;

import java.util.ArrayList;


import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentPagerAdapter;
//import android.support.v4.app.Fragment;




public class FragAdapter extends FragmentPagerAdapter {

//	private ArrayList<ArrayList> datas;
	private ArrayList<Fragment> frags;
	
	public FragAdapter(FragmentManager fm) {
		super(fm);
		// TODO Auto-generated constructor stub
	}
	
//	public FragAdapter(FragmentManager fm, ArrayList<ArrayList> datas) {  
//        super(fm);  
//        this.datas = datas; 
//    }  
	
	public FragAdapter(FragmentManager fm, ArrayList<Fragment> frags) {  
        super(fm);  
        this.frags = frags; 
    }

	@Override
	public Fragment getItem(int arg0) {
		
//		Bundle bund = new Bundle();
//		bund.putSerializable("datas", datas.get(arg0));
//		
//		PersonFragement personFra = new PersonFragement();
//		personFra.setArguments(bund);
		//System.out.println("+++++++++++++++++++++++"+arg0);
		
//		return personFra;
//		Fragment frag = frags.get(arg0);
//		;
//		System.out.println("fragdapter "+frag.getArguments().getSerializable("datas").toString());
		return frags.get(arg0);
	}

	@Override
	public int getCount() {
		// TODO Auto-generated method stub
//		System.out.println("fragadapter size "+frags.size());
		return frags.size();
	}

}
