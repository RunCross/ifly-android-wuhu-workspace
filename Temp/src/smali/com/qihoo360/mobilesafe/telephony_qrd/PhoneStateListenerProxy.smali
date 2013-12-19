.class public Lcom/qihoo360/mobilesafe/telephony_qrd/PhoneStateListenerProxy;
.super Landroid/telephony/PhoneStateListener;


# instance fields
.field private final a:I

.field private b:Lcom/qihoo360/mobilesafe/telephony_qrd/DoubleTelephonyManager;

.field private c:I

.field private d:Lh;


# direct methods
.method public constructor <init>(Lcom/qihoo360/mobilesafe/telephony_qrd/DoubleTelephonyManager;Lh;I)V
    .locals 1

    invoke-direct {p0, p3}, Landroid/telephony/PhoneStateListener;-><init>(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qihoo360/mobilesafe/telephony_qrd/PhoneStateListenerProxy;->b:Lcom/qihoo360/mobilesafe/telephony_qrd/DoubleTelephonyManager;

    const/4 v0, -0x1

    iput v0, p0, Lcom/qihoo360/mobilesafe/telephony_qrd/PhoneStateListenerProxy;->c:I

    iput-object p2, p0, Lcom/qihoo360/mobilesafe/telephony_qrd/PhoneStateListenerProxy;->d:Lh;

    iput p3, p0, Lcom/qihoo360/mobilesafe/telephony_qrd/PhoneStateListenerProxy;->a:I

    iput-object p1, p0, Lcom/qihoo360/mobilesafe/telephony_qrd/PhoneStateListenerProxy;->b:Lcom/qihoo360/mobilesafe/telephony_qrd/DoubleTelephonyManager;

    return-void
.end method

.method public constructor <init>(Lcom/qihoo360/mobilesafe/telephony_qrd/DoubleTelephonyManager;Lh;II)V
    .locals 1

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qihoo360/mobilesafe/telephony_qrd/PhoneStateListenerProxy;->b:Lcom/qihoo360/mobilesafe/telephony_qrd/DoubleTelephonyManager;

    const/4 v0, -0x1

    iput v0, p0, Lcom/qihoo360/mobilesafe/telephony_qrd/PhoneStateListenerProxy;->c:I

    iput-object p2, p0, Lcom/qihoo360/mobilesafe/telephony_qrd/PhoneStateListenerProxy;->d:Lh;

    iput p3, p0, Lcom/qihoo360/mobilesafe/telephony_qrd/PhoneStateListenerProxy;->a:I

    iput-object p1, p0, Lcom/qihoo360/mobilesafe/telephony_qrd/PhoneStateListenerProxy;->b:Lcom/qihoo360/mobilesafe/telephony_qrd/DoubleTelephonyManager;

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/qihoo360/mobilesafe/telephony_qrd/PhoneStateListenerProxy;->b:Lcom/qihoo360/mobilesafe/telephony_qrd/DoubleTelephonyManager;

    invoke-virtual {v0}, Lcom/qihoo360/mobilesafe/telephony_qrd/DoubleTelephonyManager;->getPhoneCardsList()Ljava/util/ArrayList;

    move-result-object v0

    iget v2, p0, Lcom/qihoo360/mobilesafe/telephony_qrd/PhoneStateListenerProxy;->a:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qihoo360/mobilesafe/telephonyInterface/PhoneCardInterface;

    invoke-virtual {v0}, Lcom/qihoo360/mobilesafe/telephonyInterface/PhoneCardInterface;->getCallState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/qihoo360/mobilesafe/telephony_qrd/PhoneStateListenerProxy;->c:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/qihoo360/mobilesafe/telephony_qrd/PhoneStateListenerProxy;->c:I

    iget-object v0, p0, Lcom/qihoo360/mobilesafe/telephony_qrd/PhoneStateListenerProxy;->d:Lh;

    iget v1, p0, Lcom/qihoo360/mobilesafe/telephony_qrd/PhoneStateListenerProxy;->a:I

    invoke-virtual {v0, p1, p2, v1}, Lh;->a(ILjava/lang/String;I)V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    move v0, v1

    goto :goto_0
.end method

.method public onCellLocationChanged(Landroid/telephony/CellLocation;)V
    .locals 2

    iget-object v0, p0, Lcom/qihoo360/mobilesafe/telephony_qrd/PhoneStateListenerProxy;->d:Lh;

    iget v1, p0, Lcom/qihoo360/mobilesafe/telephony_qrd/PhoneStateListenerProxy;->a:I

    invoke-virtual {v0, p1, v1}, Lh;->a(Landroid/telephony/CellLocation;I)V

    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 2

    iget-object v0, p0, Lcom/qihoo360/mobilesafe/telephony_qrd/PhoneStateListenerProxy;->d:Lh;

    iget v1, p0, Lcom/qihoo360/mobilesafe/telephony_qrd/PhoneStateListenerProxy;->a:I

    invoke-virtual {v0, p1, v1}, Lh;->a(Landroid/telephony/ServiceState;I)V

    return-void
.end method
