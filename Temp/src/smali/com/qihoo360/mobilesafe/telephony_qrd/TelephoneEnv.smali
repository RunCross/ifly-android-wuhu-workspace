.class public Lcom/qihoo360/mobilesafe/telephony_qrd/TelephoneEnv;
.super Lcom/qihoo360/mobilesafe/telephonyInterface/TelephoneEnvInterface;


# static fields
.field private static final c:[Ljava/lang/String;


# instance fields
.field private a:I

.field private b:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "phone_msim"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "phone"

    aput-object v2, v0, v1

    sput-object v0, Lcom/qihoo360/mobilesafe/telephony_qrd/TelephoneEnv;->c:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/qihoo360/mobilesafe/telephonyInterface/TelephoneEnvInterface;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/qihoo360/mobilesafe/telephony_qrd/TelephoneEnv;->a:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/qihoo360/mobilesafe/telephony_qrd/TelephoneEnv;->b:I

    invoke-direct {p0, p1}, Lcom/qihoo360/mobilesafe/telephony_qrd/TelephoneEnv;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic a(Lcom/qihoo360/mobilesafe/telephony_qrd/TelephoneEnv;)I
    .locals 1

    iget v0, p0, Lcom/qihoo360/mobilesafe/telephony_qrd/TelephoneEnv;->a:I

    return v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x2

    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Uniscope_U1203"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "U1203"

    aput-object v2, v0, v1

    const-string v1, "innos i6C"

    aput-object v1, v0, v3

    const/4 v1, 0x3

    const-string v2, "MOT-XT788"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Lenovo A765e"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Lenovo S850e"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "E30"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "HUAWEI D2-2010"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "HUAWEI Y300C"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "HUAWEI A199"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "HUAWEI P6-C00"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "LNV-Lenovo A600e"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "HS-EG950"

    aput-object v2, v0, v1

    invoke-static {v0}, Lg;->a([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput v3, p0, Lcom/qihoo360/mobilesafe/telephony_qrd/TelephoneEnv;->a:I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lx;

    invoke-direct {v0, p0, p1}, Lx;-><init>(Lcom/qihoo360/mobilesafe/telephony_qrd/TelephoneEnv;Landroid/content/Context;)V

    invoke-virtual {v0}, Lx;->start()V

    goto :goto_0
.end method

.method public static synthetic a(Lcom/qihoo360/mobilesafe/telephony_qrd/TelephoneEnv;I)V
    .locals 0

    iput p1, p0, Lcom/qihoo360/mobilesafe/telephony_qrd/TelephoneEnv;->a:I

    return-void
.end method

.method public static synthetic a(Lcom/qihoo360/mobilesafe/telephony_qrd/TelephoneEnv;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qihoo360/mobilesafe/telephony_qrd/TelephoneEnv;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic a()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/qihoo360/mobilesafe/telephony_qrd/TelephoneEnv;->c:[Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic b(Lcom/qihoo360/mobilesafe/telephony_qrd/TelephoneEnv;)I
    .locals 1

    iget v0, p0, Lcom/qihoo360/mobilesafe/telephony_qrd/TelephoneEnv;->b:I

    return v0
.end method

.method public static synthetic b(Lcom/qihoo360/mobilesafe/telephony_qrd/TelephoneEnv;I)V
    .locals 0

    iput p1, p0, Lcom/qihoo360/mobilesafe/telephony_qrd/TelephoneEnv;->b:I

    return-void
.end method


# virtual methods
.method public getApnCursor(Landroid/content/Context;ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/qihoo360/mobilesafe/telephony_qrd/TelephoneEnv;->getCarrierUri(I)Landroid/net/Uri;

    move-result-object v1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1, p3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :cond_0
    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    move-object v5, p7

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getApnSetIntent()Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.ApnSettings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public getCardType(I)I
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/qihoo360/mobilesafe/telephony_qrd/TelephoneEnv;->a:I

    if-ne v1, v0, :cond_2

    if-nez p1, :cond_1

    const/4 v0, 0x2

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-ne p1, v0, :cond_4

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    if-eq p1, v0, :cond_0

    :cond_4
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public getCarrierUri(I)Landroid/net/Uri;
    .locals 1

    sget-object v0, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method public getOperatorNumeric(I)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const-string v0, "gsm.sim.operator.numeric"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "TelephoneEnvInterface"

    const-string v1, "getOperatorNumeric simId ERROR!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    goto :goto_0
.end method

.method public getPreferAPNUri(I)Landroid/net/Uri;
    .locals 2

    if-nez p1, :cond_0

    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "TelephoneEnvInterface"

    const-string v1, "getPreferAPNUri simId ERROR!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupportApnSet()Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "K-Touch W619"

    aput-object v2, v1, v0

    const/4 v2, 0x1

    const-string v3, "ZTE V889D"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "ZTE N855D"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "ZTE N790"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "K-Touch E619"

    aput-object v3, v1, v2

    invoke-static {v1}, Lg;->a([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/qihoo360/mobilesafe/telephonyInterface/TelephoneEnvInterface;->isSupportApnSet()Z

    move-result v0

    goto :goto_0
.end method

.method public setPrefApn(Landroid/content/Context;II)V
    .locals 0

    return-void
.end method
