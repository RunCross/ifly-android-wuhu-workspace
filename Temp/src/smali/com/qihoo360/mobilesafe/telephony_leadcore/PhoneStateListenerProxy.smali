.class public Lcom/qihoo360/mobilesafe/telephony_leadcore/PhoneStateListenerProxy;
.super Landroid/telephony/PhoneStateListener;


# instance fields
.field private a:Lh;

.field private b:Lcom/qihoo360/mobilesafe/telephony_leadcore/DoubleTelephonyManager;

.field private final c:I

.field private d:I


# direct methods
.method public constructor <init>(Lh;ILcom/qihoo360/mobilesafe/telephony_leadcore/DoubleTelephonyManager;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    iput-object v0, p0, Lcom/qihoo360/mobilesafe/telephony_leadcore/PhoneStateListenerProxy;->a:Lh;

    iput-object v0, p0, Lcom/qihoo360/mobilesafe/telephony_leadcore/PhoneStateListenerProxy;->b:Lcom/qihoo360/mobilesafe/telephony_leadcore/DoubleTelephonyManager;

    const/4 v0, -0x1

    iput v0, p0, Lcom/qihoo360/mobilesafe/telephony_leadcore/PhoneStateListenerProxy;->d:I

    iput-object p1, p0, Lcom/qihoo360/mobilesafe/telephony_leadcore/PhoneStateListenerProxy;->a:Lh;

    iput p2, p0, Lcom/qihoo360/mobilesafe/telephony_leadcore/PhoneStateListenerProxy;->c:I

    iput-object p3, p0, Lcom/qihoo360/mobilesafe/telephony_leadcore/PhoneStateListenerProxy;->b:Lcom/qihoo360/mobilesafe/telephony_leadcore/DoubleTelephonyManager;

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 8

    const/4 v7, 0x2

    const/4 v2, 0x0

    const/4 v6, 0x1

    :try_start_0
    iget-object v0, p0, Lcom/qihoo360/mobilesafe/telephony_leadcore/PhoneStateListenerProxy;->b:Lcom/qihoo360/mobilesafe/telephony_leadcore/DoubleTelephonyManager;

    invoke-virtual {v0}, Lcom/qihoo360/mobilesafe/telephony_leadcore/DoubleTelephonyManager;->getPhoneCardsList()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qihoo360/mobilesafe/telephonyInterface/PhoneCardInterface;

    invoke-virtual {v0}, Lcom/qihoo360/mobilesafe/telephonyInterface/PhoneCardInterface;->getCallState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    :try_start_1
    iget-object v0, p0, Lcom/qihoo360/mobilesafe/telephony_leadcore/PhoneStateListenerProxy;->b:Lcom/qihoo360/mobilesafe/telephony_leadcore/DoubleTelephonyManager;

    invoke-virtual {v0}, Lcom/qihoo360/mobilesafe/telephony_leadcore/DoubleTelephonyManager;->getPhoneCardsList()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qihoo360/mobilesafe/telephonyInterface/PhoneCardInterface;

    invoke-virtual {v0}, Lcom/qihoo360/mobilesafe/telephonyInterface/PhoneCardInterface;->getCallState()I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    :try_start_2
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "state:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "call1:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  call2:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_0
    if-nez p1, :cond_2

    iget v0, p0, Lcom/qihoo360/mobilesafe/telephony_leadcore/PhoneStateListenerProxy;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/qihoo360/mobilesafe/telephony_leadcore/PhoneStateListenerProxy;->a:Lh;

    invoke-virtual {v0, p1, p2, v2}, Lh;->a(ILjava/lang/String;I)V

    iget-object v0, p0, Lcom/qihoo360/mobilesafe/telephony_leadcore/PhoneStateListenerProxy;->a:Lh;

    invoke-virtual {v0, p1, p2, v6}, Lh;->a(ILjava/lang/String;I)V

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v0

    move v1, v2

    move v3, v2

    :goto_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/qihoo360/mobilesafe/telephony_leadcore/PhoneStateListenerProxy;->a:Lh;

    iget v1, p0, Lcom/qihoo360/mobilesafe/telephony_leadcore/PhoneStateListenerProxy;->d:I

    invoke-virtual {v0, p1, p2, v1}, Lh;->a(ILjava/lang/String;I)V

    goto :goto_1

    :cond_2
    if-ne p1, v6, :cond_4

    if-ne v3, v6, :cond_3

    iput v2, p0, Lcom/qihoo360/mobilesafe/telephony_leadcore/PhoneStateListenerProxy;->d:I

    iget-object v0, p0, Lcom/qihoo360/mobilesafe/telephony_leadcore/PhoneStateListenerProxy;->a:Lh;

    invoke-virtual {v0, p1, p2, v2}, Lh;->a(ILjava/lang/String;I)V

    goto :goto_1

    :cond_3
    if-ne v1, v6, :cond_0

    iput v6, p0, Lcom/qihoo360/mobilesafe/telephony_leadcore/PhoneStateListenerProxy;->d:I

    iget-object v0, p0, Lcom/qihoo360/mobilesafe/telephony_leadcore/PhoneStateListenerProxy;->a:Lh;

    invoke-virtual {v0, p1, p2, v6}, Lh;->a(ILjava/lang/String;I)V

    goto :goto_1

    :cond_4
    if-ne p1, v7, :cond_0

    if-ne v3, v7, :cond_5

    iget-object v0, p0, Lcom/qihoo360/mobilesafe/telephony_leadcore/PhoneStateListenerProxy;->a:Lh;

    invoke-virtual {v0, p1, p2, v2}, Lh;->a(ILjava/lang/String;I)V

    goto :goto_1

    :cond_5
    if-ne v1, v7, :cond_0

    iget-object v0, p0, Lcom/qihoo360/mobilesafe/telephony_leadcore/PhoneStateListenerProxy;->a:Lh;

    invoke-virtual {v0, p1, p2, v6}, Lh;->a(ILjava/lang/String;I)V

    goto :goto_1

    :catch_1
    move-exception v0

    move v1, v2

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_2
.end method

.method public onCellLocationChanged(Landroid/telephony/CellLocation;)V
    .locals 2

    iget-object v0, p0, Lcom/qihoo360/mobilesafe/telephony_leadcore/PhoneStateListenerProxy;->a:Lh;

    iget v1, p0, Lcom/qihoo360/mobilesafe/telephony_leadcore/PhoneStateListenerProxy;->c:I

    invoke-virtual {v0, p1, v1}, Lh;->a(Landroid/telephony/CellLocation;I)V

    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 2

    iget-object v0, p0, Lcom/qihoo360/mobilesafe/telephony_leadcore/PhoneStateListenerProxy;->a:Lh;

    iget v1, p0, Lcom/qihoo360/mobilesafe/telephony_leadcore/PhoneStateListenerProxy;->c:I

    invoke-virtual {v0, p1, v1}, Lh;->a(Landroid/telephony/ServiceState;I)V

    return-void
.end method
