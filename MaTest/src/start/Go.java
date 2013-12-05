package start;

import java.util.Scanner;

import net.Crypto;
import net.Process;

@SuppressWarnings("unused")
public class Go {
	
	public static void main(String []args) throws Exception{
		try{
			GetConfig.readConfig(args[0]);
			Process proc = new Process();
			//System.out.println(Crypto.DecryptBase64NoKey2Str("NzgOGTK08BvkZN5q8XvG6Q"));
			while(true){
				proc.start();
			}
		}catch(Exception e){
			log("文件解析错误");
		}
	}
	
	public static void log(String msg){
		System.out.println(msg);
	}

}
