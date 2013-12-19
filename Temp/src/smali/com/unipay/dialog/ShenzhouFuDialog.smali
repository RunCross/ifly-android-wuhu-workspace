.class public Lcom/unipay/dialog/ShenzhouFuDialog;
.super Landroid/app/Dialog;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unipay/dialog/ShenzhouFuDialog$ShenzhouFuListener;
    }
.end annotation


# static fields
.field public static final BACK:I = 0x2

.field public static final CANCEL:I = 0x1

.field public static final COMMIT:I = 0x3


# instance fields
.field private _$1:Lcom/unipay/beans/ShenzhouParamsBean;

.field private _$2:Lcom/unipay/dialog/ShenzhouFuDialog$ShenzhouFuListener;

.field private _$3:Ljava/lang/String;

.field private _$4:Lcom/unipay/tools/DensityUtil;

.field private _$5:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/unipay/dialog/ShenzhouFuDialog$ShenzhouFuListener;)V
    .locals 1

    const v0, 0x103000e

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/unipay/dialog/ShenzhouFuDialog;->_$5:Landroid/content/Context;

    new-instance v0, Lcom/unipay/tools/DensityUtil;

    invoke-direct {v0, p1}, Lcom/unipay/tools/DensityUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unipay/dialog/ShenzhouFuDialog;->_$4:Lcom/unipay/tools/DensityUtil;

    iput-object p2, p0, Lcom/unipay/dialog/ShenzhouFuDialog;->_$3:Ljava/lang/String;

    iput-object p4, p0, Lcom/unipay/dialog/ShenzhouFuDialog;->_$2:Lcom/unipay/dialog/ShenzhouFuDialog$ShenzhouFuListener;

    new-instance v0, Lcom/unipay/beans/ShenzhouParamsBean;

    invoke-direct {v0}, Lcom/unipay/beans/ShenzhouParamsBean;-><init>()V

    iput-object v0, p0, Lcom/unipay/dialog/ShenzhouFuDialog;->_$1:Lcom/unipay/beans/ShenzhouParamsBean;

    iget-object v0, p0, Lcom/unipay/dialog/ShenzhouFuDialog;->_$1:Lcom/unipay/beans/ShenzhouParamsBean;

    invoke-virtual {v0, p3}, Lcom/unipay/beans/ShenzhouParamsBean;->setCardMoney(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/unipay/dialog/ShenzhouFuDialog;->_$1()V

    return-void
.end method

.method static synthetic _$1(Lcom/unipay/dialog/ShenzhouFuDialog;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unipay/dialog/ShenzhouFuDialog;->_$3:Ljava/lang/String;

    return-object v0
.end method

.method private _$1()V
    .locals 38

    invoke-virtual/range {p0 .. p0}, Lcom/unipay/dialog/ShenzhouFuDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/Window;->requestFeature(I)Z

    const/high16 v4, 0x3f80

    invoke-static {v4}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    const/high16 v4, 0x4000

    invoke-static {v4}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    const/high16 v4, 0x4040

    invoke-static {v4}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    move-result v12

    const/high16 v4, 0x40a0

    invoke-static {v4}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    move-result v15

    const/high16 v4, 0x41a0

    invoke-static {v4}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    const/high16 v4, 0x41f0

    invoke-static {v4}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    const/high16 v4, 0x4220

    invoke-static {v4}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    const/high16 v4, 0x4120

    invoke-static {v4}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    move-result v23

    const/high16 v4, 0x4270

    invoke-static {v4}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

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

    invoke-virtual/range {p0 .. p0}, Lcom/unipay/dialog/ShenzhouFuDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    new-instance v24, Landroid/util/DisplayMetrics;

    invoke-direct/range {v24 .. v24}, Landroid/util/DisplayMetrics;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/ShenzhouFuDialog;->_$5:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    move-object/from16 v0, v24

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v4, v4

    invoke-static {v4}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    move-result v4

    move-object/from16 v0, v24

    iget v5, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v5, v5

    invoke-static {v5}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    move-object/from16 v0, v24

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v16, v0

    move-object/from16 v0, v24

    iget v5, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const-string v5, "xyf"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "dm.widthPixels ="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    iget v7, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";dm.heightPixels = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v24

    iget v7, v0, Landroid/util/DisplayMetrics;->heightPixels:I

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

    new-instance v25, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/ShenzhouFuDialog;->_$5:Landroid/content/Context;

    move-object/from16 v0, v25

    invoke-direct {v0, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v4, 0x1

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    move-object/from16 v0, v24

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move-object/from16 v0, v24

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move-object/from16 v0, v24

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move-object/from16 v0, v24

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move-object/from16 v0, v24

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move-object/from16 v0, v24

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move-object/from16 v0, v24

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move-object/from16 v0, v24

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move-object/from16 v0, v24

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/lit8 v4, v4, 0x5

    div-int/lit8 v17, v4, 0x58

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/ShenzhouFuDialog;->_$5:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v4

    if-nez v4, :cond_3

    move-object/from16 v0, v24

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/lit8 v4, v4, 0xa

    div-int/lit8 v11, v4, 0x58

    move-object/from16 v0, v24

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/lit8 v4, v4, 0x8

    div-int/lit8 v10, v4, 0x58

    move-object/from16 v0, v24

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/lit8 v4, v4, 0x44

    div-int/lit8 v9, v4, 0x58

    move-object/from16 v0, v24

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/lit8 v4, v4, 0x8

    div-int/lit8 v8, v4, 0x58

    move-object/from16 v0, v24

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v7, v4, 0x58

    move-object/from16 v0, v24

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/lit8 v4, v4, 0xc

    div-int/lit8 v6, v4, 0x58

    move-object/from16 v0, v24

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/lit8 v4, v4, 0xa

    div-int/lit8 v5, v4, 0x58

    move-object/from16 v0, v24

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/lit8 v4, v4, 0x2

    div-int/lit8 v4, v4, 0x58

    move v13, v6

    move v14, v7

    move/from16 v22, v8

    move v6, v10

    move v7, v11

    move v10, v5

    move v5, v4

    move v4, v9

    :goto_0
    new-instance v26, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/unipay/dialog/ShenzhouFuDialog;->_$5:Landroid/content/Context;

    move-object/from16 v0, v26

    invoke-direct {v0, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    const/4 v9, -0x1

    const/4 v11, -0x1

    invoke-direct {v8, v9, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v8, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v27, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/unipay/dialog/ShenzhouFuDialog;->_$5:Landroid/content/Context;

    move-object/from16 v0, v27

    invoke-direct {v0, v8}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    const/4 v9, -0x1

    invoke-direct {v8, v9, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v7, v8, v14, v9}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    invoke-static/range {v27 .. v27}, Lcom/unipay/tools/PhoneInfoTools;->FullScreenCornerTop(Landroid/view/View;)V

    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v7, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v8, 0xb

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v8, 0xf

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iput v15, v7, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v9, -0x2

    const/4 v11, -0x2

    invoke-direct {v8, v9, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v9, 0xd

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v9, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v6, 0x9

    invoke-virtual {v9, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v6, 0xf

    invoke-virtual {v9, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iput v15, v9, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    new-instance v11, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/unipay/dialog/ShenzhouFuDialog;->_$5:Landroid/content/Context;

    invoke-direct {v11, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v6, "\u4e2d\u56fd\u8054\u901a\u6c83\u5546\u5e97\u7edf\u4e00\u652f\u4ed8\u2014\u624b\u673a\u5145\u503c\u5361"

    invoke-virtual {v11, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v6, -0x1

    invoke-virtual {v11, v6}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v11, v8}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v11}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    new-instance v8, Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/unipay/dialog/ShenzhouFuDialog;->_$5:Landroid/content/Context;

    invoke-direct {v8, v6}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    :try_start_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/unipay/dialog/ShenzhouFuDialog;->_$5:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    const-string v18, "unicom_base/close.png"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    const-string v18, "close.png"

    move-object/from16 v0, v18

    invoke-static {v6, v0}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v8, v6}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {v8, v7}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move/from16 v0, v23

    move/from16 v1, v23

    move/from16 v2, v23

    move/from16 v3, v23

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/widget/Button;->setPadding(IIII)V

    new-instance v7, Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/unipay/dialog/ShenzhouFuDialog;->_$5:Landroid/content/Context;

    invoke-direct {v7, v6}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v9}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :try_start_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/unipay/dialog/ShenzhouFuDialog;->_$5:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    const-string v9, "unicom_extend/back.png"

    invoke-virtual {v6, v9}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    const-string v9, "back.png"

    invoke-static {v6, v9}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v7, v6}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    move-object/from16 v0, v27

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v11}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v6, Lcom/unipay/dialog/lIlIIllIllIIIllI;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v8}, Lcom/unipay/dialog/lIlIIllIllIIIllI;-><init>(Lcom/unipay/dialog/ShenzhouFuDialog;Landroid/widget/Button;)V

    invoke-virtual {v8, v6}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v6, Lcom/unipay/dialog/IlIIIllIllIIIllI;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v7}, Lcom/unipay/dialog/IlIIIllIllIIIllI;-><init>(Lcom/unipay/dialog/ShenzhouFuDialog;Landroid/widget/Button;)V

    invoke-virtual {v7, v6}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v28, Landroid/widget/ScrollView;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/unipay/dialog/ShenzhouFuDialog;->_$5:Landroid/content/Context;

    move-object/from16 v0, v28

    invoke-direct {v0, v6}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-direct {v6, v7, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v29, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/unipay/dialog/ShenzhouFuDialog;->_$5:Landroid/content/Context;

    move-object/from16 v0, v29

    invoke-direct {v0, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, -0x2

    invoke-direct {v6, v7, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v6, 0x1

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    mul-int/lit8 v6, v14, 0x2

    const/4 v7, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v23

    move/from16 v2, v23

    invoke-virtual {v0, v1, v6, v2, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/4 v6, 0x1

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    const/4 v6, 0x1

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    new-instance v30, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/unipay/dialog/ShenzhouFuDialog;->_$5:Landroid/content/Context;

    move-object/from16 v0, v30

    invoke-direct {v0, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    const/4 v7, -0x1

    invoke-direct {v6, v7, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v4, 0x1

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v4, 0x4120

    const/16 v6, 0xff

    const/16 v7, 0xf0

    const/16 v8, 0xf0

    invoke-static {v6, v7, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    invoke-static {v4, v6}, Lcom/unipay/tools/PhoneInfoTools;->GetCorner(FI)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v30

    invoke-virtual {v0, v4, v14, v6, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v8, Landroid/widget/TableRow$LayoutParams;

    const/4 v4, -0x2

    const/4 v6, -0x2

    invoke-direct {v8, v4, v6}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    const/high16 v4, 0x3f80

    iput v4, v8, Landroid/widget/TableRow$LayoutParams;->weight:F

    move-object/from16 v0, v24

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v4, v4, 0x4

    iput v4, v8, Landroid/widget/TableRow$LayoutParams;->width:I

    new-instance v31, Landroid/widget/TableRow;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/ShenzhouFuDialog;->_$5:Landroid/content/Context;

    move-object/from16 v0, v31

    invoke-direct {v0, v4}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v4, v6, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/widget/TableRow;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v4, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/widget/TableRow;->setOrientation(I)V

    new-instance v18, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/ShenzhouFuDialog;->_$5:Landroid/content/Context;

    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v4, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1, v4, v6, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/4 v4, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v7, Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/ShenzhouFuDialog;->_$5:Landroid/content/Context;

    invoke-direct {v7, v4}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v6, -0x1

    invoke-direct {v4, v6, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v4}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v4, "\u8054\u901a\u5145\u503c\u5361"

    invoke-virtual {v7, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/ShenzhouFuDialog;->_$5:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_0

    const/high16 v4, 0x4140

    invoke-virtual {v7, v4}, Landroid/widget/Button;->setTextSize(F)V

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v6, -0x1

    move/from16 v0, v17

    invoke-direct {v4, v6, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v4}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/ShenzhouFuDialog;->_$5:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v6, "unicom_extend/bt_info_unclick.png"

    invoke-virtual {v4, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    const-string v6, "bt_info_unclick.png"

    invoke-static {v4, v6}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v7, v4}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    new-instance v11, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/ShenzhouFuDialog;->_$5:Landroid/content/Context;

    invoke-direct {v11, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v4, v6, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v11, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v4, 0x1

    invoke-virtual {v11, v4}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/ShenzhouFuDialog;->_$5:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v6, "unicom_extend/card_btn_down.png"

    invoke-virtual {v4, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    const-string v6, "card_btn_down.png"

    invoke-static {v4, v6}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v11, v4}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v4, 0x4

    invoke-virtual {v11, v4}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :goto_4
    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v19, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/ShenzhouFuDialog;->_$5:Landroid/content/Context;

    move-object/from16 v0, v19

    invoke-direct {v0, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v4, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1, v4, v6, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/4 v4, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v6, Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/ShenzhouFuDialog;->_$5:Landroid/content/Context;

    invoke-direct {v6, v4}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v9, -0x1

    invoke-direct {v4, v9, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v4}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v4, "\u79fb\u52a8\u5145\u503c\u5361"

    invoke-virtual {v6, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/ShenzhouFuDialog;->_$5:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v4

    const/4 v9, 0x1

    if-ne v4, v9, :cond_1

    const/high16 v4, 0x4140

    invoke-virtual {v6, v4}, Landroid/widget/Button;->setTextSize(F)V

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v9, -0x1

    move/from16 v0, v17

    invoke-direct {v4, v9, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v4}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    :try_start_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/ShenzhouFuDialog;->_$5:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v9, "unicom_extend/bt_info_unclick.png"

    invoke-virtual {v4, v9}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    const-string v9, "bt_info_unclick.png"

    invoke-static {v4, v9}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    :goto_5
    new-instance v9, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/ShenzhouFuDialog;->_$5:Landroid/content/Context;

    invoke-direct {v9, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/16 v20, -0x2

    move/from16 v0, v20

    invoke-direct {v4, v0, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v4, 0x1

    invoke-virtual {v9, v4}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    const/4 v4, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v9, v4, v12, v0, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    :try_start_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/ShenzhouFuDialog;->_$5:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v12, "unicom_extend/card_btn_down.png"

    invoke-virtual {v4, v12}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    const-string v12, "card_btn_down.png"

    invoke-static {v4, v12}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v9, v4}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v4, 0x4

    invoke-virtual {v9, v4}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    :goto_6
    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v12, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/ShenzhouFuDialog;->_$5:Landroid/content/Context;

    invoke-direct {v12, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v12, v8}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v4, 0x1

    invoke-virtual {v12, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v4, 0x0

    const/4 v8, 0x0

    move/from16 v0, v23

    move/from16 v1, v23

    invoke-virtual {v12, v0, v4, v1, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/4 v4, 0x1

    invoke-virtual {v12, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v8, Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/ShenzhouFuDialog;->_$5:Landroid/content/Context;

    invoke-direct {v8, v4}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/16 v20, -0x1

    move/from16 v0, v20

    invoke-direct {v4, v0, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v4}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v4, "\u7535\u4fe1\u5145\u503c\u5361"

    invoke-virtual {v8, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/ShenzhouFuDialog;->_$5:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v4

    const/4 v10, 0x1

    if-ne v4, v10, :cond_2

    const/high16 v4, 0x4140

    invoke-virtual {v8, v4}, Landroid/widget/Button;->setTextSize(F)V

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v10, -0x1

    move/from16 v0, v17

    invoke-direct {v4, v10, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v4}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    :try_start_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/ShenzhouFuDialog;->_$5:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v10, "unicom_extend/bt_info_unclick.png"

    invoke-virtual {v4, v10}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    const-string v10, "bt_info_unclick.png"

    invoke-static {v4, v10}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v8, v4}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    :goto_7
    new-instance v10, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/ShenzhouFuDialog;->_$5:Landroid/content/Context;

    invoke-direct {v10, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/16 v20, -0x2

    move/from16 v0, v20

    invoke-direct {v4, v0, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v10, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v4, 0x1

    invoke-virtual {v10, v4}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    :try_start_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/ShenzhouFuDialog;->_$5:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v5, "unicom_extend/card_btn_down.png"

    invoke-virtual {v4, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    const-string v5, "card_btn_down.png"

    invoke-static {v4, v5}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v10, v4}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v4, 0x4

    invoke-virtual {v10, v4}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    :goto_8
    invoke-virtual {v12, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v12, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v31

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    move-object/from16 v0, v31

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    move-object/from16 v0, v31

    invoke-virtual {v0, v12}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    new-instance v32, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/ShenzhouFuDialog;->_$5:Landroid/content/Context;

    move-object/from16 v0, v32

    invoke-direct {v0, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v5, -0x2

    const/4 v12, -0x2

    invoke-direct {v4, v5, v12}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v4, 0x1

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v23

    invoke-virtual {v0, v1, v14, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v4, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/unipay/dialog/ShenzhouFuDialog;->_$5:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    const/4 v12, -0x2

    const/16 v18, -0x2

    move/from16 v0, v18

    invoke-direct {v5, v12, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v5, "\u6ce8:\u8bf7\u786e\u8ba4\u60a8\u7684\u5145\u503c\u5361\u91d1\u989d\u4e0d\u4f4e\u4e8e\u6240\u9700\u5145\u503c\u7684\u6570\u76ee"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v5, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/unipay/dialog/ShenzhouFuDialog;->_$5:Landroid/content/Context;

    invoke-direct {v5, v12}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v12, Landroid/view/ViewGroup$LayoutParams;

    const/16 v18, -0x2

    const/16 v19, -0x2

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v12, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v12}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v12, 0x0

    invoke-virtual {v5, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v18, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/unipay/dialog/ShenzhouFuDialog;->_$5:Landroid/content/Context;

    move-object/from16 v0, v18

    invoke-direct {v0, v12}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->setSingleLine()V

    sget-object v12, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    new-instance v12, Landroid/view/ViewGroup$LayoutParams;

    const/16 v19, -0x2

    const/16 v20, -0x2

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v12, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v12, Landroid/text/SpannableString;

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "\u60a8\u9009\u62e9"

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/ShenzhouFuDialog;->_$1:Lcom/unipay/beans/ShenzhouParamsBean;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/unipay/beans/ShenzhouParamsBean;->getCardMoney()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\u5143\u9762\u989d\u7684\u5145\u503c\u5361\uff0c\u5c06\u5145\u503c"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/ShenzhouFuDialog;->_$3:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\u5143"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v12, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v19, Landroid/text/style/ForegroundColorSpan;

    const/high16 v20, -0x1

    invoke-direct/range {v19 .. v20}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v20, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/ShenzhouFuDialog;->_$1:Lcom/unipay/beans/ShenzhouParamsBean;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/unipay/beans/ShenzhouParamsBean;->getCardMoney()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    add-int/lit8 v21, v21, 0x3

    const/16 v33, 0x21

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v33

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v19, Landroid/text/style/ForegroundColorSpan;

    const/high16 v20, -0x1

    invoke-direct/range {v19 .. v20}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/ShenzhouFuDialog;->_$1:Lcom/unipay/beans/ShenzhouParamsBean;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/unipay/beans/ShenzhouParamsBean;->getCardMoney()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    add-int/lit8 v20, v20, 0x3

    add-int/lit8 v20, v20, 0xb

    invoke-virtual {v12}, Landroid/text/SpannableString;->length()I

    move-result v21

    add-int/lit8 v21, v21, -0x1

    const/16 v33, 0x21

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v33

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v12, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/ShenzhouFuDialog;->_$5:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-direct {v12, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v19, Landroid/view/ViewGroup$LayoutParams;

    const/16 v20, -0x2

    const/16 v21, -0x1

    invoke-direct/range {v19 .. v21}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v19, 0x10

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v5, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v33, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/ShenzhouFuDialog;->_$5:Landroid/content/Context;

    move-object/from16 v0, v33

    invoke-direct {v0, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v5, -0x1

    const/16 v18, -0x2

    move/from16 v0, v18

    invoke-direct {v4, v5, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v4, 0x1

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v23

    invoke-virtual {v0, v1, v14, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v4, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/unipay/dialog/ShenzhouFuDialog;->_$5:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    const/16 v18, -0x1

    const/16 v19, -0x2

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v5, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v5, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/ShenzhouFuDialog;->_$5:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v5, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v18, Landroid/view/ViewGroup$LayoutParams;

    const/16 v19, -0x2

    const/16 v20, -0x2

    invoke-direct/range {v18 .. v20}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v18, "\u5361\u53f7:"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v5, v15, v0, v1, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance v34, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/ShenzhouFuDialog;->_$5:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    new-instance v18, Landroid/view/ViewGroup$LayoutParams;

    mul-int/lit8 v19, v16, 0x2

    div-int/lit8 v19, v19, 0x3

    const/16 v20, -0x2

    invoke-direct/range {v18 .. v20}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v34

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v18, "\u8bf7\u8f93\u5165\u5145\u503c\u5361\u5361\u53f7"

    move-object/from16 v0, v34

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const/16 v18, 0x2

    move-object/from16 v0, v34

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v5, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/ShenzhouFuDialog;->_$5:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v5, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v18, Landroid/view/ViewGroup$LayoutParams;

    const/16 v19, -0x1

    const/16 v20, -0x2

    invoke-direct/range {v18 .. v20}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v18, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/ShenzhouFuDialog;->_$5:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-direct/range {v18 .. v19}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v19, Landroid/view/ViewGroup$LayoutParams;

    const/16 v20, -0x2

    const/16 v21, -0x2

    invoke-direct/range {v19 .. v21}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v19, "\u5bc6\u7801:"

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v15, v1, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance v35, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/unipay/dialog/ShenzhouFuDialog;->_$5:Landroid/content/Context;

    move-object/from16 v0, v35

    invoke-direct {v0, v15}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    new-instance v15, Landroid/view/ViewGroup$LayoutParams;

    mul-int/lit8 v16, v16, 0x2

    div-int/lit8 v16, v16, 0x3

    const/16 v19, -0x2

    move/from16 v0, v16

    move/from16 v1, v19

    invoke-direct {v15, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v35

    invoke-virtual {v0, v15}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v15, "\u8bf7\u8f93\u5165\u5145\u503c\u5361\u5bc6\u7801"

    move-object/from16 v0, v35

    invoke-virtual {v0, v15}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const/16 v15, 0x81

    move-object/from16 v0, v35

    invoke-virtual {v0, v15}, Landroid/widget/EditText;->setInputType(I)V

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v33

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v36, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/ShenzhouFuDialog;->_$5:Landroid/content/Context;

    move-object/from16 v0, v36

    invoke-direct {v0, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v4, v5, v13}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v4, 0x0

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v4, 0x1

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v36

    invoke-virtual {v0, v4, v14, v5, v14}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v37, Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/ShenzhouFuDialog;->_$5:Landroid/content/Context;

    move-object/from16 v0, v37

    invoke-direct {v0, v4}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/ShenzhouFuDialog;->_$5:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    move-object/from16 v0, v24

    iget v5, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v5, v5, 0x3

    move/from16 v0, v17

    invoke-direct {v4, v5, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_9
    const-string v4, "\u786e\u8ba4\u5145\u503c"

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v4, -0x1

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setTextColor(I)V

    :try_start_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/ShenzhouFuDialog;->_$5:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v5, "unicom_extend/bt_sure_normal.9.png"

    invoke-virtual {v4, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    const-string v5, "bt_sure_normal.9.png"

    invoke-static {v4, v5}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8

    :goto_a
    invoke-virtual/range {v36 .. v37}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v4, Lcom/unipay/dialog/llIIIllIllIIIllI;

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v12}, Lcom/unipay/dialog/llIIIllIllIIIllI;-><init>(Lcom/unipay/dialog/ShenzhouFuDialog;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    invoke-virtual {v6, v4}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v13, Lcom/unipay/dialog/IIIIIllIllIIIllI;

    move-object/from16 v14, p0

    move-object v15, v8

    move-object/from16 v16, v7

    move-object/from16 v17, v6

    move-object/from16 v18, v10

    move-object/from16 v19, v9

    move-object/from16 v20, v11

    move-object/from16 v21, v12

    invoke-direct/range {v13 .. v21}, Lcom/unipay/dialog/IIIIIllIllIIIllI;-><init>(Lcom/unipay/dialog/ShenzhouFuDialog;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    invoke-virtual {v8, v13}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v13, Lcom/unipay/dialog/lIIIIllIllIIIllI;

    move-object/from16 v14, p0

    move-object v15, v7

    move-object/from16 v16, v8

    move-object/from16 v17, v6

    move-object/from16 v18, v11

    move-object/from16 v19, v9

    move-object/from16 v20, v10

    move-object/from16 v21, v12

    invoke-direct/range {v13 .. v21}, Lcom/unipay/dialog/lIIIIllIllIIIllI;-><init>(Lcom/unipay/dialog/ShenzhouFuDialog;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    invoke-virtual {v7, v13}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v9, Lcom/unipay/dialog/IlllIllIllIIIllI;

    move-object/from16 v10, p0

    move-object/from16 v11, v37

    move-object/from16 v13, v34

    move-object/from16 v14, v35

    invoke-direct/range {v9 .. v14}, Lcom/unipay/dialog/IlllIllIllIIIllI;-><init>(Lcom/unipay/dialog/ShenzhouFuDialog;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/EditText;Landroid/widget/EditText;)V

    move-object/from16 v0, v37

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v5, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/ShenzhouFuDialog;->_$5:Landroid/content/Context;

    invoke-direct {v5, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v4, v6, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v4, 0x1

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move/from16 v0, v23

    invoke-virtual {v5, v0, v4, v6, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v4, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/unipay/dialog/ShenzhouFuDialog;->_$5:Landroid/content/Context;

    invoke-direct {v4, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    const/4 v7, -0x2

    const/4 v8, -0x2

    invoke-direct {v6, v7, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Landroid/text/SpannableString;

    const-string v7, "1.\u8bf7\u60a8\u9009\u62e9\u6b63\u786e\u7684\u5145\u503c\u5361\u9762\u989d\uff0c\u4ee5\u514d\u9020\u6210\u635f\u5931\u3002\u7531\u6b64\u6240\u9020\u6210\u7684\u635f\u5931\u7531\u7528\u6237\u81ea\u884c\u627f\u62c5\uff0c\u672c\u516c\u53f8\u4e0d\u627f\u62c5\u4efb\u4f55\u8d23\u4efb\uff01"

    invoke-direct {v6, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    const/high16 v8, -0x1

    invoke-direct {v7, v8}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v8, 0x6

    const/16 v9, 0xe

    const/16 v10, 0x21

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v6, 0x4140

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextSize(F)V

    new-instance v6, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/unipay/dialog/ShenzhouFuDialog;->_$5:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    const/4 v8, -0x2

    const/4 v9, -0x2

    invoke-direct {v7, v8, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v7, "2.\u652f\u6301\u4e2d\u56fd\u8054\u901a\u53d1\u884c\u7684\u624b\u673a\u8bdd\u8d39\u5145\u503c\u5361\uff0c\u4e2d\u56fd\u79fb\u52a8\u53d1\u884c\u7684\u624b\u673a\u8bdd\u8d39\u5145\u503c\u5361\uff0c\u4e2d\u56fd\u7535\u4fe1\u53d1\u884c\u7684\u624b\u673a\u8bdd\u8d39\u5145\u503c\u5361\u3002"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v7, 0x4140

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v6, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/ShenzhouFuDialog;->_$5:Landroid/content/Context;

    invoke-direct {v6, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v7, -0x1

    move/from16 v0, v22

    invoke-direct {v4, v7, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v4, 0x10

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v7, Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/ShenzhouFuDialog;->_$5:Landroid/content/Context;

    invoke-direct {v7, v4}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/ShenzhouFuDialog;->_$5:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v4

    const/4 v8, 0x1

    if-ne v4, v8, :cond_5

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    move-object/from16 v0, v24

    iget v9, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v9, v9, 0xf

    div-int/lit8 v9, v9, 0x42

    move-object/from16 v0, v24

    iget v10, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/lit8 v10, v10, 0x1b

    div-int/lit8 v10, v10, 0x42

    div-int/lit8 v10, v10, 0x6

    invoke-direct {v8, v9, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-direct {v4, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_b
    move/from16 v0, v23

    iput v0, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v7, v4}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v4, "\u5e2e\u52a9"

    invoke-virtual {v7, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :try_start_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/ShenzhouFuDialog;->_$5:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v8, "unicom_extend/bt_help.9.png"

    invoke-virtual {v4, v8}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    const-string v8, "bt_help.9.png"

    invoke-static {v4, v8}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v7, v4}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_9

    :goto_c
    new-instance v4, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/unipay/dialog/ShenzhouFuDialog;->_$5:Landroid/content/Context;

    invoke-direct {v4, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x2

    invoke-direct {v7, v8, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v7, "\u5ba2\u670d\u7535\u8bdd:400 600 151"

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v7, 0x5

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move/from16 v0, v23

    invoke-virtual {v4, v7, v8, v0, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual/range {v30 .. v31}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v30

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v30

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual/range {v29 .. v30}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual/range {v25 .. v26}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/unipay/dialog/ShenzhouFuDialog;->setContentView(Landroid/view/View;)V

    return-void

    :cond_3
    move-object/from16 v0, v24

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/lit8 v4, v4, 0x6

    div-int/lit8 v11, v4, 0x58

    move-object/from16 v0, v24

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/lit8 v4, v4, 0x4

    div-int/lit8 v10, v4, 0x58

    move-object/from16 v0, v24

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/lit8 v4, v4, 0x49

    div-int/lit8 v9, v4, 0x58

    move-object/from16 v0, v24

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/lit8 v4, v4, 0x6

    div-int/lit8 v8, v4, 0x58

    move-object/from16 v0, v24

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v7, v4, 0x58

    move-object/from16 v0, v24

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/lit8 v4, v4, 0xc

    div-int/lit8 v6, v4, 0x58

    move-object/from16 v0, v24

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/lit8 v4, v4, 0xc

    div-int/lit8 v5, v4, 0x58

    move-object/from16 v0, v24

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/lit8 v4, v4, 0x2

    div-int/lit16 v4, v4, 0x96

    move v13, v6

    move v14, v7

    move/from16 v22, v8

    move v6, v10

    move v7, v11

    move v10, v5

    move v5, v4

    move v4, v9

    goto/16 :goto_0

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    :catch_1
    move-exception v6

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    :catch_2
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

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

    :catch_6
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_7

    :catch_7
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_8

    :cond_4
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    move-object/from16 v0, v24

    iget v5, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v5, v5, 0x3

    const/4 v13, -0x1

    invoke-direct {v4, v5, v13}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_9

    :catch_8
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_a

    :cond_5
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    move-object/from16 v0, v24

    iget v9, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v9, v9, 0xa

    div-int/lit8 v9, v9, 0x42

    move-object/from16 v0, v24

    iget v10, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/lit8 v10, v10, 0x7

    div-int/lit8 v10, v10, 0x2

    div-int/lit8 v10, v10, 0x26

    invoke-direct {v8, v9, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-direct {v4, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_b

    :catch_9
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_c
.end method

.method private static _$1(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "^[-+]?(([0-9]+)([.]([0-9]+))?|([.]([0-9]+))?)$"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic _$2(Lcom/unipay/dialog/ShenzhouFuDialog;)Lcom/unipay/beans/ShenzhouParamsBean;
    .locals 1

    iget-object v0, p0, Lcom/unipay/dialog/ShenzhouFuDialog;->_$1:Lcom/unipay/beans/ShenzhouParamsBean;

    return-object v0
.end method

.method static synthetic _$3(Lcom/unipay/dialog/ShenzhouFuDialog;)Lcom/unipay/dialog/ShenzhouFuDialog$ShenzhouFuListener;
    .locals 1

    iget-object v0, p0, Lcom/unipay/dialog/ShenzhouFuDialog;->_$2:Lcom/unipay/dialog/ShenzhouFuDialog$ShenzhouFuListener;

    return-object v0
.end method

.method static synthetic _$4(Lcom/unipay/dialog/ShenzhouFuDialog;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/unipay/dialog/ShenzhouFuDialog;->_$5:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unipay/dialog/ShenzhouFuDialog;->_$2:Lcom/unipay/dialog/ShenzhouFuDialog$ShenzhouFuListener;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/unipay/dialog/ShenzhouFuDialog$ShenzhouFuListener;->opearation(ILcom/unipay/beans/ShenzhouParamsBean;)V

    invoke-virtual {p0}, Lcom/unipay/dialog/ShenzhouFuDialog;->dismiss()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
