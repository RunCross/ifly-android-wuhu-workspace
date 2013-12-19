.class public Lcom/qihoo360/mobilesafe/telephony_coolpad7260/PhoneStateListenerProxy;
.super Landroid/telephony/PhoneStateListener;


# instance fields
.field private final a:I

.field private final b:Lo;

.field private c:Lh;

.field private d:I


# direct methods
.method public constructor <init>(Lh;ILo;)V
    .locals 1

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    iput-object p1, p0, Lcom/qihoo360/mobilesafe/telephony_coolpad7260/PhoneStateListenerProxy;->c:Lh;

    iput p2, p0, Lcom/qihoo360/mobilesafe/telephony_coolpad7260/PhoneStateListenerProxy;->a:I

    iput-object p3, p0, Lcom/qihoo360/mobilesafe/telephony_coolpad7260/PhoneStateListenerProxy;->b:Lo;

    const/4 v0, -0x1

    iput v0, p0, Lcom/qihoo360/mobilesafe/telephony_coolpad7260/PhoneStateListenerProxy;->d:I

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/qihoo360/mobilesafe/telephony_coolpad7260/PhoneStateListenerProxy;->b:Lo;

    invoke-virtual {v0}, Lo;->getCallState()I

    move-result v0

    const-string v1, "PhoneStateListenerProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "coolpad7260 mCardId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/qihoo360/mobilesafe/telephony_coolpad7260/PhoneStateListenerProxy;->a:I

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

    iget v3, p0, Lcom/qihoo360/mobilesafe/telephony_coolpad7260/PhoneStateListenerProxy;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v0, v5, :cond_1

    iget v1, p0, Lcom/qihoo360/mobilesafe/telephony_coolpad7260/PhoneStateListenerProxy;->d:I

    if-eq v1, v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ne v0, v5, :cond_2

    const/4 v0, 0x2

    :cond_2
    iget v1, p0, Lcom/qihoo360/mobilesafe/telephony_coolpad7260/PhoneStateListenerProxy;->a:I

    if-nez v1, :cond_3

    if-ne p1, v0, :cond_3

    iget v1, p0, Lcom/qihoo360/mobilesafe/telephony_coolpad7260/PhoneStateListenerProxy;->d:I

    if-eq p1, v1, :cond_3

    const-string v1, "PhoneStateListenerProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "send message: mCardId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/qihoo360/mobilesafe/telephony_coolpad7260/PhoneStateListenerProxy;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/qihoo360/mobilesafe/telephony_coolpad7260/PhoneStateListenerProxy;->d:I

    iget-object v1, p0, Lcom/qihoo360/mobilesafe/telephony_coolpad7260/PhoneStateListenerProxy;->c:Lh;

    iget v2, p0, Lcom/qihoo360/mobilesafe/telephony_coolpad7260/PhoneStateListenerProxy;->a:I

    invoke-virtual {v1, p1, p2, v2}, Lh;->a(ILjava/lang/String;I)V

    :cond_3
    iget v1, p0, Lcom/qihoo360/mobilesafe/telephony_coolpad7260/PhoneStateListenerProxy;->a:I

    if-ne v1, v4, :cond_0

    iget v1, p0, Lcom/qihoo360/mobilesafe/telephony_coolpad7260/PhoneStateListenerProxy;->d:I

    if-eq v0, v1, :cond_0

    const-string v1, "PhoneStateListenerProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "send message: mCardId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/qihoo360/mobilesafe/telephony_coolpad7260/PhoneStateListenerProxy;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput v0, p0, Lcom/qihoo360/mobilesafe/telephony_coolpad7260/PhoneStateListenerProxy;->d:I

    iget-object v1, p0, Lcom/qihoo360/mobilesafe/telephony_coolpad7260/PhoneStateListenerProxy;->c:Lh;

    iget v2, p0, Lcom/qihoo360/mobilesafe/telephony_coolpad7260/PhoneStateListenerProxy;->a:I

    invoke-virtual {v1, v0, p2, v2}, Lh;->a(ILjava/lang/String;I)V

    goto :goto_0
.end method

.method public onCellLocationChanged(Landroid/telephony/CellLocation;)V
    .locals 2

    iget-object v0, p0, Lcom/qihoo360/mobilesafe/telephony_coolpad7260/PhoneStateListenerProxy;->c:Lh;

    iget v1, p0, Lcom/qihoo360/mobilesafe/telephony_coolpad7260/PhoneStateListenerProxy;->a:I

    invoke-virtual {v0, p1, v1}, Lh;->a(Landroid/telephony/CellLocation;I)V

    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 2

    iget-object v0, p0, Lcom/qihoo360/mobilesafe/telephony_coolpad7260/PhoneStateListenerProxy;->c:Lh;

    iget v1, p0, Lcom/qihoo360/mobilesafe/telephony_coolpad7260/PhoneStateListenerProxy;->a:I

    invoke-virtual {v0, p1, v1}, Lh;->a(Landroid/telephony/ServiceState;I)V

    return-void
.end method
