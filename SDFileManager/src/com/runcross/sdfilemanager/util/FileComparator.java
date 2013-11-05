package com.runcross.sdfilemanager.util;

import java.io.File;
import java.util.Comparator;

public class FileComparator implements Comparator<File> {	

	@Override
	public int compare(File lhs, File rhs) {
		if(lhs.isDirectory() && rhs.isFile())
		{
			return 1;
		}
//		if(lhs.getName().charAt(0) > rhs.getName().charAt(0))
//			{
////			System.out.println(1);
//				return 1;
//			}
//		System.out.println(0);
		return 0;
	}

}
