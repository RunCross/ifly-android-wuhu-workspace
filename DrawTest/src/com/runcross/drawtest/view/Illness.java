package com.runcross.drawtest.view;

import com.runcross.drawtest.R;
import com.runcross.drawtest.bean.IllnessInfo;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.View;

public class Illness extends View {

	private DisplayMetrics dm;// ��Ļ�ֱ�������
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

	public Illness(Context context, AttributeSet attrs) {
		super(context, attrs);
		
		//��ȡ���Լ���
		TypedArray array = context.obtainStyledAttributes(attrs, R.styleable.MainActivity);
		//��ȡĳһ������
		columnWidth = array.getInt(R.styleable.MainActivity_columnWidth, 20);
		
		//�߶ȺͿ��ֻ���� onDraw ���ȡ
		
		lineHeight = height / (LINE + 1);
		ill = new IllnessInfo();
		
	}

//	public Illness(Context context) {
//		super(context);
//		// TODO Auto-generated constructor stub
//	}

	public Illness(Context context, int width, int height) {
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
		//��ȡ���
		width = getWidth();
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
		// ǰ�б���
		for (int line = 1; line <= LINETOP; line++) {
			// ����
			canvas.drawLine(0, marginTop + line * lineHeight, width, marginTop
					+ line * lineHeight, paint);
			// ������
			for (int length = 0; length < lineNameTop[line - 1].length(); length++)
				canvas.drawText(
						String.valueOf(lineNameTop[line - 1].charAt(length)),
						marginLeft + columnWidth
								/ lineNameTop[line - 1].length() * (length),
						marginTop + line * lineHeight - TEXT_MARGIN_BOTTOM,
						paint);
		}
		int beginNum1 = 220;
		int beginNum2 = 44;
		int topMar = LINETOP * lineHeight + marginTop- TEXT_MARGIN_BOTTOM;
		// ���б���
		int timeWeight = (width - columnWidth) / ill.getTimes().length;
		for (int line = 1; line < LINECENTER; line++) {
			beginNum1 = beginNum1 - 20;

			topMar = topMar + lineHeight ;

			canvas.drawText(String.valueOf(beginNum1), NUM_MARGN, topMar, paint);
			canvas.drawText(String.valueOf(beginNum2 - line), NUM_SPACE,
					topMar, paint);
			System.out.println(beginNum1);
			 if (beginNum1 == 160) {
			 paint.setColor(Color.BLUE);
			 canvas.drawLine(columnWidth, topMar, columnWidth
			 + (int)(timeWeight * 2.5) , topMar, paint);
			 canvas.drawLine(columnWidth
			 + (int)(timeWeight * 2.5), topMar, width , topMar-20, paint);
			 paint.setColor(Color.BLACK);
			 }
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

		// ����
		IllnessInfo ill = new IllnessInfo();

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
		for (int day = 0; day < ill.getHuxi().length; day++) {
			if (ill.getHuxi()[day].length() > 0) {
				canvas.drawText(ill.getHuxi()[day], columnWidth + timeWeight
						* day + 10, topMar, paint);
			}
		}

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

	}
}
