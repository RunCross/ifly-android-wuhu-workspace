.class public Ls;
.super Lcom/qihoo360/mobilesafe/telephonyInterface/PhoneCardInterface;


# instance fields
.field b:Lcom/qihoo360/mobilesafe/telephony_leadcore/DoubleTelephonyManager;

.field protected c:Lcom/android/internal/telephony/ITelephony;

.field protected d:Landroid/telephony/SmsManager;

.field protected e:Landroid/telephony/TelephonyManager;

.field protected f:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILcom/qihoo360/mobilesafe/telephony_leadcore/DoubleTelephonyManager;)V
    .locals 3

    invoke-direct {p0}, Lcom/qihoo360/mobilesafe/telephonyInterface/PhoneCardInterface;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    iput-object v0, p0, Ls;->f:[Ljava/lang/Class;

    iput p1, p0, Ls;->a:I

    iput-object p2, p0, Ls;->b:Lcom/qihoo360/mobilesafe/telephony_leadcore/DoubleTelephonyManager;

    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    iput-object v0, p0, Ls;->c:Lcom/android/internal/telephony/ITelephony;

    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    iput-object v0, p0, Ls;->d:Landroid/telephony/SmsManager;

    iget-object v0, p2, Lcom/qihoo360/mobilesafe/telephony_leadcore/DoubleTelephonyManager;->a:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Ls;->e:Landroid/telephony/TelephonyManager;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2

    iget-object v0, p0, Ls;->c:Lcom/android/internal/telephony/ITelephony;

    if-nez v0, :cond_0

    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    iput-object v0, p0, Ls;->c:Lcom/android/internal/telephony/ITelephony;

    :cond_0
    iget-object v0, p0, Ls;->e:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_1

    iget-object v0, p0, Ls;->b:Lcom/qihoo360/mobilesafe/telephony_leadcore/DoubleTelephonyManager;

    iget-object v0, v0, Lcom/qihoo360/mobilesafe/telephony_leadcore/DoubleTelephonyManager;->a:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Ls;->e:Landroid/telephony/TelephonyManager;

    :cond_1
    iget-object v0, p0, Ls;->c:Lcom/android/internal/telephony/ITelephony;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public answerRingingCall()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Ls;->a()Z

    iget-object v0, p0, Ls;->c:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->answerRingingCall()V

    return-void
.end method

.method public dailPhone(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Ls;->a()Z

    :try_start_0
    iget-object v0, p0, Ls;->c:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v0, p2}, Lcom/android/internal/telephony/ITelephony;->dial(Ljava/lang/String;)V
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
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Ls;->a()Z

    iget-object v0, p0, Ls;->c:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->endCall()Z

    return-void
.end method

.method public getCallState()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v6, 0x0

    invoke-virtual {p0}, Ls;->a()Z

    iget-object v0, p0, Ls;->e:Landroid/telephony/TelephonyManager;

    const-string v1, "getCallStateMSMS"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Ls;->f:[Ljava/lang/Class;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Ls;->a:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v0, v1, v2, v3, v4}, Lm;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getCardOperator()Ljava/lang/String;
    .locals 7

    invoke-virtual {p0}, Ls;->a()Z

    iget-object v0, p0, Ls;->e:Landroid/telephony/TelephonyManager;

    const-string v1, "getSimOperatorMSMS"

    const-string v2, ""

    iget-object v3, p0, Ls;->f:[Ljava/lang/Class;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Ls;->a:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Lm;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getCardState()I
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p0}, Ls;->a()Z

    iget-object v0, p0, Ls;->e:Landroid/telephony/TelephonyManager;

    const-string v1, "getSimStateMSMS"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Ls;->f:[Ljava/lang/Class;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Ls;->a:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v0, v1, v2, v3, v4}, Lm;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getDataState()I
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p0}, Ls;->a()Z

    iget-object v0, p0, Ls;->e:Landroid/telephony/TelephonyManager;

    const-string v1, "getDataStateMSMS"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Ls;->f:[Ljava/lang/Class;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Ls;->a:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v0, v1, v2, v3, v4}, Lm;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getIMEI()Ljava/lang/String;
    .locals 7

    invoke-virtual {p0}, Ls;->a()Z

    iget-object v0, p0, Ls;->e:Landroid/telephony/TelephonyManager;

    const-string v1, "getDeviceIdMSMS"

    const-string v2, ""

    iget-object v3, p0, Ls;->f:[Ljava/lang/Class;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Ls;->a:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Lm;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getIMSI()Ljava/lang/String;
    .locals 7

    invoke-virtual {p0}, Ls;->a()Z

    iget-object v0, p0, Ls;->e:Landroid/telephony/TelephonyManager;

    const-string v1, "getSubscriberIdMSMS"

    const-string v2, ""

    iget-object v3, p0, Ls;->f:[Ljava/lang/Class;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Ls;->a:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Lm;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkType()I
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p0}, Ls;->a()Z

    iget-object v0, p0, Ls;->e:Landroid/telephony/TelephonyManager;

    const-string v1, "getNetworkClass"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Ls;->f:[Ljava/lang/Class;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Ls;->a:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v0, v1, v2, v3, v4}, Lm;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getPhoneType()I
    .locals 1

    iget-object v0, p0, Ls;->e:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    return v0
.end method

.method public getSmsMessage([Ljava/lang/Object;)[Lcom/android/internal/telephony/SmsMessageBase;
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Ls;->getPhoneType()I

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
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Ls;->a()Z

    iget-object v0, p0, Ls;->c:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->endCall()Z

    move-result v0

    return v0
.end method

.method public hasIccCard()Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0}, Ls;->getCardState()I

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

    const/4 v0, 0x1

    invoke-virtual {p0}, Ls;->getCardState()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez v1, :cond_2

    invoke-virtual {p0}, Ls;->getIMSI()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRinging()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Ls;->a()Z

    iget-object v0, p0, Ls;->c:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v0

    return v0
.end method

.method public listen(Landroid/telephony/PhoneStateListener;I)V
    .locals 1

    iget-object v0, p0, Ls;->e:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method public phoneCall(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.CALL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "linkID"

    iget v2, p0, Ls;->a:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

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

    :try_start_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 8
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

    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Ljava/lang/String;

    aput-object v1, v0, v7

    const-class v1, Ljava/lang/String;

    aput-object v1, v0, v6

    const-class v1, Ljava/util/ArrayList;

    aput-object v1, v0, v2

    const-class v1, Ljava/util/ArrayList;

    aput-object v1, v0, v3

    const-class v1, Ljava/util/ArrayList;

    aput-object v1, v0, v4

    const/4 v1, 0x5

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    :try_start_0
    iget-object v1, p0, Ls;->d:Landroid/telephony/SmsManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "sendMultipartTextMessageMSMS"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Ls;->d:Landroid/telephony/SmsManager;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    const/4 v3, 0x3

    aput-object p4, v2, v3

    const/4 v3, 0x4

    aput-object p5, v2, v3

    const/4 v3, 0x5

    iget v4, p0, Ls;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v6

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v0, p0, Ls;->d:Landroid/telephony/SmsManager;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v0, v6

    goto :goto_0

    :catch_1
    move-exception v0

    move v0, v7

    goto :goto_0
.end method

.method public sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)Z
    .locals 9

    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Ljava/lang/String;

    aput-object v1, v0, v7

    const-class v1, Ljava/lang/String;

    aput-object v1, v0, v6

    const-class v1, Ljava/lang/String;

    aput-object v1, v0, v2

    const-class v1, Landroid/app/PendingIntent;

    aput-object v1, v0, v3

    const-class v1, Landroid/app/PendingIntent;

    aput-object v1, v0, v4

    const/4 v1, 0x5

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    :try_start_0
    iget-object v1, p0, Ls;->d:Landroid/telephony/SmsManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "sendTextMessageMSMS"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Ls;->d:Landroid/telephony/SmsManager;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    const/4 v3, 0x3

    aput-object p4, v2, v3

    const/4 v3, 0x4

    aput-object p5, v2, v3

    const/4 v3, 0x5

    iget v4, p0, Ls;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v6

    :goto_0
    return v0

    :catch_0
    move-exception v0

    move-object v8, v0

    :try_start_1
    iget-object v0, p0, Ls;->d:Landroid/telephony/SmsManager;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v0, v6

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v7

    goto :goto_0
.end method

.method public silenceRinger()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Ls;->a()Z

    iget-object v0, p0, Ls;->c:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->silenceRinger()V

    return-void
.end method
