.class public abstract Lcom/qihoo360/mobilesafe/telephonyInterface/PhoneCardInterface;
.super Ljava/lang/Object;


# instance fields
.field protected a:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract answerRingingCall()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract dailPhone(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method public abstract endCall()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getCallState()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getCardOperator()Ljava/lang/String;
.end method

.method public abstract getCardState()I
.end method

.method public abstract getDataState()I
.end method

.method public abstract getIMEI()Ljava/lang/String;
.end method

.method public abstract getIMSI()Ljava/lang/String;
.end method

.method public abstract getNetworkType()I
.end method

.method public abstract getPhoneType()I
.end method

.method public getSimSerialNumber()Ljava/lang/String;
    .locals 1

    const-string v0, "0123456789EF"

    return-object v0
.end method

.method public abstract getSmsMessage([Ljava/lang/Object;)[Lcom/android/internal/telephony/SmsMessageBase;
.end method

.method public abstract getTelephonyService()Lcom/android/internal/telephony/ITelephony;
.end method

.method public abstract hangUpCall()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract hasIccCard()Z
.end method

.method public abstract isAvailable()Z
.end method

.method public abstract isRinging()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract listen(Landroid/telephony/PhoneStateListener;I)V
.end method

.method public abstract phoneCall(Landroid/content/Context;Ljava/lang/String;)Z
.end method

.method public abstract sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
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
.end method

.method public abstract sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)Z
.end method

.method public abstract silenceRinger()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
