package com.example.viewtest;

import android.app.Activity;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ZoomButton;

public class ImageTest extends Activity {

	private int alpha;
	// ImageView imageView;
	private float towidth = 1;
	private float toheight = 1;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.imagetest);

		final ImageView imageView = (ImageView) findViewById(R.id.imagetest);
		// imageView.setImageResource(R.drawable.ic_launcher);
		final Bitmap bitmaptest = BitmapFactory.decodeResource(getResources(),
				R.drawable.ic_launcher);

		imageView.setImageBitmap(bitmaptest);

		Button btnplus = (Button) findViewById(R.id.plus);
		Button btndec = (Button) findViewById(R.id.dec);

		btnplus.setOnClickListener(new OnClickListener() {

			@Override
			public void onClick(View v) {
				alpha = alpha + 40;
				if (alpha > 255) {
					alpha = 255;
				}
				imageView.setAlpha(alpha);
			}
		});
		btndec.setOnClickListener(new OnClickListener() {

			@Override
			public void onClick(View v) {
				alpha = alpha - 40;
				if (alpha < 0) {
					alpha = 0;
				}
				imageView.setAlpha(alpha);
			}
		});

		ZoomButton zbplus = (ZoomButton) findViewById(R.id.expand);
		ZoomButton zbsmall = (ZoomButton) findViewById(R.id.small);

		final int bwidth = bitmaptest.getWidth();
		final int bheight = bitmaptest.getHeight();

		// ·Å´ó
		zbplus.setOnClickListener(new OnClickListener() {

			@Override
			public void onClick(View v) {
				towidth = (float) (towidth * 1.5);
				toheight = (float) (toheight * 1.5);

				//¾ØÕó±ä»»
				Matrix scalMatrix = new Matrix();
				scalMatrix.postScale(towidth, toheight);

				//Í¼Æ¬Ëõ·Å
				Bitmap newBitemap = Bitmap.createBitmap(bitmaptest, 0, 0,
						bwidth, bheight, scalMatrix, true);
				
				imageView.setImageBitmap(newBitemap);
				
			}
		});

		zbsmall.setOnClickListener(new OnClickListener() {
			
			@Override
			public void onClick(View v) {
				towidth = (float) (towidth / 1.5);
				toheight = (float) (toheight / 1.5);

				//¾ØÕó±ä»»
				Matrix scalMatrix = new Matrix();
				scalMatrix.postScale(towidth, toheight);

				//Í¼Æ¬Ëõ·Å
				Bitmap newBitemap = Bitmap.createBitmap(bitmaptest, 0, 0,
						bwidth, bheight, scalMatrix, true);
				
				imageView.setImageBitmap(newBitemap);
			}
		});
	}

}
