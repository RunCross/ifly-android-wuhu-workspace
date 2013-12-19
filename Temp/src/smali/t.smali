.class public Lt;
.super Lcom/qihoo360/mobilesafe/telephonyInterface/PhoneCardInterface;


# instance fields
.field b:Lcom/qihoo360/mobilesafe/telephony_mtk/DoubleTelephonyManager;

.field protected c:Lcom/android/internal/telephony/ITelephony;

.field protected d:Landroid/telephony/SmsManager;

.field protected e:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(ILcom/qihoo360/mobilesafe/telephony_mtk/DoubleTelephonyManager;)V
    .locals 2

    invoke-direct {p0}, Lcom/qihoo360/mobilesafe/telephonyInterface/PhoneCardInterface;-><init>()V

    iput p1, p0, Lt;->a:I

    iput-object p2, p0, Lt;->b:Lcom/qihoo360/mobilesafe/telephony_mtk/DoubleTelephonyManager;

    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    iput-object v0, p0, Lt;->c:Lcom/android/internal/telephony/ITelephony;

    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    iput-object v0, p0, Lt;->d:Landroid/telephony/SmsManager;

    iget-object v0, p2, Lcom/qihoo360/mobilesafe/telephony_mtk/DoubleTelephonyManager;->a:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lt;->e:Landroid/telephony/TelephonyManager;

    return-void
.end method


# virtual methods
.method protected a()I
    .locals 1

    iget v0, p0, Lt;->a:I

    return v0
.end method

.method public answerRingingCall()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lt;->c:Lcom/android/internal/telephony/ITelephony;

    if-nez v0, :cond_0

    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    iput-object v0, p0, Lt;->c:Lcom/android/internal/telephony/ITelephony;

    :cond_0
    iget-object v0, p0, Lt;->c:Lcom/android/internal/telephony/ITelephony;

    invoke-virtual {p0}, Lt;->a()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->answerRingingCallGemini(I)V

    return-void
.end method

.method public dailPhone(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "tel:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DIAL"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    :try_start_0
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public endCall()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lt;->c:Lcom/android/internal/telephony/ITelephony;

    if-nez v0, :cond_0

    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    iput-object v0, p0, Lt;->c:Lcom/android/internal/telephony/ITelephony;

    :cond_0
    iget-object v0, p0, Lt;->c:Lcom/android/internal/telephony/ITelephony;

    invoke-virtual {p0}, Lt;->a()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->endCallGemini(I)Z

    return-void
.end method

.method public getCallState()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lt;->e:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Lt;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getCallStateGemini(I)I

    move-result v0

    return v0
.end method

.method public getCardOperator()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lt;->e:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Lt;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSimOperatorGemini(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCardState()I
    .locals 2

    iget-object v0, p0, Lt;->e:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Lt;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSimStateGemini(I)I

    move-result v0

    return v0
.end method

.method public getDataState()I
    .locals 2

    iget-object v0, p0, Lt;->e:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Lt;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getDataStateGemini(I)I

    move-result v0

    return v0
.end method

.method public getIMEI()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lt;->e:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Lt;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getDeviceIdGemini(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_0
.end method

.method public getIMSI()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lt;->e:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Lt;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSubscriberIdGemini(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_0
.end method

.method public getNetworkType()I
    .locals 2

    iget-object v0, p0, Lt;->e:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Lt;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getNetworkTypeGemini(I)I

    move-result v0

    return v0
.end method

.method public getPhoneType()I
    .locals 2

    iget-object v0, p0, Lt;->e:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Lt;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getPhoneTypeGemini(I)I

    move-result v0

    return v0
.end method

.method public getSmsMessage([Ljava/lang/Object;)[Lcom/android/internal/telephony/SmsMessageBase;
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lt;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    array-length v1, p1

    new-array v2, v1, [Lcom/android/internal/telephony/cdma/SmsMessage;

    move v1, v0

    :goto_0
    array-length v0, p1

    if-lt v1, v0, :cond_0

    move-object v0, v2

    :goto_1
    return-object v0

    :cond_0
    aget-object v0, p1, v1

    check-cast v0, [B

    invoke-static {v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->createFromPdu([B)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object v0

    aput-object v0, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    array-length v1, p1

    new-array v2, v1, [Lcom/android/internal/telephony/gsm/SmsMessage;

    move v1, v0

    :goto_2
    array-length v0, p1

    if-lt v1, v0, :cond_2

    move-object v0, v2

    goto :goto_1

    :cond_2
    aget-object v0, p1, v1

    check-cast v0, [B

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->createFromPdu([B)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v0

    aput-object v0, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2
.end method

.method public getTelephonyService()Lcom/android/internal/telephony/ITelephony;
    .locals 1

    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    return-object v0
.end method

.method public hangUpCall()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lt;->c:Lcom/android/internal/telephony/ITelephony;

    if-nez v0, :cond_0

    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    iput-object v0, p0, Lt;->c:Lcom/android/internal/telephony/ITelephony;

    :cond_0
    iget-object v0, p0, Lt;->c:Lcom/android/internal/telephony/ITelephony;

    invoke-virtual {p0}, Lt;->a()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->endCallGemini(I)Z

    move-result v0

    return v0
.end method

.method public hasIccCard()Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0}, Lt;->getCardState()I

    move-result v1

    if-eq v1, v0, :cond_0

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return v0
.end method

.method public isAvailable()Z
    .locals 2

    iget-object v0, p0, Lt;->e:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Lt;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSimStateGemini(I)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRinging()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lt;->c:Lcom/android/internal/telephony/ITelephony;

    if-nez v0, :cond_0

    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    iput-object v0, p0, Lt;->c:Lcom/android/internal/telephony/ITelephony;

    :cond_0
    iget-object v0, p0, Lt;->c:Lcom/android/internal/telephony/ITelephony;

    invoke-virtual {p0}, Lt;->a()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->isRingingGemini(I)Z

    move-result v0

    return v0
.end method

.method public listen(Landroid/telephony/PhoneStateListener;I)V
    .locals 2

    iget-object v0, p0, Lt;->e:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Lt;->a()I

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Landroid/telephony/TelephonyManager;->listenGemini(Landroid/telephony/PhoneStateListener;II)V

    return-void
.end method

.method public phoneCall(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "%23"

    const-string v3, "#"

    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xf

    if-ge v3, v4, :cond_0

    :try_start_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "out_going_call_to_phone_app"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "number"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "simId"

    invoke-virtual {p0}, Lt;->a()I

    move-result v4

    invoke-virtual {v3, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "launch_from_dialer"

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "is_sip_call"

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    goto :goto_0

    :cond_0
    :try_start_1
    const-string v3, "tel"

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.CALL"

    invoke-direct {v3, v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v2, "com.android.phone.extra.slot"

    invoke-virtual {p0}, Lt;->a()I

    move-result v4

    invoke-virtual {v3, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v2, 0x1400

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v2, "com.android.phone.extra.video"

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    goto :goto_0
.end method

.method public sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)Z"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lt;->a()I

    move-result v3

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Landroid/telephony/gemini/GeminiSmsManager;->sendMultipartTextMessageGemini(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ILjava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)Z
    .locals 6

    :try_start_0
    invoke-virtual {p0}, Lt;->a()I

    move-result v3

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Landroid/telephony/gemini/GeminiSmsManager;->sendTextMessageGemini(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public silenceRinger()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lt;->c:Lcom/android/internal/telephony/ITelephony;

    if-nez v0, :cond_0

    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    iput-object v0, p0, Lt;->c:Lcom/android/internal/telephony/ITelephony;

    :cond_0
    iget-object v0, p0, Lt;->c:Lcom/android/internal/telephony/ITelephony;

    invoke-virtual {p0}, Lt;->a()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->silenceRingerGemini(I)V

    return-void
.end method
