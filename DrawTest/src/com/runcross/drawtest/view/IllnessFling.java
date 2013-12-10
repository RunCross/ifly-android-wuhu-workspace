package com.runcross.drawtest.view;

import com.runcross.drawtest.R;
import com.runcross.drawtest.bean.IllnessInfo;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.GestureDetector.OnGestureListener;
import android.view.MotionEvent;
import android.view.View;

public class IllnessFling extends View implements OnGestureListener{

	/**
	 * ÿ�б���
	 */
	private Bitmap right;

	private static int rightMar = 20;

	private GestureDetector ges;
	
	private Bitmap leftBit;
	private Bitmap rightBit;
	
	/**
	 * �ܿ��
	 */
	private int width;
	/**
	 * �ܸ߶�
	 */
	private int height;
	/**
	 * ÿ�и߶�
	 */
	private int lineHeight;
	/**
	 * ����
	 */
	private static int LINE = 22;
	/**
	 * ǰ����
	 */
	private static int LINETOP = 4;
	/**
	 * ������
	 */
	private static int LINECENTER = 11;
	/**
	 * ������
	 */
	private static int LINEBOTTOM = 7;
	/**
	 * �ϱ߾�
	 */
	private int marginTop = 10;
	/**
	 * ��߾�
	 */
	private int marginLeft = 10;
	/**
	 * ǰ������
	 */
	private static String[] lineNameTop = { "����", "סԺ����", "����������", "ʱ��" };
	/**
	 * ��������
	 */
	private static String[] lineNameBottom = { "����(��/��)", "���(��/��)", "����(ml)",
			"����(ml)", "Ѫѹ(mmHg)", "����(kg)", "ҩ�����" };

	/**
	 * ��һ�п��
	 */
	private static int columnWidth = 200;
	/**
	 * ���ִ�С
	 */
	private static int TEXTSIZE = 30;

	/**
	 * ������߾�
	 */
	private static int NUM_MARGN = 50;

	/**
	 * ���ּ��
	 */
	private static int NUM_SPACE = 85 + NUM_MARGN;
	/**
	 * �������ߵľ���
	 */
	private static int TEXT_MARGIN_BOTTOM = 7;

	/**
	 * ����
	 */
	private IllnessInfo ill;

	public IllnessFling(Context context, AttributeSet attrs) {
		super(context, attrs);

		// ��ȡ���Լ���
		TypedArray array = context.obtainStyledAttributes(attrs,
				R.styleable.MainActivity);
		// ��ȡĳһ������
		columnWidth = array.getInt(R.styleable.MainActivity_columnWidth, 20);

		// �߶ȺͿ��ֻ���� onDraw ���ȡ

		lineHeight = height / (LINE + 1);
		ill = new IllnessInfo();
		
		ges = new GestureDetector(this);

	}

	// public Illness(Context context) {
	// super(context);
	// // TODO Auto-generated constructor stub
	// }

	public IllnessFling(Context context, int width, int height) {
		super(context);
		this.width = width;
		this.height = height;
		lineHeight = height / (LINE + 1);
		ill = new IllnessInfo();
	}

	@SuppressLint("DrawAllocation")
	@Override
	protected void onDraw(Canvas canvas) {
		super.onDraw(canvas);
		// ��ȡ���
		width = getWidth() - rightMar;
		height = getHeight();
		lineHeight = height / (LINE + 1);

		Paint paint = new Paint();
		// ȥ���
		paint.setAntiAlias(true);
		// ��ɫ
		paint.setColor(Color.BLACK);
		paint.setStyle(Paint.Style.STROKE);
		paint.setStrokeWidth(3);

		paint.setTextSize(TEXTSIZE);// ���������С
		paint.setTypeface(Typeface.SERIF);
		paint.setStyle(Paint.Style.FILL);
		// ǰ�б���
		for (int line = 1; line <= LINETOP; line++) {
			// ����
			canvas.drawLine(0, marginTop + line * lineHeight, width, marginTop
					+ line * lineHeight, paint);
			// ������
			for (int length = 0; length < lineNameTop[line - 1].length(); length++){
//				paint.setStyle(Paint.Style.FILL);
				canvas.drawText(
						String.valueOf(lineNameTop[line - 1].charAt(length)),
						marginLeft + columnWidth
								/ lineNameTop[line - 1].length() * (length),
						marginTop + line * lineHeight - TEXT_MARGIN_BOTTOM,
						paint);
			}
		}
		int beginNum1 = 220;
		int beginNum2 = 44;
		int topMar = LINETOP * lineHeight + marginTop - TEXT_MARGIN_BOTTOM;
		// ���б���
		int timeWeight = (width - columnWidth) / ill.getTimes().length;
		for (int line = 1; line < LINECENTER; line++) {
			beginNum1 = beginNum1 - 20;

			topMar = topMar + lineHeight;

			canvas.drawText(String.valueOf(beginNum1), NUM_MARGN, topMar, paint);
			canvas.drawText(String.valueOf(beginNum2 - line), NUM_SPACE,
					topMar, paint);
			System.out.println(beginNum1);
//			if (beginNum1 == 160) {
//				paint.setColor(Color.BLUE);
//				canvas.drawLine(columnWidth, topMar, columnWidth
//						+ (int) (timeWeight * 2.5), topMar, paint);
//				canvas.drawLine(columnWidth + (int) (timeWeight * 2.5), topMar,
//						width, topMar - 20, paint);
//				paint.setColor(Color.BLACK);
//			}
		}
		topMar = LINETOP * lineHeight + marginTop;
		// �ٴμ��㶥������
		topMar = topMar + (LINECENTER - 1) * lineHeight;
		// �����ϱߵ���
		canvas.drawLine(0, topMar, width, topMar, paint);

		paint.setTextSize(TEXTSIZE);
		// ���б���
		for (int line = 1; line <= LINEBOTTOM; line++) {
			// ����
			canvas.drawLine(0, topMar + line * lineHeight, width, topMar + line
					* lineHeight, paint);
			canvas.drawText(lineNameBottom[line - 1], marginLeft, topMar + line
					* lineHeight - TEXT_MARGIN_BOTTOM, paint);
		}

		// �зָ���
		canvas.drawLine(columnWidth, 0, columnWidth, height, paint);

		rightBit = Bitmap.createBitmap(width-columnWidth,height, Bitmap.Config.ARGB_8888);
		leftBit = Bitmap.createBitmap(width-columnWidth,height, Bitmap.Config.ARGB_8888);
		// ����
		IllnessInfo illLeft = new IllnessInfo();
		IllnessInfo illRight = new IllnessInfo();

		// ���¼���
		topMar = marginTop + lineHeight - TEXT_MARGIN_BOTTOM;
		// ������
		canvas.drawText(ill.getDate(), columnWidth + (width - columnWidth) / 3,
				topMar, paint);

		topMar += lineHeight;
		// ��סԺ
		canvas.drawText(String.valueOf(ill.getDays()), columnWidth
				+ (width - columnWidth) / 3, topMar, paint);
		topMar += lineHeight;
		// ��������
		canvas.drawText(String.valueOf(ill.getAfterDay()), columnWidth
				+ (width - columnWidth) / 3, topMar, paint);
		topMar += lineHeight;
		// ʱ��
		timeWeight = (width - columnWidth) / ill.getTimes().length;
		for (int day = 0; day < ill.getTimes().length; day++) {
			canvas.drawText(String.valueOf(ill.getTimes()[day]), columnWidth
					+ timeWeight * day + 10, topMar, paint);
			// ����
			canvas.drawLine(columnWidth + timeWeight * (day + 1), topMar
					- lineHeight + TEXT_MARGIN_BOTTOM, columnWidth + timeWeight
					* (day + 1), topMar + (LINECENTER) * lineHeight
					+ TEXT_MARGIN_BOTTOM, paint);
		}
		//
		// ����
		topMar += LINECENTER * lineHeight;
		paint.setTextSize(TEXTSIZE/3*2);
		for (int day = 0; day < ill.getHuxi().length; day++) {
			if (ill.getHuxi()[day].length() > 0) {
				canvas.drawText(ill.getHuxi()[day], columnWidth + timeWeight
						* day + 10, topMar, paint);
			}
		}
		paint.setTextSize(TEXTSIZE);
		// ���
		topMar += lineHeight;
		// topMar =
		// marginTop+(LINETOP+LINECENTER+1)*lineHeight-TEXT_MARGIN_BOTTOM;
		canvas.drawText(String.valueOf(ill.getDabian()), columnWidth
				+ (width - columnWidth) / 3, topMar, paint);
		// ����
		topMar += lineHeight;
		canvas.drawText(String.valueOf(ill.getInMl()), columnWidth
				+ (width - columnWidth) / 3, topMar, paint);

		// ����
		topMar += lineHeight;
		canvas.drawText(String.valueOf(ill.getOutMl()), columnWidth
				+ (width - columnWidth) / 3, topMar, paint);
		// Ѫѹ
		topMar += lineHeight;
		canvas.drawText(String.valueOf(ill.getXueya()), columnWidth
				+ (width - columnWidth) / 3, topMar, paint);
		// ����
		topMar += lineHeight;
		canvas.drawText(String.valueOf(ill.getTizhong()), columnWidth
				+ (width - columnWidth) / 3, topMar, paint);
		// ҩ�����
		topMar += lineHeight;
		canvas.drawText(ill.getGuoming(), columnWidth + (width - columnWidth)
				/ 3, topMar, paint);
		// ���ߴ���

		//
		//
		//
		//

		right = Bitmap.createBitmap(rightMar, 450, Bitmap.Config.ARGB_8888);
		// ����bitmap�Ļ���
		Canvas cright = new Canvas(right);
		paint.setTextSize(20);
		paint.setColor(Color.RED);
		RectF rf1 = new RectF(0, 0,rightMar, rightMar);
//		paint.setStyle(Paint.Style.FILL);
		cright.drawOval(rf1, paint);
//		cright.drawArc(rf1, 0, 360, false, paint);
//		cright.drawCircle(rightMar/2, rightMar/2, rightMar/2, paint);
		paint.setColor(Color.BLACK);
		cright.drawText("��", 0, rightMar+25, paint);
		cright.drawText("��", 0, rightMar+50, paint);
		
		paint.setColor(Color.BLUE);
//		cright.drawText("��", 0, rightMar+75, paint);
		RectF rf2 = new RectF(0,80, rightMar, rightMar+80);
		cright.drawOval(rf2, paint);
		
		canvas.drawBitmap(right, width, height/2, null);
		
		

	}

	@Override
	public boolean onDown(MotionEvent e) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public void onShowPress(MotionEvent e) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public boolean onSingleTapUp(MotionEvent e) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean onScroll(MotionEvent e1, MotionEvent e2, float distanceX,
			float distanceY) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public void onLongPress(MotionEvent e) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public boolean onFling(MotionEvent e1, MotionEvent e2, float velocityX,
			float velocityY) {
		
		if(e1.getX()-e2.getX() > 0){
			
		}
		
		return false;
	}
	
	@Override
	public boolean onTouchEvent(MotionEvent event) {
		return ges.onTouchEvent(event);
	}
}
