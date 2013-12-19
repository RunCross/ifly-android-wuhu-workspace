.class public Lak;
.super Laj;


# instance fields
.field private f:Lcom/motorola/telephony/SecondaryTelephonyManager;

.field private g:Lcom/motorola/telephony/SecondarySmsManager;

.field private h:Lcom/android/internal/telephony/ITelephony;


# direct methods
.method public constructor <init>(ILcom/qihoo360/mobilesafe/telephony_xt800/DoubleTelephonyManager;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Laj;-><init>(ILcom/qihoo360/mobilesafe/telephony_xt800/DoubleTelephonyManager;)V

    iget-object v0, p2, Lcom/qihoo360/mobilesafe/telephony_xt800/DoubleTelephonyManager;->a:Landroid/content/Context;

    const-string v1, "phone2"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/telephony/SecondaryTelephonyManager;

    iput-object v0, p0, Lak;->f:Lcom/motorola/telephony/SecondaryTelephonyManager;

    invoke-static {}, Lcom/motorola/telephony/SecondarySmsManager;->getDefault()Lcom/motorola/telephony/SecondarySmsManager;

    move-result-object v0

    iput-object v0, p0, Lak;->g:Lcom/motorola/telephony/SecondarySmsManager;

    const-string v0, "phone2"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    iput-object v0, p0, Lak;->h:Lcom/android/internal/telephony/ITelephony;

    return-void
.end method


# virtual methods
.method public answerRingingCall()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lak;->h:Lcom/android/internal/telephony/ITelephony;

    if-nez v0, :cond_0

    const-string v0, "phone2"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    iput-object v0, p0, Lak;->h:Lcom/android/internal/telephony/ITelephony;

    :cond_0
    iget-object v0, p0, Lak;->h:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->answerRingingCall()V

    return-void
.end method

.method public endCall()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lak;->h:Lcom/android/internal/telephony/ITelephony;

    if-nez v0, :cond_0

    const-string v0, "phone2"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    iput-object v0, p0, Lak;->h:Lcom/android/internal/telephony/ITelephony;

    :cond_0
    iget-object v0, p0, Lak;->h:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->endCall()Z

    return-void
.end method

.method public getCallState()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lak;->f:Lcom/motorola/telephony/SecondaryTelephonyManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lak;->b:Lcom/qihoo360/mobilesafe/telephony_xt800/DoubleTelephonyManager;

    iget-object v0, v0, Lcom/qihoo360/mobilesafe/telephony_xt800/DoubleTelephonyManager;->a:Landroid/content/Context;

    const-string v1, "phone2"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/telephony/SecondaryTelephonyManager;

    iput-object v0, p0, Lak;->f:Lcom/motorola/telephony/SecondaryTelephonyManager;

    :cond_0
    iget-object v0, p0, Lak;->f:Lcom/motorola/telephony/SecondaryTelephonyManager;

    invoke-virtual {v0}, Lcom/motorola/telephony/SecondaryTelephonyManager;->getCallState()I

    move-result v0

    return v0
.end method

.method public getCardOperator()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lak;->f:Lcom/motorola/telephony/SecondaryTelephonyManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lak;->b:Lcom/qihoo360/mobilesafe/telephony_xt800/DoubleTelephonyManager;

    iget-object v0, v0, Lcom/qihoo360/mobilesafe/telephony_xt800/DoubleTelephonyManager;->a:Landroid/content/Context;

    const-string v1, "phone2"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/telephony/SecondaryTelephonyManager;

    iput-object v0, p0, Lak;->f:Lcom/motorola/telephony/SecondaryTelephonyManager;

    :cond_0
    iget-object v0, p0, Lak;->f:Lcom/motorola/telephony/SecondaryTelephonyManager;

    invoke-virtual {v0}, Lcom/motorola/telephony/SecondaryTelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCardState()I
    .locals 2

    iget-object v0, p0, Lak;->f:Lcom/motorola/telephony/SecondaryTelephonyManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lak;->b:Lcom/qihoo360/mobilesafe/telephony_xt800/DoubleTelephonyManager;

    iget-object v0, v0, Lcom/qihoo360/mobilesafe/telephony_xt800/DoubleTelephonyManager;->a:Landroid/content/Context;

    const-string v1, "phone2"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/telephony/SecondaryTelephonyManager;

    iput-object v0, p0, Lak;->f:Lcom/motorola/telephony/SecondaryTelephonyManager;

    :cond_0
    iget-object v0, p0, Lak;->f:Lcom/motorola/telephony/SecondaryTelephonyManager;

    invoke-virtual {v0}, Lcom/motorola/telephony/SecondaryTelephonyManager;->getSimState()I

    move-result v0

    return v0
.end method

.method public getDataState()I
    .locals 2

    iget-object v0, p0, Lak;->f:Lcom/motorola/telephony/SecondaryTelephonyManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lak;->b:Lcom/qihoo360/mobilesafe/telephony_xt800/DoubleTelephonyManager;

    iget-object v0, v0, Lcom/qihoo360/mobilesafe/telephony_xt800/DoubleTelephonyManager;->a:Landroid/content/Context;

    const-string v1, "phone2"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/telephony/SecondaryTelephonyManager;

    iput-object v0, p0, Lak;->f:Lcom/motorola/telephony/SecondaryTelephonyManager;

    :cond_0
    iget-object v0, p0, Lak;->f:Lcom/motorola/telephony/SecondaryTelephonyManager;

    invoke-virtual {v0}, Lcom/motorola/telephony/SecondaryTelephonyManager;->getDataState()I

    move-result v0

    return v0
.end method

.method public getIMEI()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lak;->f:Lcom/motorola/telephony/SecondaryTelephonyManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lak;->b:Lcom/qihoo360/mobilesafe/telephony_xt800/DoubleTelephonyManager;

    iget-object v0, v0, Lcom/qihoo360/mobilesafe/telephony_xt800/DoubleTelephonyManager;->a:Landroid/content/Context;

    const-string v1, "phone2"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/telephony/SecondaryTelephonyManager;

    iput-object v0, p0, Lak;->f:Lcom/motorola/telephony/SecondaryTelephonyManager;

    :cond_0
    iget-object v0, p0, Lak;->f:Lcom/motorola/telephony/SecondaryTelephonyManager;

    invoke-virtual {v0}, Lcom/motorola/telephony/SecondaryTelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIMSI()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lak;->f:Lcom/motorola/telephony/SecondaryTelephonyManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lak;->b:Lcom/qihoo360/mobilesafe/telephony_xt800/DoubleTelephonyManager;

    iget-object v0, v0, Lcom/qihoo360/mobilesafe/telephony_xt800/DoubleTelephonyManager;->a:Landroid/content/Context;

    const-string v1, "phone2"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/telephony/SecondaryTelephonyManager;

    iput-object v0, p0, Lak;->f:Lcom/motorola/telephony/SecondaryTelephonyManager;

    :cond_0
    iget-object v0, p0, Lak;->f:Lcom/motorola/telephony/SecondaryTelephonyManager;

    invoke-virtual {v0}, Lcom/motorola/telephony/SecondaryTelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkType()I
    .locals 2

    iget-object v0, p0, Lak;->f:Lcom/motorola/telephony/SecondaryTelephonyManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lak;->b:Lcom/qihoo360/mobilesafe/telephony_xt800/DoubleTelephonyManager;

    iget-object v0, v0, Lcom/qihoo360/mobilesafe/telephony_xt800/DoubleTelephonyManager;->a:Landroid/content/Context;

    const-string v1, "phone2"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/telephony/SecondaryTelephonyManager;

    iput-object v0, p0, Lak;->f:Lcom/motorola/telephony/SecondaryTelephonyManager;

    :cond_0
    iget-object v0, p0, Lak;->f:Lcom/motorola/telephony/SecondaryTelephonyManager;

    invoke-virtual {v0}, Lcom/motorola/telephony/SecondaryTelephonyManager;->getNetworkType()I

    move-result v0

    return v0
.end method

.method public getPhoneType()I
    .locals 3

    const/4 v1, 0x1

    iget-object v0, p0, Lak;->e:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lak;->b:Lcom/qihoo360/mobilesafe/telephony_xt800/DoubleTelephonyManager;

    iget-object v0, v0, Lcom/qihoo360/mobilesafe/telephony_xt800/DoubleTelephonyManager;->a:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lak;->e:Landroid/telephony/TelephonyManager;

    :cond_0
    iget-object v0, p0, Lak;->e:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    if-ne v0, v1, :cond_1

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public getSmsMessage([Ljava/lang/Object;)[Lcom/android/internal/telephony/SmsMessageBase;
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lak;->getPhoneType()I

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

    const-string v0, "phone2"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    return-object v0
.end method

.method public hangUpCall()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lak;->h:Lcom/android/internal/telephony/ITelephony;

    if-nez v0, :cond_0

    const-string v0, "phone2"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    iput-object v0, p0, Lak;->h:Lcom/android/internal/telephony/ITelephony;

    :cond_0
    iget-object v0, p0, Lak;->h:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->endCall()Z

    move-result v0

    return v0
.end method

.method public hasIccCard()Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0}, Lak;->getCardState()I

    move-result v1

    if-eq v1, v0, :cond_0

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return v0
.end method

.method public isAvailable()Z
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lak;->f:Lcom/motorola/telephony/SecondaryTelephonyManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lak;->b:Lcom/qihoo360/mobilesafe/telephony_xt800/DoubleTelephonyManager;

    iget-object v0, v0, Lcom/qihoo360/mobilesafe/telephony_xt800/DoubleTelephonyManager;->a:Landroid/content/Context;

    const-string v2, "phone2"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/telephony/SecondaryTelephonyManager;

    iput-object v0, p0, Lak;->f:Lcom/motorola/telephony/SecondaryTelephonyManager;

    :cond_0
    iget-object v0, p0, Lak;->f:Lcom/motorola/telephony/SecondaryTelephonyManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lak;->f:Lcom/motorola/telephony/SecondaryTelephonyManager;

    invoke-virtual {v0}, Lcom/motorola/telephony/SecondaryTelephonyManager;->getSimState()I

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public isRinging()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lak;->h:Lcom/android/internal/telephony/ITelephony;

    if-nez v0, :cond_0

    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    iput-object v0, p0, Lak;->h:Lcom/android/internal/telephony/ITelephony;

    :cond_0
    iget-object v0, p0, Lak;->h:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v0

    return v0
.end method

.method public listen(Landroid/telephony/PhoneStateListener;I)V
    .locals 2

    iget-object v0, p0, Lak;->f:Lcom/motorola/telephony/SecondaryTelephonyManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lak;->b:Lcom/qihoo360/mobilesafe/telephony_xt800/DoubleTelephonyManager;

    iget-object v0, v0, Lcom/qihoo360/mobilesafe/telephony_xt800/DoubleTelephonyManager;->a:Landroid/content/Context;

    const-string v1, "phone2"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/telephony/SecondaryTelephonyManager;

    iput-object v0, p0, Lak;->f:Lcom/motorola/telephony/SecondaryTelephonyManager;

    :cond_0
    iget-object v0, p0, Lak;->f:Lcom/motorola/telephony/SecondaryTelephonyManager;

    check-cast p1, Lcom/qihoo360/mobilesafe/telephony_xt800/PhoneStateListenerProxy;

    invoke-virtual {p1}, Lcom/qihoo360/mobilesafe/telephony_xt800/PhoneStateListenerProxy;->a()Lcom/motorola/telephony/SecondaryPhoneStateListener;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/motorola/telephony/SecondaryTelephonyManager;->listen(Lcom/motorola/telephony/SecondaryPhoneStateListener;I)V

    return-void
.end method

.method public phoneCall(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.CALL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "tel:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lak;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const-string v1, "phone"

    const-string v2, "CDMA"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    const-string v1, "phone"

    const-string v2, "GSM"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_1
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
    iget-object v0, p0, Lak;->g:Lcom/motorola/telephony/SecondarySmsManager;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/motorola/telephony/SecondarySmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
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
    iget-object v0, p0, Lak;->g:Lcom/motorola/telephony/SecondarySmsManager;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/motorola/telephony/SecondarySmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
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
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lak;->h:Lcom/android/internal/telephony/ITelephony;

    if-nez v0, :cond_0

    const-string v0, "phone2"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    iput-object v0, p0, Lak;->h:Lcom/android/internal/telephony/ITelephony;

    :cond_0
    iget-object v0, p0, Lak;->h:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->silenceRinger()V

    return-void
.end method
