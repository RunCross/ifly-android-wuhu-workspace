.class public Lam;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/qihoo360/mobilesafe/telephony_xt882/DoubleTelephonyManager;


# direct methods
.method public constructor <init>(Lcom/qihoo360/mobilesafe/telephony_xt882/DoubleTelephonyManager;)V
    .locals 0

    iput-object p1, p0, Lam;->a:Lcom/qihoo360/mobilesafe/telephony_xt882/DoubleTelephonyManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    sget-object v0, Lcom/qihoo360/mobilesafe/telephony_xt882/DoubleTelephonyManager;->phoneCardsList:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qihoo360/mobilesafe/telephonyInterface/PhoneCardInterface;

    invoke-virtual {v0}, Lcom/qihoo360/mobilesafe/telephonyInterface/PhoneCardInterface;->getIMSI()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    const-string v1, "46003"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lam;->a:Lcom/qihoo360/mobilesafe/telephony_xt882/DoubleTelephonyManager;

    invoke-static {v0}, Lcom/qihoo360/mobilesafe/telephony_xt882/DoubleTelephonyManager;->a(Lcom/qihoo360/mobilesafe/telephony_xt882/DoubleTelephonyManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/qihoo360/mobilesafe/telephony_xt882/DoubleTelephonyManager;->phoneCardsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lam;->a:Lcom/qihoo360/mobilesafe/telephony_xt882/DoubleTelephonyManager;

    invoke-static {v0}, Lcom/qihoo360/mobilesafe/telephony_xt882/DoubleTelephonyManager;->b(Lcom/qihoo360/mobilesafe/telephony_xt882/DoubleTelephonyManager;)V

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh;

    iget-object v1, p0, Lam;->a:Lcom/qihoo360/mobilesafe/telephony_xt882/DoubleTelephonyManager;

    invoke-static {v1}, Lcom/qihoo360/mobilesafe/telephony_xt882/DoubleTelephonyManager;->a(Lcom/qihoo360/mobilesafe/telephony_xt882/DoubleTelephonyManager;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qihoo360/mobilesafe/telephony_xt882/DoubleTelephonyManager$a;

    sget-object v1, Lcom/qihoo360/mobilesafe/telephony_xt882/DoubleTelephonyManager;->phoneCardsList:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qihoo360/mobilesafe/telephonyInterface/PhoneCardInterface;

    iget-object v3, v0, Lcom/qihoo360/mobilesafe/telephony_xt882/DoubleTelephonyManager$a;->a:Lcom/qihoo360/mobilesafe/telephony_xt882/PhoneStateListenerProxy;

    iget v4, v0, Lcom/qihoo360/mobilesafe/telephony_xt882/DoubleTelephonyManager$a;->c:I

    invoke-virtual {v1, v3, v4}, Lcom/qihoo360/mobilesafe/telephonyInterface/PhoneCardInterface;->listen(Landroid/telephony/PhoneStateListener;I)V

    sget-object v1, Lcom/qihoo360/mobilesafe/telephony_xt882/DoubleTelephonyManager;->phoneCardsList:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qihoo360/mobilesafe/telephonyInterface/PhoneCardInterface;

    iget-object v3, v0, Lcom/qihoo360/mobilesafe/telephony_xt882/DoubleTelephonyManager$a;->b:Lcom/qihoo360/mobilesafe/telephony_xt882/PhoneStateListenerProxy;

    iget v0, v0, Lcom/qihoo360/mobilesafe/telephony_xt882/DoubleTelephonyManager$a;->c:I

    invoke-virtual {v1, v3, v0}, Lcom/qihoo360/mobilesafe/telephonyInterface/PhoneCardInterface;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_1

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh;

    iget-object v1, p0, Lam;->a:Lcom/qihoo360/mobilesafe/telephony_xt882/DoubleTelephonyManager;

    invoke-static {v1}, Lcom/qihoo360/mobilesafe/telephony_xt882/DoubleTelephonyManager;->a(Lcom/qihoo360/mobilesafe/telephony_xt882/DoubleTelephonyManager;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qihoo360/mobilesafe/telephony_xt882/DoubleTelephonyManager$a;

    sget-object v1, Lcom/qihoo360/mobilesafe/telephony_xt882/DoubleTelephonyManager;->phoneCardsList:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qihoo360/mobilesafe/telephonyInterface/PhoneCardInterface;

    iget-object v4, v0, Lcom/qihoo360/mobilesafe/telephony_xt882/DoubleTelephonyManager$a;->a:Lcom/qihoo360/mobilesafe/telephony_xt882/PhoneStateListenerProxy;

    invoke-virtual {v1, v4, v5}, Lcom/qihoo360/mobilesafe/telephonyInterface/PhoneCardInterface;->listen(Landroid/telephony/PhoneStateListener;I)V

    sget-object v1, Lcom/qihoo360/mobilesafe/telephony_xt882/DoubleTelephonyManager;->phoneCardsList:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qihoo360/mobilesafe/telephonyInterface/PhoneCardInterface;

    iget-object v0, v0, Lcom/qihoo360/mobilesafe/telephony_xt882/DoubleTelephonyManager$a;->b:Lcom/qihoo360/mobilesafe/telephony_xt882/PhoneStateListenerProxy;

    invoke-virtual {v1, v0, v5}, Lcom/qihoo360/mobilesafe/telephonyInterface/PhoneCardInterface;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_0
.end method
