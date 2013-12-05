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

	// handler����������handler�������ڵ��߳����󶨵���Ϣ���з�����Ϣ

	private final class Uihandler extends Handler {// ���մ����̴߳�����ֵ��ע��ֻ�����̲߳��ܶ�UI�ؼ����п��������
		public void handleMessage(Message msg) {
			switch (msg.what) {
			case 1:
				int size = msg.getData().getInt("size");
				progressBar.setProgress(size);// ��ǰ�̶�;
				float num = (float) progressBar.getProgress()
						/ (float) progressBar.getMax();
				int result = (int) (num * 100);
				resultview.setText(result + "%");
				if (progressBar.getProgress() == progressBar.getMax()) {
					Toast.makeText(getApplicationContext(), "�������", 1).show();
				}
				break;
			case -1:
				Toast.makeText(getApplicationContext(), "����1", 1).show();
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
				// pathtext.getText().toString();// ��ȡ����·��
				if (Environment.getExternalStorageState().equals(
						Environment.MEDIA_MOUNTED)) {// �ж�SDcard�Ƿ���� ���߿�д����
					File savedir = Environment.getExternalStorageDirectory();// ��ȡsdcard��Ŀ¼��������·��
					download(path, savedir);
				} else {
					Toast.makeText(getApplicationContext(), "����2", 1).show();
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
		 * �����û��������¼�(���button, ������Ļ....)�������̸߳�����ģ�������̴߳��ڹ���״̬��
		 * ��ʱ�û������������¼����û����5���ڵõ�����ϵͳ�ͻᱨ��Ӧ������Ӧ������
		 * ���������߳��ﲻ��ִ��һ���ȽϺ�ʱ�Ĺ���������������߳��������޷������û��������¼���
		 * ���¡�Ӧ������Ӧ������ĳ��֡���ʱ�Ĺ���Ӧ�������߳���ִ�С�
		 */
		private DownloadTask task;

		private void exit() {// �˳�����
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
					loader.exit();// �˳�����
				}
			}

			@Override
			public void run() {
				try {
					loader = new FileDownloader(getApplicationContext(), path,
							savedir, 3);
					progressBar.setMax(loader.getFileSize());// ���ý��������̶�
					loader.download(new DownloadProgressListener() {
						@Override
						public void onDownloadSize(int size) {
							Message msg = new Message();
							msg.what = 1;// ������Ϣ��ID���Ա������Ǹ���Ϣ��������
							msg.getData().putInt("size", size);
							handler.sendMessage(msg);

						}
					});
				} catch (Exception e) {
					e.printStackTrace();
					handler.sendMessage(handler.obtainMessage(-1));// ���ͱ��Ϊ-1�Ŀ���Ϣ
				}

			}

		}
	}
}