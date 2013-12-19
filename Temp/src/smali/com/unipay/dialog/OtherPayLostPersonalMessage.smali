.class public Lcom/unipay/dialog/OtherPayLostPersonalMessage;
.super Landroid/app/Dialog;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unipay/dialog/lIllllIIlllIlllI;,
        Lcom/unipay/dialog/IllIIIIlIllIIIII;,
        Lcom/unipay/dialog/IlllIIIIIllllIIl;,
        Lcom/unipay/dialog/lIIllIlIlIIIIlII;,
        Lcom/unipay/dialog/OtherPayLostPersonalMessage$OtherPaySelectedListener;
    }
.end annotation


# static fields
.field public static final ALIPAY:I = 0x1

.field public static final BACK:I = 0x5

.field public static final CANCEL:I = 0x4

.field public static final PHONE:I = 0x3

.field public static final SHENZHOU:I = 0x2

.field public static final UPOMP:I = 0x6


# instance fields
.field private _$1:Ljava/lang/String;

.field private _$10:I

.field private _$11:Lcom/unipay/net/Parameters;

.field private _$12:Lcom/unipay/net/HttpNet;

.field private _$13:Lcom/unipay/net/AsyncMultimode;

.field private _$14:Lcom/unipay/beans/LoginRsp;

.field private _$15:Lcom/unipay/beans/RegisterBean;

.field private _$16:Landroid/widget/ImageView;

.field private _$17:Landroid/widget/ImageView;

.field private _$18:Landroid/widget/ImageView;

.field private _$19:Landroid/widget/Button;

.field private _$2:Ljava/lang/String;

.field private _$20:Landroid/widget/Button;

.field private _$21:Lcom/unipay/dialog/OtherPayLostPersonalMessage$OtherPaySelectedListener;

.field private _$22:Lcom/unipay/tools/DensityUtil;

.field private _$23:Landroid/content/Context;

.field private _$3:Landroid/widget/Button;

.field private _$4:Ljava/lang/String;

.field private _$5:Ljava/lang/String;

.field private _$6:Ljava/lang/String;

.field private _$7:Ljava/lang/String;

.field private _$8:Ljava/lang/String;

.field private _$9:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const v0, 0x103000e

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    new-instance v0, Lcom/unipay/net/Parameters;

    invoke-direct {v0}, Lcom/unipay/net/Parameters;-><init>()V

    iput-object v0, p0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$11:Lcom/unipay/net/Parameters;

    iput-object p1, p0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$23:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unipay/dialog/OtherPayLostPersonalMessage$OtherPaySelectedListener;)V
    .locals 9

    const v1, 0x103000e

    invoke-direct {p0, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    new-instance v1, Lcom/unipay/net/Parameters;

    invoke-direct {v1}, Lcom/unipay/net/Parameters;-><init>()V

    iput-object v1, p0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$11:Lcom/unipay/net/Parameters;

    move-object v1, p1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {p0, v1}, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->setOwnerActivity(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$23:Landroid/content/Context;

    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$21:Lcom/unipay/dialog/OtherPayLostPersonalMessage$OtherPaySelectedListener;

    iput p2, p0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$10:I

    iput-object p3, p0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$9:Ljava/lang/String;

    iput-object p4, p0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$8:Ljava/lang/String;

    iput-object p5, p0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$7:Ljava/lang/String;

    iput-object p6, p0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$6:Ljava/lang/String;

    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$5:Ljava/lang/String;

    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$4:Ljava/lang/String;

    new-instance v1, Lcom/unipay/tools/DensityUtil;

    iget-object v2, p0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$23:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/unipay/tools/DensityUtil;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$22:Lcom/unipay/tools/DensityUtil;

    new-instance v1, Lcom/unipay/net/HttpNet;

    invoke-direct {v1}, Lcom/unipay/net/HttpNet;-><init>()V

    iput-object v1, p0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$12:Lcom/unipay/net/HttpNet;

    new-instance v1, Lcom/unipay/net/AsyncMultimode;

    iget-object v2, p0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$12:Lcom/unipay/net/HttpNet;

    invoke-direct {v1, v2}, Lcom/unipay/net/AsyncMultimode;-><init>(Lcom/unipay/net/HttpNet;)V

    iput-object v1, p0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$13:Lcom/unipay/net/AsyncMultimode;

    invoke-virtual {p0}, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    move-object v1, p0

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v1 .. v8}, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$1(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic _$1(Lcom/unipay/dialog/OtherPayLostPersonalMessage;Lcom/unipay/beans/LoginRsp;)Lcom/unipay/beans/LoginRsp;
    .locals 0

    iput-object p1, p0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$14:Lcom/unipay/beans/LoginRsp;

    return-object p1
.end method

.method static synthetic _$1(Lcom/unipay/dialog/OtherPayLostPersonalMessage;Lcom/unipay/beans/RegisterBean;)Lcom/unipay/beans/RegisterBean;
    .locals 0

    iput-object p1, p0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$15:Lcom/unipay/beans/RegisterBean;

    return-object p1
.end method

.method static synthetic _$1(Lcom/unipay/dialog/OtherPayLostPersonalMessage;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$4:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic _$1(Lcom/unipay/dialog/OtherPayLostPersonalMessage;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$1:Ljava/lang/String;

    return-object p1
.end method

.method private _$1(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 35

    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$10:I

    const/high16 v4, 0x3f80

    invoke-static {v4}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    const/high16 v4, 0x4000

    invoke-static {v4}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    const/high16 v4, 0x4040

    invoke-static {v4}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    move-result v5

    const/high16 v4, 0x40a0

    invoke-static {v4}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    move-result v6

    const/high16 v4, 0x41a0

    invoke-static {v4}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    const/high16 v4, 0x41f0

    invoke-static {v4}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    const/high16 v4, 0x4220

    invoke-static {v4}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    const/high16 v4, 0x4248

    invoke-static {v4}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    const/high16 v4, 0x4120

    invoke-static {v4}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    move-result v7

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

    invoke-virtual/range {p0 .. p0}, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    new-instance v8, Landroid/util/DisplayMetrics;

    invoke-direct {v8}, Landroid/util/DisplayMetrics;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$23:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v4, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v9, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v9, v9

    invoke-static {v9}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    const/high16 v9, 0x4000

    invoke-static {v9}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    const/high16 v9, 0x40a0

    invoke-static {v9}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    const/high16 v9, 0x4100

    invoke-static {v9}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    const-string v9, "xyf"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "dm.widthPixels ="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v11, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ";dm.heightPixels = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "dipwith = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v9, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$23:Landroid/content/Context;

    invoke-direct {v9, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v10, -0x1

    const/4 v11, -0x1

    invoke-direct {v4, v10, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v4, 0x1

    invoke-virtual {v9, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v10, Landroid/widget/ScrollView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$23:Landroid/content/Context;

    invoke-direct {v10, v4}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v11, -0x1

    const/4 v12, -0x1

    invoke-direct {v4, v11, v12}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v10, v4}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v11, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$23:Landroid/content/Context;

    invoke-direct {v11, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v12, -0x1

    const/4 v13, -0x1

    invoke-direct {v4, v12, v13}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v11, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v4, 0x1

    invoke-virtual {v11, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v4, 0x1

    invoke-virtual {v11, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v12, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$23:Landroid/content/Context;

    invoke-direct {v12, v4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$23:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v4

    if-nez v4, :cond_3

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v13, -0x1

    iget v14, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/lit8 v14, v14, 0x7

    div-int/lit8 v14, v14, 0x42

    invoke-direct {v4, v13, v14}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v12, v4}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v4, 0x0

    invoke-virtual {v12, v4, v5, v6, v5}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    invoke-static {v12}, Lcom/unipay/tools/PhoneInfoTools;->FullScreenCornerTop(Landroid/view/View;)V

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    iget v4, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/lit8 v4, v4, 0x6

    div-int/lit8 v4, v4, 0x42

    iget v13, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/lit8 v13, v13, 0x6

    div-int/lit8 v13, v13, 0x42

    invoke-direct {v5, v4, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xb

    invoke-virtual {v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v4, 0xf

    invoke-virtual {v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v13, -0x2

    const/4 v14, -0x2

    invoke-direct {v4, v13, v14}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v13, 0xd

    invoke-virtual {v4, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v13, Landroid/widget/RelativeLayout$LayoutParams;

    iget v14, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/lit8 v14, v14, 0x6

    div-int/lit8 v14, v14, 0x42

    iget v15, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/lit8 v15, v15, 0x6

    div-int/lit8 v15, v15, 0x42

    invoke-direct {v13, v14, v15}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v14, 0x9

    invoke-virtual {v13, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v14, 0xf

    invoke-virtual {v13, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iput v6, v13, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    new-instance v14, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$23:Landroid/content/Context;

    invoke-direct {v14, v15}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v15, "\u4e2d\u56fd\u8054\u901a\u6c83\u5546\u5e97\u7edf\u4e00\u652f\u4ed8"

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v15, -0x1

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v14, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v14}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    const/4 v15, 0x1

    invoke-virtual {v4, v15}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    new-instance v15, Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$23:Landroid/content/Context;

    invoke-direct {v15, v4}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$23:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v16, "unicom_base/close.png"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    const-string v16, "close.png"

    move-object/from16 v0, v16

    invoke-static {v4, v0}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v15, v4}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v15, v5}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v15, v7, v7, v7, v7}, Landroid/widget/Button;->setPadding(IIII)V

    new-instance v4, Lcom/unipay/dialog/IIIIIIIIlIlllIlI;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v15}, Lcom/unipay/dialog/IIIIIIIIlIlllIlI;-><init>(Lcom/unipay/dialog/OtherPayLostPersonalMessage;Landroid/widget/Button;)V

    invoke-virtual {v15, v4}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v5, Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$23:Landroid/content/Context;

    invoke-direct {v5, v4}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v13}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$23:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v13, "unicom_extend/back.png"

    invoke-virtual {v4, v13}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    const-string v13, "back.png"

    invoke-static {v4, v13}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    new-instance v4, Lcom/unipay/dialog/lllIIIIIlIlllIlI;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5}, Lcom/unipay/dialog/lllIIIIIlIlllIlI;-><init>(Lcom/unipay/dialog/OtherPayLostPersonalMessage;Landroid/widget/Button;)V

    invoke-virtual {v5, v4}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v12, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v12, v14}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v12, v15}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v5, Landroid/widget/TableRow;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$23:Landroid/content/Context;

    invoke-direct {v5, v4}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v13, -0x2

    const/4 v14, -0x1

    invoke-direct {v4, v13, v14}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v4}, Landroid/widget/TableRow;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v4, 0x11

    invoke-virtual {v5, v4}, Landroid/widget/TableRow;->setGravity(I)V

    const/4 v4, 0x0

    invoke-virtual {v5, v4}, Landroid/widget/TableRow;->setOrientation(I)V

    const/high16 v4, 0x4000

    invoke-virtual {v5, v4}, Landroid/widget/TableRow;->setWeightSum(F)V

    const/4 v4, 0x0

    iget v13, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v13, v13, 0x26

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v5, v4, v13, v14, v15}, Landroid/widget/TableRow;->setPadding(IIII)V

    new-instance v4, Landroid/widget/TableRow$LayoutParams;

    const/4 v13, -0x2

    iget v14, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/lit8 v14, v14, 0x5

    div-int/lit8 v14, v14, 0x26

    invoke-direct {v4, v13, v14}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    const/high16 v13, 0x3f80

    iput v13, v4, Landroid/widget/TableRow$LayoutParams;->weight:F

    new-instance v13, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$23:Landroid/content/Context;

    invoke-direct {v13, v14}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v13, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v14, "chinaunicom.png"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->getBitMapDrawable(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v13, v7, v14, v6, v15}, Landroid/widget/ImageView;->setPadding(IIII)V

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    new-instance v14, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$23:Landroid/content/Context;

    invoke-direct {v14, v15}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v14, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v4, "wostore_logo.png"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->getBitMapDrawable(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v14, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 v4, 0x0

    const/4 v15, 0x0

    invoke-virtual {v14, v6, v4, v7, v15}, Landroid/widget/ImageView;->setPadding(IIII)V

    const/4 v4, 0x1

    invoke-virtual {v14, v4}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    invoke-virtual {v5, v13}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    invoke-virtual {v5, v14}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    new-instance v13, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$23:Landroid/content/Context;

    invoke-direct {v13, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v14, -0x1

    const/4 v15, -0x1

    invoke-direct {v4, v14, v15}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v13, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v4, 0x1

    invoke-virtual {v13, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v14, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$23:Landroid/content/Context;

    invoke-direct {v14, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v15, -0x1

    iget v0, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v16, v0

    mul-int/lit8 v16, v16, 0xe

    div-int/lit8 v16, v16, 0x26

    move/from16 v0, v16

    invoke-direct {v4, v15, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v14, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v4, 0x0

    invoke-virtual {v14, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget v4, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v4, v4, 0x26

    const/4 v15, 0x0

    invoke-virtual {v14, v7, v4, v7, v15}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v4, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$23:Landroid/content/Context;

    invoke-direct {v4, v15}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v15, Landroid/view/ViewGroup$LayoutParams;

    const/16 v16, -0x1

    const/16 v17, -0x2

    invoke-direct/range {v15 .. v17}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v15}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v15, 0x0

    invoke-virtual {v4, v15}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v15, 0x2

    const v16, -0x333334

    const/high16 v17, 0x4120

    const/16 v18, 0xff

    const/16 v19, 0xfa

    const/16 v20, 0xec

    invoke-static/range {v18 .. v20}, Landroid/graphics/Color;->rgb(III)I

    move-result v18

    invoke-static/range {v15 .. v18}, Lcom/unipay/tools/PhoneInfoTools;->GetCornerWithLine(IIFI)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v15

    invoke-virtual {v4, v15}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v15, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$23:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-direct/range {v15 .. v16}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v16, Landroid/view/ViewGroup$LayoutParams;

    const/16 v17, -0x2

    const/16 v18, -0x2

    invoke-direct/range {v16 .. v18}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual/range {v15 .. v16}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v16, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$23:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-direct/range {v16 .. v17}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v17, Landroid/view/ViewGroup$LayoutParams;

    const/16 v18, -0x2

    iget v0, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v19, v0

    mul-int/lit8 v19, v19, 0x8

    div-int/lit8 v19, v19, 0x2

    div-int/lit8 v19, v19, 0x26

    invoke-direct/range {v17 .. v19}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual/range {v16 .. v17}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v6, v1, v6, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/16 v17, 0x10

    invoke-virtual/range {v16 .. v17}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget v0, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v17, v0

    div-int/lit8 v17, v17, 0x2

    sub-int v17, v17, v7

    invoke-virtual/range {v16 .. v17}, Landroid/widget/LinearLayout;->setMinimumWidth(I)V

    new-instance v17, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$23:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-direct/range {v17 .. v18}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v18, Landroid/view/ViewGroup$LayoutParams;

    const/16 v19, -0x2

    const/16 v20, -0x2

    invoke-direct/range {v18 .. v20}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v18, Landroid/text/SpannableString;

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "\u5f53\u524d\u8d26\u6237\uff1a"

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v19, Landroid/text/style/ForegroundColorSpan;

    const/16 v20, 0x97

    const/16 v21, 0x97

    const/16 v22, 0x97

    invoke-static/range {v20 .. v22}, Landroid/graphics/Color;->rgb(III)I

    move-result v20

    invoke-direct/range {v19 .. v20}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v20, 0x0

    const/16 v21, 0x5

    const/16 v22, 0x21

    invoke-virtual/range {v18 .. v22}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v19, Landroid/text/style/ForegroundColorSpan;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-static/range {v20 .. v22}, Landroid/graphics/Color;->rgb(III)I

    move-result v20

    invoke-direct/range {v19 .. v20}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v20, 0x5

    invoke-virtual/range {v18 .. v18}, Landroid/text/SpannableString;->length()I

    move-result v21

    const/16 v22, 0x21

    invoke-virtual/range {v18 .. v22}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v6, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance v18, Landroid/widget/LinearLayout$LayoutParams;

    iget v0, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v19, v0

    mul-int/lit8 v19, v19, 0x8

    div-int/lit8 v19, v19, 0x41

    iget v0, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v20, v0

    div-int/lit8 v20, v20, 0xc

    invoke-direct/range {v18 .. v20}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v19, Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$23:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-direct/range {v19 .. v20}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$3:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$3:Landroid/widget/Button;

    move-object/from16 v19, v0

    new-instance v20, Landroid/view/ViewGroup$LayoutParams;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual/range {v19 .. v20}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$3:Landroid/widget/Button;

    move-object/from16 v19, v0

    const-string v20, "\u5b8c\u5584\u8d44\u6599"

    invoke-virtual/range {v19 .. v20}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$3:Landroid/widget/Button;

    move-object/from16 v19, v0

    const/high16 v20, 0x4120

    invoke-virtual/range {v19 .. v20}, Landroid/widget/Button;->setTextSize(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$3:Landroid/widget/Button;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$20:Landroid/widget/Button;

    new-instance v19, Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$23:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-direct/range {v19 .. v20}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v20, Landroid/view/ViewGroup$LayoutParams;

    iget v0, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v21, v0

    div-int/lit8 v21, v21, 0xc

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v0, v6, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v20, 0xff

    const/16 v21, 0xfa

    const/16 v22, 0xec

    invoke-static/range {v20 .. v22}, Landroid/graphics/Color;->rgb(III)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v20, Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$23:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-direct/range {v20 .. v21}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    new-instance v21, Landroid/view/ViewGroup$LayoutParams;

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v21, "\u767b\u5f55"

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/high16 v21, 0x4120

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setTextSize(F)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$19:Landroid/widget/Button;

    new-instance v21, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$23:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-direct/range {v21 .. v22}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v22, Landroid/view/ViewGroup$LayoutParams;

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v18, "\u60a8\u5df2\u767b\u5f55"

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v18, 0x10

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    const/16 v18, 0x97

    const/16 v22, 0x97

    const/16 v23, 0x97

    move/from16 v0, v18

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v18

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v18, 0x8

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual/range {v16 .. v17}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v17, Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$23:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-direct/range {v17 .. v18}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v18, Landroid/view/ViewGroup$LayoutParams;

    const/16 v19, -0x1

    const/16 v22, 0x2

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v18, -0x333334

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v18, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$23:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-direct/range {v18 .. v19}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v19, Landroid/view/ViewGroup$LayoutParams;

    const/16 v22, -0x2

    iget v0, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v23, v0

    mul-int/lit8 v23, v23, 0x8

    div-int/lit8 v23, v23, 0x2

    div-int/lit8 v23, v23, 0x26

    move-object/from16 v0, v19

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual/range {v18 .. v19}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v19, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v22

    invoke-virtual {v0, v6, v1, v6, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/16 v19, 0x10

    invoke-virtual/range {v18 .. v19}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v19, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$23:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v22, Landroid/view/ViewGroup$LayoutParams;

    const/16 v23, -0x2

    const/16 v24, -0x2

    invoke-direct/range {v22 .. v24}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v22, Landroid/text/SpannableString;

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "\u5e94\u7528\u540d\u79f0\uff1a"

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v23, Landroid/text/style/ForegroundColorSpan;

    const/16 v24, 0x97

    const/16 v25, 0x97

    const/16 v26, 0x97

    invoke-static/range {v24 .. v26}, Landroid/graphics/Color;->rgb(III)I

    move-result v24

    invoke-direct/range {v23 .. v24}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v24, 0x0

    const/16 v25, 0x5

    const/16 v26, 0x21

    invoke-virtual/range {v22 .. v26}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v23, Landroid/text/style/ForegroundColorSpan;

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-static/range {v24 .. v26}, Landroid/graphics/Color;->rgb(III)I

    move-result v24

    invoke-direct/range {v23 .. v24}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v24, 0x5

    invoke-virtual/range {v22 .. v22}, Landroid/text/SpannableString;->length()I

    move-result v25

    const/16 v26, 0x21

    invoke-virtual/range {v22 .. v26}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {v18 .. v19}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v19, Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$23:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v22, Landroid/view/ViewGroup$LayoutParams;

    const/16 v23, -0x1

    const/16 v24, 0x2

    invoke-direct/range {v22 .. v24}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v22, -0x333334

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v22, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$23:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-direct/range {v22 .. v23}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v23, Landroid/view/ViewGroup$LayoutParams;

    const/16 v24, -0x2

    iget v0, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v25, v0

    mul-int/lit8 v25, v25, 0x8

    div-int/lit8 v25, v25, 0x2

    div-int/lit8 v25, v25, 0x26

    invoke-direct/range {v23 .. v25}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual/range {v22 .. v23}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v6, v1, v6, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/16 v23, 0x10

    invoke-virtual/range {v22 .. v23}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v23, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$23:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-direct/range {v23 .. v24}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v24, Landroid/view/ViewGroup$LayoutParams;

    const/16 v25, -0x2

    const/16 v26, -0x2

    invoke-direct/range {v24 .. v26}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v24, Landroid/text/SpannableString;

    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "\u5e94\u7528\u63d0\u4f9b\u5546\uff1a"

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v25, Landroid/text/style/ForegroundColorSpan;

    const/16 v26, 0x97

    const/16 v27, 0x97

    const/16 v28, 0x97

    invoke-static/range {v26 .. v28}, Landroid/graphics/Color;->rgb(III)I

    move-result v26

    invoke-direct/range {v25 .. v26}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v26, 0x0

    const/16 v27, 0x6

    const/16 v28, 0x21

    invoke-virtual/range {v24 .. v28}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v25, Landroid/text/style/ForegroundColorSpan;

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    invoke-static/range {v26 .. v28}, Landroid/graphics/Color;->rgb(III)I

    move-result v26

    invoke-direct/range {v25 .. v26}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v26, 0x6

    invoke-virtual/range {v24 .. v24}, Landroid/text/SpannableString;->length()I

    move-result v27

    const/16 v28, 0x21

    invoke-virtual/range {v24 .. v28}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {v22 .. v23}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual/range {v15 .. v16}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v16, Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$23:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-direct/range {v16 .. v17}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v17, Landroid/view/ViewGroup$LayoutParams;

    const/16 v18, 0x2

    const/16 v19, -0x1

    invoke-direct/range {v17 .. v19}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v17, -0x333334

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v17, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$23:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-direct/range {v17 .. v18}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v18, Landroid/view/ViewGroup$LayoutParams;

    const/16 v19, -0x1

    const/16 v22, -0x2

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual/range {v17 .. v18}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v18, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$23:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-direct/range {v18 .. v19}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v19, Landroid/view/ViewGroup$LayoutParams;

    const/16 v22, -0x2

    iget v0, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v23, v0

    mul-int/lit8 v23, v23, 0x8

    div-int/lit8 v23, v23, 0x2

    div-int/lit8 v23, v23, 0x26

    move-object/from16 v0, v19

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual/range {v18 .. v19}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v19, 0x10

    invoke-virtual/range {v18 .. v19}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/16 v19, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v6, v1, v2, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v19, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$23:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v22, Landroid/view/ViewGroup$LayoutParams;

    const/16 v23, -0x2

    const/16 v24, -0x2

    invoke-direct/range {v22 .. v24}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v22, Landroid/text/SpannableString;

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "\u60a8\u5373\u5c06\u8d2d\u4e70\uff1a"

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v23, Landroid/text/style/ForegroundColorSpan;

    const/16 v24, 0x97

    const/16 v25, 0x97

    const/16 v26, 0x97

    invoke-static/range {v24 .. v26}, Landroid/graphics/Color;->rgb(III)I

    move-result v24

    invoke-direct/range {v23 .. v24}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v24, 0x0

    const/16 v25, 0x6

    const/16 v26, 0x21

    invoke-virtual/range {v22 .. v26}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v23, Landroid/text/style/ForegroundColorSpan;

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-static/range {v24 .. v26}, Landroid/graphics/Color;->rgb(III)I

    move-result v24

    invoke-direct/range {v23 .. v24}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v24, 0x6

    invoke-virtual/range {v22 .. v22}, Landroid/text/SpannableString;->length()I

    move-result v25

    const/16 v26, 0x21

    invoke-virtual/range {v22 .. v26}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {v18 .. v19}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v19, Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$23:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v22, Landroid/view/ViewGroup$LayoutParams;

    const/16 v23, -0x1

    const/16 v24, 0x2

    invoke-direct/range {v22 .. v24}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v22, -0x333334

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v22, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$23:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-direct/range {v22 .. v23}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v23, Landroid/view/ViewGroup$LayoutParams;

    const/16 v24, -0x2

    iget v0, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v25, v0

    mul-int/lit8 v25, v25, 0x8

    div-int/lit8 v25, v25, 0x2

    div-int/lit8 v25, v25, 0x26

    invoke-direct/range {v23 .. v25}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual/range {v22 .. v23}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v23, 0x10

    invoke-virtual/range {v22 .. v23}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v6, v1, v2, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v23, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$23:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-direct/range {v23 .. v24}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v24, Landroid/view/ViewGroup$LayoutParams;

    const/16 v25, -0x2

    const/16 v26, -0x2

    invoke-direct/range {v24 .. v26}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v24, Landroid/text/SpannableString;

    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "\u5171\u9700\u652f\u4ed8\u4eba\u6c11\u5e01\uff1a"

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "\u5143"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v25, Landroid/text/style/ForegroundColorSpan;

    const/16 v26, 0x97

    const/16 v27, 0x97

    const/16 v28, 0x97

    invoke-static/range {v26 .. v28}, Landroid/graphics/Color;->rgb(III)I

    move-result v26

    invoke-direct/range {v25 .. v26}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v26, 0x0

    const/16 v27, 0x8

    const/16 v28, 0x21

    invoke-virtual/range {v24 .. v28}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v25, Landroid/text/style/ForegroundColorSpan;

    const/high16 v26, -0x1

    invoke-direct/range {v25 .. v26}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v26, 0x8

    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v27

    add-int/lit8 v27, v27, 0x8

    const/16 v28, 0x21

    invoke-virtual/range {v24 .. v28}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v25, Landroid/text/style/ForegroundColorSpan;

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    invoke-static/range {v26 .. v28}, Landroid/graphics/Color;->rgb(III)I

    move-result v26

    invoke-direct/range {v25 .. v26}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v26

    add-int/lit8 v26, v26, 0x8

    invoke-virtual/range {v24 .. v24}, Landroid/text/SpannableString;->length()I

    move-result v27

    const/16 v28, 0x21

    invoke-virtual/range {v24 .. v28}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {v22 .. v23}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v23, Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$23:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-direct/range {v23 .. v24}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v24, Landroid/view/ViewGroup$LayoutParams;

    const/16 v25, -0x1

    const/16 v26, 0x2

    invoke-direct/range {v24 .. v26}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v24, -0x333334

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v24, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$23:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-direct/range {v24 .. v25}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v25, Landroid/view/ViewGroup$LayoutParams;

    const/16 v26, -0x2

    iget v0, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v27, v0

    mul-int/lit8 v27, v27, 0x8

    div-int/lit8 v27, v27, 0x2

    div-int/lit8 v27, v27, 0x26

    invoke-direct/range {v25 .. v27}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual/range {v24 .. v25}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v25, 0x10

    invoke-virtual/range {v24 .. v25}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-virtual {v0, v6, v1, v2, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v6, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$23:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-direct {v6, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v25, Landroid/view/ViewGroup$LayoutParams;

    const/16 v26, -0x2

    const/16 v27, -0x2

    invoke-direct/range {v25 .. v27}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v25, Landroid/text/SpannableString;

    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "\u5ba2\u670d\u7535\u8bdd\uff1a"

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v26, Landroid/text/style/ForegroundColorSpan;

    const/16 v27, 0x97

    const/16 v28, 0x97

    const/16 v29, 0x97

    invoke-static/range {v27 .. v29}, Landroid/graphics/Color;->rgb(III)I

    move-result v27

    invoke-direct/range {v26 .. v27}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v27, 0x0

    const/16 v28, 0x5

    const/16 v29, 0x21

    invoke-virtual/range {v25 .. v29}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v26, Landroid/text/style/ForegroundColorSpan;

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    invoke-static/range {v27 .. v29}, Landroid/graphics/Color;->rgb(III)I

    move-result v27

    invoke-direct/range {v26 .. v27}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v27, 0x5

    invoke-virtual/range {v25 .. v25}, Landroid/text/SpannableString;->length()I

    move-result v28

    const/16 v29, 0x21

    invoke-virtual/range {v25 .. v29}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual/range {v17 .. v18}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v4, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v14, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v6, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$23:Landroid/content/Context;

    invoke-direct {v6, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v15, -0x1

    const/16 v16, -0x2

    move/from16 v0, v16

    invoke-direct {v4, v15, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v4, 0x1

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v4, 0x0

    const/4 v15, 0x0

    invoke-virtual {v6, v7, v4, v7, v15}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v15, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$23:Landroid/content/Context;

    invoke-direct {v15, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/16 v16, -0x1

    iget v0, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v17, v0

    mul-int/lit8 v17, v17, 0xa

    div-int/lit8 v17, v17, 0x26

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v4, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v15, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v4, 0x1

    invoke-virtual {v15, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v4, 0x2

    const v16, -0x333334

    const/high16 v17, 0x4120

    const/16 v18, 0xff

    const/16 v19, 0xfa

    const/16 v22, 0xec

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v18

    move/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v4, v0, v1, v2}, Lcom/unipay/tools/PhoneInfoTools;->GetCornerWithLine(IIFI)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v4

    invoke-virtual {v15, v4}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v16, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$23:Landroid/content/Context;

    move-object/from16 v0, v16

    invoke-direct {v0, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/16 v17, -0x2

    const/16 v18, -0x2

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v4, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v4, "\u8bf7\u9009\u62e9\u652f\u4ed8\u65b9\u5f0f:"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v4, 0x97

    const/16 v17, 0x97

    const/16 v18, 0x97

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v4, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v4, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v7, v4, v1, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance v17, Landroid/widget/TableRow;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$23:Landroid/content/Context;

    move-object/from16 v0, v17

    invoke-direct {v0, v4}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/16 v18, -0x1

    const/16 v19, -0x2

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v4, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/widget/TableRow;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v4, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v4, v4, 0xe

    div-int/lit8 v4, v4, 0x41

    const/16 v18, 0x0

    iget v0, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v19, v0

    mul-int/lit8 v19, v19, 0xe

    div-int/lit8 v19, v19, 0x41

    const/16 v22, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v22

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/widget/TableRow;->setPadding(IIII)V

    new-instance v18, Landroid/widget/TableRow$LayoutParams;

    const/4 v4, -0x2

    iget v0, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v19, v0

    mul-int/lit8 v19, v19, 0x8

    div-int/lit8 v19, v19, 0x26

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v0, v4, v1}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    const/high16 v4, 0x3f80

    move-object/from16 v0, v18

    iput v4, v0, Landroid/widget/TableRow$LayoutParams;->weight:F

    new-instance v4, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$23:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$18:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$18:Landroid/widget/ImageView;

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$18:Landroid/widget/ImageView;

    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    new-instance v4, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$23:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$17:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$17:Landroid/widget/ImageView;

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$17:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$23:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v19

    const-string v22, "unicom_extend/pic_card.png"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v19

    const-string v22, "pic_card.png"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$17:Landroid/widget/ImageView;

    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$17:Landroid/widget/ImageView;

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setClickable(Z)V

    new-instance v19, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$23:Landroid/content/Context;

    move-object/from16 v0, v19

    invoke-direct {v0, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v4, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    new-instance v4, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$23:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-direct {v4, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$16:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$16:Landroid/widget/ImageView;

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$16:Landroid/widget/ImageView;

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    invoke-static {}, Lcom/unipay/unipay_sdk/UniPay;->getInstance()Lcom/unipay/unipay_sdk/UniPay;

    move-result-object v4

    invoke-virtual {v4}, Lcom/unipay/unipay_sdk/UniPay;->isSupportSms()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    const/4 v4, 0x4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$18:Landroid/widget/ImageView;

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$17:Landroid/widget/ImageView;

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$17:Landroid/widget/ImageView;

    const/16 v18, 0x4

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$16:Landroid/widget/ImageView;

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$16:Landroid/widget/ImageView;

    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_3
    if-nez p1, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$3:Landroid/widget/Button;

    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setVisibility(I)V

    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$3:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$23:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v18

    const-string v21, "unicom_extend/bt_info_unclick.png"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v18

    const-string v21, "bt_info_unclick.png"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$3:Landroid/widget/Button;

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setEnabled(Z)V

    const/16 v4, 0x8

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    :try_start_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$18:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$23:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v18

    const-string v20, "unicom_extend/pic_alipay.png"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v18

    const-string v20, "pic_alipay.png"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    :goto_5
    :try_start_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$23:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v18, "unicom_extend/pic_phone.png"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    const-string v18, "pic_phone.png"

    move-object/from16 v0, v18

    invoke-static {v4, v0}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    :goto_6
    :try_start_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$16:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$23:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v18

    const-string v20, "unicom_extend/pic_phone.png"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v18

    const-string v20, "pic_phone.png"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    :goto_7
    const/4 v4, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$18:Landroid/widget/ImageView;

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$16:Landroid/widget/ImageView;

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    :goto_8
    invoke-virtual/range {v15 .. v16}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v6, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v15, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$23:Landroid/content/Context;

    invoke-direct {v15, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/16 v16, -0x1

    const/16 v17, -0x2

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v4, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v15, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v4, 0x0

    invoke-virtual {v15, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v4, 0x50

    invoke-virtual {v15, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget v4, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v4, v4, 0x58

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v15, v7, v4, v0, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v4, Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$23:Landroid/content/Context;

    invoke-direct {v4, v7}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    iget v0, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v16, v0

    mul-int/lit8 v16, v16, 0xa

    div-int/lit8 v16, v16, 0x42

    iget v8, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/lit8 v8, v8, 0x7

    div-int/lit8 v8, v8, 0x2

    div-int/lit8 v8, v8, 0x26

    move/from16 v0, v16

    invoke-direct {v7, v0, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v7, "\u5e2e\u52a9"

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v7, v8, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setTextColor(I)V

    :try_start_7
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$23:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    const-string v8, "unicom_extend/bt_help.9.png"

    invoke-virtual {v7, v8}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v7

    const-string v8, "bt_help.9.png"

    invoke-static {v7, v8}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_11

    :goto_9
    new-instance v4, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$23:Landroid/content/Context;

    invoke-direct {v4, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    const/4 v8, -0x1

    const/16 v16, -0x2

    move/from16 v0, v16

    invoke-direct {v7, v8, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v7, "\u5ba2\u670d\u7535\u8bdd\uff1a400 666 1551"

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v7, 0x5

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v7, 0x4170

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v13, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v13, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v11, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v11, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$17:Landroid/widget/ImageView;

    new-instance v5, Lcom/unipay/dialog/IllIIIIIlIlllIlI;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/unipay/dialog/IllIIIIIlIlllIlI;-><init>(Lcom/unipay/dialog/OtherPayLostPersonalMessage;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$18:Landroid/widget/ImageView;

    new-instance v5, Lcom/unipay/dialog/lIlIIIIIlIlllIlI;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/unipay/dialog/lIlIIIIIlIlllIlI;-><init>(Lcom/unipay/dialog/OtherPayLostPersonalMessage;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v4, Lcom/unipay/dialog/IIlIIIIIlIlllIlI;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v4, v0, v1}, Lcom/unipay/dialog/IIlIIIIIlIlllIlI;-><init>(Lcom/unipay/dialog/OtherPayLostPersonalMessage;Landroid/widget/ImageView;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$16:Landroid/widget/ImageView;

    new-instance v5, Lcom/unipay/dialog/llIlllIIlIlllIlI;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/unipay/dialog/llIlllIIlIlllIlI;-><init>(Lcom/unipay/dialog/OtherPayLostPersonalMessage;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :goto_a
    invoke-virtual {v9, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v9, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v10, v9}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->setContentView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$20:Landroid/widget/Button;

    new-instance v5, Lcom/unipay/dialog/IlIIllIIlIlIlIlI;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/unipay/dialog/IlIIllIIlIlIlIlI;-><init>(Lcom/unipay/dialog/OtherPayLostPersonalMessage;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$19:Landroid/widget/Button;

    new-instance v5, Lcom/unipay/dialog/lIIIllIIlIlIlIlI;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/unipay/dialog/lIIIllIIlIlIlIlI;-><init>(Lcom/unipay/dialog/OtherPayLostPersonalMessage;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    :catch_1
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    :catch_2
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$18:Landroid/widget/ImageView;

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$17:Landroid/widget/ImageView;

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

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

    :cond_1
    const/4 v4, 0x1

    move/from16 v0, p1

    if-ne v0, v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$3:Landroid/widget/Button;

    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setVisibility(I)V

    :try_start_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$3:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$23:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v18

    const-string v22, "unicom_extend/bt_info.png"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v18

    const-string v22, "bt_info.png"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    :goto_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$3:Landroid/widget/Button;

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setEnabled(Z)V

    const/16 v4, 0x8

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    :try_start_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$23:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v18, "unicom_extend/bt_info.png"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    const-string v18, "bt_info.png"

    move-object/from16 v0, v18

    invoke-static {v4, v0}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    :goto_c
    const/4 v4, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    const/16 v4, 0x8

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :try_start_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$18:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$23:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v18

    const-string v20, "unicom_extend/pic_alipay.png"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v18

    const-string v20, "pic_alipay.png"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9

    :goto_d
    :try_start_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$23:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v18, "unicom_extend/pic_phone.png"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    const-string v18, "pic_phone.png"

    move-object/from16 v0, v18

    invoke-static {v4, v0}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_a

    :goto_e
    :try_start_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$16:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$23:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v18

    const-string v20, "unicom_extend/pic_phone.png"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v18

    const-string v20, "pic_phone.png"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_b

    :goto_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$18:Landroid/widget/ImageView;

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    const/4 v4, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$16:Landroid/widget/ImageView;

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto/16 :goto_8

    :catch_7
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_b

    :catch_8
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_c

    :catch_9
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d

    :catch_a
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_e

    :catch_b
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_f

    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$3:Landroid/widget/Button;

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setVisibility(I)V

    :try_start_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$3:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$23:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v18

    const-string v22, "unicom_extend/bt_info.png"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v18

    const-string v22, "bt_info.png"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_c

    :goto_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$3:Landroid/widget/Button;

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setEnabled(Z)V

    const/4 v4, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    :try_start_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$23:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v18, "unicom_extend/bt_info.png"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    const-string v18, "bt_info.png"

    move-object/from16 v0, v18

    invoke-static {v4, v0}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_d

    :goto_11
    const/4 v4, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    const/16 v4, 0x8

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :try_start_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$18:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$23:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v18

    const-string v20, "unicom_extend/pic_alipay.png"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v18

    const-string v20, "pic_alipay.png"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_e

    :goto_12
    :try_start_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$23:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v18, "unicom_extend/pic_phone.png"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    const-string v18, "pic_phone.png"

    move-object/from16 v0, v18

    invoke-static {v4, v0}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_f

    :goto_13
    :try_start_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$16:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$23:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v18

    const-string v20, "unicom_extend/pic_phone.png"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v18

    const-string v20, "pic_phone.png"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_10

    :goto_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$18:Landroid/widget/ImageView;

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    const/4 v4, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$16:Landroid/widget/ImageView;

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto/16 :goto_8

    :catch_c
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_10

    :catch_d
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_11

    :catch_e
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_12

    :catch_f
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_13

    :catch_10
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_14

    :catch_11
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_9

    :cond_3
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v13, -0x1

    iget v14, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/lit8 v14, v14, 0x7

    div-int/lit8 v14, v14, 0x6e

    invoke-direct {v4, v13, v14}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v12, v4}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v4, 0x0

    invoke-virtual {v12, v4, v5, v6, v5}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    invoke-static {v12}, Lcom/unipay/tools/PhoneInfoTools;->FullScreenCornerTop(Landroid/view/View;)V

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    iget v4, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/lit8 v4, v4, 0x6

    div-int/lit8 v4, v4, 0x6e

    iget v13, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/lit8 v13, v13, 0x6

    div-int/lit8 v13, v13, 0x6e

    invoke-direct {v5, v4, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xb

    invoke-virtual {v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v4, 0xf

    invoke-virtual {v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v13, -0x2

    const/4 v14, -0x2

    invoke-direct {v4, v13, v14}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v13, 0xd

    invoke-virtual {v4, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v13, Landroid/widget/RelativeLayout$LayoutParams;

    iget v14, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/lit8 v14, v14, 0x6

    div-int/lit8 v14, v14, 0x6e

    iget v15, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/lit8 v15, v15, 0x6

    div-int/lit8 v15, v15, 0x6e

    invoke-direct {v13, v14, v15}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v14, 0x9

    invoke-virtual {v13, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v14, 0xf

    invoke-virtual {v13, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iput v6, v13, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    new-instance v14, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$23:Landroid/content/Context;

    invoke-direct {v14, v15}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v15, "\u4e2d\u56fd\u8054\u901a\u6c83\u5546\u5e97\u7edf\u4e00\u652f\u4ed8"

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v15, -0x1

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v14, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v14}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    const/4 v15, 0x1

    invoke-virtual {v4, v15}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    new-instance v15, Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$23:Landroid/content/Context;

    invoke-direct {v15, v4}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    :try_start_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$23:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v16, "unicom_base/close.png"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    const-string v16, "close.png"

    move-object/from16 v0, v16

    invoke-static {v4, v0}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v15, v4}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_12

    :goto_15
    invoke-virtual {v15, v5}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v15, v7, v7, v7, v7}, Landroid/widget/Button;->setPadding(IIII)V

    new-instance v4, Lcom/unipay/dialog/IlIlllIIlIlllIlI;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v15}, Lcom/unipay/dialog/IlIlllIIlIlllIlI;-><init>(Lcom/unipay/dialog/OtherPayLostPersonalMessage;Landroid/widget/Button;)V

    invoke-virtual {v15, v4}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v5, Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$23:Landroid/content/Context;

    invoke-direct {v5, v4}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v13}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :try_start_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$23:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v13, "unicom_extend/back.png"

    invoke-virtual {v4, v13}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    const-string v13, "back.png"

    invoke-static {v4, v13}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_13

    :goto_16
    new-instance v4, Lcom/unipay/dialog/lIIlllIIlIlllIlI;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5, v15}, Lcom/unipay/dialog/lIIlllIIlIlllIlI;-><init>(Lcom/unipay/dialog/OtherPayLostPersonalMessage;Landroid/widget/Button;Landroid/widget/Button;)V

    invoke-virtual {v5, v4}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v12, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v12, v14}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v12, v15}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v13, Landroid/widget/TableRow;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$23:Landroid/content/Context;

    invoke-direct {v13, v4}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v14, -0x2

    const/4 v15, -0x1

    invoke-direct {v4, v14, v15}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v13, v4}, Landroid/widget/TableRow;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v4, 0x11

    invoke-virtual {v13, v4}, Landroid/widget/TableRow;->setGravity(I)V

    const/4 v4, 0x0

    invoke-virtual {v13, v4}, Landroid/widget/TableRow;->setOrientation(I)V

    const/high16 v4, 0x4000

    invoke-virtual {v13, v4}, Landroid/widget/TableRow;->setWeightSum(F)V

    const/4 v4, 0x0

    iget v14, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v14, v14, 0x42

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v13, v4, v14, v15, v0}, Landroid/widget/TableRow;->setPadding(IIII)V

    new-instance v4, Landroid/widget/TableRow$LayoutParams;

    const/4 v14, -0x2

    iget v15, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/lit8 v15, v15, 0x5

    div-int/lit8 v15, v15, 0x26

    invoke-direct {v4, v14, v15}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    const/high16 v14, 0x3f80

    iput v14, v4, Landroid/widget/TableRow$LayoutParams;->weight:F

    new-instance v14, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$23:Landroid/content/Context;

    invoke-direct {v14, v15}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v14, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v15, "chinaunicom.png"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->getBitMapDrawable(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v7, v15, v6, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    new-instance v15, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$23:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-direct/range {v15 .. v16}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v15, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v4, "wostore_logo.png"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->getBitMapDrawable(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v15, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 v4, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v15, v6, v4, v7, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    const/4 v4, 0x1

    invoke-virtual {v15, v4}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    invoke-virtual {v13, v14}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    invoke-virtual {v13, v15}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    new-instance v14, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$23:Landroid/content/Context;

    invoke-direct {v14, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v15, -0x1

    const/16 v16, -0x1

    move/from16 v0, v16

    invoke-direct {v4, v15, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v14, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v4, 0x1

    invoke-virtual {v14, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v15, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$23:Landroid/content/Context;

    invoke-direct {v15, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/16 v16, -0x1

    const/16 v17, -0x2

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v4, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v15, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v4, 0x0

    invoke-virtual {v15, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v4, 0x0

    invoke-virtual {v15, v7, v6, v7, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v4, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$23:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v4, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v16, Landroid/view/ViewGroup$LayoutParams;

    const/16 v17, -0x1

    iget v0, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v18, v0

    mul-int/lit8 v18, v18, 0x1c

    div-int/lit8 v18, v18, 0x42

    invoke-direct/range {v16 .. v18}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v16, 0x2

    const v17, -0x333334

    const/high16 v18, 0x4120

    const/16 v19, 0xff

    const/16 v20, 0xfa

    const/16 v21, 0xec

    invoke-static/range {v19 .. v21}, Landroid/graphics/Color;->rgb(III)I

    move-result v19

    invoke-static/range {v16 .. v19}, Lcom/unipay/tools/PhoneInfoTools;->GetCornerWithLine(IIFI)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v16, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$23:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-direct/range {v16 .. v17}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v17, Landroid/view/ViewGroup$LayoutParams;

    const/16 v18, -0x2

    iget v0, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v19, v0

    mul-int/lit8 v19, v19, 0x1c

    div-int/lit8 v19, v19, 0x42

    div-int/lit8 v19, v19, 0x6

    invoke-direct/range {v17 .. v19}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual/range {v16 .. v17}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v6, v1, v6, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/16 v17, 0x10

    invoke-virtual/range {v16 .. v17}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v17, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$23:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-direct/range {v17 .. v18}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v18, Landroid/view/ViewGroup$LayoutParams;

    const/16 v19, -0x2

    const/16 v20, -0x2

    invoke-direct/range {v18 .. v20}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v18, Landroid/text/SpannableString;

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "\u5f53\u524d\u8d26\u6237\uff1a"

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v19, Landroid/text/style/ForegroundColorSpan;

    const/16 v20, 0x97

    const/16 v21, 0x97

    const/16 v22, 0x97

    invoke-static/range {v20 .. v22}, Landroid/graphics/Color;->rgb(III)I

    move-result v20

    invoke-direct/range {v19 .. v20}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v20, 0x0

    const/16 v21, 0x5

    const/16 v22, 0x21

    invoke-virtual/range {v18 .. v22}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v19, Landroid/text/style/ForegroundColorSpan;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-static/range {v20 .. v22}, Landroid/graphics/Color;->rgb(III)I

    move-result v20

    invoke-direct/range {v19 .. v20}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v20, 0x5

    invoke-virtual/range {v18 .. v18}, Landroid/text/SpannableString;->length()I

    move-result v21

    const/16 v22, 0x21

    invoke-virtual/range {v18 .. v22}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v18, Landroid/widget/LinearLayout$LayoutParams;

    iget v0, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v19, v0

    mul-int/lit8 v19, v19, 0x7

    div-int/lit8 v19, v19, 0x2d

    iget v0, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v20, v0

    mul-int/lit8 v20, v20, 0x14

    div-int/lit8 v20, v20, 0x42

    div-int/lit8 v20, v20, 0x6

    invoke-direct/range {v18 .. v20}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v18

    iput v6, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    new-instance v19, Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$23:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-direct/range {v19 .. v20}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$3:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$3:Landroid/widget/Button;

    move-object/from16 v19, v0

    new-instance v20, Landroid/view/ViewGroup$LayoutParams;

    iget v0, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v21, v0

    mul-int/lit8 v21, v21, 0x9

    div-int/lit8 v21, v21, 0x2d

    iget v0, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v22, v0

    mul-int/lit8 v22, v22, 0x14

    div-int/lit8 v22, v22, 0x42

    div-int/lit8 v22, v22, 0x6

    invoke-direct/range {v20 .. v22}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual/range {v19 .. v20}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$3:Landroid/widget/Button;

    move-object/from16 v19, v0

    const-string v20, "\u5b8c\u5584\u8d44\u6599"

    invoke-virtual/range {v19 .. v20}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$3:Landroid/widget/Button;

    move-object/from16 v19, v0

    const/high16 v20, 0x4110

    invoke-virtual/range {v19 .. v20}, Landroid/widget/Button;->setTextSize(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$3:Landroid/widget/Button;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$20:Landroid/widget/Button;

    new-instance v19, Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$23:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-direct/range {v19 .. v20}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v20, "\u767b\u5f55"

    invoke-virtual/range {v19 .. v20}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/high16 v20, 0x4110

    invoke-virtual/range {v19 .. v20}, Landroid/widget/Button;->setTextSize(F)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$19:Landroid/widget/Button;

    new-instance v20, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$23:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-direct/range {v20 .. v21}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v21, Landroid/view/ViewGroup$LayoutParams;

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v18, "\u60a8\u5df2\u767b\u5f55"

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v18, 0x10

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    const/16 v18, 0x97

    const/16 v21, 0x97

    const/16 v22, 0x97

    move/from16 v0, v18

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v18

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v18, 0x8

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual/range {v16 .. v17}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v17, Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$23:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-direct/range {v17 .. v18}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v18, Landroid/view/ViewGroup$LayoutParams;

    const/16 v21, -0x1

    const/16 v22, 0x2

    move-object/from16 v0, v18

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v18, -0x333334

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v18, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$23:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v21, Landroid/view/ViewGroup$LayoutParams;

    const/16 v22, -0x2

    iget v0, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v23, v0

    mul-int/lit8 v23, v23, 0x1c

    div-int/lit8 v23, v23, 0x42

    div-int/lit8 v23, v23, 0x6

    invoke-direct/range {v21 .. v23}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v6, v1, v6, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/16 v21, 0x10

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v21, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$23:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-direct/range {v21 .. v22}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v22, Landroid/view/ViewGroup$LayoutParams;

    const/16 v23, -0x2

    const/16 v24, -0x2

    invoke-direct/range {v22 .. v24}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v22, Landroid/text/SpannableString;

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "\u5e94\u7528\u540d\u79f0\uff1a"

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v23, Landroid/text/style/ForegroundColorSpan;

    const/16 v24, 0x97

    const/16 v25, 0x97

    const/16 v26, 0x97

    invoke-static/range {v24 .. v26}, Landroid/graphics/Color;->rgb(III)I

    move-result v24

    invoke-direct/range {v23 .. v24}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v24, 0x0

    const/16 v25, 0x5

    const/16 v26, 0x21

    invoke-virtual/range {v22 .. v26}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v23, Landroid/text/style/ForegroundColorSpan;

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-static/range {v24 .. v26}, Landroid/graphics/Color;->rgb(III)I

    move-result v24

    invoke-direct/range {v23 .. v24}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v24, 0x5

    invoke-virtual/range {v22 .. v22}, Landroid/text/SpannableString;->length()I

    move-result v25

    const/16 v26, 0x21

    invoke-virtual/range {v22 .. v26}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v21, Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$23:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-direct/range {v21 .. v22}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v22, Landroid/view/ViewGroup$LayoutParams;

    const/16 v23, -0x1

    const/16 v24, 0x2

    invoke-direct/range {v22 .. v24}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v22, -0x333334

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v22, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$23:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-direct/range {v22 .. v23}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v23, Landroid/view/ViewGroup$LayoutParams;

    const/16 v24, -0x2

    iget v0, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v25, v0

    mul-int/lit8 v25, v25, 0x1c

    div-int/lit8 v25, v25, 0x42

    div-int/lit8 v25, v25, 0x6

    invoke-direct/range {v23 .. v25}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual/range {v22 .. v23}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v6, v1, v6, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/16 v23, 0x10

    invoke-virtual/range {v22 .. v23}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v23, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$23:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-direct/range {v23 .. v24}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v24, Landroid/view/ViewGroup$LayoutParams;

    const/16 v25, -0x2

    const/16 v26, -0x2

    invoke-direct/range {v24 .. v26}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v24, Landroid/text/SpannableString;

    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "\u5e94\u7528\u63d0\u4f9b\u5546\uff1a"

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v25, Landroid/text/style/ForegroundColorSpan;

    const/16 v26, 0x97

    const/16 v27, 0x97

    const/16 v28, 0x97

    invoke-static/range {v26 .. v28}, Landroid/graphics/Color;->rgb(III)I

    move-result v26

    invoke-direct/range {v25 .. v26}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v26, 0x0

    const/16 v27, 0x6

    const/16 v28, 0x21

    invoke-virtual/range {v24 .. v28}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v25, Landroid/text/style/ForegroundColorSpan;

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    invoke-static/range {v26 .. v28}, Landroid/graphics/Color;->rgb(III)I

    move-result v26

    invoke-direct/range {v25 .. v26}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v26, 0x6

    invoke-virtual/range {v24 .. v24}, Landroid/text/SpannableString;->length()I

    move-result v27

    const/16 v28, 0x21

    invoke-virtual/range {v24 .. v28}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {v22 .. v23}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v23, Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$23:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-direct/range {v23 .. v24}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v24, Landroid/view/ViewGroup$LayoutParams;

    const/16 v25, -0x1

    const/16 v26, 0x2

    invoke-direct/range {v24 .. v26}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v24, -0x333334

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v24, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$23:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-direct/range {v24 .. v25}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v25, Landroid/view/ViewGroup$LayoutParams;

    const/16 v26, -0x2

    iget v0, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v27, v0

    mul-int/lit8 v27, v27, 0x1c

    div-int/lit8 v27, v27, 0x42

    div-int/lit8 v27, v27, 0x6

    invoke-direct/range {v25 .. v27}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual/range {v24 .. v25}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v25, 0x10

    invoke-virtual/range {v24 .. v25}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-virtual {v0, v6, v1, v2, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v25, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$23:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-direct/range {v25 .. v26}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v26, Landroid/view/ViewGroup$LayoutParams;

    const/16 v27, -0x2

    const/16 v28, -0x2

    invoke-direct/range {v26 .. v28}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual/range {v25 .. v26}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v26, Landroid/text/SpannableString;

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "\u60a8\u5373\u5c06\u8d2d\u4e70\uff1a"

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v27, Landroid/text/style/ForegroundColorSpan;

    const/16 v28, 0x97

    const/16 v29, 0x97

    const/16 v30, 0x97

    invoke-static/range {v28 .. v30}, Landroid/graphics/Color;->rgb(III)I

    move-result v28

    invoke-direct/range {v27 .. v28}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v28, 0x0

    const/16 v29, 0x6

    const/16 v30, 0x21

    invoke-virtual/range {v26 .. v30}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v27, Landroid/text/style/ForegroundColorSpan;

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    invoke-static/range {v28 .. v30}, Landroid/graphics/Color;->rgb(III)I

    move-result v28

    invoke-direct/range {v27 .. v28}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v28, 0x6

    invoke-virtual/range {v26 .. v26}, Landroid/text/SpannableString;->length()I

    move-result v29

    const/16 v30, 0x21

    invoke-virtual/range {v26 .. v30}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual/range {v25 .. v26}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {v24 .. v25}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v25, Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$23:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-direct/range {v25 .. v26}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v26, Landroid/view/ViewGroup$LayoutParams;

    const/16 v27, -0x1

    const/16 v28, 0x2

    invoke-direct/range {v26 .. v28}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v26, -0x333334

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v26, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$23:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-direct/range {v26 .. v27}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v27, Landroid/view/ViewGroup$LayoutParams;

    const/16 v28, -0x2

    iget v0, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v29, v0

    mul-int/lit8 v29, v29, 0x1c

    div-int/lit8 v29, v29, 0x42

    div-int/lit8 v29, v29, 0x6

    invoke-direct/range {v27 .. v29}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual/range {v26 .. v27}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v27, 0x10

    invoke-virtual/range {v26 .. v27}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v6, v1, v2, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v27, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$23:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-direct/range {v27 .. v28}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v28, Landroid/view/ViewGroup$LayoutParams;

    const/16 v29, -0x2

    const/16 v30, -0x2

    invoke-direct/range {v28 .. v30}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v28, Landroid/text/SpannableString;

    new-instance v29, Ljava/lang/StringBuilder;

    const-string v30, "\u5171\u9700\u652f\u4ed8\u4eba\u6c11\u5e01\uff1a"

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "\u5143"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v29, Landroid/text/style/ForegroundColorSpan;

    const/16 v30, 0x97

    const/16 v31, 0x97

    const/16 v32, 0x97

    invoke-static/range {v30 .. v32}, Landroid/graphics/Color;->rgb(III)I

    move-result v30

    invoke-direct/range {v29 .. v30}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v30, 0x0

    const/16 v31, 0x8

    const/16 v32, 0x21

    invoke-virtual/range {v28 .. v32}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v29, Landroid/text/style/ForegroundColorSpan;

    const/high16 v30, -0x1

    invoke-direct/range {v29 .. v30}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v30, 0x8

    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v31

    add-int/lit8 v31, v31, 0x8

    const/16 v32, 0x21

    invoke-virtual/range {v28 .. v32}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v29, Landroid/text/style/ForegroundColorSpan;

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    invoke-static/range {v30 .. v32}, Landroid/graphics/Color;->rgb(III)I

    move-result v30

    invoke-direct/range {v29 .. v30}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v30

    add-int/lit8 v30, v30, 0x8

    invoke-virtual/range {v28 .. v28}, Landroid/text/SpannableString;->length()I

    move-result v31

    const/16 v32, 0x21

    invoke-virtual/range {v28 .. v32}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {v26 .. v27}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v27, Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$23:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-direct/range {v27 .. v28}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v28, Landroid/view/ViewGroup$LayoutParams;

    const/16 v29, -0x1

    const/16 v30, 0x2

    invoke-direct/range {v28 .. v30}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v28, -0x333334

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v28, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$23:Landroid/content/Context;

    move-object/from16 v29, v0

    invoke-direct/range {v28 .. v29}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v29, Landroid/view/ViewGroup$LayoutParams;

    const/16 v30, -0x2

    iget v0, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v31, v0

    mul-int/lit8 v31, v31, 0x1c

    div-int/lit8 v31, v31, 0x42

    div-int/lit8 v31, v31, 0x6

    invoke-direct/range {v29 .. v31}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual/range {v28 .. v29}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v29, 0x10

    invoke-virtual/range {v28 .. v29}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v29

    move/from16 v2, v30

    move/from16 v3, v31

    invoke-virtual {v0, v6, v1, v2, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v29, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$23:Landroid/content/Context;

    move-object/from16 v30, v0

    invoke-direct/range {v29 .. v30}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v30, Landroid/view/ViewGroup$LayoutParams;

    const/16 v31, -0x2

    const/16 v32, -0x2

    invoke-direct/range {v30 .. v32}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual/range {v29 .. v30}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v30, Landroid/text/SpannableString;

    new-instance v31, Ljava/lang/StringBuilder;

    const-string v32, "\u5ba2\u670d\u7535\u8bdd\uff1a"

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v31

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-direct/range {v30 .. v31}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v31, Landroid/text/style/ForegroundColorSpan;

    const/16 v32, 0x97

    const/16 v33, 0x97

    const/16 v34, 0x97

    invoke-static/range {v32 .. v34}, Landroid/graphics/Color;->rgb(III)I

    move-result v32

    invoke-direct/range {v31 .. v32}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v32, 0x0

    const/16 v33, 0x5

    const/16 v34, 0x21

    invoke-virtual/range {v30 .. v34}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v31, Landroid/text/style/ForegroundColorSpan;

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    invoke-static/range {v32 .. v34}, Landroid/graphics/Color;->rgb(III)I

    move-result v32

    invoke-direct/range {v31 .. v32}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v32, 0x5

    invoke-virtual/range {v30 .. v30}, Landroid/text/SpannableString;->length()I

    move-result v33

    const/16 v34, 0x21

    invoke-virtual/range {v30 .. v34}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual/range {v29 .. v30}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {v28 .. v29}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v15, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v16, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$23:Landroid/content/Context;

    move-object/from16 v0, v16

    invoke-direct {v0, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/16 v17, -0x1

    const/16 v18, -0x2

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v4, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v4, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget v4, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v4, v4, 0x42

    move-object/from16 v0, v16

    invoke-virtual {v0, v7, v4, v7, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v6, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$23:Landroid/content/Context;

    invoke-direct {v6, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/16 v17, -0x1

    iget v0, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v18, v0

    mul-int/lit8 v18, v18, 0x11

    div-int/lit8 v18, v18, 0x42

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v4, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v4, 0x1

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v4, 0x2

    const v17, -0x333334

    const/high16 v18, 0x4120

    const/16 v21, 0xff

    const/16 v22, 0xfa

    const/16 v23, 0xec

    invoke-static/range {v21 .. v23}, Landroid/graphics/Color;->rgb(III)I

    move-result v21

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v21

    invoke-static {v4, v0, v1, v2}, Lcom/unipay/tools/PhoneInfoTools;->GetCornerWithLine(IIFI)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v17, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$23:Landroid/content/Context;

    move-object/from16 v0, v17

    invoke-direct {v0, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/16 v18, -0x2

    const/16 v21, -0x2

    move/from16 v0, v18

    move/from16 v1, v21

    invoke-direct {v4, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v4, "\u8bf7\u9009\u62e9\u652f\u4ed8\u65b9\u5f0f:"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v4, 0x97

    const/16 v18, 0x97

    const/16 v21, 0x97

    move/from16 v0, v18

    move/from16 v1, v21

    invoke-static {v4, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v4, 0x0

    const/16 v18, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v21

    invoke-virtual {v0, v7, v4, v1, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance v18, Landroid/widget/TableRow;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$23:Landroid/content/Context;

    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/16 v21, -0x1

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v4, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/widget/TableRow;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v4, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v7, v4, v7, v1}, Landroid/widget/TableRow;->setPadding(IIII)V

    new-instance v21, Landroid/widget/TableRow$LayoutParams;

    const/4 v4, -0x2

    iget v0, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v22, v0

    mul-int/lit8 v22, v22, 0xa

    div-int/lit8 v22, v22, 0x42

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v0, v4, v1}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    const/high16 v4, 0x3f80

    move-object/from16 v0, v21

    iput v4, v0, Landroid/widget/TableRow$LayoutParams;->weight:F

    const/16 v4, 0x10

    move-object/from16 v0, v21

    iput v4, v0, Landroid/widget/TableRow$LayoutParams;->gravity:I

    new-instance v4, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$23:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-direct {v4, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$18:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$18:Landroid/widget/ImageView;

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$18:Landroid/widget/ImageView;

    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    new-instance v4, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$23:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-direct {v4, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$17:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$17:Landroid/widget/ImageView;

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$23:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-direct {v4, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$16:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$16:Landroid/widget/ImageView;

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$16:Landroid/widget/ImageView;

    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    :try_start_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$17:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$23:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v22

    const-string v23, "unicom_extend/pic_card.png"

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v22

    const-string v23, "pic_card.png"

    invoke-static/range {v22 .. v23}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_14

    :goto_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$17:Landroid/widget/ImageView;

    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$17:Landroid/widget/ImageView;

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setClickable(Z)V

    new-instance v22, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$23:Landroid/content/Context;

    move-object/from16 v0, v22

    invoke-direct {v0, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v4, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    invoke-static {}, Lcom/unipay/unipay_sdk/UniPay;->getInstance()Lcom/unipay/unipay_sdk/UniPay;

    move-result-object v4

    invoke-virtual {v4}, Lcom/unipay/unipay_sdk/UniPay;->isSupportSms()Z

    move-result v4

    if-eqz v4, :cond_4

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    const/4 v4, 0x4

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$18:Landroid/widget/ImageView;

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$17:Landroid/widget/ImageView;

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$17:Landroid/widget/ImageView;

    const/16 v21, 0x4

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$16:Landroid/widget/ImageView;

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$16:Landroid/widget/ImageView;

    const/16 v21, 0x8

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_18
    if-nez p1, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$3:Landroid/widget/Button;

    const/16 v20, 0x8

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setVisibility(I)V

    :try_start_15
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$3:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$23:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v20

    const-string v21, "unicom_extend/bt_info_unclick.png"

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v20

    const-string v21, "bt_info_unclick.png"

    invoke-static/range {v20 .. v21}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_15

    :goto_19
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$3:Landroid/widget/Button;

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setEnabled(Z)V

    const/16 v4, 0x8

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    :try_start_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$18:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$23:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v19

    const-string v20, "unicom_extend/pic_alipay.png"

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v19

    const-string v20, "pic_alipay.png"

    invoke-static/range {v19 .. v20}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_16

    :goto_1a
    :try_start_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$23:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v19, "unicom_extend/pic_phone.png"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    const-string v19, "pic_phone.png"

    move-object/from16 v0, v19

    invoke-static {v4, v0}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_17

    :goto_1b
    :try_start_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$16:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$23:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v19

    const-string v20, "unicom_extend/pic_phone.png"

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v19

    const-string v20, "pic_phone.png"

    invoke-static/range {v19 .. v20}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_18

    :goto_1c
    const/4 v4, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$18:Landroid/widget/ImageView;

    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$16:Landroid/widget/ImageView;

    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    :goto_1d
    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v6, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$23:Landroid/content/Context;

    invoke-direct {v6, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/16 v17, -0x1

    const/16 v18, -0x2

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v4, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v4, 0x0

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v4, 0x50

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 v4, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v6, v7, v4, v0, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v7, Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$23:Landroid/content/Context;

    invoke-direct {v7, v4}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    iget v0, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v17, v0

    mul-int/lit8 v17, v17, 0xf

    div-int/lit8 v17, v17, 0x42

    iget v8, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/lit8 v8, v8, 0x1b

    div-int/lit8 v8, v8, 0x42

    div-int/lit8 v8, v8, 0x6

    move/from16 v0, v17

    invoke-direct {v4, v0, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v4}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v4, "\u5e2e\u52a9"

    invoke-virtual {v7, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-static {v4, v8, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {v7, v4}, Landroid/widget/Button;->setTextColor(I)V

    const/high16 v4, 0x4170

    invoke-virtual {v7, v4}, Landroid/widget/Button;->setTextSize(F)V

    :try_start_19
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$23:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v8, "unicom_extend/bt_help.9.png"

    invoke-virtual {v4, v8}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    const-string v8, "bt_help.9.png"

    invoke-static {v4, v8}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v7, v4}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_23

    :goto_1e
    new-instance v4, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$23:Landroid/content/Context;

    invoke-direct {v4, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    const/16 v17, -0x1

    const/16 v18, -0x2

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v8, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v8, "\u5ba2\u670d\u7535\u8bdd\uff1a400 666 1551"

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v8, 0x5

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v8, 0x4170

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v14, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v11, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v11, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v4, Lcom/unipay/dialog/IIIlllIIlIlllIlI;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v7}, Lcom/unipay/dialog/IIIlllIIlIlllIlI;-><init>(Lcom/unipay/dialog/OtherPayLostPersonalMessage;Landroid/widget/Button;)V

    invoke-virtual {v7, v4}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$17:Landroid/widget/ImageView;

    new-instance v6, Lcom/unipay/dialog/IlllllIIlIlIlIlI;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/unipay/dialog/IlllllIIlIlIlIlI;-><init>(Lcom/unipay/dialog/OtherPayLostPersonalMessage;)V

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$18:Landroid/widget/ImageView;

    new-instance v6, Lcom/unipay/dialog/lIllllIIlIlIlIlI;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v5}, Lcom/unipay/dialog/lIllllIIlIlIlIlI;-><init>(Lcom/unipay/dialog/OtherPayLostPersonalMessage;Landroid/widget/Button;)V

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v4, Lcom/unipay/dialog/IIllllIIlIlIlIlI;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v4, v0, v1}, Lcom/unipay/dialog/IIllllIIlIlIlIlI;-><init>(Lcom/unipay/dialog/OtherPayLostPersonalMessage;Landroid/widget/ImageView;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$16:Landroid/widget/ImageView;

    new-instance v5, Lcom/unipay/dialog/llIIllIIlIlIlIlI;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/unipay/dialog/llIIllIIlIlIlIlI;-><init>(Lcom/unipay/dialog/OtherPayLostPersonalMessage;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/16 :goto_a

    :catch_12
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_15

    :catch_13
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_16

    :catch_14
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_17

    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$18:Landroid/widget/ImageView;

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$17:Landroid/widget/ImageView;

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    goto/16 :goto_18

    :catch_15
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_19

    :catch_16
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1a

    :catch_17
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1b

    :catch_18
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1c

    :cond_5
    const/4 v4, 0x1

    move/from16 v0, p1

    if-ne v0, v4, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$3:Landroid/widget/Button;

    const/16 v21, 0x8

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setVisibility(I)V

    :try_start_1a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$3:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$23:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v21

    const-string v23, "unicom_extend/bt_info.png"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v21

    const-string v23, "bt_info.png"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_19

    :goto_1f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$3:Landroid/widget/Button;

    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setEnabled(Z)V

    const/16 v4, 0x8

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    :try_start_1b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$23:Landroid/content/Context;

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

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_1a

    :goto_20
    const/4 v4, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    const/16 v4, 0x8

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :try_start_1c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$18:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$23:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v19

    const-string v20, "unicom_extend/pic_alipay.png"

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v19

    const-string v20, "pic_alipay.png"

    invoke-static/range {v19 .. v20}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_1b

    :goto_21
    :try_start_1d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$23:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v19, "unicom_extend/pic_phone.png"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    const-string v19, "pic_phone.png"

    move-object/from16 v0, v19

    invoke-static {v4, v0}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_1c

    :goto_22
    :try_start_1e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$16:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$23:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v19

    const-string v20, "unicom_extend/pic_phone.png"

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v19

    const-string v20, "pic_phone.png"

    invoke-static/range {v19 .. v20}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_1d

    :goto_23
    const/4 v4, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$18:Landroid/widget/ImageView;

    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$16:Landroid/widget/ImageView;

    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto/16 :goto_1d

    :catch_19
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1f

    :catch_1a
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_20

    :catch_1b
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_21

    :catch_1c
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_22

    :catch_1d
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_23

    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$3:Landroid/widget/Button;

    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setVisibility(I)V

    :try_start_1f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$3:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$23:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v21

    const-string v23, "unicom_extend/bt_info.png"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v21

    const-string v23, "bt_info.png"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_1e

    :goto_24
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$3:Landroid/widget/Button;

    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setEnabled(Z)V

    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    :try_start_20
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$23:Landroid/content/Context;

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

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_1f

    :goto_25
    const/4 v4, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    const/16 v4, 0x8

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :try_start_21
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$18:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$23:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v19

    const-string v20, "unicom_extend/pic_alipay.png"

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v19

    const-string v20, "pic_alipay.png"

    invoke-static/range {v19 .. v20}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_20

    :goto_26
    :try_start_22
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$23:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v19, "unicom_extend/pic_phone.png"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    const-string v19, "pic_phone.png"

    move-object/from16 v0, v19

    invoke-static {v4, v0}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_21

    :goto_27
    :try_start_23
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$16:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$23:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v19

    const-string v20, "unicom_extend/pic_phone.png"

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v19

    const-string v20, "pic_phone.png"

    invoke-static/range {v19 .. v20}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_23} :catch_22

    :goto_28
    const/4 v4, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$18:Landroid/widget/ImageView;

    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$16:Landroid/widget/ImageView;

    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto/16 :goto_1d

    :catch_1e
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_24

    :catch_1f
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_25

    :catch_20
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_26

    :catch_21
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_27

    :catch_22
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_28

    :catch_23
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1e
.end method

.method static synthetic _$1(Lcom/unipay/dialog/OtherPayLostPersonalMessage;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$1(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic _$1(Lcom/unipay/dialog/OtherPayLostPersonalMessage;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$1(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic _$1(Lcom/unipay/dialog/OtherPayLostPersonalMessage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private _$1(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$11:Lcom/unipay/net/Parameters;

    invoke-virtual {v0}, Lcom/unipay/net/Parameters;->clear()V

    iget-object v0, p0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$11:Lcom/unipay/net/Parameters;

    const-string v1, "serviceid"

    const-string v2, "login"

    invoke-virtual {v0, v1, v2}, Lcom/unipay/net/Parameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$11:Lcom/unipay/net/Parameters;

    const-string v1, "password"

    invoke-virtual {v0, v1, p1}, Lcom/unipay/net/Parameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private _$1(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    invoke-static {}, Lcom/unipay/unipay_sdk/UniPay;->getInstance()Lcom/unipay/unipay_sdk/UniPay;

    move-result-object v0

    const-string v1, "\u6b63\u5728\u767b\u5f55\uff0c\u8bf7\u7a0d\u540e..."

    invoke-virtual {v0, v1}, Lcom/unipay/unipay_sdk/UniPay;->showProgressDialog(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/unipay/tools/MultimodeConfig;->setHandphone(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$1(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$13:Lcom/unipay/net/AsyncMultimode;

    sget-object v1, Lcom/unipay/tools/MultimodeConfig;->CLIENT_URL:Ljava/lang/String;

    const-string v2, "GET"

    iget-object v3, p0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$11:Lcom/unipay/net/Parameters;

    new-instance v4, Lcom/unipay/dialog/lIllllIIlllIlllI;

    invoke-direct {v4, p0}, Lcom/unipay/dialog/lIllllIIlllIlllI;-><init>(Lcom/unipay/dialog/OtherPayLostPersonalMessage;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/unipay/net/AsyncMultimode;->requestWithHead(Ljava/lang/String;Ljava/lang/String;Lcom/unipay/net/Parameters;Lcom/unipay/net/AsyncMultimode$RequestListener;)V

    return-void
.end method

.method private _$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$11:Lcom/unipay/net/Parameters;

    invoke-virtual {v0}, Lcom/unipay/net/Parameters;->clear()V

    iget-object v0, p0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$11:Lcom/unipay/net/Parameters;

    const-string v1, "serviceid"

    const-string v2, "register"

    invoke-virtual {v0, v1, v2}, Lcom/unipay/net/Parameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$11:Lcom/unipay/net/Parameters;

    const-string v1, "phonenumber"

    invoke-virtual {v0, v1, p1}, Lcom/unipay/net/Parameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$11:Lcom/unipay/net/Parameters;

    const-string v1, "loginpass"

    invoke-virtual {v0, v1, p2}, Lcom/unipay/net/Parameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$11:Lcom/unipay/net/Parameters;

    const-string v1, "confirmpass"

    invoke-virtual {v0, v1, p2}, Lcom/unipay/net/Parameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$11:Lcom/unipay/net/Parameters;

    const-string v1, "verifycode"

    invoke-virtual {v0, v1, p3}, Lcom/unipay/net/Parameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$11:Lcom/unipay/net/Parameters;

    const-string v1, "nickname"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/unipay/net/Parameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic _$10(Lcom/unipay/dialog/OtherPayLostPersonalMessage;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$19:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic _$11(Lcom/unipay/dialog/OtherPayLostPersonalMessage;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$20:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic _$12(Lcom/unipay/dialog/OtherPayLostPersonalMessage;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$16:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic _$13(Lcom/unipay/dialog/OtherPayLostPersonalMessage;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$18:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic _$14(Lcom/unipay/dialog/OtherPayLostPersonalMessage;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$17:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic _$15(Lcom/unipay/dialog/OtherPayLostPersonalMessage;)Lcom/unipay/dialog/OtherPayLostPersonalMessage$OtherPaySelectedListener;
    .locals 1

    iget-object v0, p0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$21:Lcom/unipay/dialog/OtherPayLostPersonalMessage$OtherPaySelectedListener;

    return-object v0
.end method

.method static synthetic _$16(Lcom/unipay/dialog/OtherPayLostPersonalMessage;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$23:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic _$2(Lcom/unipay/dialog/OtherPayLostPersonalMessage;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$5:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic _$2(Lcom/unipay/dialog/OtherPayLostPersonalMessage;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$2:Ljava/lang/String;

    return-object p1
.end method

.method private _$2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    invoke-static {}, Lcom/unipay/unipay_sdk/UniPay;->getInstance()Lcom/unipay/unipay_sdk/UniPay;

    move-result-object v0

    const-string v1, "\u6b63\u5728\u8bf7\u6c42\u6570\u636e\uff0c\u8bf7\u7a0d\u540e..."

    invoke-virtual {v0, v1}, Lcom/unipay/unipay_sdk/UniPay;->showProgressDialog(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$13:Lcom/unipay/net/AsyncMultimode;

    sget-object v1, Lcom/unipay/tools/MultimodeConfig;->CLIENT_URL:Ljava/lang/String;

    const-string v2, "GET"

    iget-object v3, p0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$11:Lcom/unipay/net/Parameters;

    new-instance v4, Lcom/unipay/dialog/IllIIIIlIllIIIII;

    invoke-direct {v4, p0}, Lcom/unipay/dialog/IllIIIIlIllIIIII;-><init>(Lcom/unipay/dialog/OtherPayLostPersonalMessage;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/unipay/net/AsyncMultimode;->requestWithHead(Ljava/lang/String;Ljava/lang/String;Lcom/unipay/net/Parameters;Lcom/unipay/net/AsyncMultimode$RequestListener;)V

    return-void
.end method

.method static synthetic _$3(Lcom/unipay/dialog/OtherPayLostPersonalMessage;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$6:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic _$4(Lcom/unipay/dialog/OtherPayLostPersonalMessage;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$7:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic _$5(Lcom/unipay/dialog/OtherPayLostPersonalMessage;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$8:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic _$6(Lcom/unipay/dialog/OtherPayLostPersonalMessage;)Lcom/unipay/beans/LoginRsp;
    .locals 1

    iget-object v0, p0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$14:Lcom/unipay/beans/LoginRsp;

    return-object v0
.end method

.method static synthetic _$7(Lcom/unipay/dialog/OtherPayLostPersonalMessage;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$1:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic _$8(Lcom/unipay/dialog/OtherPayLostPersonalMessage;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$2:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic _$9(Lcom/unipay/dialog/OtherPayLostPersonalMessage;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$3:Landroid/widget/Button;

    return-object v0
.end method


# virtual methods
.method public getBitMapDrawable(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$23:Landroid/content/Context;

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
    invoke-virtual {p0, v2}, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->readInputStream(Ljava/io/InputStream;)[B

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

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$21:Lcom/unipay/dialog/OtherPayLostPersonalMessage$OtherPaySelectedListener;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lcom/unipay/dialog/OtherPayLostPersonalMessage$OtherPaySelectedListener;->OtherPaySelect(I)V

    invoke-virtual {p0}, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->dismiss()V

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
