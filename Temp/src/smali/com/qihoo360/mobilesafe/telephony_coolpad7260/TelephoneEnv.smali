.class public Lcom/qihoo360/mobilesafe/telephony_coolpad7260/TelephoneEnv;
.super Lcom/qihoo360/mobilesafe/telephonyInterface/TelephoneEnvInterface;


# instance fields
.field private final a:Landroid/net/Uri;

.field private final b:Landroid/net/Uri;

.field private final c:Landroid/net/Uri;

.field private final d:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/qihoo360/mobilesafe/telephonyInterface/TelephoneEnvInterface;-><init>()V

    const-string v0, "content://telephony/carriers"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/qihoo360/mobilesafe/telephony_coolpad7260/TelephoneEnv;->a:Landroid/net/Uri;

    const-string v0, "content://telephony/carriers"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/qihoo360/mobilesafe/telephony_coolpad7260/TelephoneEnv;->b:Landroid/net/Uri;

    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/qihoo360/mobilesafe/telephony_coolpad7260/TelephoneEnv;->c:Landroid/net/Uri;

    const-string v0, "content://telephony/carriers/preferapn_2"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/qihoo360/mobilesafe/telephony_coolpad7260/TelephoneEnv;->d:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public getApnCursor(Landroid/content/Context;ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/qihoo360/mobilesafe/telephony_coolpad7260/TelephoneEnv;->a:Landroid/net/Uri;

    invoke-static {p1}, Lcom/qihoo360/mobilesafe/telephonyInterface/OperatorInterface;->getDefault(Landroid/content/Context;)Lcom/qihoo360/mobilesafe/telephonyInterface/DoubleTelephonyManagerInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qihoo360/mobilesafe/telephonyInterface/DoubleTelephonyManagerInterface;->getPhoneCardsList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qihoo360/mobilesafe/telephonyInterface/PhoneCardInterface;

    invoke-virtual {v2}, Lcom/qihoo360/mobilesafe/telephonyInterface/PhoneCardInterface;->getCardOperator()Ljava/lang/String;

    move-result-object v2

    if-nez p5, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "numeric="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    move-object v2, p4

    move-object v4, p6

    move-object v5, p7

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v3, "numeric"

    invoke-virtual {p5, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " and numeric=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v3, p5

    goto :goto_0
.end method

.method public getApnSetIntent()Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.NetworkChoosePreferenceActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public getCardType(I)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "5832"

    aput-object v3, v2, v0

    invoke-static {v2}, Lg;->a([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez p1, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    if-ne p1, v1, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public getCarrierUri(I)Landroid/net/Uri;
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/qihoo360/mobilesafe/telephony_coolpad7260/TelephoneEnv;->a:Landroid/net/Uri;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/qihoo360/mobilesafe/telephony_coolpad7260/TelephoneEnv;->b:Landroid/net/Uri;

    goto :goto_0
.end method

.method public getOperatorNumeric(I)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const-string v0, "cdma.ruim.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "gsm.sim.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPreferAPNUri(I)Landroid/net/Uri;
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/qihoo360/mobilesafe/telephony_coolpad7260/TelephoneEnv;->c:Landroid/net/Uri;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/qihoo360/mobilesafe/telephony_coolpad7260/TelephoneEnv;->d:Landroid/net/Uri;

    goto :goto_0
.end method

.method public isSupportApnSet()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setPrefApn(Landroid/content/Context;II)V
    .locals 5

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    if-nez p2, :cond_0

    const-string v3, "apn_id"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/qihoo360/mobilesafe/telephony_coolpad7260/TelephoneEnv;->getPreferAPNUri(I)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_0
    const-string v3, "apn_id_2"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "TelephoneEnvInterface"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
