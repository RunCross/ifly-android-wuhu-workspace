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

	private DisplayMetrics dm;// 屏幕分辨率容器
	/**
	 * 总宽度
	 */
	private int width;
	/**
	 * 总高度
	 */
	private int height;
	/**
	 * 每行高度
	 */
	private int lineHeight;
	/**
	 * 行数
	 */
	private static int LINE = 22;
	/**
	 * 前行数
	 */
	private static int LINETOP = 4;
	/**
	 * 中行数
	 */
	private static int LINECENTER = 11;
	/**
	 * 后行数
	 */
	private static int LINEBOTTOM = 7;
	/**
	 * 上边距
	 */
	private int marginTop = 10;
	/**
	 * 左边距
	 */
	private int marginLeft = 10;
	/**
	 * 前行名称
	 */
	private static String[] lineNameTop = { "日期", "住院日数", "手术后日数", "时间" };
	/**
	 * 后行名称
	 */
	private static String[] lineNameBottom = { "呼吸(次/分)", "大便(次/日)", "入量(ml)",
			"尿量(ml)", "血压(mmHg)", "体重(kg)", "药物过敏" };

	/**
	 * 第一列宽度
	 */
	private static int columnWidth = 200;
	/**
	 * 文字大小
	 */
	private static int TEXTSIZE = 30;

	/**
	 * 数字左边距
	 */
	private static int NUM_MARGN = 50;

	/**
	 * 数字间距
	 */
	private static int NUM_SPACE = 85 + NUM_MARGN;
	/**
	 * 文字离线的距离
	 */
	private static int TEXT_MARGIN_BOTTOM = 7;

	/**
	 * 数据
	 */
	private IllnessInfo ill;

	public Illness(Context context, AttributeSet attrs) {
		super(context, attrs);
		
		//获取属性集合
		TypedArray array = context.obtainStyledAttributes(attrs, R.styleable.MainActivity);
		//获取某一个属性
		columnWidth = array.getInt(R.styleable.MainActivity_columnWidth, 20);
		
		//高度和宽度只能在 onDraw 里获取
		
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
		//获取宽度
		width = getWidth();
		height = getHeight();
		lineHeight = height / (LINE + 1);
		
		Paint paint = new Paint();
		// 去锯齿
		paint.setAntiAlias(true);
		// 颜色
		paint.setColor(Color.BLACK);
		paint.setStyle(Paint.Style.STROKE);
		paint.setStrokeWidth(3);

		paint.setTextSize(TEXTSIZE);// 设置字体大小
		paint.setTypeface(Typeface.SERIF);
		// 前行标题
		for (int line = 1; line <= LINETOP; line++) {
			// 画线
			canvas.drawLine(0, marginTop + line * lineHeight, width, marginTop
					+ line * lineHeight, paint);
			// 画文字
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
		// 中行标题
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
		// 再次计算顶部距离
		topMar = topMar + (LINECENTER - 1) * lineHeight;
		// 呼吸上边的线
		canvas.drawLine(0, topMar, width, topMar, paint);

		paint.setTextSize(TEXTSIZE);
		// 后行标题
		for (int line = 1; line <= LINEBOTTOM; line++) {
			// 画线
			canvas.drawLine(0, topMar + line * lineHeight, width, topMar + line
					* lineHeight, paint);
			canvas.drawText(lineNameBottom[line - 1], marginLeft, topMar + line
					* lineHeight - TEXT_MARGIN_BOTTOM, paint);
		}

		// 列分割线
		canvas.drawLine(columnWidth, 0, columnWidth, height, paint);

		// 数据
		IllnessInfo ill = new IllnessInfo();

		// 重新计算
		topMar = marginTop + lineHeight - TEXT_MARGIN_BOTTOM;
		// 画日期
		canvas.drawText(ill.getDate(), columnWidth + (width - columnWidth) / 3,
				topMar, paint);

		topMar += lineHeight;
		// 画住院
		canvas.drawText(String.valueOf(ill.getDays()), columnWidth
				+ (width - columnWidth) / 3, topMar, paint);
		topMar += lineHeight;
		// 画手术后
		canvas.drawText(String.valueOf(ill.getAfterDay()), columnWidth
				+ (width - columnWidth) / 3, topMar, paint);
		topMar += lineHeight;
		// 时间
		timeWeight = (width - columnWidth) / ill.getTimes().length;
		for (int day = 0; day < ill.getTimes().length; day++) {
			canvas.drawText(String.valueOf(ill.getTimes()[day]), columnWidth
					+ timeWeight * day + 10, topMar, paint);
			// 竖线
			canvas.drawLine(columnWidth + timeWeight * (day + 1), topMar
					- lineHeight + TEXT_MARGIN_BOTTOM, columnWidth + timeWeight
					* (day + 1), topMar + (LINECENTER) * lineHeight
					+ TEXT_MARGIN_BOTTOM, paint);
		}
		//
		// 呼吸
		topMar += LINECENTER * lineHeight;
		for (int day = 0; day < ill.getHuxi().length; day++) {
			if (ill.getHuxi()[day].length() > 0) {
				canvas.drawText(ill.getHuxi()[day], columnWidth + timeWeight
						* day + 10, topMar, paint);
			}
		}

		// 大便
		topMar += lineHeight;
		// topMar =
		// marginTop+(LINETOP+LINECENTER+1)*lineHeight-TEXT_MARGIN_BOTTOM;
		canvas.drawText(String.valueOf(ill.getDabian()), columnWidth
				+ (width - columnWidth) / 3, topMar, paint);
		// 入量
		topMar += lineHeight;
		canvas.drawText(String.valueOf(ill.getInMl()), columnWidth
				+ (width - columnWidth) / 3, topMar, paint);

		// 尿量
		topMar += lineHeight;
		canvas.drawText(String.valueOf(ill.getOutMl()), columnWidth
				+ (width - columnWidth) / 3, topMar, paint);
		// 血压
		topMar += lineHeight;
		canvas.drawText(String.valueOf(ill.getXueya()), columnWidth
				+ (width - columnWidth) / 3, topMar, paint);
		// 体重
		topMar += lineHeight;
		canvas.drawText(String.valueOf(ill.getTizhong()), columnWidth
				+ (width - columnWidth) / 3, topMar, paint);
		// 药物过敏
		topMar += lineHeight;
		canvas.drawText(ill.getGuoming(), columnWidth + (width - columnWidth)
				/ 3, topMar, paint);
		// 折线处理

		//
		//
		//
		//

	}
}
