.class public Lcom/qihoo360/mobilesafe/telephony_qrd_msm7x27a/TelephoneEnv;
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

    sput-object v0, Lcom/qihoo360/mobilesafe/telephony_qrd_msm7x27a/TelephoneEnv;->c:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/qihoo360/mobilesafe/telephonyInterface/TelephoneEnvInterface;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/qihoo360/mobilesafe/telephony_qrd_msm7x27a/TelephoneEnv;->a:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/qihoo360/mobilesafe/telephony_qrd_msm7x27a/TelephoneEnv;->b:I

    invoke-direct {p0, p1}, Lcom/qihoo360/mobilesafe/telephony_qrd_msm7x27a/TelephoneEnv;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic a(Lcom/qihoo360/mobilesafe/telephony_qrd_msm7x27a/TelephoneEnv;)I
    .locals 1

    iget v0, p0, Lcom/qihoo360/mobilesafe/telephony_qrd_msm7x27a/TelephoneEnv;->a:I

    return v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "S8600"

    aput-object v2, v0, v1

    invoke-static {v0}, Lg;->a([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Lcom/qihoo360/mobilesafe/telephony_qrd_msm7x27a/TelephoneEnv;->a:I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Laa;

    invoke-direct {v0, p0, p1}, Laa;-><init>(Lcom/qihoo360/mobilesafe/telephony_qrd_msm7x27a/TelephoneEnv;Landroid/content/Context;)V

    invoke-virtual {v0}, Laa;->start()V

    goto :goto_0
.end method

.method public static synthetic a(Lcom/qihoo360/mobilesafe/telephony_qrd_msm7x27a/TelephoneEnv;I)V
    .locals 0

    iput p1, p0, Lcom/qihoo360/mobilesafe/telephony_qrd_msm7x27a/TelephoneEnv;->a:I

    return-void
.end method

.method public static synthetic a(Lcom/qihoo360/mobilesafe/telephony_qrd_msm7x27a/TelephoneEnv;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qihoo360/mobilesafe/telephony_qrd_msm7x27a/TelephoneEnv;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic a()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/qihoo360/mobilesafe/telephony_qrd_msm7x27a/TelephoneEnv;->c:[Ljava/lang/String;

    return-object v0
.end method

.method private b(Landroid/content/Context;)I
    .locals 12

    const/4 v10, 0x5

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v6, "getSimState"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    invoke-virtual {v1, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v1, v7

    invoke-virtual {v6, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v10, :cond_0

    move v1, v4

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    const/4 v3, 0x1

    :try_start_1
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v3, v7

    invoke-virtual {v6, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v10, :cond_1

    move v0, v4

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :goto_2
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    and-int/2addr v0, v1

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_subscription"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_3
    return v0

    :cond_0
    move v1, v5

    goto :goto_0

    :cond_1
    move v0, v5

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v3

    :goto_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v0

    move-object v0, v2

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "multi_sim_data_call"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v11, v0

    move-object v0, v1

    move-object v1, v11

    goto :goto_4
.end method

.method public static synthetic b(Lcom/qihoo360/mobilesafe/telephony_qrd_msm7x27a/TelephoneEnv;)I
    .locals 1

    iget v0, p0, Lcom/qihoo360/mobilesafe/telephony_qrd_msm7x27a/TelephoneEnv;->b:I

    return v0
.end method

.method public static synthetic b(Lcom/qihoo360/mobilesafe/telephony_qrd_msm7x27a/TelephoneEnv;I)V
    .locals 0

    iput p1, p0, Lcom/qihoo360/mobilesafe/telephony_qrd_msm7x27a/TelephoneEnv;->b:I

    return-void
.end method


# virtual methods
.method public getApnCursor(Landroid/content/Context;ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/qihoo360/mobilesafe/telephony_qrd_msm7x27a/TelephoneEnv;->getCarrierUri(I)Landroid/net/Uri;

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
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "HUAWEI Y210-0010"

    aput-object v3, v1, v2

    invoke-static {v1}, Lg;->a([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.WirelessSettings"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.multisimsettings.MultiSimSettingWidget"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public getApnSetIntent(I)Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.ApnSettings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "SUBSCRIPTION_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v0
.end method

.method public getCardType(I)I
    .locals 4

    const/4 v0, 0x0

    const/4 v2, 0x2

    const/4 v1, 0x1

    iget v3, p0, Lcom/qihoo360/mobilesafe/telephony_qrd_msm7x27a/TelephoneEnv;->a:I

    if-ne v3, v2, :cond_2

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-ne p1, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    if-ne p1, v1, :cond_4

    const/4 v0, 0x3

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_0
.end method

.method public getCarrierUri(I)Landroid/net/Uri;
    .locals 1

    sget-object v0, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method public getOperatorNumeric(I)Ljava/lang/String;
    .locals 2

    const-string v0, "gsm.sim.operator.numeric"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-le v1, p1, :cond_0

    aget-object v0, v0, p1

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getPreferAPNUri(I)Landroid/net/Uri;
    .locals 1

    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public setPrefApn(Landroid/content/Context;II)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/qihoo360/mobilesafe/telephony_qrd_msm7x27a/TelephoneEnv;->b(Landroid/content/Context;)I

    move-result v0

    if-eq p2, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "apn_id"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :try_start_0
    invoke-virtual {p0, p2}, Lcom/qihoo360/mobilesafe/telephony_qrd_msm7x27a/TelephoneEnv;->getPreferAPNUri(I)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "TelephoneEnvInterface"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
