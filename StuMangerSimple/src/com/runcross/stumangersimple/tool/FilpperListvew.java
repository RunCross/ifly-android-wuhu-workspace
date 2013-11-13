package com.runcross.stumangersimple.tool;


import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ListView;

public class FilpperListvew extends ListView {
	private float myLastX = -1;
	private float myLastY = -1;
	private boolean fling = false;
	//�Զ���Ļ���ɾ������
	private FilpperDeleteListener filpperDeleterListener;
	private FilpperAppearListener filpperAppearListener;

	
	public FilpperListvew(Context context) {
		super(context);
		// TODO Auto-generated constructor stub
	}

	public FilpperListvew(Context context, AttributeSet attrs) {
		super(context, attrs);
		// TODO Auto-generated constructor stub
	}

	@Override
	public boolean onTouchEvent(MotionEvent ev) {
		// TODO Auto-generated method stub
		switch (ev.getAction()) {
		case MotionEvent.ACTION_DOWN:
			// ��õ�һ�����x����
			myLastX = ev.getX(0);
			myLastY = ev.getY(0);
			break;

		case MotionEvent.ACTION_MOVE:
			// �õ����һ���������
			float deltaX = ev.getX(ev.getPointerCount() - 1) - myLastX;
			float deltaY = Math.abs(ev.getY(ev.getPointerCount() - 1) - myLastY);
			// ���Ի���ɾ�������������򻬶�����100����ֱ��С��50
			if (deltaX > 100.0 && deltaY < 50) {
				fling = true;
			}else{
				fling =false;
			}
			break;

		case MotionEvent.ACTION_UP:
			if (fling && filpperDeleterListener != null) {
//				filpperDeleterListener.filpperDelete(myLastX,myLastY);
//				filpperAppearListener.filpperAppear(getSelectedView(),fling);
			}
			filpperAppearListener.filpperAppear(myLastX,myLastY,fling);
			reset();
			break;
		}
		return super.onTouchEvent(ev);
	}

	public void reset(){
		fling = false ;
		myLastX = -1 ;
		myLastY = -1 ;
	}
	
	public void setFilpperDeleteListener(FilpperDeleteListener f) {
		filpperDeleterListener = f;
	}

	public void setFilpperAppearListener(FilpperAppearListener f) {
		filpperAppearListener = f;
	}
	
	//�Զ���Ľӿ�
	public interface FilpperDeleteListener {
		public void filpperDelete(float xPosition,float yPosition);
	}
	public interface FilpperAppearListener {
		public void filpperAppear(float xPosition,float yPosition,boolean fling);
	}
	
}
