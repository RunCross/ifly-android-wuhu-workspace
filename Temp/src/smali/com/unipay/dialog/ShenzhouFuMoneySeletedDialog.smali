.class public Lcom/unipay/dialog/ShenzhouFuMoneySeletedDialog;
.super Landroid/app/Dialog;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unipay/dialog/ShenzhouFuMoneySeletedDialog$MoneySeletedDialog;
    }
.end annotation


# static fields
.field public static final BACK:I = 0x2

.field public static final CANCEL:I = 0x1

.field public static final COMMIT:I = 0x3


# instance fields
.field private _$1:Lcom/unipay/dialog/ShenzhouFuMoneySeletedDialog$MoneySeletedDialog;

.field private _$2:Lcom/unipay/tools/DensityUtil;

.field private _$3:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/unipay/dialog/ShenzhouFuMoneySeletedDialog$MoneySeletedDialog;)V
    .locals 1

    const v0, 0x103000e

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/unipay/dialog/ShenzhouFuMoneySeletedDialog;->setOwnerActivity(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/unipay/dialog/ShenzhouFuMoneySeletedDialog;->_$3:Landroid/content/Context;

    iput-object p2, p0, Lcom/unipay/dialog/ShenzhouFuMoneySeletedDialog;->_$1:Lcom/unipay/dialog/ShenzhouFuMoneySeletedDialog$MoneySeletedDialog;

    new-instance v0, Lcom/unipay/tools/DensityUtil;

    invoke-direct {v0, p1}, Lcom/unipay/tools/DensityUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unipay/dialog/ShenzhouFuMoneySeletedDialog;->_$2:Lcom/unipay/tools/DensityUtil;

    invoke-direct {p0}, Lcom/unipay/dialog/ShenzhouFuMoneySeletedDialog;->_$1()V

    return-void
.end method

.method static synthetic _$1(Lcom/unipay/dialog/ShenzhouFuMoneySeletedDialog;)Lcom/unipay/dialog/ShenzhouFuMoneySeletedDialog$MoneySeletedDialog;
    .locals 1

    iget-object v0, p0, Lcom/unipay/dialog/ShenzhouFuMoneySeletedDialog;->_$1:Lcom/unipay/dialog/ShenzhouFuMoneySeletedDialog$MoneySeletedDialog;

    return-object v0
.end method

.method private _$1()V
    .locals 27

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/unipay/dialog/ShenzhouFuMoneySeletedDialog;->requestWindowFeature(I)Z

    const/high16 v4, 0x3f80

    invoke-static {v4}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    const/high16 v4, 0x4000

    invoke-static {v4}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    const/high16 v4, 0x4040

    invoke-static {v4}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    move-result v10

    const/high16 v4, 0x40a0

    invoke-static {v4}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    move-result v11

    const/high16 v4, 0x41a0

    invoke-static {v4}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    const/high16 v4, 0x41f0

    invoke-static {v4}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    const/high16 v4, 0x4220

    invoke-static {v4}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    move-result v12

    const/high16 v4, 0x4234

    invoke-static {v4}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    const/high16 v4, 0x4248

    invoke-static {v4}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    const/high16 v4, 0x4120

    invoke-static {v4}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    move-result v13

    const/high16 v4, 0x4248

    invoke-static {v4}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    const/high16 v4, 0x428c

    invoke-static {v4}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    const/high16 v4, 0x428c

    invoke-static {v4}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    const/high16 v4, 0x42dc

    invoke-static {v4}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    const/high16 v4, 0x4316

    invoke-static {v4}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    const/high16 v4, 0x4348

    invoke-static {v4}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    invoke-virtual/range {p0 .. p0}, Lcom/unipay/dialog/ShenzhouFuMoneySeletedDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    new-instance v14, Landroid/util/DisplayMetrics;

    invoke-direct {v14}, Landroid/util/DisplayMetrics;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/ShenzhouFuMoneySeletedDialog;->_$3:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v14}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v4, v14, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, v14, Landroid/util/DisplayMetrics;->heightPixels:I

    const/high16 v5, 0x4000

    invoke-static {v5}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    const/high16 v5, 0x40a0

    invoke-static {v5}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    const/high16 v5, 0x4100

    invoke-static {v5}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    const-string v5, "xyf"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "dm.widthPixels ="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, v14, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";dm.heightPixels = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v14, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "dipwith = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget v4, v14, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v4, v14, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v14, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v4, v14, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v14, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v14, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v14, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/lit8 v4, v4, 0x5

    div-int/lit8 v5, v4, 0x58

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/ShenzhouFuMoneySeletedDialog;->_$3:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v4

    if-nez v4, :cond_0

    iget v4, v14, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/lit8 v4, v4, 0x32

    div-int/lit8 v8, v4, 0x58

    iget v4, v14, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v4, v4, 0x16

    div-int/lit8 v7, v4, 0x21

    iget v4, v14, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/lit8 v4, v4, 0xc

    div-int/lit8 v6, v4, 0x58

    iget v4, v14, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v14, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v14, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v4, v4, 0x1e

    div-int/lit8 v4, v4, 0x78

    move v9, v8

    move v8, v7

    move v7, v6

    move v6, v4

    :goto_0
    new-instance v15, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/ShenzhouFuMoneySeletedDialog;->_$3:Landroid/content/Context;

    invoke-direct {v15, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/16 v16, -0x1

    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v4, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v15, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v4, 0x1

    invoke-virtual {v15, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v16, Landroid/widget/ScrollView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/ShenzhouFuMoneySeletedDialog;->_$3:Landroid/content/Context;

    move-object/from16 v0, v16

    invoke-direct {v0, v4}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/16 v17, -0x1

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v4, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v17, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/ShenzhouFuMoneySeletedDialog;->_$3:Landroid/content/Context;

    move-object/from16 v0, v17

    invoke-direct {v0, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/16 v18, -0x1

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v4, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v4, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v4, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v18, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/ShenzhouFuMoneySeletedDialog;->_$3:Landroid/content/Context;

    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/ShenzhouFuMoneySeletedDialog;->_$3:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/16 v19, -0x1

    iget v0, v14, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v20, v0

    mul-int/lit8 v20, v20, 0x7

    div-int/lit8 v20, v20, 0x42

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v4, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static/range {v18 .. v18}, Lcom/unipay/tools/PhoneInfoTools;->FullScreenCornerTop(Landroid/view/View;)V

    new-instance v19, Landroid/widget/RelativeLayout$LayoutParams;

    iget v4, v14, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/lit8 v4, v4, 0x6

    div-int/lit8 v4, v4, 0x42

    iget v0, v14, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v20, v0

    mul-int/lit8 v20, v20, 0x6

    div-int/lit8 v20, v20, 0x42

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v0, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xb

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v4, 0xf

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    move-object/from16 v0, v19

    iput v11, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v20, -0x2

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v4, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v20, 0xd

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v20, Landroid/widget/RelativeLayout$LayoutParams;

    iget v0, v14, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v21, v0

    mul-int/lit8 v21, v21, 0x6

    div-int/lit8 v21, v21, 0x42

    iget v0, v14, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v22, v0

    mul-int/lit8 v22, v22, 0x6

    div-int/lit8 v22, v22, 0x42

    invoke-direct/range {v20 .. v22}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v21, 0x9

    invoke-virtual/range {v20 .. v21}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v21, 0xf

    invoke-virtual/range {v20 .. v21}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    move-object/from16 v0, v20

    iput v11, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    new-instance v21, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/ShenzhouFuMoneySeletedDialog;->_$3:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-direct/range {v21 .. v22}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v4, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v4, Landroid/widget/TableRow;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/ShenzhouFuMoneySeletedDialog;->_$3:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-direct {v4, v0}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    new-instance v22, Landroid/view/ViewGroup$LayoutParams;

    const/16 v23, -0x2

    const/16 v24, -0x1

    invoke-direct/range {v22 .. v24}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/widget/TableRow;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v22, 0x11

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/widget/TableRow;->setGravity(I)V

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/widget/TableRow;->setOrientation(I)V

    const/high16 v22, 0x4000

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/widget/TableRow;->setWeightSum(F)V

    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v4, v0, v10, v1, v10}, Landroid/widget/TableRow;->setPadding(IIII)V

    new-instance v22, Landroid/widget/TableRow$LayoutParams;

    const/16 v23, -0x2

    const/16 v24, -0x1

    invoke-direct/range {v22 .. v24}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    const/high16 v23, 0x3f80

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Landroid/widget/TableRow$LayoutParams;->weight:F

    new-instance v23, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/ShenzhouFuMoneySeletedDialog;->_$3:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-direct/range {v23 .. v24}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v24, "chinaunicom.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/unipay/dialog/ShenzhouFuMoneySeletedDialog;->getBitMapDrawable(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v10, v3}, Landroid/widget/ImageView;->setPadding(IIII)V

    new-instance v10, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/ShenzhouFuMoneySeletedDialog;->_$3:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-direct {v10, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v22, "wostore_logo.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/unipay/dialog/ShenzhouFuMoneySeletedDialog;->getBitMapDrawable(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    invoke-virtual {v4, v10}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    new-instance v4, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/unipay/dialog/ShenzhouFuMoneySeletedDialog;->_$3:Landroid/content/Context;

    invoke-direct {v4, v10}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v10, "\u4e2d\u56fd\u8054\u901a\u6c83\u5546\u5e97\u7edf\u4e00\u652f\u4ed8-\u795e\u5dde\u4ed8"

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v10, -0x1

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v10, Landroid/view/ViewGroup$LayoutParams;

    const/16 v22, -0x2

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-direct {v10, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v10, 0x10

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v10, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v4, v11, v10, v0, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v10

    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v10, Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/ShenzhouFuMoneySeletedDialog;->_$3:Landroid/content/Context;

    invoke-direct {v10, v4}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/ShenzhouFuMoneySeletedDialog;->_$3:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v22, "unicom_base/close.png"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    const-string v22, "close.png"

    move-object/from16 v0, v22

    invoke-static {v4, v0}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v10, v4}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v10, v13, v13, v13, v13}, Landroid/widget/Button;->setPadding(IIII)V

    new-instance v19, Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/ShenzhouFuMoneySeletedDialog;->_$3:Landroid/content/Context;

    move-object/from16 v0, v19

    invoke-direct {v0, v4}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {v19 .. v20}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/ShenzhouFuMoneySeletedDialog;->_$3:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v20, "unicom_extend/back.png"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    const-string v20, "back.png"

    move-object/from16 v0, v20

    invoke-static {v4, v0}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    invoke-virtual/range {v18 .. v19}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v4, Lcom/unipay/dialog/IllIIIIIlIlllllI;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v10}, Lcom/unipay/dialog/IllIIIIIlIlllllI;-><init>(Lcom/unipay/dialog/ShenzhouFuMoneySeletedDialog;Landroid/widget/Button;)V

    invoke-virtual {v10, v4}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v4, Lcom/unipay/dialog/lIIIIIIIlIlllllI;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v4, v0, v1}, Lcom/unipay/dialog/lIIIIIIIlIlllllI;-><init>(Lcom/unipay/dialog/ShenzhouFuMoneySeletedDialog;Landroid/widget/Button;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :goto_3
    new-instance v10, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/ShenzhouFuMoneySeletedDialog;->_$3:Landroid/content/Context;

    invoke-direct {v10, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/16 v19, -0x1

    const/16 v20, -0x2

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v4, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v10, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v10, v11, v13, v11, v13}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/4 v4, 0x1

    invoke-virtual {v10, v4}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    const/4 v4, 0x1

    invoke-virtual {v10, v4}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    new-instance v19, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/ShenzhouFuMoneySeletedDialog;->_$3:Landroid/content/Context;

    move-object/from16 v0, v19

    invoke-direct {v0, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/16 v20, -0x1

    move/from16 v0, v20

    invoke-direct {v4, v0, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v4, 0x4120

    const/16 v9, 0xff

    const/16 v20, 0xf0

    const/16 v21, 0xf0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v9, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v9

    invoke-static {v4, v9}, Lcom/unipay/tools/PhoneInfoTools;->GetCorner(FI)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v4, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v9, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/ShenzhouFuMoneySeletedDialog;->_$3:Landroid/content/Context;

    invoke-direct {v9, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v4, "\u8bf7\u9009\u62e9\u5145\u503c\u5361\u9762\u989d:"

    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v4, 0x0

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v9, v11, v11, v4, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/16 v20, -0x1

    const/16 v21, -0x2

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v4, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v20, Landroid/widget/TableRow;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/ShenzhouFuMoneySeletedDialog;->_$3:Landroid/content/Context;

    move-object/from16 v0, v20

    invoke-direct {v0, v4}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/16 v21, -0x2

    move/from16 v0, v21

    invoke-direct {v4, v8, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/widget/TableRow;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v4, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v4, v13, v1, v2}, Landroid/widget/TableRow;->setPadding(IIII)V

    new-instance v21, Landroid/widget/TableRow$LayoutParams;

    invoke-direct/range {v21 .. v21}, Landroid/widget/TableRow$LayoutParams;-><init>()V

    const/4 v4, -0x2

    move-object/from16 v0, v21

    iput v4, v0, Landroid/widget/TableRow$LayoutParams;->width:I

    move-object/from16 v0, v21

    iput v12, v0, Landroid/widget/TableRow$LayoutParams;->height:I

    const/high16 v4, 0x3f80

    move-object/from16 v0, v21

    iput v4, v0, Landroid/widget/TableRow$LayoutParams;->weight:F

    move-object/from16 v0, v21

    iput v11, v0, Landroid/widget/TableRow$LayoutParams;->leftMargin:I

    new-instance v12, Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/ShenzhouFuMoneySeletedDialog;->_$3:Landroid/content/Context;

    invoke-direct {v12, v4}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v4, "30\u5143"

    invoke-virtual {v12, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/ShenzhouFuMoneySeletedDialog;->_$3:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v22, "unicom_extend/bt_info.png"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    const-string v22, "bt_info.png"

    move-object/from16 v0, v22

    invoke-static {v4, v0}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v12, v4}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :goto_4
    new-instance v22, Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/ShenzhouFuMoneySeletedDialog;->_$3:Landroid/content/Context;

    move-object/from16 v0, v22

    invoke-direct {v0, v4}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v4, "50\u5143"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/ShenzhouFuMoneySeletedDialog;->_$3:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v23, "unicom_extend/bt_info.png"

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    const-string v23, "bt_info.png"

    move-object/from16 v0, v23

    invoke-static {v4, v0}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    :goto_5
    new-instance v23, Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/ShenzhouFuMoneySeletedDialog;->_$3:Landroid/content/Context;

    move-object/from16 v0, v23

    invoke-direct {v0, v4}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v4, "100\u5143"

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :try_start_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/ShenzhouFuMoneySeletedDialog;->_$3:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v21, "unicom_extend/bt_info.png"

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    const-string v21, "bt_info.png"

    move-object/from16 v0, v21

    invoke-static {v4, v0}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    :goto_6
    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    new-instance v4, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/ShenzhouFuMoneySeletedDialog;->_$3:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-direct {v4, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v21, Landroid/view/ViewGroup$LayoutParams;

    const/16 v24, -0x2

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-direct {v0, v8, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v8, 0x0

    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v4, v13, v13, v8, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v8, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/unipay/dialog/ShenzhouFuMoneySeletedDialog;->_$3:Landroid/content/Context;

    invoke-direct {v8, v13}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v13, Landroid/view/ViewGroup$LayoutParams;

    const/16 v21, -0x2

    const/16 v24, -0x2

    move/from16 v0, v21

    move/from16 v1, v24

    invoke-direct {v13, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v13}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v13, 0x0

    invoke-virtual {v8, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v13, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/ShenzhouFuMoneySeletedDialog;->_$3:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-direct {v13, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const-string v21, "\u8bf7\u8f93\u5165\u91d1\u989d"

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    new-instance v21, Landroid/view/ViewGroup$LayoutParams;

    const/16 v24, -0x2

    const/16 v25, -0x2

    move-object/from16 v0, v21

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v13, v6}, Landroid/widget/EditText;->setMaxWidth(I)V

    invoke-virtual {v13}, Landroid/widget/EditText;->setSingleLine()V

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v13, v6}, Landroid/widget/EditText;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/4 v6, 0x1

    invoke-virtual {v13, v6}, Landroid/widget/EditText;->setSingleLine(Z)V

    const/4 v6, 0x2

    invoke-virtual {v13, v6}, Landroid/widget/EditText;->setInputType(I)V

    new-instance v6, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/ShenzhouFuMoneySeletedDialog;->_$3:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-direct {v6, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v21, "\u5143"

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v21, -0x100

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v21, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move/from16 v0, v21

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v6, v11, v0, v1, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance v21, Landroid/view/ViewGroup$LayoutParams;

    const/16 v24, -0x2

    const/16 v25, -0x2

    move-object/from16 v0, v21

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v8, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v8, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v6, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/ShenzhouFuMoneySeletedDialog;->_$3:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-direct {v6, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v21, Landroid/view/ViewGroup$LayoutParams;

    const/16 v24, -0x1

    const/16 v25, -0x1

    move-object/from16 v0, v21

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v21, 0x5

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/16 v21, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move/from16 v0, v21

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v6, v0, v1, v11, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v21, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/ShenzhouFuMoneySeletedDialog;->_$3:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v24, Landroid/view/ViewGroup$LayoutParams;

    const/16 v25, -0x2

    const/16 v26, -0x1

    invoke-direct/range {v24 .. v26}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v24, 0x10

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual/range {v19 .. v20}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v4, Lcom/unipay/dialog/IlIIIIIIlIlllllI;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v4, v0, v13, v1}, Lcom/unipay/dialog/IlIIIIIIlIlllllI;-><init>(Lcom/unipay/dialog/ShenzhouFuMoneySeletedDialog;Landroid/widget/EditText;Landroid/widget/TextView;)V

    invoke-virtual {v13, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    new-instance v4, Lcom/unipay/dialog/lIlllllllIlllllI;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v12, v13}, Lcom/unipay/dialog/lIlllllllIlllllI;-><init>(Lcom/unipay/dialog/ShenzhouFuMoneySeletedDialog;Landroid/widget/Button;Landroid/widget/EditText;)V

    invoke-virtual {v12, v4}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v4, Lcom/unipay/dialog/IIlllllllIlllllI;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v4, v0, v1, v13}, Lcom/unipay/dialog/IIlllllllIlllllI;-><init>(Lcom/unipay/dialog/ShenzhouFuMoneySeletedDialog;Landroid/widget/Button;Landroid/widget/EditText;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v4, Lcom/unipay/dialog/lllllllllIlllllI;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v4, v0, v13, v1}, Lcom/unipay/dialog/lllllllllIlllllI;-><init>(Lcom/unipay/dialog/ShenzhouFuMoneySeletedDialog;Landroid/widget/EditText;Landroid/widget/Button;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v6, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/ShenzhouFuMoneySeletedDialog;->_$3:Landroid/content/Context;

    invoke-direct {v6, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v8, -0x1

    invoke-direct {v4, v8, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v4, 0x1

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v8, Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/ShenzhouFuMoneySeletedDialog;->_$3:Landroid/content/Context;

    invoke-direct {v8, v4}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/ShenzhouFuMoneySeletedDialog;->_$3:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v4

    const/4 v9, 0x1

    if-ne v4, v9, :cond_2

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    iget v9, v14, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v9, v9, 0x3

    invoke-direct {v4, v9, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v4}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_7
    const-string v4, "\u786e\u8ba4\u5145\u503c"

    invoke-virtual {v8, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v4, -0x1

    invoke-virtual {v8, v4}, Landroid/widget/Button;->setTextColor(I)V

    :try_start_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/ShenzhouFuMoneySeletedDialog;->_$3:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v5, "unicom_extend/bt_sure_normal.9.png"

    invoke-virtual {v4, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    const-string v5, "bt_sure_normal.9.png"

    invoke-static {v4, v5}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v8, v4}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    :goto_8
    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v4, Lcom/unipay/dialog/IllllllllIlllllI;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v13, v8}, Lcom/unipay/dialog/IllllllllIlllllI;-><init>(Lcom/unipay/dialog/ShenzhouFuMoneySeletedDialog;Landroid/widget/EditText;Landroid/widget/Button;)V

    invoke-virtual {v8, v4}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v5, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/ShenzhouFuMoneySeletedDialog;->_$3:Landroid/content/Context;

    invoke-direct {v5, v4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v8, -0x1

    invoke-direct {v4, v8, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v4}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/ShenzhouFuMoneySeletedDialog;->_$3:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v4

    const/4 v7, 0x1

    if-ne v4, v7, :cond_3

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    iget v8, v14, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v8, v8, 0xf

    div-int/lit8 v8, v8, 0x42

    iget v9, v14, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/lit8 v9, v9, 0x1b

    div-int/lit8 v9, v9, 0x42

    div-int/lit8 v9, v9, 0x6

    invoke-direct {v7, v8, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-direct {v4, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_9
    iput v11, v4, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    const/16 v7, 0x9

    invoke-virtual {v4, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v7, 0xf

    invoke-virtual {v4, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v8, -0x2

    const/4 v9, -0x2

    invoke-direct {v7, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v8, 0xd

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v9, -0x2

    const/4 v12, -0x2

    invoke-direct {v8, v9, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput v11, v8, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    const/16 v9, 0xb

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v9, 0xf

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v9, Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/unipay/dialog/ShenzhouFuMoneySeletedDialog;->_$3:Landroid/content/Context;

    invoke-direct {v9, v11}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, v4}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v4, "\u5e2e\u52a9"

    invoke-virtual {v9, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :try_start_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/ShenzhouFuMoneySeletedDialog;->_$3:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v11, "unicom_extend/bt_help.9.png"

    invoke-virtual {v4, v11}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    const-string v11, "bt_help.9.png"

    invoke-static {v4, v11}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v9, v4}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    :goto_a
    new-instance v4, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/unipay/dialog/ShenzhouFuMoneySeletedDialog;->_$3:Landroid/content/Context;

    invoke-direct {v4, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v7, "\u60a8\u5c06\u8f6c\u5165\u795e\u5dde\u4ed8\u9875\u9762\u8fdb\u884c\u5145\u503c"

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v7, 0x8

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v4, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/unipay/dialog/ShenzhouFuMoneySeletedDialog;->_$3:Landroid/content/Context;

    invoke-direct {v4, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v7, "\u5ba2\u670d\u7535\u8bdd\uff1a400 600 999"

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual/range {v16 .. v17}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    invoke-virtual/range {v15 .. v16}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/unipay/dialog/ShenzhouFuMoneySeletedDialog;->setContentView(Landroid/view/View;)V

    return-void

    :cond_0
    iget v4, v14, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/lit8 v4, v4, 0x3c

    div-int/lit8 v8, v4, 0x58

    iget v4, v14, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v4, v4, 0x19

    div-int/lit8 v7, v4, 0x21

    iget v4, v14, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/lit8 v4, v4, 0x9

    div-int/lit8 v6, v4, 0x58

    iget v4, v14, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v14, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v14, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v4, v4, 0x28

    div-int/lit8 v5, v4, 0x78

    iget v4, v14, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/lit8 v4, v4, 0x5

    div-int/lit8 v4, v4, 0x58

    move v9, v8

    move v8, v7

    move v7, v6

    move v6, v5

    move v5, v4

    goto/16 :goto_0

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    :catch_1
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    :cond_1
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/16 v19, -0x1

    iget v0, v14, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v20, v0

    mul-int/lit8 v20, v20, 0x7

    div-int/lit8 v20, v20, 0x6e

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v4, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static/range {v18 .. v18}, Lcom/unipay/tools/PhoneInfoTools;->FullScreenCornerTop(Landroid/view/View;)V

    new-instance v19, Landroid/widget/RelativeLayout$LayoutParams;

    iget v4, v14, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/lit8 v4, v4, 0x6

    div-int/lit8 v4, v4, 0x6e

    iget v0, v14, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v20, v0

    mul-int/lit8 v20, v20, 0x6

    div-int/lit8 v20, v20, 0x6e

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v0, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xb

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v4, 0xf

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    move-object/from16 v0, v19

    iput v11, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v20, -0x2

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v4, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v20, 0xd

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v20, Landroid/widget/RelativeLayout$LayoutParams;

    iget v0, v14, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v21, v0

    mul-int/lit8 v21, v21, 0x6

    div-int/lit8 v21, v21, 0x6e

    iget v0, v14, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v22, v0

    mul-int/lit8 v22, v22, 0x6

    div-int/lit8 v22, v22, 0x6e

    invoke-direct/range {v20 .. v22}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v21, 0x9

    invoke-virtual/range {v20 .. v21}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v21, 0xf

    invoke-virtual/range {v20 .. v21}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    move-object/from16 v0, v20

    iput v11, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    new-instance v21, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/ShenzhouFuMoneySeletedDialog;->_$3:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-direct/range {v21 .. v22}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v4, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v4, Landroid/widget/TableRow;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/ShenzhouFuMoneySeletedDialog;->_$3:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-direct {v4, v0}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    new-instance v22, Landroid/view/ViewGroup$LayoutParams;

    const/16 v23, -0x2

    const/16 v24, -0x1

    invoke-direct/range {v22 .. v24}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/widget/TableRow;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v22, 0x11

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/widget/TableRow;->setGravity(I)V

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/widget/TableRow;->setOrientation(I)V

    const/high16 v22, 0x4000

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/widget/TableRow;->setWeightSum(F)V

    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v4, v0, v10, v1, v10}, Landroid/widget/TableRow;->setPadding(IIII)V

    new-instance v22, Landroid/widget/TableRow$LayoutParams;

    const/16 v23, -0x2

    const/16 v24, -0x1

    invoke-direct/range {v22 .. v24}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    const/high16 v23, 0x3f80

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Landroid/widget/TableRow$LayoutParams;->weight:F

    new-instance v23, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/ShenzhouFuMoneySeletedDialog;->_$3:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-direct/range {v23 .. v24}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v24, "chinaunicom.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/unipay/dialog/ShenzhouFuMoneySeletedDialog;->getBitMapDrawable(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v10, v3}, Landroid/widget/ImageView;->setPadding(IIII)V

    new-instance v10, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/ShenzhouFuMoneySeletedDialog;->_$3:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-direct {v10, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v22, "wostore_logo.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/unipay/dialog/ShenzhouFuMoneySeletedDialog;->getBitMapDrawable(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    invoke-virtual {v4, v10}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    new-instance v4, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/unipay/dialog/ShenzhouFuMoneySeletedDialog;->_$3:Landroid/content/Context;

    invoke-direct {v4, v10}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v10, "\u4e2d\u56fd\u8054\u901a\u6c83\u5546\u5e97\u7edf\u4e00\u652f\u4ed8-\u795e\u5dde\u4ed8"

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v10, -0x1

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v10, Landroid/view/ViewGroup$LayoutParams;

    const/16 v22, -0x2

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-direct {v10, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v10, 0x10

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v10, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v4, v11, v10, v0, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v10

    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v10, Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/ShenzhouFuMoneySeletedDialog;->_$3:Landroid/content/Context;

    invoke-direct {v10, v4}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    :try_start_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/ShenzhouFuMoneySeletedDialog;->_$3:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v22, "unicom_base/close.png"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    const-string v22, "close.png"

    move-object/from16 v0, v22

    invoke-static {v4, v0}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v10, v4}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    :goto_b
    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v10, v13, v13, v13, v13}, Landroid/widget/Button;->setPadding(IIII)V

    new-instance v4, Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/ShenzhouFuMoneySeletedDialog;->_$3:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/ShenzhouFuMoneySeletedDialog;->_$3:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v19

    const-string v20, "unicom_extend/back.png"

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v19

    const-string v20, "back.png"

    invoke-static/range {v19 .. v20}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    :goto_c
    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v19, Lcom/unipay/dialog/IIIIIIIIlIlllllI;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v10}, Lcom/unipay/dialog/IIIIIIIIlIlllllI;-><init>(Lcom/unipay/dialog/ShenzhouFuMoneySeletedDialog;Landroid/widget/Button;)V

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v10, Lcom/unipay/dialog/llIIIIIIlIlllllI;

    move-object/from16 v0, p0

    invoke-direct {v10, v0, v4}, Lcom/unipay/dialog/llIIIIIIlIlllllI;-><init>(Lcom/unipay/dialog/ShenzhouFuMoneySeletedDialog;Landroid/widget/Button;)V

    invoke-virtual {v4, v10}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/16 :goto_3

    :catch_2
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    :catch_3
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    :catch_4
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_5

    :catch_5
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_6

    :cond_2
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    iget v5, v14, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v5, v5, 0x3

    const/4 v9, -0x1

    invoke-direct {v4, v5, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v4}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_7

    :catch_6
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_8

    :cond_3
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    iget v8, v14, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v8, v8, 0xa

    div-int/lit8 v8, v8, 0x42

    iget v9, v14, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/lit8 v9, v9, 0x7

    div-int/lit8 v9, v9, 0x2

    div-int/lit8 v9, v9, 0x26

    invoke-direct {v7, v8, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-direct {v4, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_9

    :catch_7
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_a

    :catch_8
    move-exception v19

    goto :goto_c
.end method

.method static synthetic _$2(Lcom/unipay/dialog/ShenzhouFuMoneySeletedDialog;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/unipay/dialog/ShenzhouFuMoneySeletedDialog;->_$3:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getBitMapDrawable(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/unipay/dialog/ShenzhouFuMoneySeletedDialog;->_$3:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "unicom_extend/"

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
    invoke-virtual {p0, v2}, Lcom/unipay/dialog/ShenzhouFuMoneySeletedDialog;->readInputStream(Ljava/io/InputStream;)[B

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
    .locals 3

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unipay/dialog/ShenzhouFuMoneySeletedDialog;->_$1:Lcom/unipay/dialog/ShenzhouFuMoneySeletedDialog$MoneySeletedDialog;

    const/4 v1, 0x2

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/unipay/dialog/ShenzhouFuMoneySeletedDialog$MoneySeletedDialog;->SeletedMoney(ILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/unipay/dialog/ShenzhouFuMoneySeletedDialog;->dismiss()V

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
