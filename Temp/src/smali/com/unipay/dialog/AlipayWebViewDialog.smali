.class public Lcom/unipay/dialog/AlipayWebViewDialog;
.super Landroid/app/Dialog;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unipay/dialog/AlipayWebViewDialog$AilpayWebListener;
    }
.end annotation


# static fields
.field public static final BACK:I = 0x2

.field public static final CANCEL:I = 0x1

.field public static final COMMIT:I = 0x3


# instance fields
.field private _$1:Lcom/unipay/dialog/AlipayWebViewDialog$AilpayWebListener;

.field private _$2:Lcom/unipay/tools/DensityUtil;

.field private _$3:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/unipay/dialog/AlipayWebViewDialog$AilpayWebListener;)V
    .locals 2

    const v0, 0x103000e

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/unipay/dialog/AlipayWebViewDialog;->setOwnerActivity(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/unipay/dialog/AlipayWebViewDialog;->_$3:Landroid/content/Context;

    iput-object p3, p0, Lcom/unipay/dialog/AlipayWebViewDialog;->_$1:Lcom/unipay/dialog/AlipayWebViewDialog$AilpayWebListener;

    new-instance v0, Lcom/unipay/tools/DensityUtil;

    iget-object v1, p0, Lcom/unipay/dialog/AlipayWebViewDialog;->_$3:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/unipay/tools/DensityUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unipay/dialog/AlipayWebViewDialog;->_$2:Lcom/unipay/tools/DensityUtil;

    invoke-direct {p0, p2}, Lcom/unipay/dialog/AlipayWebViewDialog;->_$1(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic _$1(Lcom/unipay/dialog/AlipayWebViewDialog;)Lcom/unipay/dialog/AlipayWebViewDialog$AilpayWebListener;
    .locals 1

    iget-object v0, p0, Lcom/unipay/dialog/AlipayWebViewDialog;->_$1:Lcom/unipay/dialog/AlipayWebViewDialog$AilpayWebListener;

    return-object v0
.end method

.method private _$1(Ljava/lang/String;)V
    .locals 16

    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/unipay/dialog/AlipayWebViewDialog;->requestWindowFeature(I)Z

    const/high16 v1, 0x3f80

    invoke-static {v1}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    const/high16 v1, 0x4000

    invoke-static {v1}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    const/high16 v1, 0x4040

    invoke-static {v1}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    move-result v2

    const/high16 v1, 0x40a0

    invoke-static {v1}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    move-result v3

    const/high16 v1, 0x41a0

    invoke-static {v1}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    const/high16 v1, 0x41f0

    invoke-static {v1}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    const/high16 v1, 0x4220

    invoke-static {v1}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    const/high16 v1, 0x4248

    invoke-static {v1}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    const/high16 v1, 0x4120

    invoke-static {v1}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    move-result v4

    const/high16 v1, 0x4248

    invoke-static {v1}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    const/high16 v1, 0x428c

    invoke-static {v1}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    const/high16 v1, 0x428c

    invoke-static {v1}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    const/high16 v1, 0x42dc

    invoke-static {v1}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    const/high16 v1, 0x4316

    invoke-static {v1}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    const/high16 v1, 0x4348

    invoke-static {v1}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    invoke-virtual/range {p0 .. p0}, Lcom/unipay/dialog/AlipayWebViewDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    new-instance v5, Landroid/util/DisplayMetrics;

    invoke-direct {v5}, Landroid/util/DisplayMetrics;-><init>()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/unipay/dialog/AlipayWebViewDialog;->_$3:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v1, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v6, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    const/high16 v6, 0x4000

    invoke-static {v6}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    const/high16 v6, 0x40a0

    invoke-static {v6}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    const/high16 v6, 0x4100

    invoke-static {v6}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    const-string v6, "xyf"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "dm.widthPixels ="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";dm.heightPixels = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "dipwith = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v1, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/unipay/dialog/AlipayWebViewDialog;->_$3:Landroid/content/Context;

    invoke-direct {v1, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-direct {v6, v7, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v6, Landroid/widget/ScrollView;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/unipay/dialog/AlipayWebViewDialog;->_$3:Landroid/content/Context;

    invoke-direct {v6, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-direct {v1, v7, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v1}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v7, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/unipay/dialog/AlipayWebViewDialog;->_$3:Landroid/content/Context;

    invoke-direct {v7, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x1

    invoke-direct {v1, v8, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v8, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/unipay/dialog/AlipayWebViewDialog;->_$3:Landroid/content/Context;

    invoke-direct {v8, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/unipay/dialog/AlipayWebViewDialog;->_$3:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v9, -0x1

    iget v10, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/lit8 v10, v10, 0x7

    div-int/lit8 v10, v10, 0x42

    invoke-direct {v1, v9, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {v8}, Lcom/unipay/tools/PhoneInfoTools;->FullScreenCornerTop(Landroid/view/View;)V

    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/lit8 v1, v1, 0x6

    div-int/lit8 v1, v1, 0x42

    iget v10, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/lit8 v10, v10, 0x6

    div-int/lit8 v10, v10, 0x42

    invoke-direct {v9, v1, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xb

    invoke-virtual {v9, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xf

    invoke-virtual {v9, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iput v3, v9, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v10, -0x2

    const/4 v11, -0x1

    invoke-direct {v1, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v10, 0xd

    invoke-virtual {v1, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    iget v11, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/lit8 v11, v11, 0x6

    div-int/lit8 v11, v11, 0x42

    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/lit8 v5, v5, 0x6

    div-int/lit8 v5, v5, 0x42

    invoke-direct {v10, v11, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0x9

    invoke-virtual {v10, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v5, 0xf

    invoke-virtual {v10, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iput v3, v10, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    new-instance v5, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/unipay/dialog/AlipayWebViewDialog;->_$3:Landroid/content/Context;

    invoke-direct {v5, v11}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v1, Landroid/widget/TableRow;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/unipay/dialog/AlipayWebViewDialog;->_$3:Landroid/content/Context;

    invoke-direct {v1, v11}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    new-instance v11, Landroid/view/ViewGroup$LayoutParams;

    const/4 v12, -0x2

    const/4 v13, -0x1

    invoke-direct {v11, v12, v13}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v11}, Landroid/widget/TableRow;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v11, 0x11

    invoke-virtual {v1, v11}, Landroid/widget/TableRow;->setGravity(I)V

    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Landroid/widget/TableRow;->setOrientation(I)V

    const/high16 v11, 0x4000

    invoke-virtual {v1, v11}, Landroid/widget/TableRow;->setWeightSum(F)V

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v1, v11, v2, v12, v2}, Landroid/widget/TableRow;->setPadding(IIII)V

    new-instance v11, Landroid/widget/TableRow$LayoutParams;

    const/4 v12, -0x2

    const/4 v13, -0x1

    invoke-direct {v11, v12, v13}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    const/high16 v12, 0x3f80

    iput v12, v11, Landroid/widget/TableRow$LayoutParams;->weight:F

    new-instance v12, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/unipay/dialog/AlipayWebViewDialog;->_$3:Landroid/content/Context;

    invoke-direct {v12, v13}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v12, v11}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v13, "chinaunicom.png"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/unipay/dialog/AlipayWebViewDialog;->getBitMapDrawable(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v2, v15}, Landroid/widget/ImageView;->setPadding(IIII)V

    new-instance v2, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/unipay/dialog/AlipayWebViewDialog;->_$3:Landroid/content/Context;

    invoke-direct {v2, v13}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v11}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v11, "wostore_logo.png"

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/unipay/dialog/AlipayWebViewDialog;->getBitMapDrawable(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 v11, 0x1

    invoke-virtual {v2, v11}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    invoke-virtual {v1, v12}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/unipay/dialog/AlipayWebViewDialog;->_$3:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v2, "\u4e2d\u56fd\u8054\u901a\u6c83\u5546\u5e97\u7edf\u4e00\u652f\u4ed8-\u652f\u4ed8\u5b9d"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v11, -0x2

    const/4 v12, -0x1

    invoke-direct {v2, v11, v12}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v2, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v1, v3, v2, v11, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/unipay/dialog/AlipayWebViewDialog;->_$3:Landroid/content/Context;

    invoke-direct {v2, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/unipay/dialog/AlipayWebViewDialog;->_$3:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v3, "unicom_base/close.png"

    invoke-virtual {v1, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    const-string v3, "close.png"

    invoke-static {v1, v3}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v2, v9}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v4, v4, v4, v4}, Landroid/widget/Button;->setPadding(IIII)V

    new-instance v3, Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/unipay/dialog/AlipayWebViewDialog;->_$3:Landroid/content/Context;

    invoke-direct {v3, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v10}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/unipay/dialog/AlipayWebViewDialog;->_$3:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v4, "unicom_extend/back.png"

    invoke-virtual {v1, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    const-string v4, "back.png"

    invoke-static {v1, v4}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    invoke-virtual {v8, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v8, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v8, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v1, Lcom/unipay/dialog/IllIlIIIIIIIlIll;

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v2}, Lcom/unipay/dialog/IllIlIIIIIIIlIll;-><init>(Lcom/unipay/dialog/AlipayWebViewDialog;Landroid/widget/Button;)V

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v1, Lcom/unipay/dialog/lIIllIIIIIIIlIll;

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v3}, Lcom/unipay/dialog/lIIllIIIIIIIlIll;-><init>(Lcom/unipay/dialog/AlipayWebViewDialog;Landroid/widget/Button;)V

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :goto_2
    new-instance v1, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/unipay/dialog/AlipayWebViewDialog;->_$3:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v2, Landroid/webkit/WebView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/unipay/dialog/AlipayWebViewDialog;->_$3:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    new-instance v3, Lcom/unipay/dialog/IlIllIIIIIIIlIll;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/unipay/dialog/IlIllIIIIIIIlIll;-><init>(Lcom/unipay/dialog/AlipayWebViewDialog;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    new-instance v3, Lcom/unipay/dialog/lIlllIIIIIIIlIll;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/unipay/dialog/lIlllIIIIIIIlIll;-><init>(Lcom/unipay/dialog/AlipayWebViewDialog;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const/16 v3, 0x82

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->requestFocus(I)Z

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v6, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/unipay/dialog/AlipayWebViewDialog;->setContentView(Landroid/view/View;)V

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    :cond_0
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v9, -0x1

    iget v10, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/lit8 v10, v10, 0x7

    div-int/lit8 v10, v10, 0x6e

    invoke-direct {v1, v9, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {v8}, Lcom/unipay/tools/PhoneInfoTools;->FullScreenCornerTop(Landroid/view/View;)V

    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/lit8 v1, v1, 0x6

    div-int/lit8 v1, v1, 0x6e

    iget v10, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/lit8 v10, v10, 0x6

    div-int/lit8 v10, v10, 0x6e

    invoke-direct {v9, v1, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xb

    invoke-virtual {v9, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xf

    invoke-virtual {v9, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iput v3, v9, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v10, -0x2

    const/4 v11, -0x1

    invoke-direct {v1, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v10, 0xd

    invoke-virtual {v1, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    iget v11, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/lit8 v11, v11, 0x6

    div-int/lit8 v11, v11, 0x6e

    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/lit8 v5, v5, 0x6

    div-int/lit8 v5, v5, 0x6e

    invoke-direct {v10, v11, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0x9

    invoke-virtual {v10, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v5, 0xf

    invoke-virtual {v10, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iput v3, v10, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    new-instance v5, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/unipay/dialog/AlipayWebViewDialog;->_$3:Landroid/content/Context;

    invoke-direct {v5, v11}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v1, Landroid/widget/TableRow;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/unipay/dialog/AlipayWebViewDialog;->_$3:Landroid/content/Context;

    invoke-direct {v1, v11}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    new-instance v11, Landroid/view/ViewGroup$LayoutParams;

    const/4 v12, -0x2

    const/4 v13, -0x1

    invoke-direct {v11, v12, v13}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v11}, Landroid/widget/TableRow;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v11, 0x11

    invoke-virtual {v1, v11}, Landroid/widget/TableRow;->setGravity(I)V

    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Landroid/widget/TableRow;->setOrientation(I)V

    const/high16 v11, 0x4000

    invoke-virtual {v1, v11}, Landroid/widget/TableRow;->setWeightSum(F)V

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v1, v11, v2, v12, v2}, Landroid/widget/TableRow;->setPadding(IIII)V

    new-instance v11, Landroid/widget/TableRow$LayoutParams;

    const/4 v12, -0x2

    const/4 v13, -0x1

    invoke-direct {v11, v12, v13}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    const/high16 v12, 0x3f80

    iput v12, v11, Landroid/widget/TableRow$LayoutParams;->weight:F

    new-instance v12, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/unipay/dialog/AlipayWebViewDialog;->_$3:Landroid/content/Context;

    invoke-direct {v12, v13}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v12, v11}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v13, "chinaunicom.png"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/unipay/dialog/AlipayWebViewDialog;->getBitMapDrawable(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v2, v15}, Landroid/widget/ImageView;->setPadding(IIII)V

    new-instance v2, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/unipay/dialog/AlipayWebViewDialog;->_$3:Landroid/content/Context;

    invoke-direct {v2, v13}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v11}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v11, "wostore_logo.png"

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/unipay/dialog/AlipayWebViewDialog;->getBitMapDrawable(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 v11, 0x1

    invoke-virtual {v2, v11}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    invoke-virtual {v1, v12}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/unipay/dialog/AlipayWebViewDialog;->_$3:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v2, "\u4e2d\u56fd\u8054\u901a\u6c83\u5546\u5e97\u7edf\u4e00\u652f\u4ed8-\u652f\u4ed8\u5b9d"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v11, -0x2

    const/4 v12, -0x1

    invoke-direct {v2, v11, v12}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v2, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v1, v3, v2, v11, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/unipay/dialog/AlipayWebViewDialog;->_$3:Landroid/content/Context;

    invoke-direct {v2, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/unipay/dialog/AlipayWebViewDialog;->_$3:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v3, "unicom_base/close.png"

    invoke-virtual {v1, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    const-string v3, "close.png"

    invoke-static {v1, v3}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    invoke-virtual {v2, v9}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v4, v4, v4, v4}, Landroid/widget/Button;->setPadding(IIII)V

    new-instance v1, Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/unipay/dialog/AlipayWebViewDialog;->_$3:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v10}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/unipay/dialog/AlipayWebViewDialog;->_$3:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string v4, "unicom_extend/back.png"

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    const-string v4, "back.png"

    invoke-static {v3, v4}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :goto_4
    invoke-virtual {v8, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v8, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v8, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v3, Lcom/unipay/dialog/IIIllIIIIIIIlIll;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v2}, Lcom/unipay/dialog/IIIllIIIIIIIlIll;-><init>(Lcom/unipay/dialog/AlipayWebViewDialog;Landroid/widget/Button;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v2, Lcom/unipay/dialog/llIllIIIIIIIlIll;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v1}, Lcom/unipay/dialog/llIllIIIIIIIlIll;-><init>(Lcom/unipay/dialog/AlipayWebViewDialog;Landroid/widget/Button;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/16 :goto_2

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catch_3
    move-exception v3

    goto :goto_4
.end method

.method static synthetic _$2(Lcom/unipay/dialog/AlipayWebViewDialog;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/unipay/dialog/AlipayWebViewDialog;->_$3:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getBitMapDrawable(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/unipay/dialog/AlipayWebViewDialog;->_$3:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "unicom_base/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    :try_start_1
    invoke-virtual {p0, v2}, Lcom/unipay/dialog/AlipayWebViewDialog;->readInputStream(Ljava/io/InputStream;)[B

    move-result-object v4

    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x1

    iput-boolean v3, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v3, 0x0

    array-length v6, v4

    invoke-static {v4, v3, v6, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    iput-boolean v3, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iget v3, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v3, v3

    const/high16 v6, 0x4348

    div-float/2addr v3, v6

    float-to-int v3, v3

    if-gtz v3, :cond_2

    :goto_0
    iput v1, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v1, 0x0

    array-length v3, v4

    invoke-static {v4, v1, v3, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v0

    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_1
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v1

    move-object v2, v0

    :goto_2
    :try_start_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_0

    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_3
    if-eqz v2, :cond_1

    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_1
    :goto_4
    throw v0

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2

    :cond_2
    move v1, v3

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unipay/dialog/AlipayWebViewDialog;->_$1:Lcom/unipay/dialog/AlipayWebViewDialog$AilpayWebListener;

    invoke-interface {v0, v1}, Lcom/unipay/dialog/AlipayWebViewDialog$AilpayWebListener;->opearation(I)V

    invoke-virtual {p0}, Lcom/unipay/dialog/AlipayWebViewDialog;->dismiss()V

    :cond_0
    return v1
.end method

.method public readInputStream(Ljava/io/InputStream;)[B
    .locals 4

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v0, 0x400

    new-array v0, v0, [B

    :goto_0
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    return-object v2

    :cond_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method
