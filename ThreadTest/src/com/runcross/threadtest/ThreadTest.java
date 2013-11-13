package com.runcross.threadtest;

public class ThreadTest extends Thread {

	@Override
	public void run() {
		super.run();
		while(true){
			try {
				sleep(1000);
			} catch (InterruptedException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			System.out.println(1);
		}
	}
}
