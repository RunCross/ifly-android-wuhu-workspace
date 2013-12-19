.class public Lmm/purchasesdk/f;
.super Ljava/lang/Object;


# static fields
.field private static a:Z

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lmm/purchasesdk/f;->a:Z

    sput-boolean v0, Lmm/purchasesdk/f;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)I
    .locals 2

    const/4 v0, 0x0

    sget-boolean v1, Lmm/purchasesdk/f;->a:Z

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmm/purchasesdk/l/f;->X(Ljava/lang/String;)V

    invoke-static {}, Lmm/purchasesdk/l/c;->d()Z

    move-result v1

    invoke-static {v1}, Lmm/purchasesdk/l/d;->g(Z)V

    invoke-static {p0}, Lmm/purchasesdk/l/g;->a(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lmm/purchasesdk/l/d;->d(Ljava/lang/Boolean;)V

    invoke-static {p0}, Lmm/purchasesdk/d/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const/16 v0, 0xc8

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lmm/purchasesdk/l/d;->N(Ljava/lang/String;)V

    invoke-static {}, Lmm/purchasesdk/fingerprint/c;->init()V

    invoke-static {p0}, Lmm/purchasesdk/f;->b(Landroid/content/Context;)I

    move-result v1

    if-eqz v1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    sput-boolean v1, Lmm/purchasesdk/f;->a:Z

    goto :goto_0
.end method

.method public static a(Landroid/os/Handler;Landroid/os/Handler;Lmm/purchasesdk/b;I)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x6

    const/16 v1, 0x64

    sget v0, Lmm/purchasesdk/l/d;->ab:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Lmm/purchasesdk/l/d;->g()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lmm/purchasesdk/l/d;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, v1}, Lmm/purchasesdk/b;->onInitFinish(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p3}, Lmm/purchasesdk/b;->onInitFinish(I)V

    goto :goto_0

    :pswitch_1
    if-ne p3, v1, :cond_1

    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_1
    if-ne p3, v2, :cond_2

    invoke-static {p2, p0, p1}, Lmm/purchasesdk/f;->a(Lmm/purchasesdk/b;Landroid/os/Handler;Landroid/os/Handler;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p2, p3, v3}, Lmm/purchasesdk/b;->a(ILjava/util/HashMap;)V

    goto :goto_0

    :pswitch_2
    if-ne p3, v1, :cond_3

    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_3
    if-ne p3, v2, :cond_4

    invoke-static {p2, p0, p1}, Lmm/purchasesdk/f;->a(Lmm/purchasesdk/b;Landroid/os/Handler;Landroid/os/Handler;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p2, p3, v3}, Lmm/purchasesdk/b;->onQueryFinish(ILjava/util/HashMap;)V

    goto :goto_0

    :pswitch_3
    if-ne p3, v1, :cond_5

    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_5
    invoke-virtual {p2, p3}, Lmm/purchasesdk/b;->onUnsubscribeFinish(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public static a(Lmm/purchasesdk/b;I)V
    .locals 4

    const/16 v0, 0x65

    if-ne p1, v0, :cond_3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lmm/purchasesdk/l/d;->Y()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Paycode"

    invoke-static {}, Lmm/purchasesdk/l/d;->H()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "OrderId"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {}, Lmm/purchasesdk/l/d;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "LeftDay"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-static {}, Lmm/purchasesdk/l/d;->X()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "TradeID"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {p0, p1, v0}, Lmm/purchasesdk/b;->onQueryFinish(ILjava/util/HashMap;)V

    :goto_0
    return-void

    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lmm/purchasesdk/b;->onQueryFinish(ILjava/util/HashMap;)V

    goto :goto_0
.end method

.method private static a(Lmm/purchasesdk/b;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 2

    new-instance v0, Lmm/purchasesdk/c/a;

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1, p2}, Lmm/purchasesdk/c/a;-><init>(Landroid/content/Context;Lmm/purchasesdk/b;Landroid/os/Handler;Landroid/os/Handler;)V

    invoke-virtual {v0}, Lmm/purchasesdk/c/a;->show()V

    return-void
.end method

.method private static b(Landroid/content/Context;)I
    .locals 3

    const/4 v2, 0x1

    sget-boolean v0, Lmm/purchasesdk/f;->b:Z

    if-nez v0, :cond_5

    :try_start_0
    invoke-static {}, Lmm/purchasesdk/l/d;->g()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lmm/purchasesdk/l/g;->a()Lcom/ccit/mmwlan/phone/IPDress_ForPhone;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->initialMMSDK(Landroid/content/Context;Lcom/ccit/mmwlan/phone/IPDress_ForPhone;)I

    move-result v0

    :goto_0
    if-ne v0, v2, :cond_1

    const/16 v0, 0xd2

    :goto_1
    return v0

    :cond_0
    invoke-static {}, Lmm/purchasesdk/l/g;->a()Lcom/ccit/mmwlan/vo/IPDress_ForPad;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ccit/mmwlan/MMClientSDK_ForPad;->initialMMSDK(Landroid/content/Context;Lcom/ccit/mmwlan/vo/IPDress_ForPad;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "InitCASDK"

    const-string v2, "init mmclientsdk failure"

    invoke-static {v1, v2, v0}, Lmm/purchasesdk/l/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    const/16 v0, 0xd6

    goto :goto_1

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const/16 v0, 0xd3

    goto :goto_1

    :cond_2
    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    const/16 v0, 0xd4

    goto :goto_1

    :cond_3
    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    const/16 v0, 0xd5

    goto :goto_1

    :cond_4
    invoke-static {}, Lmm/purchasesdk/l/d;->g()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->getIMSI()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmm/purchasesdk/l/d;->Q(Ljava/lang/String;)V

    invoke-static {}, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->getDeviceID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmm/purchasesdk/l/d;->R(Ljava/lang/String;)V

    :goto_2
    sput-boolean v2, Lmm/purchasesdk/f;->b:Z

    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    :cond_6
    invoke-static {}, Lcom/ccit/mmwlan/MMClientSDK_ForPad;->getIMSI_PAD()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmm/purchasesdk/l/d;->Q(Ljava/lang/String;)V

    invoke-static {}, Lcom/ccit/mmwlan/MMClientSDK_ForPad;->getDeviceID_PAD()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmm/purchasesdk/l/d;->R(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static b()V
    .locals 2

    invoke-static {}, Lmm/purchasesdk/ui/u;->a()Lmm/purchasesdk/ui/u;

    move-result-object v0

    invoke-static {}, Lmm/purchasesdk/g;->a()Lmm/purchasesdk/b/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmm/purchasesdk/ui/u;->b(Lmm/purchasesdk/b/a;)V

    return-void
.end method

.method public static b(Landroid/os/Handler;Landroid/os/Handler;Lmm/purchasesdk/b;I)V
    .locals 7

    const/16 v5, 0x65

    const/4 v6, 0x0

    const/16 v4, 0x68

    const/16 v3, 0x66

    if-eq v3, p3, :cond_0

    if-eq v4, p3, :cond_0

    if-ne v5, p3, :cond_9

    :cond_0
    if-ne v3, p3, :cond_1

    invoke-static {}, Lmm/purchasesdk/f/a;->l()V

    invoke-static {}, Lmm/purchasesdk/f/a;->m()V

    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "Paycode"

    invoke-static {}, Lmm/purchasesdk/l/d;->H()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lmm/purchasesdk/l/d;->Y()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "OrderId"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-static {}, Lmm/purchasesdk/l/d;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "LeftDay"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-static {}, Lmm/purchasesdk/l/d;->X()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "TradeID"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-static {}, Lmm/purchasesdk/l/d;->n()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "OrderType"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    if-eq p3, v3, :cond_6

    if-ne v5, p3, :cond_8

    :cond_6
    invoke-virtual {p2, p3, v0}, Lmm/purchasesdk/b;->a(ILjava/util/HashMap;)V

    :cond_7
    :goto_0
    return-void

    :cond_8
    if-ne p3, v4, :cond_7

    invoke-virtual {p2, v4}, Lmm/purchasesdk/b;->a(I)V

    invoke-virtual {p2, v0}, Lmm/purchasesdk/b;->a(Ljava/util/HashMap;)V

    invoke-virtual {p2}, Lmm/purchasesdk/b;->a()V

    goto :goto_0

    :cond_9
    const/16 v0, 0xf0

    if-ne p3, v0, :cond_a

    invoke-static {}, Lmm/purchasesdk/f/a;->l()V

    invoke-static {}, Lmm/purchasesdk/f/a;->m()V

    invoke-static {}, Lmm/purchasesdk/ui/u;->a()Lmm/purchasesdk/ui/u;

    move-result-object v0

    invoke-static {}, Lmm/purchasesdk/g;->a()Lmm/purchasesdk/b/a;

    move-result-object v1

    invoke-virtual {v0, p0, p1, p2, v1}, Lmm/purchasesdk/ui/u;->a(Landroid/os/Handler;Landroid/os/Handler;Lmm/purchasesdk/b;Lmm/purchasesdk/b/a;)V

    goto :goto_0

    :cond_a
    const/16 v0, 0x1a6

    if-ne p3, v0, :cond_b

    invoke-static {}, Lmm/purchasesdk/ui/u;->a()Lmm/purchasesdk/ui/u;

    move-result-object v0

    invoke-static {}, Lmm/purchasesdk/l/d;->E()Ljava/lang/String;

    move-result-object v2

    move v1, p3

    move-object v3, p2

    move-object v4, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Lmm/purchasesdk/ui/u;->a(ILjava/lang/String;Lmm/purchasesdk/b;Landroid/os/Handler;Landroid/os/Handler;Ljava/util/HashMap;)V

    goto :goto_0

    :cond_b
    invoke-static {}, Lmm/purchasesdk/g;->a()Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :goto_1
    const-string v1, "PurchaseInternal"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " order fail ="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmm/purchasesdk/l/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lmm/purchasesdk/f/a;->l()V

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lmm/purchasesdk/l/d;->F()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v6}, Lmm/purchasesdk/c;->onEventRT(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p3, v0}, Lmm/purchasesdk/b;->a(ILjava/util/HashMap;)V

    goto :goto_0

    :cond_c
    move-object v0, v6

    goto :goto_1
.end method

.method public static c(Landroid/content/Context;)I
    .locals 4

    const/16 v0, 0x70

    invoke-static {}, Lmm/purchasesdk/l/d;->F()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lmm/purchasesdk/l/d;->G()Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    const-string v1, "PurchaseInternal"

    const-string v2, "appid is null"

    invoke-static {v1, v2}, Lmm/purchasesdk/l/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return v0

    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_4

    :cond_3
    const-string v1, "PurchaseInternal"

    const-string v2, "appkey is null"

    invoke-static {v1, v2}, Lmm/purchasesdk/l/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-static {p0}, Lmm/purchasesdk/g/d;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmm/purchasesdk/l/d;->V(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lmm/purchasesdk/l/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lmm/purchasesdk/l/g;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    const/16 v0, 0x6e

    goto :goto_0

    :cond_5
    invoke-static {p0}, Lmm/purchasesdk/l/g;->a(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lmm/purchasesdk/l/d;->d(Ljava/lang/Boolean;)V

    const/4 v0, 0x0

    goto :goto_0
.end method
