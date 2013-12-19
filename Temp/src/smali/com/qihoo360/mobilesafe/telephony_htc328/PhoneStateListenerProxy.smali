.class public Lcom/qihoo360/mobilesafe/telephony_htc328/PhoneStateListenerProxy;
.super Landroid/telephony/PhoneStateListener;


# instance fields
.field private a:I

.field private b:J

.field private c:Lcom/qihoo360/mobilesafe/telephony_htc328/DoubleTelephonyManager;

.field private d:Lh;


# direct methods
.method public constructor <init>(Lcom/qihoo360/mobilesafe/telephony_htc328/DoubleTelephonyManager;Lh;)V
    .locals 2

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    const/4 v0, 0x5

    iput v0, p0, Lcom/qihoo360/mobilesafe/telephony_htc328/PhoneStateListenerProxy;->a:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/qihoo360/mobilesafe/telephony_htc328/PhoneStateListenerProxy;->b:J

    iput-object p1, p0, Lcom/qihoo360/mobilesafe/telephony_htc328/PhoneStateListenerProxy;->c:Lcom/qihoo360/mobilesafe/telephony_htc328/DoubleTelephonyManager;

    iput-object p2, p0, Lcom/qihoo360/mobilesafe/telephony_htc328/PhoneStateListenerProxy;->d:Lh;

    iget-object v0, p0, Lcom/qihoo360/mobilesafe/telephony_htc328/PhoneStateListenerProxy;->c:Lcom/qihoo360/mobilesafe/telephony_htc328/DoubleTelephonyManager;

    invoke-virtual {v0}, Lcom/qihoo360/mobilesafe/telephony_htc328/DoubleTelephonyManager;->b()I

    move-result v0

    iput v0, p0, Lcom/qihoo360/mobilesafe/telephony_htc328/PhoneStateListenerProxy;->a:I

    return-void
.end method


# virtual methods
.method public onCallStateChangedExt(ILjava/lang/String;I)V
    .locals 5

    const/4 v0, 0x0

    iget v1, p0, Lcom/qihoo360/mobilesafe/telephony_htc328/PhoneStateListenerProxy;->a:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/qihoo360/mobilesafe/telephony_htc328/PhoneStateListenerProxy;->c:Lcom/qihoo360/mobilesafe/telephony_htc328/DoubleTelephonyManager;

    invoke-virtual {v1}, Lcom/qihoo360/mobilesafe/telephony_htc328/DoubleTelephonyManager;->b()I

    move-result v1

    iput v1, p0, Lcom/qihoo360/mobilesafe/telephony_htc328/PhoneStateListenerProxy;->a:I

    :cond_0
    iget v1, p0, Lcom/qihoo360/mobilesafe/telephony_htc328/PhoneStateListenerProxy;->a:I

    if-ne p3, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/qihoo360/mobilesafe/telephony_htc328/PhoneStateListenerProxy;->d:Lh;

    invoke-virtual {v1, p1, p2, v0}, Lh;->a(ILjava/lang/String;I)V

    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/qihoo360/mobilesafe/telephony_htc328/PhoneStateListenerProxy;->b:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/qihoo360/mobilesafe/telephony_htc328/PhoneStateListenerProxy;->b:J

    goto :goto_0
.end method

.method public onCellLocationChangedExt(Landroid/telephony/CellLocation;I)V
    .locals 2

    iget v0, p0, Lcom/qihoo360/mobilesafe/telephony_htc328/PhoneStateListenerProxy;->a:I

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/qihoo360/mobilesafe/telephony_htc328/PhoneStateListenerProxy;->d:Lh;

    invoke-virtual {v1, p1, v0}, Lh;->a(Landroid/telephony/CellLocation;I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onServiceStateChangedExt(Landroid/telephony/ServiceState;I)V
    .locals 2

    iget v0, p0, Lcom/qihoo360/mobilesafe/telephony_htc328/PhoneStateListenerProxy;->a:I

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/qihoo360/mobilesafe/telephony_htc328/PhoneStateListenerProxy;->d:Lh;

    invoke-virtual {v1, p1, v0}, Lh;->a(Landroid/telephony/ServiceState;I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
