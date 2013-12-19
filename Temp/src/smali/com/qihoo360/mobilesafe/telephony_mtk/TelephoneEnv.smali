.class public Lcom/qihoo360/mobilesafe/telephony_mtk/TelephoneEnv;
.super Lcom/qihoo360/mobilesafe/telephonyInterface/TelephoneEnvInterface;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/net/Uri;

.field private final c:Landroid/net/Uri;

.field private final d:Landroid/net/Uri;

.field private final e:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/qihoo360/mobilesafe/telephonyInterface/TelephoneEnvInterface;-><init>()V

    sget-object v0, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/qihoo360/mobilesafe/telephony_mtk/TelephoneEnv;->b:Landroid/net/Uri;

    const-string v0, "content://telephony/carriers_gemini"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/qihoo360/mobilesafe/telephony_mtk/TelephoneEnv;->c:Landroid/net/Uri;

    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/qihoo360/mobilesafe/telephony_mtk/TelephoneEnv;->d:Landroid/net/Uri;

    const-string v0, "content://telephony/carriers_gemini/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/qihoo360/mobilesafe/telephony_mtk/TelephoneEnv;->e:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/qihoo360/mobilesafe/telephony_mtk/TelephoneEnv;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getApnCursor(Landroid/content/Context;ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/qihoo360/mobilesafe/telephony_mtk/TelephoneEnv;->getCarrierUri(I)Landroid/net/Uri;

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

    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.MultipleSimActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Lcom/qihoo360/mobilesafe/telephony_mtk/DoubleTelephonyManager;

    iget-object v2, p0, Lcom/qihoo360/mobilesafe/telephony_mtk/TelephoneEnv;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/qihoo360/mobilesafe/telephony_mtk/DoubleTelephonyManager;-><init>(Landroid/content/Context;)V

    const-string v2, "simId"

    iget-object v3, p0, Lcom/qihoo360/mobilesafe/telephony_mtk/TelephoneEnv;->a:Landroid/content/Context;

    invoke-virtual {v1, v3}, Lcom/qihoo360/mobilesafe/telephony_mtk/DoubleTelephonyManager;->getCurrentNetCard(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "INIT_TITLE_NAME"

    const-string v2, "\u63a5\u5165\u70b9\u540d\u79f0"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "ITEM_TYPE"

    const-string v2, "PreferenceScreen"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "TARGET_CLASS"

    const-string v2, "com.android.settings.ApnSettings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public getCardType(I)I
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public getCarrierUri(I)Landroid/net/Uri;
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/qihoo360/mobilesafe/telephony_mtk/TelephoneEnv;->b:Landroid/net/Uri;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/qihoo360/mobilesafe/telephony_mtk/TelephoneEnv;->c:Landroid/net/Uri;

    goto :goto_0
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
    const-string v0, "gsm.sim.operator.numeric.2"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPreferAPNUri(I)Landroid/net/Uri;
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/qihoo360/mobilesafe/telephony_mtk/TelephoneEnv;->d:Landroid/net/Uri;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/qihoo360/mobilesafe/telephony_mtk/TelephoneEnv;->e:Landroid/net/Uri;

    goto :goto_0
.end method

.method public isReceiveMMS()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setPrefApn(Landroid/content/Context;II)V
    .locals 5

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "apn_id"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :try_start_0
    invoke-virtual {p0, p2}, Lcom/qihoo360/mobilesafe/telephony_mtk/TelephoneEnv;->getPreferAPNUri(I)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "TelephoneEnvInterface"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
