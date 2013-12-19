.class public Lcn/paypalm/pppayment/global/Tools;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 3

    const-string v0, ""

    packed-switch p2, :pswitch_data_0

    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    :pswitch_0
    const-string v0, "id"

    goto :goto_0

    :pswitch_1
    const-string v0, "layout"

    goto :goto_0

    :pswitch_2
    const-string v0, "string"

    goto :goto_0

    :pswitch_3
    const-string v0, "drawable"

    goto :goto_0

    :pswitch_4
    const-string v0, "raw"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Ljava/lang/System;->load(Ljava/lang/String;)V

    return-void
.end method

.method private d(Ljava/lang/String;)I
    .locals 10

    const/16 v9, 0x11

    const/16 v8, 0xf

    const/4 v7, 0x6

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/16 v0, 0xb

    new-array v5, v0, [Ljava/lang/String;

    const-string v0, "1"

    aput-object v0, v5, v2

    const/4 v0, 0x1

    const-string v3, "0"

    aput-object v3, v5, v0

    const/4 v0, 0x2

    const-string v3, "x"

    aput-object v3, v5, v0

    const/4 v0, 0x3

    const-string v3, "9"

    aput-object v3, v5, v0

    const/4 v0, 0x4

    const-string v3, "8"

    aput-object v3, v5, v0

    const/4 v0, 0x5

    const-string v3, "7"

    aput-object v3, v5, v0

    const-string v0, "6"

    aput-object v0, v5, v7

    const/4 v0, 0x7

    const-string v3, "5"

    aput-object v3, v5, v0

    const/16 v0, 0x8

    const-string v3, "4"

    aput-object v3, v5, v0

    const/16 v0, 0x9

    const-string v3, "3"

    aput-object v3, v5, v0

    const/16 v0, 0xa

    const-string v3, "2"

    aput-object v3, v5, v0

    new-array v6, v9, [Ljava/lang/String;

    const-string v0, "7"

    aput-object v0, v6, v2

    const/4 v0, 0x1

    const-string v3, "9"

    aput-object v3, v6, v0

    const/4 v0, 0x2

    const-string v3, "10"

    aput-object v3, v6, v0

    const/4 v0, 0x3

    const-string v3, "5"

    aput-object v3, v6, v0

    const/4 v0, 0x4

    const-string v3, "8"

    aput-object v3, v6, v0

    const/4 v0, 0x5

    const-string v3, "4"

    aput-object v3, v6, v0

    const-string v0, "2"

    aput-object v0, v6, v7

    const/4 v0, 0x7

    const-string v3, "1"

    aput-object v3, v6, v0

    const/16 v0, 0x8

    const-string v3, "6"

    aput-object v3, v6, v0

    const/16 v0, 0x9

    const-string v3, "3"

    aput-object v3, v6, v0

    const/16 v0, 0xa

    const-string v3, "7"

    aput-object v3, v6, v0

    const/16 v0, 0xb

    const-string v3, "9"

    aput-object v3, v6, v0

    const/16 v0, 0xc

    const-string v3, "10"

    aput-object v3, v6, v0

    const/16 v0, 0xd

    const-string v3, "5"

    aput-object v3, v6, v0

    const/16 v0, 0xe

    const-string v3, "8"

    aput-object v3, v6, v0

    const-string v0, "4"

    aput-object v0, v6, v8

    const/16 v0, 0x10

    const-string v3, "2"

    aput-object v3, v6, v0

    const-string v0, ""

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v3, v8, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x12

    if-eq v3, v4, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x12

    if-ne v3, v4, :cond_2

    invoke-virtual {p1, v2, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-static {v0}, Lcn/paypalm/pppayment/global/Tools;->e(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v8, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "19"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    move v3, v2

    move v4, v2

    :goto_2
    if-lt v3, v9, :cond_4

    rem-int/lit8 v3, v4, 0xb

    aget-object v3, v5, v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x12

    if-ne v3, v4, :cond_5

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    goto :goto_0

    :cond_4
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aget-object v8, v6, v3

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    mul-int/2addr v7, v8

    add-int/2addr v4, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    const-string v0, "^((1[1-5])|(2[1-3])|(3[1-7])|(4[1-6])|(5[0-4])|(6[1-5])|71|(8[12])|91)\\d{4}(((19|20)\\d{2}(0[13-9]|1[012])(0[1-9]|[12]\\d|30))|((19|20)\\d{2}(0[13578]|1[02])31)|((19|20)\\d{2}02(0[1-9]|1\\d|2[0-8]))|((((19|20)([13579][26]|[2468][048]|0[48]))|2000)0229))\\d{3}(\\d|x)?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v1

    goto/16 :goto_0

    :cond_6
    move v0, v2

    goto/16 :goto_0
.end method

.method private static e(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "[0-9]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private native getBase64([BILcn/paypalm/pppayment/global/ResponseData;)I
.end method

.method private native initialRequest(Lcn/paypalm/pppayment/global/ResponseData;)I
.end method

.method private native passwordEncrypt([BILcn/paypalm/pppayment/global/ResponseData;)I
.end method

.method private native resDecrypt([BILcn/paypalm/pppayment/global/ResponseData;)I
.end method

.method private native sendRequest([BLcn/paypalm/pppayment/global/ResponseData;)I
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcn/paypalm/pppayment/global/a;Lcn/paypalm/pppayment/global/b;)I
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p2}, Lcn/paypalm/pppayment/global/a;->x()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "0"

    invoke-virtual {p2, v1}, Lcn/paypalm/pppayment/global/a;->x(Ljava/lang/String;)V

    :cond_0
    const-string v1, "290004"

    invoke-virtual {p2, v1}, Lcn/paypalm/pppayment/global/a;->a(Ljava/lang/String;)V

    const-string v1, "{\'opcode\':\'%s\',\'signstate\':\'%s\'}"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcn/paypalm/pppayment/global/a;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v3, 0x1

    invoke-virtual {p2}, Lcn/paypalm/pppayment/global/a;->x()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcn/paypalm/pppayment/global/Tools;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "\u8bf7\u6c42\u5931\u8d25!"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/16 v0, -0xa

    :goto_0
    return v0

    :cond_2
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "tranresult"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcn/paypalm/pppayment/global/b;->a(Ljava/lang/String;)V

    const-string v1, "resultinfo"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcn/paypalm/pppayment/global/b;->b(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcn/paypalm/pppayment/global/b;->a()Ljava/lang/String;

    move-result-object v1

    const-string v3, "000000"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "paymethod"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcn/paypalm/pppayment/global/b;->I(Ljava/lang/String;)V

    const-string v1, "paychannel"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcn/paypalm/pppayment/global/b;->H(Ljava/lang/String;)V

    const-string v1, "paypalmsmssend"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcn/paypalm/pppayment/global/b;->J(Ljava/lang/String;)V

    const-string v1, "banksmssend"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcn/paypalm/pppayment/global/b;->K(Ljava/lang/String;)V

    const-string v1, "signflag"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcn/paypalm/pppayment/global/b;->L(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const/16 v0, -0xb

    goto :goto_0

    :cond_3
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Lcn/paypalm/pppayment/global/a;Lcn/paypalm/pppayment/global/b;Landroid/widget/EditText;)I
    .locals 5

    const/4 v0, 0x0

    const-string v1, "640004"

    invoke-virtual {p2, v1}, Lcn/paypalm/pppayment/global/a;->a(Ljava/lang/String;)V

    const-string v1, "{\'opcode\':\'%s\',\'phone\':\'%s\',\'paypalmsmssend\':\'%s\'}"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcn/paypalm/pppayment/global/a;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v3, 0x1

    invoke-virtual {p2}, Lcn/paypalm/pppayment/global/a;->k()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p2}, Lcn/paypalm/pppayment/global/a;->A()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcn/paypalm/pppayment/global/Tools;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "\u8bf7\u6c42\u5931\u8d25!"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/16 v0, -0xa

    :goto_0
    return v0

    :cond_1
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "tranresult"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcn/paypalm/pppayment/global/b;->a(Ljava/lang/String;)V

    const-string v1, "resultinfo"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcn/paypalm/pppayment/global/b;->b(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcn/paypalm/pppayment/global/b;->a()Ljava/lang/String;

    move-result-object v1

    const-string v3, "000000"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "phonemask"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcn/paypalm/pppayment/global/b;->D(Ljava/lang/String;)V

    const-string v1, "authcode"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcn/paypalm/pppayment/global/b;->C(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const/16 v0, -0xb

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public a(Ljava/lang/String;I)I
    .locals 1

    const/4 v0, -0x1

    if-nez p1, :cond_0

    :goto_0
    return v0

    :cond_0
    packed-switch p2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1}, Lcn/paypalm/pppayment/global/Tools;->d(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, p1}, Lcn/paypalm/pppayment/global/Tools;->c(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0, p1}, Lcn/paypalm/pppayment/global/Tools;->b(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public a()Ljava/lang/String;
    .locals 3

    new-instance v1, Lcn/paypalm/pppayment/global/ResponseData;

    invoke-direct {v1}, Lcn/paypalm/pppayment/global/ResponseData;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, v1, Lcn/paypalm/pppayment/global/ResponseData;->byteData:[B

    invoke-direct {p0, v1}, Lcn/paypalm/pppayment/global/Tools;->initialRequest(Lcn/paypalm/pppayment/global/ResponseData;)I

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, v1, Lcn/paypalm/pppayment/global/ResponseData;->byteData:[B

    const-string v2, "utf-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    const-string v0, "\u8bf7\u6c42\u5931\u8d25!"

    goto :goto_0

    :cond_0
    const-string v0, "\u8bf7\u6c42\u5931\u8d25!"

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    new-instance v1, Lcn/paypalm/pppayment/global/ResponseData;

    invoke-direct {v1}, Lcn/paypalm/pppayment/global/ResponseData;-><init>()V

    const/4 v2, 0x0

    new-array v2, v2, [B

    iput-object v2, v1, Lcn/paypalm/pppayment/global/ResponseData;->byteData:[B

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x2

    invoke-direct {p0, v2, v3, v1}, Lcn/paypalm/pppayment/global/Tools;->passwordEncrypt([BILcn/paypalm/pppayment/global/ResponseData;)I

    move-result v2

    if-nez v2, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, v1, Lcn/paypalm/pppayment/global/ResponseData;->byteData:[B

    const-string v2, "utf-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    const-string v0, ""

    goto :goto_0
.end method

.method public a([B)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    new-instance v1, Lcn/paypalm/pppayment/global/ResponseData;

    invoke-direct {v1}, Lcn/paypalm/pppayment/global/ResponseData;-><init>()V

    const/4 v2, 0x0

    new-array v2, v2, [B

    iput-object v2, v1, Lcn/paypalm/pppayment/global/ResponseData;->byteData:[B

    array-length v2, p1

    invoke-direct {p0, p1, v2, v1}, Lcn/paypalm/pppayment/global/Tools;->getBase64([BILcn/paypalm/pppayment/global/ResponseData;)I

    move-result v2

    if-nez v2, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, v1, Lcn/paypalm/pppayment/global/ResponseData;->byteData:[B

    const-string v2, "utf-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    const-string v0, ""

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Landroid/app/Dialog;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4

    if-eqz p5, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string v0, "intent.action.result.failed"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "zsht_failed"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-class v0, Lcn/paypalm/pppayment/InitialAct;

    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    const/4 v2, -0x2

    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    const/high16 v0, 0x2400

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "\u786e\u5b9a"

    new-instance v3, Lcn/paypalm/pppayment/global/f;

    invoke-direct {v3, p0}, Lcn/paypalm/pppayment/global/f;-><init>(Lcn/paypalm/pppayment/global/Tools;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcn/paypalm/pppayment/global/g;

    invoke-direct {v2, p0}, Lcn/paypalm/pppayment/global/g;-><init>(Lcn/paypalm/pppayment/global/Tools;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Landroid/app/Dialog;ZI)V
    .locals 4

    if-eqz p3, :cond_0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u5b89\u5168\u652f\u4ed8"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "\u64cd\u4f5c\u5c1a\u672a\u5b8c\u6210\uff0c\u786e\u5b9a\u653e\u5f03\uff1f"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "\u786e\u5b9a"

    new-instance v3, Lcn/paypalm/pppayment/global/c;

    invoke-direct {v3, p0, p1, p4}, Lcn/paypalm/pppayment/global/c;-><init>(Lcn/paypalm/pppayment/global/Tools;Landroid/content/Context;I)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "\u53d6\u6d88"

    new-instance v3, Lcn/paypalm/pppayment/global/d;

    invoke-direct {v3, p0}, Lcn/paypalm/pppayment/global/d;-><init>(Lcn/paypalm/pppayment/global/Tools;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "back"

    const/16 v3, 0xa

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "authcode"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, p4, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Lcn/paypalm/pppayment/global/b;)Z
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v1

    :goto_0
    if-lt v2, v3, :cond_0

    :goto_1
    const/4 v0, 0x1

    :goto_2
    return v0

    :cond_0
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/paypalm/pppayment/global/ResponseData;

    iget-object v0, v0, Lcn/paypalm/pppayment/global/ResponseData;->a:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/paypalm/pppayment/global/ResponseData;

    iget-object v0, v0, Lcn/paypalm/pppayment/global/ResponseData;->b:Ljava/lang/String;

    iput-object v0, p4, Lcn/paypalm/pppayment/global/b;->a:Ljava/lang/String;

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/paypalm/pppayment/global/ResponseData;

    iget-object v0, v0, Lcn/paypalm/pppayment/global/ResponseData;->c:Ljava/lang/String;

    iput-object v0, p4, Lcn/paypalm/pppayment/global/b;->b:Ljava/lang/String;

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/paypalm/pppayment/global/ResponseData;

    iget-object v0, v0, Lcn/paypalm/pppayment/global/ResponseData;->d:Ljava/lang/String;

    iput-object v0, p4, Lcn/paypalm/pppayment/global/b;->c:Ljava/lang/String;

    goto :goto_1

    :cond_1
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v2, v0, :cond_2

    move v0, v1

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Ljava/io/InputStream;J)[B
    .locals 6

    :try_start_0
    invoke-virtual {p2, p3, p4}, Ljava/io/InputStream;->skip(J)J

    invoke-virtual {p2}, Ljava/io/InputStream;->read()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    invoke-virtual {p2}, Ljava/io/InputStream;->read()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    invoke-virtual {p2}, Ljava/io/InputStream;->read()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    invoke-virtual {p2}, Ljava/io/InputStream;->read()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int v3, v0, v1

    new-array v0, v3, [B

    invoke-virtual {p2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    sub-int v2, v3, v4

    const/4 v1, 0x0

    :goto_0
    if-gtz v2, :cond_0

    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    invoke-static {}, Ljava/lang/System;->gc()V

    :goto_1
    return-object v0

    :cond_0
    add-int v5, v4, v1

    invoke-virtual {p2, v0, v5, v2}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    add-int/2addr v1, v2

    sub-int v2, v3, v4

    sub-int/2addr v2, v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-static {}, Ljava/lang/System;->gc()V

    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a(Ljava/io/InputStream;)[B
    .locals 3

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    return-object v1

    :cond_0
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0
.end method

.method public a([BI)[B
    .locals 2

    new-instance v0, Lcn/paypalm/pppayment/global/ResponseData;

    invoke-direct {v0}, Lcn/paypalm/pppayment/global/ResponseData;-><init>()V

    const/4 v1, 0x0

    new-array v1, v1, [B

    iput-object v1, v0, Lcn/paypalm/pppayment/global/ResponseData;->byteData:[B

    invoke-direct {p0, p1, p2, v0}, Lcn/paypalm/pppayment/global/Tools;->passwordEncrypt([BILcn/paypalm/pppayment/global/ResponseData;)I

    iget-object v0, v0, Lcn/paypalm/pppayment/global/ResponseData;->byteData:[B

    return-object v0
.end method

.method public b(Landroid/content/Context;Lcn/paypalm/pppayment/global/a;Lcn/paypalm/pppayment/global/b;)I
    .locals 6

    const/4 v0, -0x1

    const/4 v1, 0x0

    const-string v2, "282004"

    invoke-virtual {p2, v2}, Lcn/paypalm/pppayment/global/a;->a(Ljava/lang/String;)V

    const-string v2, "{\'opcode\':\'%s\',\'userid\':\'%s\'}"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcn/paypalm/pppayment/global/a;->a()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v4, 0x1

    invoke-virtual {p2}, Lcn/paypalm/pppayment/global/a;->k()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcn/paypalm/pppayment/global/Tools;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "\u8bf7\u6c42\u5931\u8d25!"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    const/16 v0, -0xa

    :cond_1
    :goto_0
    return v0

    :cond_2
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "tranresult"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Lcn/paypalm/pppayment/global/b;->a(Ljava/lang/String;)V

    const-string v2, "resultinfo"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Lcn/paypalm/pppayment/global/b;->b(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcn/paypalm/pppayment/global/b;->a()Ljava/lang/String;

    move-result-object v2

    const-string v4, "000000"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "cardindex"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Lcn/paypalm/pppayment/global/b;->z(Ljava/lang/String;)V

    const-string v2, "banktype"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Lcn/paypalm/pppayment/global/b;->m(Ljava/lang/String;)V

    const-string v2, "cardtype"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Lcn/paypalm/pppayment/global/b;->n(Ljava/lang/String;)V

    const-string v2, "cardnum"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Lcn/paypalm/pppayment/global/b;->r(Ljava/lang/String;)V

    const-string v2, "cardstatus"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Lcn/paypalm/pppayment/global/b;->O(Ljava/lang/String;)V

    const-string v2, "bankname"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Lcn/paypalm/pppayment/global/b;->o(Ljava/lang/String;)V

    const-string v2, "id"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Lcn/paypalm/pppayment/global/b;->p(Ljava/lang/String;)V

    const-string v2, "accname"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Lcn/paypalm/pppayment/global/b;->q(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcn/paypalm/pppayment/global/b;->u()Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p3}, Lcn/paypalm/pppayment/global/b;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "2P3002"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const/16 v0, -0xb

    goto/16 :goto_0
.end method

.method public b(Ljava/lang/String;)I
    .locals 1

    const-string v0, "\\d{12,19}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    new-instance v1, Lcn/paypalm/pppayment/global/ResponseData;

    invoke-direct {v1}, Lcn/paypalm/pppayment/global/ResponseData;-><init>()V

    invoke-virtual {p0, v0}, Lcn/paypalm/pppayment/global/Tools;->a(Ljava/io/InputStream;)[B

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [B

    iput-object v2, v1, Lcn/paypalm/pppayment/global/ResponseData;->byteData:[B

    array-length v2, v0

    invoke-direct {p0, v0, v2, v1}, Lcn/paypalm/pppayment/global/Tools;->resDecrypt([BILcn/paypalm/pppayment/global/ResponseData;)I

    move-result v2

    const/4 v0, 0x0

    if-nez v2, :cond_0

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, v1, Lcn/paypalm/pppayment/global/ResponseData;->byteData:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :cond_0
    return-object v0
.end method

.method public b(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    sget-object v0, Lcn/paypalm/pppayment/global/e;->d:Ljava/lang/String;

    :cond_1
    return-object v0
.end method

.method public b()Lorg/apache/http/client/HttpClient;
    .locals 7

    const v6, 0xea60

    const/4 v5, 0x0

    new-instance v0, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v0}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    new-instance v1, Lorg/apache/http/conn/scheme/Scheme;

    const-string v2, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v3

    const/16 v4, 0x50

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    new-instance v1, Lorg/apache/http/conn/scheme/Scheme;

    const-string v2, "https"

    invoke-static {}, Lcn/paypalm/pppayment/a/c;->a()Lorg/apache/http/conn/scheme/SocketFactory;

    move-result-object v3

    const/16 v4, 0x1bb

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    const-string v2, "http.conn-manager.max-total"

    const/16 v3, 0x1e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    const-string v2, "http.conn-manager.max-per-route"

    new-instance v3, Lorg/apache/http/conn/params/ConnPerRouteBean;

    const/16 v4, 0xa

    invoke-direct {v3, v4}, Lorg/apache/http/conn/params/ConnPerRouteBean;-><init>(I)V

    invoke-interface {v1, v2, v3}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    const-string v2, "http.protocol.expect-continue"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    const-string v2, "http.connection.stalecheck"

    invoke-interface {v1, v2, v5}, Lorg/apache/http/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;

    sget-object v2, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v1, v2}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    const-wide/32 v2, 0xea60

    invoke-static {v1, v2, v3}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    invoke-static {v1, v6}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    invoke-static {v1, v6}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    new-instance v2, Lorg/apache/http/impl/conn/SingleClientConnManager;

    invoke-direct {v2, v1, v0}, Lorg/apache/http/impl/conn/SingleClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0, v2, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    return-object v0
.end method

.method public c(Landroid/content/Context;Lcn/paypalm/pppayment/global/a;Lcn/paypalm/pppayment/global/b;)I
    .locals 5

    const/4 v0, 0x0

    const-string v1, "660004"

    invoke-virtual {p2, v1}, Lcn/paypalm/pppayment/global/a;->a(Ljava/lang/String;)V

    const-string v1, "{\'opcode\':\'%s\',\'authcode\':\'%s\'}"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcn/paypalm/pppayment/global/a;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v3, 0x1

    invoke-virtual {p2}, Lcn/paypalm/pppayment/global/a;->l()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcn/paypalm/pppayment/global/Tools;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "\u8bf7\u6c42\u5931\u8d25!"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const/16 v0, -0xa

    :cond_1
    :goto_0
    return v0

    :cond_2
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "tranresult"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcn/paypalm/pppayment/global/b;->a(Ljava/lang/String;)V

    const-string v1, "resultinfo"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcn/paypalm/pppayment/global/b;->b(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcn/paypalm/pppayment/global/b;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "000000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const/16 v0, -0xb

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)I
    .locals 1

    const-string v0, "((\\+86|86)?((13[0-9]\\d{8})|(15[0-9]\\d{8})|(18[0-9]\\d{8})))"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public c(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    sget-object v0, Lcn/paypalm/pppayment/global/e;->d:Ljava/lang/String;

    :cond_1
    return-object v0
.end method

.method public c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v1, Lcn/paypalm/pppayment/global/ResponseData;

    invoke-direct {v1}, Lcn/paypalm/pppayment/global/ResponseData;-><init>()V

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [B

    iput-object v2, v1, Lcn/paypalm/pppayment/global/ResponseData;->byteData:[B

    invoke-direct {p0, v0, v1}, Lcn/paypalm/pppayment/global/Tools;->sendRequest([BLcn/paypalm/pppayment/global/ResponseData;)I

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, v1, Lcn/paypalm/pppayment/global/ResponseData;->byteData:[B

    const-string v2, "utf-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    const-string v0, "\u8bf7\u6c42\u5931\u8d25!"

    goto :goto_0

    :cond_0
    const-string v0, "\u8bf7\u6c42\u5931\u8d25!"

    goto :goto_0
.end method

.method public d(Landroid/content/Context;Lcn/paypalm/pppayment/global/a;Lcn/paypalm/pppayment/global/b;)I
    .locals 6

    const/4 v1, 0x0

    const-string v0, ""

    const-string v2, "340004"

    invoke-virtual {p2, v2}, Lcn/paypalm/pppayment/global/a;->a(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcn/paypalm/pppayment/global/a;->s()[B

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Lcn/paypalm/pppayment/global/a;->s()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/paypalm/pppayment/global/Tools;->a([B)Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, -0x3

    :goto_0
    return v0

    :cond_0
    const-string v2, "{\'opcode\':\'%s\',\'cardindex\':\'%s\',\'cardpwd\':\'%s\',\'cvn2\':\'%s\',\'date\':\'%s\',\'nextauth\':\'%s\'}"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcn/paypalm/pppayment/global/a;->a()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v4, 0x1

    invoke-virtual {p2}, Lcn/paypalm/pppayment/global/a;->r()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object v0, v3, v4

    const/4 v0, 0x3

    invoke-virtual {p2}, Lcn/paypalm/pppayment/global/a;->t()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x4

    invoke-virtual {p2}, Lcn/paypalm/pppayment/global/a;->u()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x5

    invoke-virtual {p2}, Lcn/paypalm/pppayment/global/a;->z()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcn/paypalm/pppayment/global/Tools;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "\u8bf7\u6c42\u5931\u8d25!"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/16 v0, -0xa

    goto :goto_0

    :cond_2
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "tranresult"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcn/paypalm/pppayment/global/b;->a(Ljava/lang/String;)V

    const-string v0, "resultinfo"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcn/paypalm/pppayment/global/b;->b(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcn/paypalm/pppayment/global/b;->a()Ljava/lang/String;

    move-result-object v0

    const-string v3, "000000"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "bankserialno"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcn/paypalm/pppayment/global/b;->B(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :cond_3
    const/4 v0, -0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const/16 v0, -0xb

    goto :goto_0
.end method

.method public d(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    const-wide/high16 v5, 0x4000

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v1, v1

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v3, v3

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    add-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    const/high16 v3, 0x4320

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v3

    float-to-double v3, v0

    div-double v0, v1, v3

    const-wide/high16 v2, 0x4018

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    const-string v0, "12"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "02"

    goto :goto_0
.end method

.method public postServer(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v1, 0x0

    const-string v0, ""

    :try_start_0
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    sget-object v3, Lcn/paypalm/pppayment/global/e;->a:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "enc"

    const-string v6, "1"

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "transdata"

    invoke-direct {v4, v5, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v5, "utf-8"

    invoke-direct {v4, v3, v5}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    sget-object v3, Lcn/paypalm/pppayment/global/e;->e:Lorg/apache/http/client/HttpClient;
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    if-nez v3, :cond_1

    const-string v0, ""

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_1
    sget-object v3, Lcn/paypalm/pppayment/global/e;->e:Lorg/apache/http/client/HttpClient;

    invoke-interface {v3, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    if-eqz v2, :cond_2

    new-instance v3, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v2, 0x2000

    invoke-direct {v3, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    :goto_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/ConnectException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    move-result-object v2

    if-nez v2, :cond_3

    :cond_2
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    :try_start_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2
    .catch Ljava/net/ConnectException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/net/ConnectException;->printStackTrace()V

    const-string v0, ""

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lorg/apache/http/conn/ConnectTimeoutException;->printStackTrace()V

    const-string v0, ""

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/net/SocketTimeoutException;->printStackTrace()V

    const-string v0, ""

    goto :goto_0

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    const-string v0, ""

    goto :goto_0

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    const-string v0, ""

    goto :goto_0

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const-string v0, ""

    goto :goto_0
.end method
