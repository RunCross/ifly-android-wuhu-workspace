.class public Lcom/unipay/dialog/ExchangeCodeDialog;
.super Landroid/app/Dialog;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unipay/dialog/ExchangeCodeDialog$ExchangeCodeListener;
    }
.end annotation


# static fields
.field public static final CANCEL:I = 0x2

.field public static final ENSURE:I = 0x1

.field public static final EXCHANGECODE:I = 0x6

.field public static final OTHERPAY:I = 0x5


# instance fields
.field private _$1:Landroid/widget/EditText;

.field private _$2:Lcom/unipay/dialog/ExchangeCodeDialog$ExchangeCodeListener;

.field private _$3:Lcom/unipay/tools/DensityUtil;

.field private _$4:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unipay/dialog/ExchangeCodeDialog$ExchangeCodeListener;)V
    .locals 2

    const v0, 0x103000b

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/unipay/dialog/ExchangeCodeDialog;->_$4:Landroid/content/Context;

    iput-object p5, p0, Lcom/unipay/dialog/ExchangeCodeDialog;->_$2:Lcom/unipay/dialog/ExchangeCodeDialog$ExchangeCodeListener;

    new-instance v0, Lcom/unipay/tools/DensityUtil;

    iget-object v1, p0, Lcom/unipay/dialog/ExchangeCodeDialog;->_$4:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/unipay/tools/DensityUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unipay/dialog/ExchangeCodeDialog;->_$3:Lcom/unipay/tools/DensityUtil;

    invoke-direct {p0, p2, p3, p4}, Lcom/unipay/dialog/ExchangeCodeDialog;->_$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic _$1(Lcom/unipay/dialog/ExchangeCodeDialog;)Lcom/unipay/dialog/ExchangeCodeDialog$ExchangeCodeListener;
    .locals 1

    iget-object v0, p0, Lcom/unipay/dialog/ExchangeCodeDialog;->_$2:Lcom/unipay/dialog/ExchangeCodeDialog$ExchangeCodeListener;

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
    .locals 28

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/unipay/dialog/ExchangeCodeDialog;->requestWindowFeature(I)Z

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

    invoke-virtual/range {p0 .. p0}, Lcom/unipay/dialog/ExchangeCodeDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v12

    new-instance v13, Landroid/util/DisplayMetrics;

    invoke-direct {v13}, Landroid/util/DisplayMetrics;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/unipay/dialog/ExchangeCodeDialog;->_$4:Landroid/content/Context;

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

    mul-int/lit8 v5, v15, 0x1

    div-int/lit8 v17, v5, 0x28

    mul-int/lit8 v5, v15, 0x3

    div-int/lit8 v5, v5, 0x28

    mul-int/lit8 v18, v15, 0x2

    div-int/lit8 v18, v18, 0x14

    mul-int/lit8 v19, v15, 0x5

    div-int/lit8 v19, v19, 0x1e

    const-string v20, "xyf"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "dm.widthPixels ="

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v13, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ";dm.heightPixels = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget v13, v13, Landroid/util/DisplayMetrics;->heightPixels:I

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, v20

    invoke-static {v0, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v13, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "dipwith = "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/unipay/dialog/ExchangeCodeDialog;->getWindow()Landroid/view/Window;

    move-result-object v13

    const v20, 0x3dcccccd

    const/16 v21, 0x0

    const/16 v22, 0xff

    const/16 v23, 0xff

    const/16 v24, 0xff

    invoke-static/range {v21 .. v24}, Landroid/graphics/Color;->argb(IIII)I

    move-result v21

    invoke-static/range {v20 .. v21}, Lcom/unipay/tools/PhoneInfoTools;->GetCorner(FI)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v13, Landroid/widget/ScrollView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/ExchangeCodeDialog;->_$4:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-direct {v13, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    new-instance v20, Landroid/view/ViewGroup$LayoutParams;

    move-object/from16 v0, v20

    invoke-direct {v0, v14, v15}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v13, v0, v5, v1, v2}, Landroid/widget/ScrollView;->setPadding(IIII)V

    new-instance v20, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/unipay/dialog/ExchangeCodeDialog;->_$4:Landroid/content/Context;

    move-object/from16 v0, v20

    invoke-direct {v0, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    const/16 v21, -0x1

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v5, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v5, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v5, 0x4120

    const/16 v21, 0xf0

    const/16 v22, 0xf0

    const/16 v23, 0xf0

    invoke-static/range {v21 .. v23}, Landroid/graphics/Color;->rgb(III)I

    move-result v21

    move/from16 v0, v21

    invoke-static {v5, v0}, Lcom/unipay/tools/PhoneInfoTools;->GetCorner(FI)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v21, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/unipay/dialog/ExchangeCodeDialog;->_$4:Landroid/content/Context;

    move-object/from16 v0, v21

    invoke-direct {v0, v5}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    const/16 v22, -0x1

    move/from16 v0, v22

    move/from16 v1, v18

    invoke-direct {v5, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v5, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v5, v7, v8, v7}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    const/high16 v5, 0x4120

    move-object/from16 v0, v21

    invoke-static {v0, v5}, Lcom/unipay/tools/PhoneInfoTools;->toCornerTop(Landroid/view/View;F)V

    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v8, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0xb

    invoke-virtual {v8, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v5, 0xf

    invoke-virtual {v8, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v22, -0x2

    const/16 v23, -0x2

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-direct {v5, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v22, 0xd

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v22, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/ExchangeCodeDialog;->_$4:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-direct/range {v22 .. v23}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v23, "\u4e2d\u56fd\u8054\u901a\u6c83\u5546\u5e97\u7edf\u4e00\u652f\u4ed8"

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v23, -0x1

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setTextColor(I)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v23, Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/unipay/dialog/ExchangeCodeDialog;->_$4:Landroid/content/Context;

    move-object/from16 v0, v23

    invoke-direct {v0, v5}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/unipay/dialog/ExchangeCodeDialog;->_$4:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    const-string v24, "unicom_base/close.png"

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    const-string v24, "close.png"

    move-object/from16 v0, v24

    invoke-static {v5, v0}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual/range {v21 .. v22}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v8, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/unipay/dialog/ExchangeCodeDialog;->_$4:Landroid/content/Context;

    invoke-direct {v8, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    const/16 v22, -0x1

    const/16 v24, -0x2

    move/from16 v0, v22

    move/from16 v1, v24

    invoke-direct {v5, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v5, 0x0

    invoke-virtual {v8, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v5, 0x1

    invoke-virtual {v8, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/16 v5, 0xff

    const/16 v22, 0xf0

    const/16 v24, 0xf0

    move/from16 v0, v22

    move/from16 v1, v24

    invoke-static {v5, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    invoke-virtual {v8, v5}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    const/4 v5, 0x0

    const/16 v22, 0x0

    move/from16 v0, v16

    move/from16 v1, v22

    move/from16 v2, v16

    invoke-virtual {v8, v5, v0, v1, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v5, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/ExchangeCodeDialog;->_$4:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-direct {v5, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v22, Landroid/view/ViewGroup$LayoutParams;

    const/16 v24, -0x2

    const/16 v25, -0x2

    move-object/from16 v0, v22

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v22, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/ExchangeCodeDialog;->_$4:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v24, Landroid/view/ViewGroup$LayoutParams;

    const/16 v25, -0x2

    mul-int/lit8 v26, v15, 0x8

    div-int/lit8 v26, v26, 0x28

    invoke-direct/range {v24 .. v26}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/ExchangeCodeDialog;->_$3:Lcom/unipay/tools/DensityUtil;

    move-object/from16 v24, v0

    const-string v25, "chinaunicom.png"

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/unipay/tools/DensityUtil;->getBitMapDrawable(Landroid/app/Dialog;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/16 v24, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v22, Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/ExchangeCodeDialog;->_$4:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v24, Landroid/view/ViewGroup$LayoutParams;

    const/16 v25, -0x1

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-direct {v0, v6, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v24, 0xff

    const/16 v25, 0xf0

    const/16 v26, 0xf0

    invoke-static/range {v24 .. v26}, Landroid/graphics/Color;->rgb(III)I

    move-result v24

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v9, v1, v9, v2}, Landroid/view/View;->setPadding(IIII)V

    new-instance v9, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/ExchangeCodeDialog;->_$4:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-direct {v9, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v24, Landroid/view/ViewGroup$LayoutParams;

    const/16 v25, -0x2

    const/16 v26, -0x2

    invoke-direct/range {v24 .. v26}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v9, v10, v0, v1, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v24, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/ExchangeCodeDialog;->_$4:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-direct/range {v24 .. v25}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v25, Landroid/view/ViewGroup$LayoutParams;

    const/16 v26, -0x2

    mul-int/lit8 v27, v15, 0x8

    div-int/lit8 v27, v27, 0x28

    invoke-direct/range {v25 .. v27}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/ExchangeCodeDialog;->_$3:Lcom/unipay/tools/DensityUtil;

    move-object/from16 v25, v0

    const-string v26, "wostore_logo.png"

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/unipay/tools/DensityUtil;->getBitMapDrawable(Landroid/app/Dialog;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v8, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v9, Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/unipay/dialog/ExchangeCodeDialog;->_$4:Landroid/content/Context;

    invoke-direct {v9, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    const/16 v22, -0x1

    move/from16 v0, v22

    invoke-direct {v5, v0, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v5, 0x74

    const/16 v22, 0x74

    const/16 v24, 0x74

    move/from16 v0, v22

    move/from16 v1, v24

    invoke-static {v5, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    invoke-virtual {v9, v5}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v22, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/unipay/dialog/ExchangeCodeDialog;->_$4:Landroid/content/Context;

    move-object/from16 v0, v22

    invoke-direct {v0, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    const/16 v24, -0x1

    move/from16 v0, v24

    move/from16 v1, v18

    invoke-direct {v5, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v5, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-virtual {v0, v7, v1, v7, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v5, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/unipay/dialog/ExchangeCodeDialog;->_$4:Landroid/content/Context;

    invoke-direct {v5, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    const/16 v17, -0x1

    const/16 v18, -0x2

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v7, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v17, "\u60a8\u5c06\u9009\u62e9\u4f7f\u7528\u300e"

    move-object/from16 v0, v17

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v17, "\u300f\u4e1a\u52a1\t\u5171\u9700\u82b1\u8d39\u4eba\u6c11\u5e01 "

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v17, Landroid/text/SpannableString;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    div-int/lit8 v24, v24, 0x64

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v24

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v24, " \u5143"

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v18, Landroid/text/style/ForegroundColorSpan;

    const/16 v24, 0x64

    const/16 v25, 0x64

    const/16 v26, 0x64

    invoke-static/range {v24 .. v26}, Landroid/graphics/Color;->rgb(III)I

    move-result v24

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v24, 0x0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v25

    const/16 v26, 0x21

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v24

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v18, Landroid/text/style/ForegroundColorSpan;

    const/high16 v24, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual/range {v17 .. v17}, Landroid/text/SpannableString;->length()I

    move-result v24

    add-int/lit8 v24, v24, -0x2

    const/16 v25, 0x21

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v7, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    const/16 v18, 0x64

    const/16 v24, 0x64

    const/16 v25, 0x64

    move/from16 v0, v18

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v18

    move/from16 v0, v18

    invoke-direct {v7, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual/range {v17 .. v17}, Landroid/text/SpannableString;->length()I

    move-result v18

    add-int/lit8 v18, v18, -0x2

    invoke-virtual/range {v17 .. v17}, Landroid/text/SpannableString;->length()I

    move-result v24

    const/16 v25, 0x21

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v7, v1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v7, 0x4140

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v7, 0x11

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setGravity(I)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v7, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/unipay/dialog/ExchangeCodeDialog;->_$4:Landroid/content/Context;

    invoke-direct {v7, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    const/16 v17, -0x1

    move/from16 v0, v17

    move/from16 v1, v19

    invoke-direct {v5, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v5, 0x0

    invoke-virtual {v7, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v5, 0x1

    invoke-virtual {v7, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v5, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/ExchangeCodeDialog;->_$4:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v17, Landroid/view/ViewGroup$LayoutParams;

    const/16 v18, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v0, v1, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v17, "\u5151\u6362\u7801"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v17, 0x5

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v17, -0x100

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v17, 0x4190

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v24, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v24

    invoke-virtual {v5, v0, v1, v10, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance v17, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/ExchangeCodeDialog;->_$4:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-direct/range {v17 .. v18}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/unipay/dialog/ExchangeCodeDialog;->_$1:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/ExchangeCodeDialog;->_$1:Landroid/widget/EditText;

    move-object/from16 v17, v0

    new-instance v18, Landroid/view/ViewGroup$LayoutParams;

    mul-int/lit8 v24, v14, 0x5

    div-int/lit8 v24, v24, 0xa

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-direct {v0, v1, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual/range {v17 .. v18}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/ExchangeCodeDialog;->_$1:Landroid/widget/EditText;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    invoke-virtual/range {v17 .. v18}, Landroid/widget/EditText;->setInputType(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/ExchangeCodeDialog;->_$1:Landroid/widget/EditText;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Landroid/text/InputFilter;

    move-object/from16 v18, v0

    const/16 v24, 0x0

    new-instance v25, Landroid/text/InputFilter$LengthFilter;

    const/16 v26, 0x6

    invoke-direct/range {v25 .. v26}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v25, v18, v24

    invoke-virtual/range {v17 .. v18}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/ExchangeCodeDialog;->_$1:Landroid/widget/EditText;

    move-object/from16 v17, v0

    const v18, 0x10000006

    invoke-virtual/range {v17 .. v18}, Landroid/widget/EditText;->setImeOptions(I)V

    invoke-virtual {v7, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/unipay/dialog/ExchangeCodeDialog;->_$1:Landroid/widget/EditText;

    invoke-virtual {v7, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v17, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/unipay/dialog/ExchangeCodeDialog;->_$4:Landroid/content/Context;

    move-object/from16 v0, v17

    invoke-direct {v0, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    const/16 v18, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v5, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v5, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v24

    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/16 v5, 0x11

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v18, Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/unipay/dialog/ExchangeCodeDialog;->_$4:Landroid/content/Context;

    move-object/from16 v0, v18

    invoke-direct {v0, v5}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    mul-int/lit8 v19, v14, 0x3

    div-int/lit8 v19, v19, 0xd

    move/from16 v0, v19

    invoke-direct {v5, v0, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v5, "\u786e\u8ba4"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v5, -0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setTextColor(I)V

    :try_start_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/unipay/dialog/ExchangeCodeDialog;->_$4:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    const-string v19, "unicom_base/exchanageCode.png"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    const-string v19, "exchanageCode.png"

    move-object/from16 v0, v19

    invoke-static {v5, v0}, Landroid/graphics/drawable/BitmapDrawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    new-instance v19, Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/unipay/dialog/ExchangeCodeDialog;->_$4:Landroid/content/Context;

    move-object/from16 v0, v19

    invoke-direct {v0, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v10, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v10, Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/unipay/dialog/ExchangeCodeDialog;->_$4:Landroid/content/Context;

    invoke-direct {v10, v5}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    mul-int/lit8 v24, v14, 0x3

    div-int/lit8 v24, v24, 0xd

    move/from16 v0, v24

    invoke-direct {v5, v0, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v10, v5}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v5, "\u53d6\u6d88"

    invoke-virtual {v10, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :try_start_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/unipay/dialog/ExchangeCodeDialog;->_$4:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    const-string v11, "unicom_base/exchanageCode.png"

    invoke-virtual {v5, v11}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    const-string v11, "exchanageCode.png"

    invoke-static {v5, v11}, Landroid/graphics/drawable/BitmapDrawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v10, v5}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    const/4 v5, -0x1

    invoke-virtual {v10, v5}, Landroid/widget/Button;->setTextColor(I)V

    const/high16 v5, 0x4130

    invoke-virtual {v10, v5}, Landroid/widget/Button;->setTextSize(F)V

    invoke-virtual/range {v17 .. v18}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v5, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/unipay/dialog/ExchangeCodeDialog;->_$4:Landroid/content/Context;

    invoke-direct {v5, v11}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v11, Landroid/view/ViewGroup$LayoutParams;

    const/16 v19, -0x1

    const/16 v24, -0x2

    move/from16 v0, v19

    move/from16 v1, v24

    invoke-direct {v11, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v11}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v11, 0x1

    invoke-virtual {v5, v11}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 v11, 0x1

    invoke-virtual {v5, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v11, 0x0

    const/16 v19, 0x0

    const/16 v24, 0x0

    move/from16 v0, v16

    move/from16 v1, v19

    move/from16 v2, v24

    invoke-virtual {v5, v11, v0, v1, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v11, Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/ExchangeCodeDialog;->_$4:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-direct {v11, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v19, Landroid/view/ViewGroup$LayoutParams;

    int-to-double v0, v14

    move-wide/from16 v24, v0

    const-wide v26, 0x3fe999999999999aL

    mul-double v24, v24, v26

    move-wide/from16 v0, v24

    double-to-int v0, v0

    move/from16 v24, v0

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-direct {v0, v1, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v6, 0x96

    const/16 v19, 0x96

    const/16 v24, 0x96

    move/from16 v0, v19

    move/from16 v1, v24

    invoke-static {v6, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    invoke-virtual {v11, v6}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {v5, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v6, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/unipay/dialog/ExchangeCodeDialog;->_$4:Landroid/content/Context;

    invoke-direct {v6, v11}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v11, Landroid/view/ViewGroup$LayoutParams;

    const/16 v19, -0x1

    const/16 v24, -0x2

    move/from16 v0, v19

    move/from16 v1, v24

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

    iget-object v0, v0, Lcom/unipay/dialog/ExchangeCodeDialog;->_$4:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v11, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v16, Landroid/view/ViewGroup$LayoutParams;

    const/16 v19, -0x1

    const/16 v24, -0x2

    move-object/from16 v0, v16

    move/from16 v1, v19

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v16, 0x11

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setGravity(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/ExchangeCodeDialog;->_$4:Landroid/content/Context;

    move-object/from16 v16, v0

    const-string v19, "vacmsg"

    const-string v24, "i"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v19

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/unipay/dialog/ExchangeCodeDialog;->_$1(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/ExchangeCodeDialog;->_$4:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v24, "vacmsg"

    const-string v25, "p"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Lcom/unipay/dialog/ExchangeCodeDialog;->_$1(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v24, ""

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_1

    invoke-static {}, Lcom/unipay/tools/MultimodeConfig;->getAuthKeyStr()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/unipay/crypt/CryptUtil;->decryptBy3DesAndBase64(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/ExchangeCodeDialog;->_$4:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/unipay/tools/PhoneInfoTools;->getIMSI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v16

    move-object/from16 v1, v24

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

    :goto_3
    const/16 v16, 0x64

    const/16 v19, 0x64

    const/16 v24, 0x64

    move/from16 v0, v16

    move/from16 v1, v19

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v16, 0x4120

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setTextSize(F)V

    new-instance v16, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/ExchangeCodeDialog;->_$4:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v19, Landroid/view/ViewGroup$LayoutParams;

    const/16 v24, -0x1

    const/16 v25, -0x2

    move-object/from16 v0, v19

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v19, 0x11

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v19, Landroid/text/SpannableString;

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "\u5ba2\u670d\u7535\u8bdd:"

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v24, Landroid/text/style/ForegroundColorSpan;

    const/16 v25, 0x64

    const/16 v26, 0x64

    const/16 v27, 0x64

    invoke-static/range {v25 .. v27}, Landroid/graphics/Color;->rgb(III)I

    move-result v25

    invoke-direct/range {v24 .. v25}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v25, 0x0

    const/16 v26, 0x5

    const/16 v27, 0x21

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v24, Landroid/text/style/ForegroundColorSpan;

    const/16 v25, 0xe

    const/16 v26, 0x24

    const/16 v27, 0xf1

    invoke-static/range {v25 .. v27}, Landroid/graphics/Color;->rgb(III)I

    move-result v25

    invoke-direct/range {v24 .. v25}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v25, 0x5

    invoke-virtual/range {v19 .. v19}, Landroid/text/SpannableString;->length()I

    move-result v26

    const/16 v27, 0x21

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move/from16 v4, v27

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

    invoke-virtual/range {v20 .. v21}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    new-instance v5, Lcom/unipay/dialog/IIlllIIllIIIIlII;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v5, v0, v1}, Lcom/unipay/dialog/IIlllIIllIIIIlII;-><init>(Lcom/unipay/dialog/ExchangeCodeDialog;Landroid/widget/Button;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v5, Lcom/unipay/dialog/lIlllIIllIIIIlII;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v10}, Lcom/unipay/dialog/lIlllIIllIIIIlII;-><init>(Lcom/unipay/dialog/ExchangeCodeDialog;Landroid/widget/Button;)V

    invoke-virtual {v10, v5}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v5, Lcom/unipay/dialog/IlIllIIllIIIIlII;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v5, v0, v1}, Lcom/unipay/dialog/IlIllIIllIIIIlII;-><init>(Lcom/unipay/dialog/ExchangeCodeDialog;Landroid/widget/Button;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/unipay/dialog/ExchangeCodeDialog;->setContentView(Landroid/view/View;)V

    iput v14, v12, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v15, v12, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual/range {p0 .. p0}, Lcom/unipay/dialog/ExchangeCodeDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v12}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/unipay/dialog/ExchangeCodeDialog;->setCanceledOnTouchOutside(Z)V

    return-void

    :catch_0
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    :catch_1
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    :catch_2
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    :cond_0
    const-string v16, "\u611f\u8c22\u652f\u6301\u6b63\u7248\u5e94\u7528(\u9996\u6b21\u4f7f\u7528\u97000.1\u5143\u77ed\u4fe1\u8d39)"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_1
    const-string v16, "\u611f\u8c22\u652f\u6301\u6b63\u7248\u5e94\u7528(\u9996\u6b21\u4f7f\u7528\u97000.1\u5143\u77ed\u4fe1\u8d39)"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3
.end method

.method static synthetic _$2(Lcom/unipay/dialog/ExchangeCodeDialog;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/unipay/dialog/ExchangeCodeDialog;->_$1:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic _$3(Lcom/unipay/dialog/ExchangeCodeDialog;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/unipay/dialog/ExchangeCodeDialog;->_$4:Landroid/content/Context;

    return-object v0
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
    .locals 3

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unipay/dialog/ExchangeCodeDialog;->_$2:Lcom/unipay/dialog/ExchangeCodeDialog$ExchangeCodeListener;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/unipay/dialog/ExchangeCodeDialog$ExchangeCodeListener;->OneSure(II)V

    invoke-virtual {p0}, Lcom/unipay/dialog/ExchangeCodeDialog;->dismiss()V

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
