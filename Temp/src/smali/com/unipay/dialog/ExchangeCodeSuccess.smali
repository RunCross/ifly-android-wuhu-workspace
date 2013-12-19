.class public Lcom/unipay/dialog/ExchangeCodeSuccess;
.super Landroid/app/Dialog;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unipay/dialog/ExchangeCodeSuccess$ExchangeCodeSuccessListener;
    }
.end annotation


# static fields
.field public static final CANCEL:I = 0x2

.field public static final ENSURE:I = 0x1

.field public static final EXCHANGECODE:I = 0x6

.field public static final OTHERPAY:I = 0x5


# instance fields
.field private _$1:Lcom/unipay/dialog/ExchangeCodeSuccess$ExchangeCodeSuccessListener;

.field private _$2:Lcom/unipay/tools/DensityUtil;

.field public myContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/unipay/dialog/ExchangeCodeSuccess$ExchangeCodeSuccessListener;)V
    .locals 2

    const v0, 0x103000b

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/unipay/dialog/ExchangeCodeSuccess;->myContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/unipay/dialog/ExchangeCodeSuccess;->_$1:Lcom/unipay/dialog/ExchangeCodeSuccess$ExchangeCodeSuccessListener;

    new-instance v0, Lcom/unipay/tools/DensityUtil;

    iget-object v1, p0, Lcom/unipay/dialog/ExchangeCodeSuccess;->myContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/unipay/tools/DensityUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unipay/dialog/ExchangeCodeSuccess;->_$2:Lcom/unipay/tools/DensityUtil;

    const-string v0, ""

    invoke-direct {p0, v0, p3, p2}, Lcom/unipay/dialog/ExchangeCodeSuccess;->_$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic _$1(Lcom/unipay/dialog/ExchangeCodeSuccess;)Lcom/unipay/dialog/ExchangeCodeSuccess$ExchangeCodeSuccessListener;
    .locals 1

    iget-object v0, p0, Lcom/unipay/dialog/ExchangeCodeSuccess;->_$1:Lcom/unipay/dialog/ExchangeCodeSuccess$ExchangeCodeSuccessListener;

    return-object v0
.end method

.method private _$1(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v0, p3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private _$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 27

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/unipay/dialog/ExchangeCodeSuccess;->requestWindowFeature(I)Z

    const/high16 v5, 0x3f80

    invoke-static {v5}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    move-result v6

    const/high16 v5, 0x4000

    invoke-static {v5}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    const/high16 v5, 0x4040

    invoke-static {v5}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    move-result v7

    const/high16 v5, 0x40a0

    invoke-static {v5}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    move-result v8

    const/high16 v5, 0x41a0

    invoke-static {v5}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    const/high16 v5, 0x41f0

    invoke-static {v5}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    move-result v9

    const/high16 v5, 0x4220

    invoke-static {v5}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    const/high16 v5, 0x4120

    invoke-static {v5}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    move-result v10

    const/high16 v5, 0x4248

    invoke-static {v5}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    move-result v11

    const/high16 v5, 0x428c

    invoke-static {v5}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    const/high16 v5, 0x428c

    invoke-static {v5}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    const/high16 v5, 0x42dc

    invoke-static {v5}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    const/high16 v5, 0x4316

    invoke-static {v5}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    const/high16 v5, 0x4348

    invoke-static {v5}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    invoke-virtual/range {p0 .. p0}, Lcom/unipay/dialog/ExchangeCodeSuccess;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v12

    new-instance v13, Landroid/util/DisplayMetrics;

    invoke-direct {v13}, Landroid/util/DisplayMetrics;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/unipay/dialog/ExchangeCodeSuccess;->myContext:Landroid/content/Context;

    check-cast v5, Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v13}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v5, v13, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v14, v5

    const-wide v16, 0x3fe999999999999aL

    mul-double v14, v14, v16

    double-to-int v14, v14

    iget v15, v13, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v5, v15, 0x5

    div-int/lit8 v16, v5, 0x28

    mul-int/lit8 v5, v15, 0x3

    div-int/lit8 v5, v5, 0x28

    mul-int/lit8 v17, v15, 0x2

    div-int/lit8 v17, v17, 0x14

    mul-int/lit8 v18, v15, 0x5

    div-int/lit8 v18, v18, 0x14

    mul-int/lit8 v19, v15, 0x5

    div-int/lit8 v19, v19, 0x1e

    mul-int/lit8 v20, v15, 0x2

    div-int/lit8 v20, v20, 0x19

    const-string v21, "xyf"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "dm.widthPixels ="

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v13, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ";dm.heightPixels = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget v13, v13, Landroid/util/DisplayMetrics;->heightPixels:I

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, v21

    invoke-static {v0, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v13, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "dipwith = "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/unipay/dialog/ExchangeCodeSuccess;->getWindow()Landroid/view/Window;

    move-result-object v13

    const v21, 0x3dcccccd

    const/16 v22, 0x0

    const/16 v23, 0xff

    const/16 v24, 0xff

    const/16 v25, 0xff

    invoke-static/range {v22 .. v25}, Landroid/graphics/Color;->argb(IIII)I

    move-result v22

    invoke-static/range {v21 .. v22}, Lcom/unipay/tools/PhoneInfoTools;->GetCorner(FI)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v13, Landroid/widget/ScrollView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/ExchangeCodeSuccess;->myContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-direct {v13, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    new-instance v21, Landroid/view/ViewGroup$LayoutParams;

    move-object/from16 v0, v21

    invoke-direct {v0, v14, v15}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v13, v0, v5, v1, v2}, Landroid/widget/ScrollView;->setPadding(IIII)V

    new-instance v21, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/unipay/dialog/ExchangeCodeSuccess;->myContext:Landroid/content/Context;

    move-object/from16 v0, v21

    invoke-direct {v0, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    const/16 v22, -0x1

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-direct {v5, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v5, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v5, 0x4120

    const/16 v22, 0xf0

    const/16 v23, 0xf0

    const/16 v24, 0xf0

    invoke-static/range {v22 .. v24}, Landroid/graphics/Color;->rgb(III)I

    move-result v22

    move/from16 v0, v22

    invoke-static {v5, v0}, Lcom/unipay/tools/PhoneInfoTools;->GetCorner(FI)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v22, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/unipay/dialog/ExchangeCodeSuccess;->myContext:Landroid/content/Context;

    move-object/from16 v0, v22

    invoke-direct {v0, v5}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    const/16 v23, -0x1

    move/from16 v0, v23

    move/from16 v1, v17

    invoke-direct {v5, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v5, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v5, v7, v8, v7}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    const/high16 v5, 0x4120

    move-object/from16 v0, v22

    invoke-static {v0, v5}, Lcom/unipay/tools/PhoneInfoTools;->toCornerTop(Landroid/view/View;F)V

    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v7, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0xb

    invoke-virtual {v7, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v5, 0xf

    invoke-virtual {v7, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v8, -0x2

    const/16 v17, -0x2

    move/from16 v0, v17

    invoke-direct {v5, v8, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v8, 0xd

    invoke-virtual {v5, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v8, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/ExchangeCodeSuccess;->myContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v17, "\u4e2d\u56fd\u8054\u901a\u6c83\u5546\u5e97\u7edf\u4e00\u652f\u4ed8"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v17, -0x1

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v17, Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/unipay/dialog/ExchangeCodeSuccess;->myContext:Landroid/content/Context;

    move-object/from16 v0, v17

    invoke-direct {v0, v5}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/unipay/dialog/ExchangeCodeSuccess;->myContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    const-string v23, "unicom_base/close.png"

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    const-string v23, "close.png"

    move-object/from16 v0, v23

    invoke-static {v5, v0}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v7, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/unipay/dialog/ExchangeCodeSuccess;->myContext:Landroid/content/Context;

    invoke-direct {v7, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    const/4 v8, -0x1

    const/16 v23, -0x2

    move/from16 v0, v23

    invoke-direct {v5, v8, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v5, 0x0

    invoke-virtual {v7, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v5, 0x1

    invoke-virtual {v7, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/16 v5, 0xff

    const/16 v8, 0xf0

    const/16 v23, 0xf0

    move/from16 v0, v23

    invoke-static {v5, v8, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    invoke-virtual {v7, v5}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    const/4 v5, 0x0

    const/4 v8, 0x0

    move/from16 v0, v16

    move/from16 v1, v16

    invoke-virtual {v7, v5, v0, v8, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v5, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/unipay/dialog/ExchangeCodeSuccess;->myContext:Landroid/content/Context;

    invoke-direct {v5, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    const/16 v23, -0x2

    const/16 v24, -0x2

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-direct {v8, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v8, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/ExchangeCodeSuccess;->myContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-direct {v8, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v23, Landroid/view/ViewGroup$LayoutParams;

    const/16 v24, -0x2

    mul-int/lit8 v25, v15, 0x8

    div-int/lit8 v25, v25, 0x28

    invoke-direct/range {v23 .. v25}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/ExchangeCodeSuccess;->_$2:Lcom/unipay/tools/DensityUtil;

    move-object/from16 v23, v0

    const-string v24, "chinaunicom.png"

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/unipay/tools/DensityUtil;->getBitMapDrawable(Landroid/app/Dialog;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v8, Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/ExchangeCodeSuccess;->myContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-direct {v8, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v23, Landroid/view/ViewGroup$LayoutParams;

    const/16 v24, -0x1

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-direct {v0, v6, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v23, 0xff

    const/16 v24, 0xf0

    const/16 v25, 0xf0

    invoke-static/range {v23 .. v25}, Landroid/graphics/Color;->rgb(III)I

    move-result v23

    move/from16 v0, v23

    invoke-virtual {v8, v0}, Landroid/view/View;->setBackgroundColor(I)V

    const/16 v23, 0x0

    const/16 v24, 0x0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v8, v9, v0, v9, v1}, Landroid/view/View;->setPadding(IIII)V

    new-instance v9, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/ExchangeCodeSuccess;->myContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-direct {v9, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v23, Landroid/view/ViewGroup$LayoutParams;

    const/16 v24, -0x2

    const/16 v25, -0x2

    invoke-direct/range {v23 .. v25}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v9, v10, v0, v1, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v10, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/ExchangeCodeSuccess;->myContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-direct {v10, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v23, Landroid/view/ViewGroup$LayoutParams;

    const/16 v24, -0x2

    mul-int/lit8 v25, v15, 0x8

    div-int/lit8 v25, v25, 0x28

    invoke-direct/range {v23 .. v25}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/ExchangeCodeSuccess;->_$2:Lcom/unipay/tools/DensityUtil;

    move-object/from16 v23, v0

    const-string v24, "wostore_logo.png"

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/unipay/tools/DensityUtil;->getBitMapDrawable(Landroid/app/Dialog;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v7, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v8, Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/unipay/dialog/ExchangeCodeSuccess;->myContext:Landroid/content/Context;

    invoke-direct {v8, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    const/4 v9, -0x1

    invoke-direct {v5, v9, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v5, 0x74

    const/16 v9, 0x74

    const/16 v10, 0x74

    invoke-static {v5, v9, v10}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    invoke-virtual {v8, v5}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v9, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/unipay/dialog/ExchangeCodeSuccess;->myContext:Landroid/content/Context;

    invoke-direct {v9, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    const/4 v10, -0x1

    move/from16 v0, v18

    invoke-direct {v5, v10, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v5, 0x0

    invoke-virtual {v9, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v5, 0x1

    invoke-virtual {v9, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 v5, 0x0

    const/4 v10, 0x0

    move/from16 v0, v20

    move/from16 v1, v20

    invoke-virtual {v9, v5, v0, v10, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v5, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/unipay/dialog/ExchangeCodeSuccess;->myContext:Landroid/content/Context;

    invoke-direct {v5, v10}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v10, Landroid/view/ViewGroup$LayoutParams;

    const/16 v18, -0x2

    move/from16 v0, v18

    invoke-direct {v10, v0, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v10, 0x5

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v10, -0x100

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v10, 0x41c0

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v9, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v10, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/unipay/dialog/ExchangeCodeSuccess;->myContext:Landroid/content/Context;

    invoke-direct {v10, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    const/16 v18, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v5, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v10, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v5, 0x0

    invoke-virtual {v10, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v5, 0x11

    invoke-virtual {v10, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v18, Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/unipay/dialog/ExchangeCodeSuccess;->myContext:Landroid/content/Context;

    move-object/from16 v0, v18

    invoke-direct {v0, v5}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    mul-int/lit8 v19, v14, 0x4

    div-int/lit8 v19, v19, 0xd

    move/from16 v0, v19

    invoke-direct {v5, v0, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v5, "\u8fd4\u56de\u6e38\u620f"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v5, -0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setTextColor(I)V

    :try_start_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/unipay/dialog/ExchangeCodeSuccess;->myContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    const-string v11, "unicom_base/exchanageCode.png"

    invoke-virtual {v5, v11}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    const-string v11, "exchanageCode.png"

    invoke-static {v5, v11}, Landroid/graphics/drawable/BitmapDrawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v5, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/unipay/dialog/ExchangeCodeSuccess;->myContext:Landroid/content/Context;

    invoke-direct {v5, v11}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v11, Landroid/view/ViewGroup$LayoutParams;

    const/16 v19, -0x1

    const/16 v20, -0x2

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v11, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v11}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v11, 0x1

    invoke-virtual {v5, v11}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 v11, 0x1

    invoke-virtual {v5, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v11, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v16

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v5, v11, v0, v1, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v11, Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/ExchangeCodeSuccess;->myContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-direct {v11, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v19, Landroid/view/ViewGroup$LayoutParams;

    int-to-double v0, v14

    move-wide/from16 v23, v0

    const-wide v25, 0x3fe999999999999aL

    mul-double v23, v23, v25

    move-wide/from16 v0, v23

    double-to-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v0, v1, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v6, 0x96

    const/16 v19, 0x96

    const/16 v20, 0x96

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v6, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    invoke-virtual {v11, v6}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {v5, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v6, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/unipay/dialog/ExchangeCodeSuccess;->myContext:Landroid/content/Context;

    invoke-direct {v6, v11}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v11, Landroid/view/ViewGroup$LayoutParams;

    const/16 v19, -0x1

    const/16 v20, -0x2

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v11, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v11}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v11, 0x1

    invoke-virtual {v6, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v11, 0x0

    const/16 v19, 0x0

    move/from16 v0, v16

    move/from16 v1, v19

    move/from16 v2, v16

    invoke-virtual {v6, v11, v0, v1, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v11, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/ExchangeCodeSuccess;->myContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v11, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v16, Landroid/view/ViewGroup$LayoutParams;

    const/16 v19, -0x1

    const/16 v20, -0x2

    move-object/from16 v0, v16

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v16, 0x11

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setGravity(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/ExchangeCodeSuccess;->myContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const-string v19, "vacmsg"

    const-string v20, "i"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/unipay/dialog/ExchangeCodeSuccess;->_$1(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/ExchangeCodeSuccess;->myContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v20, "vacmsg"

    const-string v23, "p"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/unipay/dialog/ExchangeCodeSuccess;->_$1(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v20, ""

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_1

    invoke-static {}, Lcom/unipay/tools/MultimodeConfig;->getAuthKeyStr()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/unipay/crypt/CryptUtil;->decryptBy3DesAndBase64(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/ExchangeCodeSuccess;->myContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/unipay/tools/PhoneInfoTools;->getIMSI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    const-string v16, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_0

    const-string v16, "\u611f\u8c22\u652f\u6301\u6b63\u7248\u5e94\u7528\uff0c\u8f7b\u677e\u70b9\u51fb\u83b7\u5f97\u66f4\u591a\u4e50\u8da3\uff01"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    const/16 v16, 0x64

    const/16 v19, 0x64

    const/16 v20, 0x64

    move/from16 v0, v16

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v16, 0x4120

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setTextSize(F)V

    new-instance v16, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/ExchangeCodeSuccess;->myContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v19, Landroid/view/ViewGroup$LayoutParams;

    const/16 v20, -0x1

    const/16 v23, -0x2

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v19, 0x11

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v19, Landroid/text/SpannableString;

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v23, "\u5ba2\u670d\u7535\u8bdd:"

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v20, Landroid/text/style/ForegroundColorSpan;

    const/16 v23, 0x64

    const/16 v24, 0x64

    const/16 v25, 0x64

    invoke-static/range {v23 .. v25}, Landroid/graphics/Color;->rgb(III)I

    move-result v23

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v23, 0x0

    const/16 v24, 0x5

    const/16 v25, 0x21

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v20, Landroid/text/style/ForegroundColorSpan;

    const/16 v23, 0xe

    const/16 v24, 0x24

    const/16 v25, 0xf1

    invoke-static/range {v23 .. v25}, Landroid/graphics/Color;->rgb(III)I

    move-result v23

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v23, 0x5

    invoke-virtual/range {v19 .. v19}, Landroid/text/SpannableString;->length()I

    move-result v24

    const/16 v25, 0x21

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v19, 0x4120

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v6, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual/range {v21 .. v22}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    new-instance v5, Lcom/unipay/dialog/IlIIllllIIlIIIll;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v5, v0, v1}, Lcom/unipay/dialog/IlIIllllIIlIIIll;-><init>(Lcom/unipay/dialog/ExchangeCodeSuccess;Landroid/widget/Button;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v5, Lcom/unipay/dialog/lIlIllllIIlIIIll;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v5, v0, v1}, Lcom/unipay/dialog/lIlIllllIIlIIIll;-><init>(Lcom/unipay/dialog/ExchangeCodeSuccess;Landroid/widget/Button;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/unipay/dialog/ExchangeCodeSuccess;->setContentView(Landroid/view/View;)V

    iput v14, v12, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v15, v12, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual/range {p0 .. p0}, Lcom/unipay/dialog/ExchangeCodeSuccess;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v12}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/unipay/dialog/ExchangeCodeSuccess;->setCanceledOnTouchOutside(Z)V

    return-void

    :catch_0
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    :catch_1
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    :cond_0
    const-string v16, "\u611f\u8c22\u652f\u6301\u6b63\u7248\u5e94\u7528(\u9996\u6b21\u4f7f\u7528\u97000.1\u5143\u77ed\u4fe1\u8d39)"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_1
    const-string v16, "\u611f\u8c22\u652f\u6301\u6b63\u7248\u5e94\u7528(\u9996\u6b21\u4f7f\u7528\u97000.1\u5143\u77ed\u4fe1\u8d39)"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method


# virtual methods
.method public getScreenWidth(Landroid/app/Activity;)I
    .locals 2

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unipay/dialog/ExchangeCodeSuccess;->_$1:Lcom/unipay/dialog/ExchangeCodeSuccess$ExchangeCodeSuccessListener;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/unipay/dialog/ExchangeCodeSuccess$ExchangeCodeSuccessListener;->OneSure(I)V

    invoke-virtual {p0}, Lcom/unipay/dialog/ExchangeCodeSuccess;->dismiss()V

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
