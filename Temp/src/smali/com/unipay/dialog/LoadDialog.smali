.class public Lcom/unipay/dialog/LoadDialog;
.super Landroid/app/Dialog;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unipay/dialog/llIlIllIlIIlllll;,
        Lcom/unipay/dialog/LoadDialog$LoadDialogListener;
    }
.end annotation


# static fields
.field public static final CANCEL:I = 0x2

.field public static final LOAD:I = 0x1


# instance fields
.field private _$1:Lcom/unipay/net/Parameters;

.field private _$2:Landroid/widget/Button;

.field private _$3:Lcom/unipay/net/HttpNet;

.field private _$4:Lcom/unipay/net/AsyncMultimode;

.field private _$5:Ljava/lang/String;

.field private _$6:Lcom/unipay/dialog/LoadDialog$LoadDialogListener;

.field private _$7:Lcom/unipay/tools/DensityUtil;

.field private _$8:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/unipay/dialog/LoadDialog$LoadDialogListener;)V
    .locals 2

    const v0, 0x103000b

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    new-instance v0, Lcom/unipay/net/Parameters;

    invoke-direct {v0}, Lcom/unipay/net/Parameters;-><init>()V

    iput-object v0, p0, Lcom/unipay/dialog/LoadDialog;->_$1:Lcom/unipay/net/Parameters;

    iput-object p1, p0, Lcom/unipay/dialog/LoadDialog;->_$8:Landroid/content/Context;

    iput-object p2, p0, Lcom/unipay/dialog/LoadDialog;->_$6:Lcom/unipay/dialog/LoadDialog$LoadDialogListener;

    new-instance v0, Lcom/unipay/tools/DensityUtil;

    invoke-direct {v0, p1}, Lcom/unipay/tools/DensityUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unipay/dialog/LoadDialog;->_$7:Lcom/unipay/tools/DensityUtil;

    new-instance v0, Lcom/unipay/net/HttpNet;

    invoke-direct {v0}, Lcom/unipay/net/HttpNet;-><init>()V

    iput-object v0, p0, Lcom/unipay/dialog/LoadDialog;->_$3:Lcom/unipay/net/HttpNet;

    new-instance v0, Lcom/unipay/net/AsyncMultimode;

    iget-object v1, p0, Lcom/unipay/dialog/LoadDialog;->_$3:Lcom/unipay/net/HttpNet;

    invoke-direct {v0, v1}, Lcom/unipay/net/AsyncMultimode;-><init>(Lcom/unipay/net/HttpNet;)V

    iput-object v0, p0, Lcom/unipay/dialog/LoadDialog;->_$4:Lcom/unipay/net/AsyncMultimode;

    invoke-direct {p0}, Lcom/unipay/dialog/LoadDialog;->_$1()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/unipay/dialog/LoadDialog$LoadDialogListener;Ljava/lang/String;)V
    .locals 2

    const v0, 0x103000b

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    new-instance v0, Lcom/unipay/net/Parameters;

    invoke-direct {v0}, Lcom/unipay/net/Parameters;-><init>()V

    iput-object v0, p0, Lcom/unipay/dialog/LoadDialog;->_$1:Lcom/unipay/net/Parameters;

    iput-object p3, p0, Lcom/unipay/dialog/LoadDialog;->_$5:Ljava/lang/String;

    iput-object p1, p0, Lcom/unipay/dialog/LoadDialog;->_$8:Landroid/content/Context;

    iput-object p2, p0, Lcom/unipay/dialog/LoadDialog;->_$6:Lcom/unipay/dialog/LoadDialog$LoadDialogListener;

    new-instance v0, Lcom/unipay/tools/DensityUtil;

    invoke-direct {v0, p1}, Lcom/unipay/tools/DensityUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unipay/dialog/LoadDialog;->_$7:Lcom/unipay/tools/DensityUtil;

    new-instance v0, Lcom/unipay/net/HttpNet;

    invoke-direct {v0}, Lcom/unipay/net/HttpNet;-><init>()V

    iput-object v0, p0, Lcom/unipay/dialog/LoadDialog;->_$3:Lcom/unipay/net/HttpNet;

    new-instance v0, Lcom/unipay/net/AsyncMultimode;

    iget-object v1, p0, Lcom/unipay/dialog/LoadDialog;->_$3:Lcom/unipay/net/HttpNet;

    invoke-direct {v0, v1}, Lcom/unipay/net/AsyncMultimode;-><init>(Lcom/unipay/net/HttpNet;)V

    iput-object v0, p0, Lcom/unipay/dialog/LoadDialog;->_$4:Lcom/unipay/net/AsyncMultimode;

    invoke-direct {p0}, Lcom/unipay/dialog/LoadDialog;->_$1()V

    return-void
.end method

.method static synthetic _$1(Lcom/unipay/dialog/LoadDialog;)Lcom/unipay/net/AsyncMultimode;
    .locals 1

    iget-object v0, p0, Lcom/unipay/dialog/LoadDialog;->_$4:Lcom/unipay/net/AsyncMultimode;

    return-object v0
.end method

.method static synthetic _$1(Lcom/unipay/dialog/LoadDialog;Ljava/io/InputStream;)Lcom/unipay/wostore/tabledata/DataAdapter;
    .locals 1

    invoke-direct {p0, p1}, Lcom/unipay/dialog/LoadDialog;->_$1(Ljava/io/InputStream;)Lcom/unipay/wostore/tabledata/DataAdapter;

    move-result-object v0

    return-object v0
.end method

.method private _$1(Ljava/io/InputStream;)Lcom/unipay/wostore/tabledata/DataAdapter;
    .locals 5

    const/4 v2, 0x0

    const/16 v0, 0x400

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-array v0, v0, [B

    :goto_0
    const/4 v1, 0x0

    const/16 v4, 0x400

    :try_start_0
    invoke-virtual {p1, v0, v1, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    :goto_1
    :try_start_1
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_0

    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_0
    :goto_2
    :try_start_3
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    return-object v0

    :cond_1
    :try_start_4
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/unipay/wostore/tabledata/DataParser;->parser([B)Lcom/unipay/wostore/tabledata/DataAdapter;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v0

    :try_start_5
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    :try_start_6
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_3

    :catch_1
    move-exception v1

    move-object p1, v2

    goto :goto_1

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catchall_0
    move-exception v0

    :goto_4
    if-eqz p1, :cond_2

    :try_start_7
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    :cond_2
    :goto_5
    :try_start_8
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    :goto_6
    throw v0

    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    :catch_5
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object p1, v2

    goto :goto_4

    :catch_6
    move-exception v1

    goto :goto_1
.end method

.method private _$1()V
    .locals 21

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/unipay/dialog/LoadDialog;->requestWindowFeature(I)Z

    const/high16 v3, 0x3f80

    invoke-static {v3}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    const/high16 v3, 0x4000

    invoke-static {v3}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    const/high16 v3, 0x4040

    invoke-static {v3}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    move-result v5

    const/high16 v3, 0x40a0

    invoke-static {v3}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    move-result v6

    const/high16 v3, 0x41a0

    invoke-static {v3}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    const/high16 v3, 0x41f0

    invoke-static {v3}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    move-result v7

    const/high16 v3, 0x4220

    invoke-static {v3}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    move-result v8

    const/high16 v3, 0x4120

    invoke-static {v3}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    move-result v9

    const/high16 v3, 0x4248

    invoke-static {v3}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

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

    invoke-virtual/range {p0 .. p0}, Lcom/unipay/dialog/LoadDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v10

    new-instance v11, Landroid/util/DisplayMetrics;

    invoke-direct {v11}, Landroid/util/DisplayMetrics;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/unipay/dialog/LoadDialog;->_$8:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v11}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v3, v11, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    invoke-static {v3}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    move-result v12

    iget v3, v11, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v3, v3

    invoke-static {v3}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    const/high16 v3, 0x4000

    invoke-static {v3}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    const/high16 v3, 0x40a0

    invoke-static {v3}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    const/high16 v3, 0x4100

    invoke-static {v3}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/unipay/dialog/LoadDialog;->_$8:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v3

    if-eqz v3, :cond_1

    iget v3, v11, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v3, v3, 0x9

    div-int/lit8 v3, v3, 0xa

    move v4, v3

    :goto_0
    const-string v3, "xyf"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "dm.widthPixels ="

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v14, v11, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ";dm.heightPixels = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v11, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v3, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "xyf"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "dipwith = "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, v11, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v12, 0x1e0

    if-gt v3, v12, :cond_2

    const/high16 v3, 0x4000

    invoke-static {v3}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    const/high16 v3, 0x40a0

    invoke-static {v3}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    const/high16 v3, 0x4100

    invoke-static {v3}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/unipay/dialog/LoadDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v11, 0x0

    invoke-static {v11}, Lcom/unipay/tools/PhoneInfoTools;->getWindowsBackGround(I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v11, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/unipay/dialog/LoadDialog;->_$8:Landroid/content/Context;

    invoke-direct {v11, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v12, -0x1

    const/4 v13, -0x1

    invoke-direct {v3, v12, v13}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v11, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x1

    invoke-virtual {v11, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v12, Landroid/widget/ScrollView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/unipay/dialog/LoadDialog;->_$8:Landroid/content/Context;

    invoke-direct {v12, v3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v13, -0x1

    const/4 v14, -0x1

    invoke-direct {v3, v13, v14}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v12, v3}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v13, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/unipay/dialog/LoadDialog;->_$8:Landroid/content/Context;

    invoke-direct {v13, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v14, -0x1

    const/4 v15, -0x1

    invoke-direct {v3, v14, v15}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v13, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x1

    invoke-virtual {v13, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v3, 0x4120

    invoke-static {v13, v3}, Lcom/unipay/tools/PhoneInfoTools;->toCorner(Landroid/view/View;F)V

    new-instance v14, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/unipay/dialog/LoadDialog;->_$8:Landroid/content/Context;

    invoke-direct {v14, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v15, -0x1

    invoke-direct {v3, v15, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v14, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x0

    invoke-virtual {v14, v3, v5, v6, v5}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    const/high16 v3, 0x4120

    invoke-static {v14, v3}, Lcom/unipay/tools/PhoneInfoTools;->toCornerTop(Landroid/view/View;F)V

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xb

    invoke-virtual {v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v3, 0xf

    invoke-virtual {v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v15, -0x2

    const/16 v16, -0x2

    move/from16 v0, v16

    invoke-direct {v3, v15, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v15, 0xd

    invoke-virtual {v3, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v15, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/LoadDialog;->_$8:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-direct/range {v15 .. v16}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v16, "\u4f7f\u7528\u5df2\u6709\u5e10\u53f7\u767b\u5f55"

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v16, -0x1

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v15, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v16, Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/unipay/dialog/LoadDialog;->_$8:Landroid/content/Context;

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/unipay/dialog/LoadDialog;->_$8:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string v17, "unicom_base/close.png"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    const-string v17, "close.png"

    move-object/from16 v0, v17

    invoke-static {v3, v0}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v9, v9, v9, v9}, Landroid/widget/Button;->setPadding(IIII)V

    invoke-virtual {v14, v15}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v5, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/unipay/dialog/LoadDialog;->_$8:Landroid/content/Context;

    invoke-direct {v5, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v15, -0x1

    const/16 v17, -0x2

    move/from16 v0, v17

    invoke-direct {v3, v15, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x0

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v3, 0x0

    const/4 v15, 0x0

    invoke-virtual {v5, v3, v9, v15, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v15, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/unipay/dialog/LoadDialog;->_$8:Landroid/content/Context;

    invoke-direct {v15, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/unipay/dialog/LoadDialog;->_$8:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v3

    if-nez v3, :cond_8

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    div-int/lit8 v17, v4, 0x4

    const/16 v18, -0x2

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v3, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v15, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_3
    const-string v3, "\u8f93\u5165\u624b\u673a\u53f7"

    invoke-virtual {v15, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v3, 0x5

    invoke-virtual {v15, v3}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v3, -0x100

    invoke-virtual {v15, v3}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v17, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/unipay/dialog/LoadDialog;->_$8:Landroid/content/Context;

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    div-int/lit8 v18, v4, 0x2

    const/16 v19, -0x2

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v3, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x2

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setInputType(I)V

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/text/InputFilter;

    const/16 v18, 0x0

    new-instance v19, Landroid/text/InputFilter$LengthFilter;

    const/16 v20, 0xb

    invoke-direct/range {v19 .. v20}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v19, v3, v18

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    const v3, 0x10000006

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setImeOptions(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/unipay/dialog/LoadDialog;->_$5:Ljava/lang/String;

    if-eqz v3, :cond_0

    const-string v3, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/LoadDialog;->_$5:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/unipay/dialog/LoadDialog;->_$5:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {v5, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v15, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/unipay/dialog/LoadDialog;->_$8:Landroid/content/Context;

    invoke-direct {v15, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/16 v18, -0x1

    const/16 v19, -0x2

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v3, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v15, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x0

    invoke-virtual {v15, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v3, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v15, v3, v0, v1, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v9, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/unipay/dialog/LoadDialog;->_$8:Landroid/content/Context;

    invoke-direct {v9, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/unipay/dialog/LoadDialog;->_$8:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v3

    if-nez v3, :cond_9

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    div-int/lit8 v18, v4, 0x4

    const/16 v19, -0x2

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v3, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_4
    const-string v3, "\u8f93\u5165\u5bc6\u7801"

    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v3, 0x5

    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v3, -0x100

    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v18, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/unipay/dialog/LoadDialog;->_$8:Landroid/content/Context;

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    div-int/lit8 v19, v4, 0x2

    const/16 v20, -0x2

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v3, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v3, 0x81

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setInputType(I)V

    const v3, 0x10000006

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setImeOptions(I)V

    invoke-virtual {v15, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v9, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/unipay/dialog/LoadDialog;->_$8:Landroid/content/Context;

    invoke-direct {v9, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/16 v19, -0x1

    const/16 v20, -0x2

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v3, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v9, v3, v0, v1, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/16 v3, 0x11

    invoke-virtual {v9, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 v3, 0x0

    invoke-virtual {v9, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v6, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/unipay/dialog/LoadDialog;->_$8:Landroid/content/Context;

    invoke-direct {v6, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/unipay/dialog/LoadDialog;->_$8:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v3

    if-nez v3, :cond_a

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    div-int/lit8 v19, v4, 0x4

    const/16 v20, -0x2

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v3, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_5
    const-string v3, "\u5fd8\u8bb0\u5bc6\u7801\u4e86\uff1f\u8bf7\u70b9\u51fb"

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v3, 0x3

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v3, -0x100

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v3, 0x4120

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setTextSize(F)V

    new-instance v3, Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/LoadDialog;->_$8:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-direct {v3, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/unipay/dialog/LoadDialog;->_$2:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/unipay/dialog/LoadDialog;->_$2:Landroid/widget/Button;

    new-instance v19, Landroid/view/ViewGroup$LayoutParams;

    div-int/lit8 v20, v4, 0x5

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v0, v1, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/unipay/dialog/LoadDialog;->_$2:Landroid/widget/Button;

    const-string v7, "\u83b7\u53d6\u5bc6\u7801"

    invoke-virtual {v3, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/unipay/dialog/LoadDialog;->_$2:Landroid/widget/Button;

    const/high16 v7, 0x4120

    invoke-virtual {v3, v7}, Landroid/widget/Button;->setTextSize(F)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/unipay/dialog/LoadDialog;->_$2:Landroid/widget/Button;

    const/4 v7, -0x1

    invoke-virtual {v3, v7}, Landroid/widget/Button;->setTextColor(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/unipay/dialog/LoadDialog;->_$2:Landroid/widget/Button;

    const/16 v7, 0x11

    invoke-virtual {v3, v7}, Landroid/widget/Button;->setGravity(I)V

    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/unipay/dialog/LoadDialog;->_$2:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/unipay/dialog/LoadDialog;->_$8:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    const-string v19, "unicom_extend/passwd.png"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v7

    const-string v19, "passwd.png"

    move-object/from16 v0, v19

    invoke-static {v7, v0}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_6
    invoke-virtual {v9, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/unipay/dialog/LoadDialog;->_$2:Landroid/widget/Button;

    invoke-virtual {v9, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v6, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/unipay/dialog/LoadDialog;->_$8:Landroid/content/Context;

    invoke-direct {v6, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v7, -0x1

    const/16 v19, -0x2

    move/from16 v0, v19

    invoke-direct {v3, v7, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x5

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v6, v3, v7, v0, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/16 v3, 0x11

    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v7, Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/unipay/dialog/LoadDialog;->_$8:Landroid/content/Context;

    invoke-direct {v7, v3}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    div-int/lit8 v19, v4, 0x3

    move/from16 v0, v19

    invoke-direct {v3, v0, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v3}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v3, "\u767b\u5f55"

    invoke-virtual {v7, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v3, -0x1

    invoke-virtual {v7, v3}, Landroid/widget/Button;->setTextColor(I)V

    const/16 v3, 0x11

    invoke-virtual {v7, v3}, Landroid/widget/Button;->setGravity(I)V

    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/unipay/dialog/LoadDialog;->_$8:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string v8, "unicom_extend/bt_sure_normal.9.png"

    invoke-virtual {v3, v8}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    const-string v8, "bt_sure_normal.9.png"

    invoke-static {v3, v8}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_7
    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v13, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v13, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v13, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v13, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v11, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v11, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v12, v11}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/unipay/dialog/LoadDialog;->setContentView(Landroid/view/View;)V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/unipay/dialog/LoadDialog;->setCanceledOnTouchOutside(Z)V

    iput v4, v10, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual/range {p0 .. p0}, Lcom/unipay/dialog/LoadDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    new-instance v3, Lcom/unipay/dialog/IIIIIIllIlllIlll;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v3, v0, v7, v1, v2}, Lcom/unipay/dialog/IIIIIIllIlllIlll;-><init>(Lcom/unipay/dialog/LoadDialog;Landroid/widget/Button;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v7, v3}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v3, Lcom/unipay/dialog/lIIIIIllIlllIlll;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v3, v0, v1}, Lcom/unipay/dialog/lIIIIIllIlllIlll;-><init>(Lcom/unipay/dialog/LoadDialog;Landroid/widget/Button;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/unipay/dialog/LoadDialog;->_$2:Landroid/widget/Button;

    new-instance v4, Lcom/unipay/dialog/IlIIIIllIlllIlll;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v4, v0, v1}, Lcom/unipay/dialog/IlIIIIllIlllIlll;-><init>(Lcom/unipay/dialog/LoadDialog;Landroid/widget/EditText;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void

    :cond_1
    iget v3, v11, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v3, v3, 0x2

    div-int/lit8 v3, v3, 0x3

    move v4, v3

    goto/16 :goto_0

    :cond_2
    iget v3, v11, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v12, 0x239

    if-gt v3, v12, :cond_3

    const/high16 v3, 0x40a0

    invoke-static {v3}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    const/high16 v3, 0x4100

    invoke-static {v3}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    const/high16 v3, 0x4120

    invoke-static {v3}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    goto/16 :goto_1

    :cond_3
    iget v3, v11, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v12, 0x280

    if-gt v3, v12, :cond_4

    const/high16 v3, 0x40a0

    invoke-static {v3}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    const/high16 v3, 0x4120

    invoke-static {v3}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    const/high16 v3, 0x41c8

    invoke-static {v3}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    goto/16 :goto_1

    :cond_4
    iget v3, v11, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v12, 0x3c0

    if-gt v3, v12, :cond_5

    const/high16 v3, 0x40a0

    invoke-static {v3}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    const/high16 v3, 0x4170

    invoke-static {v3}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    const/high16 v3, 0x4120

    invoke-static {v3}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    iget v3, v11, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v11, v3

    const-wide/high16 v13, 0x3fe0

    mul-double/2addr v11, v13

    double-to-int v3, v11

    int-to-float v3, v3

    invoke-static {v3}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    goto/16 :goto_1

    :cond_5
    iget v3, v11, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v12, 0x500

    if-gt v3, v12, :cond_6

    const/high16 v3, 0x40a0

    invoke-static {v3}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    const/high16 v3, 0x4170

    invoke-static {v3}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    const/high16 v3, 0x4120

    invoke-static {v3}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    iget v3, v11, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v11, v3

    const-wide/high16 v13, 0x3fe0

    mul-double/2addr v11, v13

    double-to-int v3, v11

    int-to-float v3, v3

    invoke-static {v3}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    goto/16 :goto_1

    :cond_6
    iget v3, v11, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v12, 0x780

    if-gt v3, v12, :cond_7

    const/high16 v3, 0x40a0

    invoke-static {v3}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    const/high16 v3, 0x4170

    invoke-static {v3}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    const/high16 v3, 0x4120

    invoke-static {v3}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    iget v3, v11, Landroid/util/DisplayMetrics;->widthPixels:I

    goto/16 :goto_1

    :cond_7
    const/high16 v3, 0x40a0

    invoke-static {v3}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    const/high16 v3, 0x4170

    invoke-static {v3}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    const/high16 v3, 0x4120

    invoke-static {v3}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    iget v3, v11, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v11, v3

    const-wide/high16 v13, 0x3fe0

    mul-double/2addr v11, v13

    double-to-int v3, v11

    int-to-float v3, v3

    invoke-static {v3}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    goto/16 :goto_1

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    :cond_8
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    div-int/lit8 v17, v4, 0x3

    const/16 v18, -0x2

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v3, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v15, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_3

    :cond_9
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    div-int/lit8 v18, v4, 0x3

    const/16 v19, -0x2

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v3, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_4

    :cond_a
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    div-int/lit8 v19, v4, 0x3

    const/16 v20, -0x2

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v3, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_5

    :catch_1
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_6

    :catch_2
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_7
.end method

.method static synthetic _$1(Lcom/unipay/dialog/LoadDialog;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/unipay/dialog/LoadDialog;->_$1(Ljava/lang/String;)V

    return-void
.end method

.method private _$1(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/unipay/dialog/LoadDialog;->_$1:Lcom/unipay/net/Parameters;

    invoke-virtual {v0}, Lcom/unipay/net/Parameters;->clear()V

    iget-object v0, p0, Lcom/unipay/dialog/LoadDialog;->_$1:Lcom/unipay/net/Parameters;

    const-string v1, "phonenumber"

    invoke-virtual {v0, v1, p1}, Lcom/unipay/net/Parameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic _$2(Lcom/unipay/dialog/LoadDialog;)Lcom/unipay/net/Parameters;
    .locals 1

    iget-object v0, p0, Lcom/unipay/dialog/LoadDialog;->_$1:Lcom/unipay/net/Parameters;

    return-object v0
.end method

.method static synthetic _$3(Lcom/unipay/dialog/LoadDialog;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/unipay/dialog/LoadDialog;->_$2:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic _$4(Lcom/unipay/dialog/LoadDialog;)Lcom/unipay/dialog/LoadDialog$LoadDialogListener;
    .locals 1

    iget-object v0, p0, Lcom/unipay/dialog/LoadDialog;->_$6:Lcom/unipay/dialog/LoadDialog$LoadDialogListener;

    return-object v0
.end method

.method static synthetic _$5(Lcom/unipay/dialog/LoadDialog;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/unipay/dialog/LoadDialog;->_$8:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unipay/dialog/LoadDialog;->_$6:Lcom/unipay/dialog/LoadDialog$LoadDialogListener;

    const/4 v1, 0x2

    const-string v2, ""

    const-string v3, ""

    invoke-interface {v0, v1, v2, v3}, Lcom/unipay/dialog/LoadDialog$LoadDialogListener;->opearation(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/unipay/dialog/LoadDialog;->dismiss()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
