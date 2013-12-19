.class public Lcom/qihoo360/mobilesafe/telephony_samsung_gt/PhoneStateReceiver;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lh;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/qihoo360/mobilesafe/telephonyInterface/PhoneCardInterface;",
            ">;"
        }
    .end annotation
.end field

.field private final c:[I

.field private final d:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/qihoo360/mobilesafe/telephonyInterface/PhoneCardInterface;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Laf;

    invoke-direct {v0, p0}, Laf;-><init>(Lcom/qihoo360/mobilesafe/telephony_samsung_gt/PhoneStateReceiver;)V

    iput-object v0, p0, Lcom/qihoo360/mobilesafe/telephony_samsung_gt/PhoneStateReceiver;->d:Landroid/os/Handler;

    iput-object p1, p0, Lcom/qihoo360/mobilesafe/telephony_samsung_gt/PhoneStateReceiver;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/qihoo360/mobilesafe/telephony_samsung_gt/PhoneStateReceiver;->a:Ljava/util/List;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/qihoo360/mobilesafe/telephony_samsung_gt/PhoneStateReceiver;->c:[I

    return-void
.end method

.method private a(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    const-string v1, "RINGING"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "IDLE"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "OFFHOOK"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0
.end method

.method public static synthetic a(Lcom/qihoo360/mobilesafe/telephony_samsung_gt/PhoneStateReceiver;)[I
    .locals 1

    iget-object v0, p0, Lcom/qihoo360/mobilesafe/telephony_samsung_gt/PhoneStateReceiver;->c:[I

    return-object v0
.end method


# virtual methods
.method public a(Lh;I)V
    .locals 4

    and-int/lit8 v0, p2, 0x20

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/qihoo360/mobilesafe/telephony_samsung_gt/PhoneStateReceiver;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qihoo360/mobilesafe/telephony_samsung_gt/PhoneStateReceiver;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/qihoo360/mobilesafe/telephony_samsung_gt/PhoneStateReceiver;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/qihoo360/mobilesafe/telephony_samsung_gt/PhoneStateReceiver;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/qihoo360/mobilesafe/telephony_samsung_gt/PhoneStateReceiver;->d:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/qihoo360/mobilesafe/telephony_samsung_gt/PhoneStateReceiver;->d:Landroid/os/Handler;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/4 v1, 0x1

    const/4 v5, 0x0

    const-string v0, "android.intent.action.PHONE_STATE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    const-string v0, "state"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qihoo360/mobilesafe/telephony_samsung_gt/PhoneStateReceiver;->a(Ljava/lang/String;)I

    move-result v3

    const-string v0, "incoming_number"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "simSlot"

    invoke-virtual {p2, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iget-object v0, p0, Lcom/qihoo360/mobilesafe/telephony_samsung_gt/PhoneStateReceiver;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qihoo360/mobilesafe/telephonyInterface/PhoneCardInterface;

    invoke-virtual {v0}, Lcom/qihoo360/mobilesafe/telephonyInterface/PhoneCardInterface;->isAvailable()Z

    move-result v5

    iget-object v0, p0, Lcom/qihoo360/mobilesafe/telephony_samsung_gt/PhoneStateReceiver;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qihoo360/mobilesafe/telephonyInterface/PhoneCardInterface;

    invoke-virtual {v0}, Lcom/qihoo360/mobilesafe/telephonyInterface/PhoneCardInterface;->isAvailable()Z

    move-result v0

    if-nez v5, :cond_2

    if-eqz v0, :cond_2

    :goto_0
    iget-object v0, p0, Lcom/qihoo360/mobilesafe/telephony_samsung_gt/PhoneStateReceiver;->c:[I

    aput v3, v0, v1

    iget-object v0, p0, Lcom/qihoo360/mobilesafe/telephony_samsung_gt/PhoneStateReceiver;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh;

    invoke-virtual {v0, v3, v4, v1}, Lh;->a(ILjava/lang/String;I)V

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_0
.end method
