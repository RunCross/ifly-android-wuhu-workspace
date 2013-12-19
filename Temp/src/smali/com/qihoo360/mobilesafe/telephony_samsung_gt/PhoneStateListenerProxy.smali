.class public Lcom/qihoo360/mobilesafe/telephony_samsung_gt/PhoneStateListenerProxy;
.super Landroid/telephony/PhoneStateListener;


# instance fields
.field private final a:I

.field private final b:Lh;

.field private c:Lcom/qihoo360/mobilesafe/telephony_samsung_gt/DoubleTelephonyManager;

.field private d:I


# direct methods
.method public constructor <init>(Lcom/qihoo360/mobilesafe/telephony_samsung_gt/DoubleTelephonyManager;Lh;I)V
    .locals 1

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qihoo360/mobilesafe/telephony_samsung_gt/PhoneStateListenerProxy;->c:Lcom/qihoo360/mobilesafe/telephony_samsung_gt/DoubleTelephonyManager;

    const/4 v0, -0x1

    iput v0, p0, Lcom/qihoo360/mobilesafe/telephony_samsung_gt/PhoneStateListenerProxy;->d:I

    iput-object p2, p0, Lcom/qihoo360/mobilesafe/telephony_samsung_gt/PhoneStateListenerProxy;->b:Lh;

    iput p3, p0, Lcom/qihoo360/mobilesafe/telephony_samsung_gt/PhoneStateListenerProxy;->a:I

    iput-object p1, p0, Lcom/qihoo360/mobilesafe/telephony_samsung_gt/PhoneStateListenerProxy;->c:Lcom/qihoo360/mobilesafe/telephony_samsung_gt/DoubleTelephonyManager;

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/qihoo360/mobilesafe/telephony_samsung_gt/PhoneStateListenerProxy;->c:Lcom/qihoo360/mobilesafe/telephony_samsung_gt/DoubleTelephonyManager;

    invoke-virtual {v0}, Lcom/qihoo360/mobilesafe/telephony_samsung_gt/DoubleTelephonyManager;->getPhoneCardsList()Ljava/util/ArrayList;

    move-result-object v0

    iget v2, p0, Lcom/qihoo360/mobilesafe/telephony_samsung_gt/PhoneStateListenerProxy;->a:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qihoo360/mobilesafe/telephonyInterface/PhoneCardInterface;

    invoke-virtual {v0}, Lcom/qihoo360/mobilesafe/telephonyInterface/PhoneCardInterface;->getCallState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    const-string v1, "PhoneStateListenerProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "coolpad7260 mCardId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/qihoo360/mobilesafe/telephony_samsung_gt/PhoneStateListenerProxy;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\t state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\t mystate="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\t mLastState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/qihoo360/mobilesafe/telephony_samsung_gt/PhoneStateListenerProxy;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/qihoo360/mobilesafe/telephony_samsung_gt/PhoneStateListenerProxy;->d:I

    if-eq p1, v0, :cond_0

    const-string v0, "PhoneStateListenerProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "send message: mCardId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/qihoo360/mobilesafe/telephony_samsung_gt/PhoneStateListenerProxy;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/qihoo360/mobilesafe/telephony_samsung_gt/PhoneStateListenerProxy;->d:I

    iget-object v0, p0, Lcom/qihoo360/mobilesafe/telephony_samsung_gt/PhoneStateListenerProxy;->b:Lh;

    iget v1, p0, Lcom/qihoo360/mobilesafe/telephony_samsung_gt/PhoneStateListenerProxy;->a:I

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

    iget-object v0, p0, Lcom/qihoo360/mobilesafe/telephony_samsung_gt/PhoneStateListenerProxy;->b:Lh;

    iget v1, p0, Lcom/qihoo360/mobilesafe/telephony_samsung_gt/PhoneStateListenerProxy;->a:I

    invoke-virtual {v0, p1, v1}, Lh;->a(Landroid/telephony/CellLocation;I)V

    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 2

    iget-object v0, p0, Lcom/qihoo360/mobilesafe/telephony_samsung_gt/PhoneStateListenerProxy;->b:Lh;

    iget v1, p0, Lcom/qihoo360/mobilesafe/telephony_samsung_gt/PhoneStateListenerProxy;->a:I

    invoke-virtual {v0, p1, v1}, Lh;->a(Landroid/telephony/ServiceState;I)V

    return-void
.end method
