.class public Lcom/unipay/dialog/HelpDialog;
.super Landroid/app/Dialog;


# instance fields
.field private _$1:Lcom/unipay/tools/DensityUtil;

.field private _$2:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const v0, 0x103000b

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/unipay/dialog/HelpDialog;->_$2:Landroid/content/Context;

    new-instance v0, Lcom/unipay/tools/DensityUtil;

    invoke-direct {v0, p1}, Lcom/unipay/tools/DensityUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unipay/dialog/HelpDialog;->_$1:Lcom/unipay/tools/DensityUtil;

    invoke-direct {p0}, Lcom/unipay/dialog/HelpDialog;->_$1()V

    return-void
.end method

.method static synthetic _$1(Lcom/unipay/dialog/HelpDialog;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/unipay/dialog/HelpDialog;->_$2:Landroid/content/Context;

    return-object v0
.end method

.method private _$1()V
    .locals 18

    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/unipay/dialog/HelpDialog;->requestWindowFeature(I)Z

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

    invoke-virtual/range {p0 .. p0}, Lcom/unipay/dialog/HelpDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    new-instance v6, Landroid/util/DisplayMetrics;

    invoke-direct {v6}, Landroid/util/DisplayMetrics;-><init>()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/unipay/dialog/HelpDialog;->_$2:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v1, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v7, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    const/high16 v7, 0x4000

    invoke-static {v7}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    const/high16 v7, 0x40a0

    invoke-static {v7}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    const/high16 v7, 0x4100

    invoke-static {v7}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    const-string v7, "xyf"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "dm.widthPixels ="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ";dm.heightPixels = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "dipwith = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget v1, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v1, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v1, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/unipay/dialog/HelpDialog;->_$2:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v1

    if-nez v1, :cond_5

    iget v1, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v1, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v1, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/unipay/dialog/HelpDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v7, 0x0

    invoke-static {v7}, Lcom/unipay/tools/PhoneInfoTools;->getWindowsBackGround(I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v7, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/unipay/dialog/HelpDialog;->_$2:Landroid/content/Context;

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

    iget-object v1, v0, Lcom/unipay/dialog/HelpDialog;->_$2:Landroid/content/Context;

    invoke-direct {v8, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/unipay/dialog/HelpDialog;->_$2:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v1

    if-nez v1, :cond_6

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v9, -0x1

    iget v10, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/lit8 v10, v10, 0x7

    div-int/lit8 v10, v10, 0x42

    invoke-direct {v1, v9, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v1, 0x4120

    invoke-static {v8, v1}, Lcom/unipay/tools/PhoneInfoTools;->toCornerTop(Landroid/view/View;F)V

    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/lit8 v1, v1, 0x6

    div-int/lit8 v1, v1, 0x42

    iget v10, v6, Landroid/util/DisplayMetrics;->heightPixels:I

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

    iget v11, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/lit8 v11, v11, 0x6

    div-int/lit8 v11, v11, 0x42

    iget v12, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/lit8 v12, v12, 0x6

    div-int/lit8 v12, v12, 0x42

    invoke-direct {v10, v11, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v11, 0x9

    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v11, 0xf

    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iput v3, v10, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    new-instance v11, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/unipay/dialog/HelpDialog;->_$2:Landroid/content/Context;

    invoke-direct {v11, v12}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v1, Landroid/widget/TableRow;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/unipay/dialog/HelpDialog;->_$2:Landroid/content/Context;

    invoke-direct {v1, v12}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    new-instance v12, Landroid/view/ViewGroup$LayoutParams;

    const/4 v13, -0x2

    const/4 v14, -0x1

    invoke-direct {v12, v13, v14}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v12}, Landroid/widget/TableRow;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v12, 0x11

    invoke-virtual {v1, v12}, Landroid/widget/TableRow;->setGravity(I)V

    const/4 v12, 0x0

    invoke-virtual {v1, v12}, Landroid/widget/TableRow;->setOrientation(I)V

    const/high16 v12, 0x4000

    invoke-virtual {v1, v12}, Landroid/widget/TableRow;->setWeightSum(F)V

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v1, v12, v2, v13, v2}, Landroid/widget/TableRow;->setPadding(IIII)V

    new-instance v12, Landroid/widget/TableRow$LayoutParams;

    const/4 v13, -0x2

    const/4 v14, -0x1

    invoke-direct {v12, v13, v14}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    const/high16 v13, 0x3f80

    iput v13, v12, Landroid/widget/TableRow$LayoutParams;->weight:F

    new-instance v13, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/unipay/dialog/HelpDialog;->_$2:Landroid/content/Context;

    invoke-direct {v13, v14}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v13, v12}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v14, "chinaunicom.png"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/unipay/dialog/HelpDialog;->getBitMapDrawable(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v13, v14, v15, v2, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    new-instance v2, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/unipay/dialog/HelpDialog;->_$2:Landroid/content/Context;

    invoke-direct {v2, v14}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v12}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v12, "wostore_logo.png"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/unipay/dialog/HelpDialog;->getBitMapDrawable(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v12

    invoke-virtual {v2, v12}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 v12, 0x1

    invoke-virtual {v2, v12}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    invoke-virtual {v1, v13}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/unipay/dialog/HelpDialog;->_$2:Landroid/content/Context;

    invoke-direct {v2, v12}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v12, "\u5e2e\u52a9"

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v12, -0x100

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v12, Landroid/view/ViewGroup$LayoutParams;

    const/4 v13, -0x2

    const/4 v14, -0x1

    invoke-direct {v12, v13, v14}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v12, 0x10

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v2, v3, v12, v13, v14}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v11, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/unipay/dialog/HelpDialog;->_$2:Landroid/content/Context;

    invoke-direct {v2, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/unipay/dialog/HelpDialog;->_$2:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v12, "unicom_base/close.png"

    invoke-virtual {v1, v12}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    const-string v12, "close.png"

    invoke-static {v1, v12}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {v2, v9}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v4, v4, v4, v4}, Landroid/widget/Button;->setPadding(IIII)V

    new-instance v4, Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/unipay/dialog/HelpDialog;->_$2:Landroid/content/Context;

    invoke-direct {v4, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v10}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/unipay/dialog/HelpDialog;->_$2:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v9, "unicom_extend/back.png"

    invoke-virtual {v1, v9}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    const-string v9, "back.png"

    invoke-static {v1, v9}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    invoke-virtual {v8, v11}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v1, Lcom/unipay/dialog/llIIIIlllIllIlll;

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v2}, Lcom/unipay/dialog/llIIIIlllIllIlll;-><init>(Lcom/unipay/dialog/HelpDialog;Landroid/widget/Button;)V

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v1, Lcom/unipay/dialog/IIlIIIlllIllIlll;

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v4}, Lcom/unipay/dialog/IIlIIIlllIllIlll;-><init>(Lcom/unipay/dialog/HelpDialog;Landroid/widget/Button;)V

    invoke-virtual {v4, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :goto_3
    invoke-static {}, Lcom/unipay/tools/MultimodeConfig;->getHelpMsg()Ljava/lang/String;

    move-result-object v1

    const-string v2, ":;:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/HelpDialog;->_$2:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v9, -0x1

    const/4 v10, -0x2

    invoke-direct {v4, v9, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v4, 0x4120

    invoke-static {v2, v4}, Lcom/unipay/tools/PhoneInfoTools;->toCorner(Landroid/view/View;F)V

    new-instance v4, Landroid/widget/ScrollView;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/unipay/dialog/HelpDialog;->_$2:Landroid/content/Context;

    invoke-direct {v4, v9}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    new-instance v9, Landroid/view/ViewGroup$LayoutParams;

    const/4 v10, -0x1

    iget v11, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v11, v11

    const-wide v13, 0x3feccccccccccccdL

    mul-double/2addr v11, v13

    const-wide v13, 0x3fe6666666666666L

    mul-double/2addr v11, v13

    double-to-int v11, v11

    invoke-direct {v9, v10, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v9}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v9, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/unipay/dialog/HelpDialog;->_$2:Landroid/content/Context;

    invoke-direct {v9, v10}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v10, Landroid/view/ViewGroup$LayoutParams;

    const/4 v11, -0x1

    const/4 v12, -0x1

    invoke-direct {v10, v11, v12}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v10, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/unipay/dialog/HelpDialog;->_$2:Landroid/content/Context;

    invoke-direct {v10, v11}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v11, Landroid/view/ViewGroup$LayoutParams;

    const/4 v12, -0x1

    const/4 v13, -0x2

    invoke-direct {v11, v12, v13}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v10, v3, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v11, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/unipay/dialog/HelpDialog;->_$2:Landroid/content/Context;

    invoke-direct {v11, v12}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v12, Landroid/view/ViewGroup$LayoutParams;

    const/4 v13, -0x1

    const/4 v14, -0x2

    invoke-direct {v12, v13, v14}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v11, v3, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v12, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/unipay/dialog/HelpDialog;->_$2:Landroid/content/Context;

    invoke-direct {v12, v13}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v13, Landroid/view/ViewGroup$LayoutParams;

    const/4 v14, -0x1

    const/4 v15, -0x2

    invoke-direct {v13, v14, v15}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v12, v3, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v13, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/unipay/dialog/HelpDialog;->_$2:Landroid/content/Context;

    invoke-direct {v13, v14}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v14, Landroid/view/ViewGroup$LayoutParams;

    const/4 v15, -0x1

    const/16 v16, -0x2

    invoke-direct/range {v14 .. v16}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v13, v3, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v14, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/unipay/dialog/HelpDialog;->_$2:Landroid/content/Context;

    invoke-direct {v14, v15}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v15, Landroid/view/ViewGroup$LayoutParams;

    const/16 v16, -0x1

    const/16 v17, -0x2

    invoke-direct/range {v15 .. v17}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v14, v3, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    const/16 v3, 0x8

    invoke-virtual {v14, v3}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v9, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v9, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v9, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v9, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v4, v9}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/unipay/dialog/HelpDialog;->_$2:Landroid/content/Context;

    invoke-direct {v3, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v9, Landroid/view/ViewGroup$LayoutParams;

    const/4 v15, -0x1

    const/16 v16, -0x2

    move/from16 v0, v16

    invoke-direct {v9, v15, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v9, 0x11

    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v9, Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/unipay/dialog/HelpDialog;->_$2:Landroid/content/Context;

    invoke-direct {v9, v15}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    new-instance v15, Landroid/view/ViewGroup$LayoutParams;

    const/16 v16, -0x2

    const/16 v17, -0x2

    invoke-direct/range {v15 .. v17}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v15}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v15, "\u8fd4\u56de"

    invoke-virtual {v9, v15}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    array-length v3, v1

    if-lez v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v9, "1."

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x0

    aget-object v9, v1, v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v3, 0x0

    invoke-virtual {v10, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    array-length v3, v1

    const/4 v9, 0x1

    if-le v3, v9, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v9, "2."

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x1

    aget-object v9, v1, v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v3, 0x0

    invoke-virtual {v11, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    array-length v3, v1

    const/4 v9, 0x2

    if-le v3, v9, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v9, "3."

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x2

    aget-object v9, v1, v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v3, 0x0

    invoke-virtual {v12, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    array-length v3, v1

    const/4 v9, 0x3

    if-le v3, v9, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v9, "4."

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x3

    aget-object v9, v1, v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v3, 0x0

    invoke-virtual {v13, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    array-length v3, v1

    const/4 v9, 0x4

    if-le v3, v9, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v9, "5."

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x4

    aget-object v1, v1, v9

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    invoke-virtual {v14, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4
    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v7, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v4, v7}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/unipay/dialog/HelpDialog;->setContentView(Landroid/view/View;)V

    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/unipay/dialog/HelpDialog;->setCanceledOnTouchOutside(Z)V

    iget v1, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v1, v1

    const-wide v3, 0x3fe999999999999aL

    mul-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, v5, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v1, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v1, v1

    const-wide v3, 0x3feccccccccccccdL

    mul-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, v5, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual/range {p0 .. p0}, Lcom/unipay/dialog/HelpDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void

    :cond_5
    iget v1, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v1, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v1, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    goto/16 :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    :cond_6
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v9, -0x1

    iget v10, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/lit8 v10, v10, 0x7

    div-int/lit8 v10, v10, 0x6e

    invoke-direct {v1, v9, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v1, 0x4120

    invoke-static {v8, v1}, Lcom/unipay/tools/PhoneInfoTools;->toCornerTop(Landroid/view/View;F)V

    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/lit8 v1, v1, 0x6

    div-int/lit8 v1, v1, 0x6e

    iget v10, v6, Landroid/util/DisplayMetrics;->heightPixels:I

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

    iget v11, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/lit8 v11, v11, 0x6

    div-int/lit8 v11, v11, 0x6e

    iget v12, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/lit8 v12, v12, 0x6

    div-int/lit8 v12, v12, 0x6e

    invoke-direct {v10, v11, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v11, 0x9

    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v11, 0xf

    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iput v3, v10, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    new-instance v11, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/unipay/dialog/HelpDialog;->_$2:Landroid/content/Context;

    invoke-direct {v11, v12}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v1, Landroid/widget/TableRow;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/unipay/dialog/HelpDialog;->_$2:Landroid/content/Context;

    invoke-direct {v1, v12}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    new-instance v12, Landroid/view/ViewGroup$LayoutParams;

    const/4 v13, -0x2

    const/4 v14, -0x1

    invoke-direct {v12, v13, v14}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v12}, Landroid/widget/TableRow;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v12, 0x11

    invoke-virtual {v1, v12}, Landroid/widget/TableRow;->setGravity(I)V

    const/4 v12, 0x0

    invoke-virtual {v1, v12}, Landroid/widget/TableRow;->setOrientation(I)V

    const/high16 v12, 0x4000

    invoke-virtual {v1, v12}, Landroid/widget/TableRow;->setWeightSum(F)V

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v1, v12, v2, v13, v2}, Landroid/widget/TableRow;->setPadding(IIII)V

    new-instance v12, Landroid/widget/TableRow$LayoutParams;

    const/4 v13, -0x2

    const/4 v14, -0x1

    invoke-direct {v12, v13, v14}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    const/high16 v13, 0x3f80

    iput v13, v12, Landroid/widget/TableRow$LayoutParams;->weight:F

    new-instance v13, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/unipay/dialog/HelpDialog;->_$2:Landroid/content/Context;

    invoke-direct {v13, v14}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v13, v12}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v14, "chinaunicom.png"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/unipay/dialog/HelpDialog;->getBitMapDrawable(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v13, v14, v15, v2, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    new-instance v2, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/unipay/dialog/HelpDialog;->_$2:Landroid/content/Context;

    invoke-direct {v2, v14}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v12}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v12, "wostore_logo.png"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/unipay/dialog/HelpDialog;->getBitMapDrawable(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v12

    invoke-virtual {v2, v12}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 v12, 0x1

    invoke-virtual {v2, v12}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    invoke-virtual {v1, v13}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/unipay/dialog/HelpDialog;->_$2:Landroid/content/Context;

    invoke-direct {v2, v12}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v12, "\u5e2e\u52a9"

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v12, -0x100

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v12, Landroid/view/ViewGroup$LayoutParams;

    const/4 v13, -0x2

    const/4 v14, -0x1

    invoke-direct {v12, v13, v14}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v12, 0x10

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v2, v3, v12, v13, v14}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v11, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/unipay/dialog/HelpDialog;->_$2:Landroid/content/Context;

    invoke-direct {v2, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/unipay/dialog/HelpDialog;->_$2:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v12, "unicom_base/close.png"

    invoke-virtual {v1, v12}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    const-string v12, "close.png"

    invoke-static {v1, v12}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_4
    invoke-virtual {v2, v9}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v4, v4, v4, v4}, Landroid/widget/Button;->setPadding(IIII)V

    new-instance v1, Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/HelpDialog;->_$2:Landroid/content/Context;

    invoke-direct {v1, v4}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v10}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/HelpDialog;->_$2:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v9, "unicom_extend/back.png"

    invoke-virtual {v4, v9}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    const-string v9, "back.png"

    invoke-static {v4, v9}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :goto_5
    invoke-virtual {v8, v11}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v4, Lcom/unipay/dialog/lIlIIIlllIllIlll;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v2}, Lcom/unipay/dialog/lIlIIIlllIllIlll;-><init>(Lcom/unipay/dialog/HelpDialog;Landroid/widget/Button;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v2, Lcom/unipay/dialog/IllIIIlllIllIlll;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v1}, Lcom/unipay/dialog/IllIIIlllIllIlll;-><init>(Lcom/unipay/dialog/HelpDialog;Landroid/widget/Button;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/16 :goto_3

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catch_3
    move-exception v4

    goto :goto_5
.end method


# virtual methods
.method public getBitMapDrawable(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/unipay/dialog/HelpDialog;->_$2:Landroid/content/Context;

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
    invoke-virtual {p0, v2}, Lcom/unipay/dialog/HelpDialog;->readInputStream(Ljava/io/InputStream;)[B

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
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/unipay/dialog/HelpDialog;->dismiss()V

    :cond_0
    const/4 v0, 0x1

    return v0
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
