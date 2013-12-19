.class public Lcom/unipay/dialog/PersonalMessage;
.super Landroid/app/Dialog;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unipay/dialog/llIlllllllIlIIll;,
        Lcom/unipay/dialog/IlIIIIllIlIIlIll;,
        Lcom/unipay/dialog/PersonalMessage$PersonalRegisterLister;
    }
.end annotation


# static fields
.field public static final CANCEL:I = 0x2

.field public static final GETPASSWD_LOGIN:I = 0x3

.field public static final REGISTER:I = 0x1


# instance fields
.field private _$1:Landroid/widget/EditText;

.field private _$2:Landroid/widget/Button;

.field private _$3:Lcom/unipay/dialog/IlIIIIllIlIIlIll;

.field private _$4:Lcom/unipay/net/HttpNet;

.field private _$5:Lcom/unipay/net/AsyncMultimode;

.field private _$6:Lcom/unipay/net/Parameters;

.field private _$7:Lcom/unipay/dialog/PersonalMessage$PersonalRegisterLister;

.field private _$8:Landroid/content/Context;

.field private _$9:Lcom/unipay/tools/DensityUtil;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/unipay/dialog/PersonalMessage$PersonalRegisterLister;)V
    .locals 2

    const v0, 0x103000b

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    new-instance v0, Lcom/unipay/net/Parameters;

    invoke-direct {v0}, Lcom/unipay/net/Parameters;-><init>()V

    iput-object v0, p0, Lcom/unipay/dialog/PersonalMessage;->_$6:Lcom/unipay/net/Parameters;

    iput-object p1, p0, Lcom/unipay/dialog/PersonalMessage;->_$8:Landroid/content/Context;

    iput-object p2, p0, Lcom/unipay/dialog/PersonalMessage;->_$7:Lcom/unipay/dialog/PersonalMessage$PersonalRegisterLister;

    new-instance v0, Lcom/unipay/tools/DensityUtil;

    invoke-direct {v0, p1}, Lcom/unipay/tools/DensityUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unipay/dialog/PersonalMessage;->_$9:Lcom/unipay/tools/DensityUtil;

    new-instance v0, Lcom/unipay/net/HttpNet;

    invoke-direct {v0}, Lcom/unipay/net/HttpNet;-><init>()V

    iput-object v0, p0, Lcom/unipay/dialog/PersonalMessage;->_$4:Lcom/unipay/net/HttpNet;

    new-instance v0, Lcom/unipay/net/AsyncMultimode;

    iget-object v1, p0, Lcom/unipay/dialog/PersonalMessage;->_$4:Lcom/unipay/net/HttpNet;

    invoke-direct {v0, v1}, Lcom/unipay/net/AsyncMultimode;-><init>(Lcom/unipay/net/HttpNet;)V

    iput-object v0, p0, Lcom/unipay/dialog/PersonalMessage;->_$5:Lcom/unipay/net/AsyncMultimode;

    invoke-direct {p0}, Lcom/unipay/dialog/PersonalMessage;->_$1()V

    return-void
.end method

.method static synthetic _$1(Lcom/unipay/dialog/PersonalMessage;Ljava/lang/String;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/unipay/dialog/PersonalMessage;->_$1(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private _$1(Ljava/lang/String;)I
    .locals 7

    const/4 v4, 0x1

    const/4 v0, 0x0

    move v1, v0

    move v2, v0

    move v3, v0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v0, v5, :cond_4

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x41

    if-lt v5, v6, :cond_0

    const/16 v6, 0x5a

    if-le v5, v6, :cond_1

    :cond_0
    const/16 v6, 0x61

    if-lt v5, v6, :cond_2

    const/16 v6, 0x7a

    if-gt v5, v6, :cond_2

    :cond_1
    move v3, v4

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/16 v6, 0x30

    if-lt v5, v6, :cond_3

    const/16 v6, 0x39

    if-gt v5, v6, :cond_3

    move v2, v4

    goto :goto_1

    :cond_3
    move v1, v4

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v5, 0x6

    if-gt v0, v5, :cond_5

    :goto_2
    add-int v0, v3, v2

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    return v0

    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v4, 0xc

    if-le v0, v4, :cond_6

    const/4 v4, 0x3

    goto :goto_2

    :cond_6
    const/4 v4, 0x2

    goto :goto_2
.end method

.method static synthetic _$1(Lcom/unipay/dialog/PersonalMessage;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0

    iput-object p1, p0, Lcom/unipay/dialog/PersonalMessage;->_$2:Landroid/widget/Button;

    return-object p1
.end method

.method static synthetic _$1(Lcom/unipay/dialog/PersonalMessage;)Lcom/unipay/dialog/IlIIIIllIlIIlIll;
    .locals 1

    iget-object v0, p0, Lcom/unipay/dialog/PersonalMessage;->_$3:Lcom/unipay/dialog/IlIIIIllIlIIlIll;

    return-object v0
.end method

.method static synthetic _$1(Lcom/unipay/dialog/PersonalMessage;Lcom/unipay/dialog/IlIIIIllIlIIlIll;)Lcom/unipay/dialog/IlIIIIllIlIIlIll;
    .locals 0

    iput-object p1, p0, Lcom/unipay/dialog/PersonalMessage;->_$3:Lcom/unipay/dialog/IlIIIIllIlIIlIll;

    return-object p1
.end method

.method static synthetic _$1(Lcom/unipay/dialog/PersonalMessage;Ljava/io/InputStream;)Lcom/unipay/wostore/tabledata/DataAdapter;
    .locals 1

    invoke-direct {p0, p1}, Lcom/unipay/dialog/PersonalMessage;->_$1(Ljava/io/InputStream;)Lcom/unipay/wostore/tabledata/DataAdapter;

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
    .locals 34

    invoke-virtual/range {p0 .. p0}, Lcom/unipay/dialog/PersonalMessage;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/Window;->requestFeature(I)Z

    const/high16 v3, 0x3f80

    invoke-static {v3}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    const/high16 v3, 0x4000

    invoke-static {v3}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    const/high16 v3, 0x4040

    invoke-static {v3}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    move-result v5

    const/high16 v3, 0x40a0

    invoke-static {v3}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    move-result v8

    const/high16 v3, 0x41a0

    invoke-static {v3}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    const/high16 v3, 0x41f0

    invoke-static {v3}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    move-result v6

    const/high16 v3, 0x4220

    invoke-static {v3}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    move-result v13

    const/high16 v3, 0x420c

    invoke-static {v3}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    move-result v7

    const/high16 v3, 0x4120

    invoke-static {v3}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    move-result v14

    const/high16 v3, 0x4248

    invoke-static {v3}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    const/high16 v3, 0x428c

    invoke-static {v3}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    const/high16 v3, 0x42dc

    invoke-static {v3}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    const/high16 v3, 0x4316

    invoke-static {v3}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    const/high16 v3, 0x4348

    invoke-static {v3}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    invoke-virtual/range {p0 .. p0}, Lcom/unipay/dialog/PersonalMessage;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v15

    new-instance v16, Landroid/util/DisplayMetrics;

    invoke-direct/range {v16 .. v16}, Landroid/util/DisplayMetrics;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/unipay/dialog/PersonalMessage;->_$8:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    move-object/from16 v0, v16

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v3, v3

    const-wide v9, 0x3fe999999999999aL

    mul-double/2addr v3, v9

    double-to-int v4, v3

    move-object/from16 v0, v16

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v9, v3

    const-wide v11, 0x3feccccccccccccdL

    mul-double/2addr v9, v11

    double-to-int v0, v9

    move/from16 v17, v0

    const/high16 v3, 0x4000

    invoke-static {v3}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    const/high16 v3, 0x40a0

    invoke-static {v3}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    const/high16 v3, 0x4100

    invoke-static {v3}, Lcom/unipay/tools/DensityUtil;->dip2px(F)I

    const-string v3, "xyf"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "dm.widthPixels ="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    iget v10, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";dm.heightPixels = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v16

    iget v10, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/unipay/dialog/PersonalMessage;->_$8:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v3

    if-nez v3, :cond_0

    div-int/lit8 v3, v4, 0x4

    move v12, v4

    move v4, v3

    :goto_0
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "dipwith = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    div-int/lit8 v18, v17, 0x32

    invoke-virtual/range {p0 .. p0}, Lcom/unipay/dialog/PersonalMessage;->getWindow()Landroid/view/Window;

    move-result-object v3

    const v9, 0x3dcccccd

    const/4 v10, 0x0

    const/16 v11, 0xff

    const/16 v19, 0xff

    const/16 v20, 0xff

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v10, v11, v0, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v10

    invoke-static {v9, v10}, Lcom/unipay/tools/PhoneInfoTools;->GetCorner(FI)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v19, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/unipay/dialog/PersonalMessage;->_$8:Landroid/content/Context;

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v9, -0x1

    const/4 v10, -0x1

    invoke-direct {v3, v9, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v20, Landroid/widget/ScrollView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/unipay/dialog/PersonalMessage;->_$8:Landroid/content/Context;

    move-object/from16 v0, v20

    invoke-direct {v0, v3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v9, -0x1

    const/4 v10, -0x1

    invoke-direct {v3, v9, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v21, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/unipay/dialog/PersonalMessage;->_$8:Landroid/content/Context;

    move-object/from16 v0, v21

    invoke-direct {v0, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v9, -0x1

    const/4 v10, -0x1

    invoke-direct {v3, v9, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v3, 0x4120

    move-object/from16 v0, v21

    invoke-static {v0, v3}, Lcom/unipay/tools/PhoneInfoTools;->toCorner(Landroid/view/View;F)V

    new-instance v22, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/unipay/dialog/PersonalMessage;->_$8:Landroid/content/Context;

    move-object/from16 v0, v22

    invoke-direct {v0, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v9, -0x1

    invoke-direct {v3, v9, v13}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v5, v8, v5}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    const/high16 v3, 0x4120

    move-object/from16 v0, v22

    invoke-static {v0, v3}, Lcom/unipay/tools/PhoneInfoTools;->toCornerTop(Landroid/view/View;F)V

    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v9, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xb

    invoke-virtual {v9, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v3, 0xf

    invoke-virtual {v9, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v6, -0x2

    const/4 v10, -0x2

    invoke-direct {v3, v6, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v6, 0xd

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v6, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/unipay/dialog/PersonalMessage;->_$8:Landroid/content/Context;

    invoke-direct {v6, v10}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v10, "\u8bf7\u5b8c\u5584\u8d44\u6599"

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v10, -0x1

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v6}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    const/4 v10, 0x1

    invoke-virtual {v3, v10}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    new-instance v23, Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/unipay/dialog/PersonalMessage;->_$8:Landroid/content/Context;

    move-object/from16 v0, v23

    invoke-direct {v0, v3}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/unipay/dialog/PersonalMessage;->_$8:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string v10, "unicom_base/close.png"

    invoke-virtual {v3, v10}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    const-string v10, "close.png"

    invoke-static {v3, v10}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v14, v14, v14, v14}, Landroid/widget/Button;->setPadding(IIII)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-virtual/range {v22 .. v23}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/unipay/dialog/PersonalMessage;->_$8:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v3

    if-nez v3, :cond_1

    new-instance v13, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/unipay/dialog/PersonalMessage;->_$8:Landroid/content/Context;

    invoke-direct {v13, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v6, -0x1

    const/4 v9, -0x1

    invoke-direct {v3, v6, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v13, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x1

    invoke-virtual {v13, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v14, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/unipay/dialog/PersonalMessage;->_$8:Landroid/content/Context;

    invoke-direct {v14, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v6, -0x1

    const/4 v9, -0x2

    invoke-direct {v3, v6, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v14, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x0

    invoke-virtual {v14, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v3, 0x10

    invoke-virtual {v14, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    move/from16 v0, v18

    invoke-virtual {v14, v3, v0, v6, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v6, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/unipay/dialog/PersonalMessage;->_$8:Landroid/content/Context;

    invoke-direct {v6, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v3, 0x3e9

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setId(I)V

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v9, -0x2

    invoke-direct {v3, v4, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v3, "\u8f93\u5165\u624b\u673a\u53f7\u7801"

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v3, 0x5

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v3, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v6, v3, v9, v5, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v6}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    const/4 v9, 0x1

    invoke-virtual {v3, v9}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    const/high16 v3, -0x100

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v3, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/unipay/dialog/PersonalMessage;->_$8:Landroid/content/Context;

    invoke-direct {v3, v9}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/unipay/dialog/PersonalMessage;->_$1:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/unipay/dialog/PersonalMessage;->_$1:Landroid/widget/EditText;

    const/16 v9, 0x3ea

    invoke-virtual {v3, v9}, Landroid/widget/EditText;->setId(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/unipay/dialog/PersonalMessage;->_$1:Landroid/widget/EditText;

    new-instance v9, Landroid/view/ViewGroup$LayoutParams;

    mul-int/lit8 v10, v12, 0x1

    div-int/lit8 v10, v10, 0x2

    const/4 v11, -0x2

    invoke-direct {v9, v10, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v9}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/unipay/dialog/PersonalMessage;->_$1:Landroid/widget/EditText;

    const/4 v9, 0x1

    invoke-virtual {v3, v9}, Landroid/widget/EditText;->setSingleLine(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/unipay/dialog/PersonalMessage;->_$1:Landroid/widget/EditText;

    const/4 v9, 0x2

    invoke-virtual {v3, v9}, Landroid/widget/EditText;->setInputType(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/unipay/dialog/PersonalMessage;->_$1:Landroid/widget/EditText;

    const-string v9, "\u8bf7\u8f93\u5165\u624b\u673a\u53f7\u7801"

    invoke-virtual {v3, v9}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/unipay/dialog/PersonalMessage;->_$1:Landroid/widget/EditText;

    const/high16 v9, 0x4140

    invoke-virtual {v3, v9}, Landroid/widget/EditText;->setTextSize(F)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/unipay/dialog/PersonalMessage;->_$1:Landroid/widget/EditText;

    const v9, 0x10000006

    invoke-virtual {v3, v9}, Landroid/widget/EditText;->setImeOptions(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/unipay/dialog/PersonalMessage;->_$1:Landroid/widget/EditText;

    const/4 v9, 0x1

    new-array v9, v9, [Landroid/text/InputFilter;

    const/4 v10, 0x0

    new-instance v11, Landroid/text/InputFilter$LengthFilter;

    const/16 v24, 0xb

    move/from16 v0, v24

    invoke-direct {v11, v0}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v11, v9, v10

    invoke-virtual {v3, v9}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    new-instance v24, Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/unipay/dialog/PersonalMessage;->_$8:Landroid/content/Context;

    move-object/from16 v0, v24

    invoke-direct {v0, v3}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const/16 v3, 0x3eb

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setId(I)V

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    mul-int/lit8 v9, v12, 0xb

    div-int/lit8 v9, v9, 0x36

    invoke-direct {v3, v9, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v3, "\u83b7\u53d6\u9a8c\u8bc1\u7801"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {v24 .. v24}, Landroid/widget/Button;->setSingleLine()V

    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/unipay/dialog/PersonalMessage;->_$8:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string v7, "unicom_extend/bt_info.png"

    invoke-virtual {v3, v7}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    const-string v7, "bt_info.9.png"

    invoke-static {v3, v7}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    invoke-virtual {v14, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/unipay/dialog/PersonalMessage;->_$1:Landroid/widget/EditText;

    invoke-virtual {v14, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v25, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/unipay/dialog/PersonalMessage;->_$8:Landroid/content/Context;

    move-object/from16 v0, v25

    invoke-direct {v0, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v3, v6, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v18

    invoke-virtual {v0, v3, v1, v6, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v3, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/unipay/dialog/PersonalMessage;->_$8:Landroid/content/Context;

    invoke-direct {v3, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v6, 0x3ec

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setId(I)V

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v6, v4, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v6, "\u8f93\u5165\u9a8c\u8bc1\u7801"

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v6, 0x5

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-virtual {v3, v6, v7, v5, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    const/high16 v6, -0x100

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v6, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/unipay/dialog/PersonalMessage;->_$8:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/16 v7, 0x3ed

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setId(I)V

    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    div-int/lit8 v9, v12, 0x4

    const/4 v10, -0x2

    invoke-direct {v7, v9, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setSingleLine(Z)V

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setInputType(I)V

    const-string v7, "\u8bf7\u8f93\u5165\u9a8c\u8bc1\u7801"

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const/high16 v7, 0x4140

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setTextSize(F)V

    const v7, 0x10000006

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setImeOptions(I)V

    new-instance v26, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/unipay/dialog/PersonalMessage;->_$8:Landroid/content/Context;

    move-object/from16 v0, v26

    invoke-direct {v0, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v7, 0x3ee

    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setId(I)V

    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    const/4 v9, -0x2

    const/4 v10, -0x2

    invoke-direct {v7, v9, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v7, "\u6536\u5230\u9a8c\u8bc1\u7801\u540e\u8bf7\u4e8e60\u79d2\u5185\u8f93\u5165\u6846\u4e2d"

    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v7, 0x4140

    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextSize(F)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual/range {v25 .. v26}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v27, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/unipay/dialog/PersonalMessage;->_$8:Landroid/content/Context;

    move-object/from16 v0, v27

    invoke-direct {v0, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v7, -0x1

    const/4 v9, -0x2

    invoke-direct {v3, v7, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v3, v1, v7, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v28, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/unipay/dialog/PersonalMessage;->_$8:Landroid/content/Context;

    move-object/from16 v0, v28

    invoke-direct {v0, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v3, 0x3ef

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setId(I)V

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v3, v4, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v3, "\u8bbe\u7f6e\u5bc6\u7801"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v3, 0x5

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v3, v7, v5, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual/range {v28 .. v28}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    const/high16 v3, -0x100

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v7, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/unipay/dialog/PersonalMessage;->_$8:Landroid/content/Context;

    invoke-direct {v7, v3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/16 v3, 0x3f0

    invoke-virtual {v7, v3}, Landroid/widget/EditText;->setId(I)V

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    div-int/lit8 v9, v12, 0x4

    const/4 v10, -0x2

    invoke-direct {v3, v9, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v3}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x1

    invoke-virtual {v7, v3}, Landroid/widget/EditText;->setSingleLine(Z)V

    const/high16 v3, 0x4140

    invoke-virtual {v7, v3}, Landroid/widget/EditText;->setTextSize(F)V

    const-string v3, "6~18\u4f4d\u6570\u5b57\u3001\u5b57\u6bcd\u3001\u7279\u6b8a\u5b57\u7b26\u7ec4\u5408"

    invoke-virtual {v7, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v7, v3}, Landroid/widget/EditText;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/16 v3, 0x81

    invoke-virtual {v7, v3}, Landroid/widget/EditText;->setInputType(I)V

    new-instance v29, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/unipay/dialog/PersonalMessage;->_$8:Landroid/content/Context;

    move-object/from16 v0, v29

    invoke-direct {v0, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v3, 0x3f1

    invoke-virtual {v7, v3}, Landroid/widget/EditText;->setId(I)V

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    div-int/lit8 v9, v12, 0x3

    const/4 v10, -0x1

    invoke-direct {v3, v9, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x1

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v3, 0x10

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 v3, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v0, v8, v3, v9, v10}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v30, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/unipay/dialog/PersonalMessage;->_$8:Landroid/content/Context;

    move-object/from16 v0, v30

    invoke-direct {v0, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x2

    invoke-direct {v3, v8, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x1

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/unipay/dialog/PersonalMessage;->_$8:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string v8, "unicom_extend/ruo.png"

    invoke-virtual {v3, v8}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    const-string v8, "ruo.png"

    invoke-static {v3, v8}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    new-instance v3, Landroid/widget/TableRow$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x2

    invoke-direct {v3, v8, v9}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    const/high16 v8, 0x3f80

    iput v8, v3, Landroid/widget/TableRow$LayoutParams;->weight:F

    new-instance v8, Landroid/widget/TableRow;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/unipay/dialog/PersonalMessage;->_$8:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    new-instance v9, Landroid/view/ViewGroup$LayoutParams;

    const/4 v10, -0x1

    const/4 v11, -0x2

    invoke-direct {v9, v10, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v9}, Landroid/widget/TableRow;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v9, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/unipay/dialog/PersonalMessage;->_$8:Landroid/content/Context;

    invoke-direct {v9, v10}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v10, "\u5f31"

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v10, -0x1

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v10, 0x11

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v10, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/unipay/dialog/PersonalMessage;->_$8:Landroid/content/Context;

    invoke-direct {v10, v11}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v11, "\u4e2d"

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v11, 0x11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setGravity(I)V

    const/16 v11, 0xa2

    const/16 v31, 0xa2

    const/16 v32, 0xa2

    move/from16 v0, v31

    move/from16 v1, v32

    invoke-static {v11, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v11, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/PersonalMessage;->_$8:Landroid/content/Context;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-direct {v11, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v11, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v3, "\u5f3a"

    invoke-virtual {v11, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v3, 0x11

    invoke-virtual {v11, v3}, Landroid/widget/TextView;->setGravity(I)V

    const/16 v3, 0xa2

    const/16 v31, 0xa2

    const/16 v32, 0xa2

    move/from16 v0, v31

    move/from16 v1, v32

    invoke-static {v3, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v11, v3}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v8, v9}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    invoke-virtual {v8, v10}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    invoke-virtual {v8, v11}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    invoke-virtual/range {v29 .. v30}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual/range {v27 .. v28}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v29, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/unipay/dialog/PersonalMessage;->_$8:Landroid/content/Context;

    move-object/from16 v0, v29

    invoke-direct {v0, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v8, -0x1

    const/16 v31, -0x2

    move/from16 v0, v31

    invoke-direct {v3, v8, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v3, 0x0

    const/4 v8, 0x0

    const/16 v31, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v18

    move/from16 v2, v31

    invoke-virtual {v0, v3, v1, v8, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v3, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/unipay/dialog/PersonalMessage;->_$8:Landroid/content/Context;

    invoke-direct {v3, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v8, 0x3f2

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setId(I)V

    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    const/16 v28, -0x2

    move/from16 v0, v28

    invoke-direct {v8, v4, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v4, "\u518d\u6b21\u8f93\u5165\u5bc6\u7801"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v3, v4, v8, v5, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v3}, Landroid/widget/TextView;->setSingleLine()V

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    const/high16 v4, -0x100

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v8, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/PersonalMessage;->_$8:Landroid/content/Context;

    invoke-direct {v8, v4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/16 v4, 0x3f3

    invoke-virtual {v8, v4}, Landroid/widget/EditText;->setId(I)V

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    div-int/lit8 v5, v12, 0x4

    const/16 v28, -0x2

    move/from16 v0, v28

    invoke-direct {v4, v5, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v4}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v4, "6~18\u4f4d\u6570\u5b57\u3001\u5b57\u6bcd\u3001\u7279\u6b8a\u5b57\u7b26\u7ec4\u5408"

    invoke-virtual {v8, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v8, v4}, Landroid/widget/EditText;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/high16 v4, 0x4140

    invoke-virtual {v8, v4}, Landroid/widget/EditText;->setTextSize(F)V

    const/4 v4, 0x1

    invoke-virtual {v8, v4}, Landroid/widget/EditText;->setSingleLine(Z)V

    const/16 v4, 0x81

    invoke-virtual {v8, v4}, Landroid/widget/EditText;->setInputType(I)V

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v4, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/unipay/dialog/PersonalMessage;->_$8:Landroid/content/Context;

    invoke-direct {v4, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v5, -0x1

    const/16 v28, -0x2

    move/from16 v0, v28

    invoke-direct {v3, v5, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v3, 0x11

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 v3, 0x0

    const/4 v5, 0x0

    move/from16 v0, v18

    move/from16 v1, v18

    invoke-virtual {v4, v3, v0, v5, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v5, Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/unipay/dialog/PersonalMessage;->_$8:Landroid/content/Context;

    invoke-direct {v5, v3}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    move-object/from16 v0, v16

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v16, v0

    mul-int/lit8 v16, v16, 0xd

    div-int/lit8 v16, v16, 0x36

    mul-int/lit8 v17, v17, 0x6

    div-int/lit8 v17, v17, 0x26

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v3, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v3}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v3, "\u786e\u5b9a"

    invoke-virtual {v5, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/unipay/dialog/PersonalMessage;->_$8:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string v16, "unicom_extend/bt_sure_normal.9.png"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    const-string v16, "bt_sure_normal.9.png"

    move-object/from16 v0, v16

    invoke-static {v3, v0}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :goto_4
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v25

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v27

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v29

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v13, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v3, Lcom/unipay/dialog/IllIllIlIllIIlII;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v26

    invoke-direct {v3, v0, v1, v2}, Lcom/unipay/dialog/IllIllIlIllIIlII;-><init>(Lcom/unipay/dialog/PersonalMessage;Landroid/widget/Button;Landroid/widget/TextView;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v3, Lcom/unipay/dialog/lIIlllIlIllIIlII;

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/unipay/dialog/lIIlllIlIllIIlII;-><init>(Lcom/unipay/dialog/PersonalMessage;Landroid/widget/Button;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v5, v3}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v5, Lcom/unipay/dialog/IIIlllIlIllIIlII;

    move-object/from16 v6, p0

    move-object/from16 v8, v30

    invoke-direct/range {v5 .. v11}, Lcom/unipay/dialog/IIIlllIlIllIIlII;-><init>(Lcom/unipay/dialog/PersonalMessage;Landroid/widget/EditText;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-virtual {v7, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :goto_5
    new-instance v3, Lcom/unipay/dialog/IIllllIlIllIIlII;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v3, v0, v1}, Lcom/unipay/dialog/IIllllIlIllIIlII;-><init>(Lcom/unipay/dialog/PersonalMessage;Landroid/widget/Button;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/unipay/dialog/PersonalMessage;->setContentView(Landroid/view/View;)V

    iput v12, v15, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual/range {p0 .. p0}, Lcom/unipay/dialog/PersonalMessage;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v15}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/unipay/dialog/PersonalMessage;->setCanceledOnTouchOutside(Z)V

    return-void

    :cond_0
    move-object/from16 v0, v16

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v3, v3

    const-wide v9, 0x3feccccccccccccdL

    mul-double/2addr v3, v9

    double-to-int v4, v3

    div-int/lit8 v3, v4, 0x3

    move v12, v4

    move v4, v3

    goto/16 :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    :catch_1
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    :catch_2
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    :catch_3
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    :cond_1
    new-instance v16, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/unipay/dialog/PersonalMessage;->_$8:Landroid/content/Context;

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x1

    invoke-direct {v3, v6, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v17, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/unipay/dialog/PersonalMessage;->_$8:Landroid/content/Context;

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v3, v6, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v14, v6, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v3, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/unipay/dialog/PersonalMessage;->_$8:Landroid/content/Context;

    invoke-direct {v3, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v6, 0x3e9

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setId(I)V

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v6, v4, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v6, "\u8f93\u5165\u624b\u673a\u53f7\u7801"

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v6, 0x5

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v3, v6, v7, v5, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    const/high16 v6, -0x100

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v6, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/unipay/dialog/PersonalMessage;->_$8:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/unipay/dialog/PersonalMessage;->_$1:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/unipay/dialog/PersonalMessage;->_$1:Landroid/widget/EditText;

    const/16 v7, 0x3ea

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setId(I)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/unipay/dialog/PersonalMessage;->_$1:Landroid/widget/EditText;

    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    mul-int/lit8 v8, v12, 0x3

    div-int/lit8 v8, v8, 0x5

    const/4 v9, -0x2

    invoke-direct {v7, v8, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/unipay/dialog/PersonalMessage;->_$1:Landroid/widget/EditText;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setSingleLine(Z)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/unipay/dialog/PersonalMessage;->_$1:Landroid/widget/EditText;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setInputType(I)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/unipay/dialog/PersonalMessage;->_$1:Landroid/widget/EditText;

    const-string v7, "\u8bf7\u8f93\u5165\u624b\u673a\u53f7\u7801"

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/unipay/dialog/PersonalMessage;->_$1:Landroid/widget/EditText;

    const/high16 v7, 0x4140

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setTextSize(F)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/unipay/dialog/PersonalMessage;->_$1:Landroid/widget/EditText;

    const v7, 0x10000006

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setImeOptions(I)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/unipay/dialog/PersonalMessage;->_$1:Landroid/widget/EditText;

    const/4 v7, 0x1

    new-array v7, v7, [Landroid/text/InputFilter;

    const/4 v8, 0x0

    new-instance v9, Landroid/text/InputFilter$LengthFilter;

    const/16 v10, 0xb

    invoke-direct {v9, v10}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v9, v7, v8

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/unipay/dialog/PersonalMessage;->_$1:Landroid/widget/EditText;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v18, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/unipay/dialog/PersonalMessage;->_$8:Landroid/content/Context;

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v6, -0x2

    const/4 v7, -0x2

    invoke-direct {v3, v6, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x0

    div-int/lit8 v6, v12, 0xf

    const/4 v7, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v3, v6, v7}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    mul-int/lit8 v6, v12, 0xb

    div-int/lit8 v6, v6, 0x23

    invoke-direct {v3, v6, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v6, 0xb

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v24, Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/unipay/dialog/PersonalMessage;->_$8:Landroid/content/Context;

    move-object/from16 v0, v24

    invoke-direct {v0, v6}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const/16 v6, 0x3eb

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setId(I)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v3, "\u83b7\u53d6\u9a8c\u8bc1\u7801"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/high16 v3, 0x4140

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTextSize(F)V

    :try_start_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/unipay/dialog/PersonalMessage;->_$8:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string v6, "unicom_extend/bt_info.png"

    invoke-virtual {v3, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    const-string v6, "bt_info.png"

    invoke-static {v3, v6}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    :goto_6
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v6, -0x2

    const/4 v7, -0x2

    invoke-direct {v3, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v6, 0x0

    const/16 v7, 0x3eb

    invoke-virtual {v3, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    new-instance v25, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/unipay/dialog/PersonalMessage;->_$8:Landroid/content/Context;

    move-object/from16 v0, v25

    invoke-direct {v0, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v6, 0x3ee

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setId(I)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v3, "\u6536\u5230\u9a8c\u8bc1\u7801\u540e\u8bf7\u4e8e60\u79d2\u5185\u8f93\u5165\u6846\u4e2d"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v3, 0x4130

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v26, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/unipay/dialog/PersonalMessage;->_$8:Landroid/content/Context;

    move-object/from16 v0, v26

    invoke-direct {v0, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v3, v6, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v14, v6, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v3, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/unipay/dialog/PersonalMessage;->_$8:Landroid/content/Context;

    invoke-direct {v3, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v6, 0x3ec

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setId(I)V

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v6, v4, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v6, "\u8f93\u5165\u9a8c\u8bc1\u7801"

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v6, 0x5

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v3, v6, v7, v5, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    const/high16 v6, -0x100

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v6, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/unipay/dialog/PersonalMessage;->_$8:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/16 v7, 0x3ed

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setId(I)V

    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    mul-int/lit8 v8, v12, 0x3

    div-int/lit8 v8, v8, 0x5

    const/4 v9, -0x2

    invoke-direct {v7, v8, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setSingleLine(Z)V

    const-string v7, "\u8bf7\u8f93\u5165\u9a8c\u8bc1\u7801"

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const/high16 v7, 0x4140

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setTextSize(F)V

    const v7, 0x10000006

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setImeOptions(I)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v27, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/unipay/dialog/PersonalMessage;->_$8:Landroid/content/Context;

    move-object/from16 v0, v27

    invoke-direct {v0, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, -0x2

    invoke-direct {v3, v7, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v3, v14, v7, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v8, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/unipay/dialog/PersonalMessage;->_$8:Landroid/content/Context;

    invoke-direct {v8, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v3, 0x3ef

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setId(I)V

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v3, v4, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v3, "\u8bbe\u7f6e\u5bc6\u7801"

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v3, 0x5

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-virtual {v8, v3, v7, v5, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v8}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    const/high16 v3, -0x100

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v7, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/unipay/dialog/PersonalMessage;->_$8:Landroid/content/Context;

    invoke-direct {v7, v3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/16 v3, 0x3f0

    invoke-virtual {v7, v3}, Landroid/widget/EditText;->setId(I)V

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    mul-int/lit8 v9, v12, 0x3

    div-int/lit8 v9, v9, 0x5

    const/4 v10, -0x2

    invoke-direct {v3, v9, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v3}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x1

    invoke-virtual {v7, v3}, Landroid/widget/EditText;->setSingleLine(Z)V

    const/high16 v3, 0x4140

    invoke-virtual {v7, v3}, Landroid/widget/EditText;->setTextSize(F)V

    const-string v3, "6~18\u4f4d\u6570\u5b57\u3001\u5b57\u6bcd\u3001\u7279\u6b8a\u5b57\u7b26\u7ec4\u5408"

    invoke-virtual {v7, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v7, v3}, Landroid/widget/EditText;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/16 v3, 0x81

    invoke-virtual {v7, v3}, Landroid/widget/EditText;->setInputType(I)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v28, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/unipay/dialog/PersonalMessage;->_$8:Landroid/content/Context;

    move-object/from16 v0, v28

    invoke-direct {v0, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v9, -0x1

    const/4 v10, -0x2

    invoke-direct {v3, v9, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v3, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v3, v9, v10}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v29, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/unipay/dialog/PersonalMessage;->_$8:Landroid/content/Context;

    move-object/from16 v0, v29

    invoke-direct {v0, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v3, 0x3f1

    invoke-virtual {v7, v3}, Landroid/widget/EditText;->setId(I)V

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    mul-int/lit8 v9, v12, 0x3

    div-int/lit8 v9, v9, 0x5

    const/4 v10, -0x1

    invoke-direct {v3, v9, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x1

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v30, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/unipay/dialog/PersonalMessage;->_$8:Landroid/content/Context;

    move-object/from16 v0, v30

    invoke-direct {v0, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v9, -0x1

    const/4 v10, -0x2

    invoke-direct {v3, v9, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x1

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    :try_start_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/unipay/dialog/PersonalMessage;->_$8:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string v9, "unicom_extend/ruo.png"

    invoke-virtual {v3, v9}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    const-string v9, "ruo.png"

    invoke-static {v3, v9}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    :goto_7
    new-instance v3, Landroid/widget/TableRow$LayoutParams;

    const/4 v9, -0x1

    const/4 v10, -0x2

    invoke-direct {v3, v9, v10}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    const/high16 v9, 0x3f80

    iput v9, v3, Landroid/widget/TableRow$LayoutParams;->weight:F

    new-instance v31, Landroid/widget/TableRow;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/unipay/dialog/PersonalMessage;->_$8:Landroid/content/Context;

    move-object/from16 v0, v31

    invoke-direct {v0, v9}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    new-instance v9, Landroid/view/ViewGroup$LayoutParams;

    const/4 v10, -0x1

    const/4 v11, -0x2

    invoke-direct {v9, v10, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v31

    invoke-virtual {v0, v9}, Landroid/widget/TableRow;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v9, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/unipay/dialog/PersonalMessage;->_$8:Landroid/content/Context;

    invoke-direct {v9, v10}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v10, "\u5f31"

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v10, -0x1

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v10, 0x11

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v10, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/unipay/dialog/PersonalMessage;->_$8:Landroid/content/Context;

    invoke-direct {v10, v11}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v11, "\u4e2d"

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v11, 0x11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setGravity(I)V

    const/16 v11, 0xa2

    const/16 v32, 0xa2

    const/16 v33, 0xa2

    move/from16 v0, v32

    move/from16 v1, v33

    invoke-static {v11, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v11, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/PersonalMessage;->_$8:Landroid/content/Context;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-direct {v11, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v11, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v3, "\u5f3a"

    invoke-virtual {v11, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v3, 0x11

    invoke-virtual {v11, v3}, Landroid/widget/TextView;->setGravity(I)V

    const/16 v3, 0xa2

    const/16 v32, 0xa2

    const/16 v33, 0xa2

    move/from16 v0, v32

    move/from16 v1, v33

    invoke-static {v3, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v11, v3}, Landroid/widget/TextView;->setTextColor(I)V

    move-object/from16 v0, v31

    invoke-virtual {v0, v9}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    move-object/from16 v0, v31

    invoke-virtual {v0, v10}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    move-object/from16 v0, v31

    invoke-virtual {v0, v11}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    invoke-virtual/range {v29 .. v30}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual/range {v28 .. v29}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v29, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/unipay/dialog/PersonalMessage;->_$8:Landroid/content/Context;

    move-object/from16 v0, v29

    invoke-direct {v0, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/16 v31, -0x1

    const/16 v32, -0x2

    move/from16 v0, v31

    move/from16 v1, v32

    invoke-direct {v3, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v3, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v3, v14, v1, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v3, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unipay/dialog/PersonalMessage;->_$8:Landroid/content/Context;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-direct {v3, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v31, 0x3f2

    move/from16 v0, v31

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setId(I)V

    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    const/16 v31, -0x2

    move/from16 v0, v31

    invoke-direct {v8, v4, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v4, "\u518d\u6b21\u8f93\u5165\u5bc6\u7801"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/16 v31, 0x0

    move/from16 v0, v31

    invoke-virtual {v3, v4, v8, v5, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v3}, Landroid/widget/TextView;->setSingleLine()V

    const/high16 v4, -0x100

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    new-instance v8, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unipay/dialog/PersonalMessage;->_$8:Landroid/content/Context;

    invoke-direct {v8, v4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/16 v4, 0x3f3

    invoke-virtual {v8, v4}, Landroid/widget/EditText;->setId(I)V

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    mul-int/lit8 v5, v12, 0x3

    div-int/lit8 v5, v5, 0x5

    const/16 v31, -0x2

    move/from16 v0, v31

    invoke-direct {v4, v5, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v4}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v4, 0x81

    invoke-virtual {v8, v4}, Landroid/widget/EditText;->setInputType(I)V

    const-string v4, "6~18\u4f4d\u6570\u5b57\u3001\u5b57\u6bcd\u3001\u7279\u6b8a\u5b57\u7b26\u7ec4\u5408"

    invoke-virtual {v8, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v8, v4}, Landroid/widget/EditText;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/4 v4, 0x1

    invoke-virtual {v8, v4}, Landroid/widget/EditText;->setSingleLine(Z)V

    const/high16 v4, 0x4140

    invoke-virtual {v8, v4}, Landroid/widget/EditText;->setTextSize(F)V

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v4, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/unipay/dialog/PersonalMessage;->_$8:Landroid/content/Context;

    invoke-direct {v4, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v5, -0x1

    const/16 v31, -0x2

    move/from16 v0, v31

    invoke-direct {v3, v5, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v3, 0x11

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v14, v5, v14}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v5, Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/unipay/dialog/PersonalMessage;->_$8:Landroid/content/Context;

    invoke-direct {v5, v3}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    div-int/lit8 v14, v12, 0x3

    invoke-direct {v3, v14, v13}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v3}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v3, "\u786e\u5b9a"

    invoke-virtual {v5, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :try_start_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/unipay/dialog/PersonalMessage;->_$8:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string v13, "unicom_extend/bt_sure_normal.9.png"

    invoke-virtual {v3, v13}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    const-string v13, "bt_sure_normal.9.png"

    invoke-static {v3, v13}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    :goto_8
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual/range {v16 .. v17}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v3, Lcom/unipay/dialog/llIlllIlIllIIlII;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v3, v0, v1, v2}, Lcom/unipay/dialog/llIlllIlIllIIlII;-><init>(Lcom/unipay/dialog/PersonalMessage;Landroid/widget/Button;Landroid/widget/TextView;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v3, Lcom/unipay/dialog/IlIlllIlIllIIlII;

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/unipay/dialog/IlIlllIlIllIIlII;-><init>(Lcom/unipay/dialog/PersonalMessage;Landroid/widget/Button;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v5, v3}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v5, Lcom/unipay/dialog/lIllllIlIllIIlII;

    move-object/from16 v6, p0

    move-object/from16 v8, v30

    invoke-direct/range {v5 .. v11}, Lcom/unipay/dialog/lIllllIlIllIIlII;-><init>(Lcom/unipay/dialog/PersonalMessage;Landroid/widget/EditText;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-virtual {v7, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto/16 :goto_5

    :catch_4
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_6

    :catch_5
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_7

    :catch_6
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8
.end method

.method static synthetic _$2(Lcom/unipay/dialog/PersonalMessage;)Lcom/unipay/dialog/PersonalMessage$PersonalRegisterLister;
    .locals 1

    iget-object v0, p0, Lcom/unipay/dialog/PersonalMessage;->_$7:Lcom/unipay/dialog/PersonalMessage$PersonalRegisterLister;

    return-object v0
.end method

.method static synthetic _$2(Lcom/unipay/dialog/PersonalMessage;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/unipay/dialog/PersonalMessage;->_$2(Ljava/lang/String;)V

    return-void
.end method

.method private _$2(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/unipay/dialog/PersonalMessage;->_$6:Lcom/unipay/net/Parameters;

    invoke-virtual {v0}, Lcom/unipay/net/Parameters;->clear()V

    iget-object v0, p0, Lcom/unipay/dialog/PersonalMessage;->_$6:Lcom/unipay/net/Parameters;

    const-string v1, "phonenumber"

    invoke-virtual {v0, v1, p1}, Lcom/unipay/net/Parameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic _$3(Lcom/unipay/dialog/PersonalMessage;)Lcom/unipay/net/AsyncMultimode;
    .locals 1

    iget-object v0, p0, Lcom/unipay/dialog/PersonalMessage;->_$5:Lcom/unipay/net/AsyncMultimode;

    return-object v0
.end method

.method static synthetic _$4(Lcom/unipay/dialog/PersonalMessage;)Lcom/unipay/net/Parameters;
    .locals 1

    iget-object v0, p0, Lcom/unipay/dialog/PersonalMessage;->_$6:Lcom/unipay/net/Parameters;

    return-object v0
.end method

.method static synthetic _$5(Lcom/unipay/dialog/PersonalMessage;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/unipay/dialog/PersonalMessage;->_$2:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic _$6(Lcom/unipay/dialog/PersonalMessage;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/unipay/dialog/PersonalMessage;->_$1:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic _$7(Lcom/unipay/dialog/PersonalMessage;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/unipay/dialog/PersonalMessage;->_$8:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unipay/dialog/PersonalMessage;->_$7:Lcom/unipay/dialog/PersonalMessage$PersonalRegisterLister;

    const/4 v1, 0x2

    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/unipay/dialog/PersonalMessage$PersonalRegisterLister;->operation(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/unipay/dialog/PersonalMessage;->dismiss()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
