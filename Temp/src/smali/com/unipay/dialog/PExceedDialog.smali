.class public Lcom/unipay/dialog/PExceedDialog;
.super Landroid/app/Dialog;


# static fields
.field public static final CANCEL:I = 0x4

.field public static final SUCCESS:I = 0x1


# instance fields
.field private _$1:Lcom/unipay/dialog/ExceedDialog$ExceedingResultListener;

.field private _$2:Lcom/unipay/tools/ExceedingTools;

.field private _$3:Lcom/unipay/tools/DensityUtil;

.field private _$4:Z

.field private _$5:Landroid/widget/Button;

.field private _$6:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/unipay/dialog/ExceedDialog$ExceedingResultListener;)V
    .locals 2

    const v0, 0x103000b

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unipay/dialog/PExceedDialog;->_$4:Z

    iput-object p1, p0, Lcom/unipay/dialog/PExceedDialog;->_$6:Landroid/content/Context;

    new-instance v0, Lcom/unipay/tools/DensityUtil;

    iget-object v1, p0, Lcom/unipay/dialog/PExceedDialog;->_$6:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/unipay/tools/DensityUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unipay/dialog/PExceedDialog;->_$3:Lcom/unipay/tools/DensityUtil;

    new-instance v0, Lcom/unipay/tools/ExceedingTools;

    iget-object v1, p0, Lcom/unipay/dialog/PExceedDialog;->_$6:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/unipay/tools/ExceedingTools;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unipay/dialog/PExceedDialog;->_$2:Lcom/unipay/tools/ExceedingTools;

    iput-object p2, p0, Lcom/unipay/dialog/PExceedDialog;->_$1:Lcom/unipay/dialog/ExceedDialog$ExceedingResultListener;

    invoke-direct {p0}, Lcom/unipay/dialog/PExceedDialog;->_$1()V

    return-void
.end method

.method static synthetic _$1(Lcom/unipay/dialog/PExceedDialog;)Lcom/unipay/dialog/ExceedDialog$ExceedingResultListener;
    .locals 1

    iget-object v0, p0, Lcom/unipay/dialog/PExceedDialog;->_$1:Lcom/unipay/dialog/ExceedDialog$ExceedingResultListener;

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

.method private _$1()V
    .locals 24

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/unipay/dialog/PExceedDialog;->requestWindowFeature(I)Z

    const/high16 v3, 0x3f80

    invoke-static {v3}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    const/high16 v3, 0x4000

    invoke-static {v3}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    const/high16 v3, 0x4040

    invoke-static {v3}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    move-result v4

    const/high16 v3, 0x40a0

    invoke-static {v3}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    move-result v5

    const/high16 v3, 0x41a0

    invoke-static {v3}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    const/high16 v3, 0x41f0

    invoke-static {v3}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    move-result v6

    const/high16 v3, 0x4220

    invoke-static {v3}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    move-result v7

    const/high16 v3, 0x4120

    invoke-static {v3}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    move-result v8

    const/high16 v3, 0x4248

    invoke-static {v3}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    move-result v9

    const/high16 v3, 0x428c

    invoke-static {v3}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    const/high16 v3, 0x428c

    invoke-static {v3}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    const/high16 v3, 0x42dc

    invoke-static {v3}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    const/high16 v3, 0x4316

    invoke-static {v3}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    const/high16 v3, 0x4348

    invoke-static {v3}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    invoke-virtual/range {p0 .. p0}, Lcom/unipay/dialog/PExceedDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v10

    new-instance v11, Landroid/util/DisplayMetrics;

    invoke-direct {v11}, Landroid/util/DisplayMetrics;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/unipay/dialog/PExceedDialog;->_$6:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v11}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v3, v11, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v12, v3

    const-wide v14, 0x3feccccccccccccdL

    mul-double/2addr v12, v14

    double-to-int v12, v12

    iget v3, v11, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v13, v3, 0x28

    mul-int/lit8 v14, v3, 0x3

    div-int/lit8 v14, v14, 0x28

    mul-int/lit8 v15, v3, 0x1

    div-int/lit8 v15, v15, 0xa

    mul-int/lit8 v16, v12, 0x1

    div-int/lit8 v16, v16, 0x6

    mul-int/lit8 v17, v12, 0x4

    div-int/lit8 v17, v17, 0x3

    div-int/lit8 v17, v17, 0x3

    mul-int/lit8 v18, v12, 0x1

    div-int/lit8 v18, v18, 0x2

    const-string v19, "xyf"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "dm.widthPixels ="

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v11, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ";dm.heightPixels = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget v11, v11, Landroid/util/DisplayMetrics;->heightPixels:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, v19

    invoke-static {v0, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "dipwith = "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/unipay/dialog/PExceedDialog;->getWindow()Landroid/view/Window;

    move-result-object v11

    const v19, 0x3dcccccd

    const/16 v20, 0x0

    const/16 v21, 0xff

    const/16 v22, 0xff

    const/16 v23, 0xff

    invoke-static/range {v20 .. v23}, Landroid/graphics/Color;->argb(IIII)I

    move-result v20

    invoke-static/range {v19 .. v20}, Lcom/unipay/tools/PhoneInfoTools;->GetCorner(FI)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v11, Landroid/widget/ScrollView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/PExceedDialog;->_$6:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-direct {v11, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    new-instance v19, Landroid/view/ViewGroup$LayoutParams;

    move-object/from16 v0, v19

    invoke-direct {v0, v12, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v11, v3, v14, v0, v1}, Landroid/widget/ScrollView;->setPadding(IIII)V

    new-instance v14, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/unipay/dialog/PExceedDialog;->_$6:Landroid/content/Context;

    invoke-direct {v14, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/16 v19, -0x1

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v3, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v14, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x1

    invoke-virtual {v14, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v3, 0x4120

    const/16 v19, 0xf0

    const/16 v20, 0xf0

    const/16 v21, 0xf0

    invoke-static/range {v19 .. v21}, Landroid/graphics/Color;->rgb(III)I

    move-result v19

    move/from16 v0, v19

    invoke-static {v3, v0}, Lcom/unipay/tools/PhoneInfoTools;->GetCorner(FI)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v3

    invoke-virtual {v14, v3}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v19, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/unipay/dialog/PExceedDialog;->_$6:Landroid/content/Context;

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/16 v20, -0x1

    move/from16 v0, v20

    invoke-direct {v3, v0, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4, v5, v4}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    const/high16 v3, 0x4120

    move-object/from16 v0, v19

    invoke-static {v0, v3}, Lcom/unipay/tools/PhoneInfoTools;->toCornerTop(Landroid/view/View;F)V

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xb

    invoke-virtual {v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v3, 0xf

    invoke-virtual {v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v6, -0x2

    const/4 v7, -0x2

    invoke-direct {v3, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v6, 0xd

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v6, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/unipay/dialog/PExceedDialog;->_$6:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v7, 0x3e8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setId(I)V

    const-string v7, "\u652f \u4ed8 \u5b89 \u5168 \u63d0 \u793a"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v7, 0x4190

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v7, Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/unipay/dialog/PExceedDialog;->_$6:Landroid/content/Context;

    invoke-direct {v7, v3}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/unipay/dialog/PExceedDialog;->_$6:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string v20, "unicom_base/close.png"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    const-string v20, "close.png"

    move-object/from16 v0, v20

    invoke-static {v3, v0}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v7, v5}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v7, v8, v8, v8, v8}, Landroid/widget/Button;->setPadding(IIII)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v5, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/unipay/dialog/PExceedDialog;->_$6:Landroid/content/Context;

    invoke-direct {v5, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v6, -0x1

    const/16 v20, -0x2

    move/from16 v0, v20

    invoke-direct {v3, v6, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x0

    invoke-virtual {v5, v4, v15, v4, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v3, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/PExceedDialog;->_$6:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v6, -0x1

    const/16 v20, -0x2

    move/from16 v0, v20

    invoke-direct {v4, v6, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v4, "\u9ed1\u4f53"

    const/4 v6, 0x0

    invoke-static {v4, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/PExceedDialog;->_$6:Landroid/content/Context;

    const-string v6, "exceeding_name"

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v4, v6, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v6, "exceeding_money"

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-interface {v4, v6, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    const-string v4, "\u60a8\u4eca\u65e5\u5df2\u591a\u6b21\u652f\u4ed8\uff0c\u7ee7\u7eed\u652f\u4ed8\u8bf7\u8f93\u5165\u9a8c\u8bc1\u7801!"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v4, 0x0

    const/4 v6, 0x0

    move/from16 v0, v16

    move/from16 v1, v16

    invoke-virtual {v3, v0, v4, v1, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v4, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/unipay/dialog/PExceedDialog;->_$6:Landroid/content/Context;

    invoke-direct {v4, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    const/16 v16, -0x1

    const/16 v20, -0x2

    move/from16 v0, v16

    move/from16 v1, v20

    invoke-direct {v6, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/16 v6, 0xff

    const/16 v16, 0xf0

    const/16 v20, 0xf0

    move/from16 v0, v16

    move/from16 v1, v20

    invoke-static {v6, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    const/4 v6, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v4, v6, v13, v0, v13}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v4, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/unipay/dialog/PExceedDialog;->_$6:Landroid/content/Context;

    invoke-direct {v4, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    const/4 v13, -0x1

    const/16 v16, -0x2

    move/from16 v0, v16

    invoke-direct {v6, v13, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v6, 0x10

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v6, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/unipay/dialog/PExceedDialog;->_$6:Landroid/content/Context;

    invoke-direct {v6, v13}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v13, Landroid/view/ViewGroup$LayoutParams;

    const/16 v16, -0x1

    const/16 v20, -0x2

    move/from16 v0, v16

    move/from16 v1, v20

    invoke-direct {v13, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v13}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v13, 0x0

    invoke-virtual {v6, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v13, 0x1

    invoke-virtual {v6, v13}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 v13, 0x0

    const/16 v16, 0x0

    const/16 v20, 0x0

    move/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v6, v13, v15, v0, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v13, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/PExceedDialog;->_$6:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v13, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v16, Landroid/view/ViewGroup$LayoutParams;

    const/16 v20, -0x2

    const/16 v21, -0x2

    move-object/from16 v0, v16

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v16, "\u8f93\u5165\u9a8c\u8bc1\u7801"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v16, ""

    const/16 v20, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 v16, 0x5

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v16, -0x100

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v16, 0x4180

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextSize(F)V

    const/high16 v3, 0x4188

    invoke-virtual {v13, v3}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v3, 0x0

    const/16 v16, 0x0

    const/16 v20, 0x0

    move/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v13, v3, v0, v8, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance v16, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/unipay/dialog/PExceedDialog;->_$6:Landroid/content/Context;

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    mul-int/lit8 v20, v12, 0x4

    div-int/lit8 v20, v20, 0xa

    const/16 v21, -0x2

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v3, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setInputType(I)V

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/text/InputFilter;

    const/16 v20, 0x0

    new-instance v21, Landroid/text/InputFilter$LengthFilter;

    const/16 v22, 0x4

    invoke-direct/range {v21 .. v22}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v21, v3, v20

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    const v3, 0x10000006

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setImeOptions(I)V

    new-instance v20, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/unipay/dialog/PExceedDialog;->_$6:Landroid/content/Context;

    move-object/from16 v0, v20

    invoke-direct {v0, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/16 v21, -0x2

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v3, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v3, 0x10

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v21, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/unipay/dialog/PExceedDialog;->_$6:Landroid/content/Context;

    move-object/from16 v0, v21

    invoke-direct {v0, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    mul-int/lit8 v3, v12, 0x2

    div-int/lit8 v3, v3, 0xa

    mul-int/lit8 v22, v12, 0x1

    div-int/lit8 v22, v22, 0xa

    mul-int/lit8 v23, v12, 0x3

    div-int/lit8 v23, v23, 0x4

    div-int/lit8 v23, v23, 0xa

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-static {v3, v0, v1}, Lcom/unipay/tools/VerificationCode;->getInstance(III)Lcom/unipay/tools/VerificationCode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/unipay/tools/VerificationCode;->createBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/unipay/dialog/PExceedDialog;->_$6:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v3

    if-nez v3, :cond_0

    mul-int/lit8 v3, v12, 0x3

    div-int/lit8 v3, v3, 0x2

    div-int/lit8 v3, v3, 0xa

    mul-int/lit8 v22, v12, 0x3

    div-int/lit8 v22, v22, 0x4

    div-int/lit8 v22, v22, 0xa

    mul-int/lit8 v23, v12, 0x3

    div-int/lit8 v23, v23, 0x4

    div-int/lit8 v23, v23, 0xa

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-static {v3, v0, v1}, Lcom/unipay/tools/VerificationCode;->getInstance(III)Lcom/unipay/tools/VerificationCode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/unipay/tools/VerificationCode;->createBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/16 v22, -0x2

    const/16 v23, -0x2

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-direct {v3, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v17

    move/from16 v2, v22

    invoke-virtual {v0, v1, v8, v3, v2}, Landroid/widget/ImageView;->setPadding(IIII)V

    invoke-virtual/range {v20 .. v21}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v6, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v6, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/unipay/dialog/PExceedDialog;->_$6:Landroid/content/Context;

    invoke-direct {v6, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v8, -0x1

    const/4 v13, -0x2

    invoke-direct {v3, v8, v13}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x0

    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v3, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, v3, v15, v8, v15}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/16 v3, 0x11

    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v3, Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/unipay/dialog/PExceedDialog;->_$6:Landroid/content/Context;

    invoke-direct {v3, v8}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/unipay/dialog/PExceedDialog;->_$5:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/unipay/dialog/PExceedDialog;->_$5:Landroid/widget/Button;

    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    move/from16 v0, v18

    invoke-direct {v8, v0, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v8}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/unipay/dialog/PExceedDialog;->_$5:Landroid/widget/Button;

    const-string v8, "\u786e\u8ba4\u652f\u4ed8"

    invoke-virtual {v3, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/unipay/dialog/PExceedDialog;->_$5:Landroid/widget/Button;

    const/4 v8, -0x1

    invoke-virtual {v3, v8}, Landroid/widget/Button;->setTextColor(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/unipay/dialog/PExceedDialog;->_$5:Landroid/widget/Button;

    const/high16 v8, 0x4190

    invoke-virtual {v3, v8}, Landroid/widget/Button;->setTextSize(F)V

    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/unipay/dialog/PExceedDialog;->_$5:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/unipay/dialog/PExceedDialog;->_$6:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    const-string v9, "unicom_base/btn_ac.png"

    invoke-virtual {v8, v9}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v8

    const-string v9, "btn_ac.png"

    invoke-static {v8, v9}, Landroid/graphics/drawable/BitmapDrawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/unipay/dialog/PExceedDialog;->_$5:Landroid/widget/Button;

    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v14, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v14, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v14, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v11, v14}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/unipay/dialog/PExceedDialog;->_$5:Landroid/widget/Button;

    new-instance v4, Lcom/unipay/dialog/lIlIIlIIIlllllll;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v4, v0, v1}, Lcom/unipay/dialog/lIlIIlIIIlllllll;-><init>(Lcom/unipay/dialog/PExceedDialog;Landroid/widget/EditText;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v3, Lcom/unipay/dialog/IIlIIlIIIlllllll;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v7}, Lcom/unipay/dialog/IIlIIlIIIlllllll;-><init>(Lcom/unipay/dialog/PExceedDialog;Landroid/widget/Button;)V

    invoke-virtual {v7, v3}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/unipay/dialog/PExceedDialog;->setContentView(Landroid/view/View;)V

    iput v12, v10, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual/range {p0 .. p0}, Lcom/unipay/dialog/PExceedDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/unipay/dialog/PExceedDialog;->setCanceledOnTouchOutside(Z)V

    return-void

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    :catch_1
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method static synthetic _$2(Lcom/unipay/dialog/PExceedDialog;)Lcom/unipay/tools/ExceedingTools;
    .locals 1

    iget-object v0, p0, Lcom/unipay/dialog/PExceedDialog;->_$2:Lcom/unipay/tools/ExceedingTools;

    return-object v0
.end method

.method static synthetic _$3(Lcom/unipay/dialog/PExceedDialog;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/unipay/dialog/PExceedDialog;->_$5:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic _$4(Lcom/unipay/dialog/PExceedDialog;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/unipay/dialog/PExceedDialog;->_$6:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getBitMapDrawable(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/unipay/dialog/PExceedDialog;->_$6:Landroid/content/Context;

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
    invoke-virtual {p0, v2}, Lcom/unipay/dialog/PExceedDialog;->readInputStream(Ljava/io/InputStream;)[B

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

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unipay/dialog/PExceedDialog;->_$1:Lcom/unipay/dialog/ExceedDialog$ExceedingResultListener;

    invoke-interface {v0, v1}, Lcom/unipay/dialog/ExceedDialog$ExceedingResultListener;->result(I)V

    invoke-virtual {p0}, Lcom/unipay/dialog/PExceedDialog;->dismiss()V

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

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
