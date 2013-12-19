.class public Laf;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/qihoo360/mobilesafe/telephony_samsung_gt/PhoneStateReceiver;


# direct methods
.method public constructor <init>(Lcom/qihoo360/mobilesafe/telephony_samsung_gt/PhoneStateReceiver;)V
    .locals 0

    iput-object p1, p0, Laf;->a:Lcom/qihoo360/mobilesafe/telephony_samsung_gt/PhoneStateReceiver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v3, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lh;

    iget-object v1, p0, Laf;->a:Lcom/qihoo360/mobilesafe/telephony_samsung_gt/PhoneStateReceiver;

    invoke-static {v1}, Lcom/qihoo360/mobilesafe/telephony_samsung_gt/PhoneStateReceiver;->a(Lcom/qihoo360/mobilesafe/telephony_samsung_gt/PhoneStateReceiver;)[I

    move-result-object v1

    aget v1, v1, v4

    const-string v2, ""

    invoke-virtual {v0, v1, v2, v4}, Lh;->a(ILjava/lang/String;I)V

    iget-object v1, p0, Laf;->a:Lcom/qihoo360/mobilesafe/telephony_samsung_gt/PhoneStateReceiver;

    invoke-static {v1}, Lcom/qihoo360/mobilesafe/telephony_samsung_gt/PhoneStateReceiver;->a(Lcom/qihoo360/mobilesafe/telephony_samsung_gt/PhoneStateReceiver;)[I

    move-result-object v1

    aget v1, v1, v3

    const-string v2, ""

    invoke-virtual {v0, v1, v2, v3}, Lh;->a(ILjava/lang/String;I)V

    :cond_0
    return-void
.end method
