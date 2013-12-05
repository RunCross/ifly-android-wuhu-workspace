package caicai.cn.multhreaddownloader;

import java.io.File;

import net.download.DownloadProgressListener;
import net.download.FileDownloader;

import android.app.Activity;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.Message;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;

public class Cai_multhreaddownloaderActivity extends Activity {

	private TextView resultview;
	private Button downloadbutton;
	private Button pausebutton;
	private ProgressBar progressBar;
	private Handler handler = new Uihandler();

	// handler用于往创建handler对象所在的线程所绑定的消息队列发送消息

	private final class Uihandler extends Handler {// 接收从子线程传来的值，注意只有主线程才能对UI控件进行控制与更新
		public void handleMessage(Message msg) {
			switch (msg.what) {
			case 1:
				int size = msg.getData().getInt("size");
				progressBar.setProgress(size);// 当前刻度;
				float num = (float) progressBar.getProgress()
						/ (float) progressBar.getMax();
				int result = (int) (num * 100);
				resultview.setText(result + "%");
				if (progressBar.getProgress() == progressBar.getMax()) {
					Toast.makeText(getApplicationContext(), "下载完成", 1).show();
				}
				break;
			case -1:
				Toast.makeText(getApplicationContext(), "错误1", 1).show();
				break;
			}

		}
	}

	public void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.main);
		resultview = (TextView) this.findViewById(R.id.resultview);
		downloadbutton = (Button) this.findViewById(R.id.downloadbutton);
		pausebutton = (Button) this.findViewById(R.id.stopbutton);
		progressBar = (ProgressBar) this.findViewById(R.id.progressBar);
		Buttonclicklistener listener = new Buttonclicklistener();
		downloadbutton.setOnClickListener(listener);
		pausebutton.setOnClickListener(listener);
	}

	private final class Buttonclicklistener implements View.OnClickListener {

		public void onClick(View v) {
			switch (v.getId()) {
			case R.id.downloadbutton:
				String path = "http://down.360safe.com/360mobilemgr/360box_web.apk";
				// pathtext.getText().toString();// 获取下载路径
				if (Environment.getExternalStorageState().equals(
						Environment.MEDIA_MOUNTED)) {// 判断SDcard是否存在 或者可写数据
					File savedir = Environment.getExternalStorageDirectory();// 获取sdcard跟目录，即保存路径
					download(path, savedir);
				} else {
					Toast.makeText(getApplicationContext(), "错误2", 1).show();
				}
				downloadbutton.setEnabled(false);
				pausebutton.setEnabled(true);
				break;
			case R.id.stopbutton:
				exit();
				downloadbutton.setEnabled(true);
				pausebutton.setEnabled(false);
				break;
			}
		}

		/*
		 * 由于用户的输入事件(点击button, 触摸屏幕....)是由主线程负责处理的，如果主线程处于工作状态，
		 * 此时用户产生的输入事件如果没能在5秒内得到处理，系统就会报“应用无响应”错误。
		 * 所以在主线程里不能执行一件比较耗时的工作，否则会因主线程阻塞而无法处理用户的输入事件，
		 * 导致“应用无响应”错误的出现。耗时的工作应该在子线程里执行。
		 */
		private DownloadTask task;

		private void exit() {// 退出下载
			if (task != null) {
				task.exit();
			}
		};

		private void download(String path, File savedir) {
			task = new DownloadTask(path, savedir);
			new Thread(task).start();
		}

		private final class DownloadTask implements Runnable {
			String path;
			File savedir;
			FileDownloader loader;

			public DownloadTask(String path, File savedir) {
				this.path = path;
				this.savedir = savedir;
			}

			public void exit() {
				if (loader != null) {
					loader.exit();// 退出下载
				}
			}

			@Override
			public void run() {
				try {
					loader = new FileDownloader(getApplicationContext(), path,
							savedir, 3);
					progressBar.setMax(loader.getFileSize());// 设置进度条最大刻度
					loader.download(new DownloadProgressListener() {
						@Override
						public void onDownloadSize(int size) {
							Message msg = new Message();
							msg.what = 1;// 定义消息的ID，以便区别那个消息发过来的
							msg.getData().putInt("size", size);
							handler.sendMessage(msg);

						}
					});
				} catch (Exception e) {
					e.printStackTrace();
					handler.sendMessage(handler.obtainMessage(-1));// 发送编号为-1的空消息
				}

			}

		}
	}
}