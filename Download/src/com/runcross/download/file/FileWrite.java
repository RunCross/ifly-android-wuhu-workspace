package com.runcross.download.file;

import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;

public class FileWrite {

	@SuppressWarnings("resource")
	public static long write(InputStream input,long start,long end,String path,String name) throws IOException{
		long fileLength = 0;
		RandomAccessFile oSavedFile = new RandomAccessFile(path + "\\"
				+ name, "rw");
		byte[] b = new byte[1024];
		int nRead = 0;
		// 读取网络文件,写入指定的文件中
		while ((nRead = input.read(b, 0, 1024)) > 0 && start < end) {
			oSavedFile.write(b, 0, nRead);
			start += nRead;
		}
		
		return fileLength;
	}
}
