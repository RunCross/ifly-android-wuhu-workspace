.class public Lcom/baidu/game/handler/a;
.super Landroid/os/Handler;


# instance fields
.field private D:Landroid/app/Activity;

.field private E:Lcom/baidu/game/listener/PayCallbackListener;

.field private F:Lcom/baidu/game/model/UserInfo;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/baidu/game/listener/PayCallbackListener;Lcom/baidu/game/model/UserInfo;)V
    .locals 1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/baidu/game/handler/a;->D:Landroid/app/Activity;

    iput-object p2, p0, Lcom/baidu/game/handler/a;->E:Lcom/baidu/game/listener/PayCallbackListener;

    iput-object p3, p0, Lcom/baidu/game/handler/a;->F:Lcom/baidu/game/model/UserInfo;

    return-void
.end method

.method private e(Ljava/lang/String;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v8, 0x1

    const/4 v2, 0x0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-nez p1, :cond_1

    :cond_0
    return-object v0

    :cond_1
    const-string v1, "[&]"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v5, v3, v1

    const-string v6, "[=]"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    if-le v6, v8, :cond_3

    aget-object v6, v5, v2

    aget-object v5, v5, v8

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    aget-object v6, v5, v2

    const-string v7, ""

    if-eq v6, v7, :cond_2

    aget-object v5, v5, v2

    const-string v6, ""

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v4, 0x1

    invoke-static {}, Lcom/baidu/game/service/BaiduGameProxy;->j()Lcom/baidu/game/service/BaiduGameProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/game/service/BaiduGameProxy;->c()V

    :try_start_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v1, "test"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    :goto_1
    return-void

    :pswitch_0
    const-string v1, "test"

    invoke-static {v1, v0}, Lcom/alipay/android/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v1, "resultStatus={"

    const-string v2, "resultStatus="

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v2

    const-string v2, "};memo="

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "result={"

    const-string v3, "result={"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/baidu/game/handler/a;->e(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    new-instance v3, Lcom/alipay/android/e;

    invoke-direct {v3, v0}, Lcom/alipay/android/e;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/alipay/android/e;->f()I

    move-result v0

    if-ne v0, v4, :cond_1

    iget-object v0, p0, Lcom/baidu/game/handler/a;->D:Landroid/app/Activity;

    const-string v1, "\u63d0\u793a"

    const-string v2, "\u9a8c\u8bc1\u5931\u8d25"

    const v3, 0x1080027

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/android/a;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/baidu/game/handler/a;->E:Lcom/baidu/game/listener/PayCallbackListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/game/handler/a;->E:Lcom/baidu/game/listener/PayCallbackListener;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/baidu/game/listener/PayCallbackListener;->callback(ILcom/baidu/game/model/OrderInfo;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v0, p0, Lcom/baidu/game/handler/a;->D:Landroid/app/Activity;

    const-string v1, "\u63d0\u793a"

    const-string v2, "\u652f\u4ed8\u5931\u8d25"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/android/a;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_1
    :try_start_3
    const-string v0, "9000"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/baidu/game/handler/a;->D:Landroid/app/Activity;

    const-string v1, "\u63d0\u793a"

    const-string v3, "\u652f\u4ed8\u6210\u529f"

    const/4 v4, 0x0

    invoke-static {v0, v1, v3, v4}, Lcom/alipay/android/a;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "out_trade_no"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "\""

    const-string v3, ""

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "total_fee"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "\""

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    new-instance v0, Lcom/baidu/game/model/OrderInfo;

    invoke-direct {v0}, Lcom/baidu/game/model/OrderInfo;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/baidu/game/model/OrderInfo;->setAmount(I)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/baidu/game/model/OrderInfo;->setTimestamp(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/baidu/game/handler/a;->F:Lcom/baidu/game/model/UserInfo;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/baidu/game/handler/a;->F:Lcom/baidu/game/model/UserInfo;

    invoke-virtual {v2}, Lcom/baidu/game/model/UserInfo;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/baidu/game/model/OrderInfo;->setUserId(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/baidu/game/handler/a;->F:Lcom/baidu/game/model/UserInfo;

    invoke-virtual {v2}, Lcom/baidu/game/model/UserInfo;->getSid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/baidu/game/model/OrderInfo;->setServerId(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/baidu/game/model/OrderInfo;->setOrderId(Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Lcom/baidu/game/handler/a;->E:Lcom/baidu/game/listener/PayCallbackListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/baidu/game/handler/a;->E:Lcom/baidu/game/listener/PayCallbackListener;

    const/4 v2, 0x1

    invoke-interface {v1, v2, v0}, Lcom/baidu/game/listener/PayCallbackListener;->callback(ILcom/baidu/game/model/OrderInfo;)V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/baidu/game/handler/a;->E:Lcom/baidu/game/listener/PayCallbackListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/game/handler/a;->E:Lcom/baidu/game/listener/PayCallbackListener;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/baidu/game/listener/PayCallbackListener;->callback(ILcom/baidu/game/model/OrderInfo;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
