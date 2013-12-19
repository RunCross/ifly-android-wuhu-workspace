.class public Lmm/purchasesdk/k/a;
.super Ljava/lang/Object;


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lmm/purchasesdk/k/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmm/purchasesdk/k/a;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public i()I
    .locals 5

    const/4 v0, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lmm/purchasesdk/g/e;

    invoke-direct {v2}, Lmm/purchasesdk/g/e;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lmm/purchasesdk/k/b;

    invoke-direct {v2}, Lmm/purchasesdk/k/b;-><init>()V

    new-instance v3, Lmm/purchasesdk/k/c;

    invoke-direct {v3}, Lmm/purchasesdk/k/c;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmm/purchasesdk/g/c;

    :try_start_0
    invoke-interface {v0, v2, v3}, Lmm/purchasesdk/g/c;->b(Lmm/purchasesdk/h/e;Lmm/purchasesdk/h/f;)Ljava/lang/String;
    :try_end_0
    .catch Lmm/purchasesdk/e; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-nez v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    move-object v1, v0

    :cond_1
    const/4 v0, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v3}, Lmm/purchasesdk/k/c;->w()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lmm/purchasesdk/k/a;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "retCode ="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmm/purchasesdk/l/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch v0, :pswitch_data_0

    :goto_1
    :pswitch_0
    invoke-static {v0}, Lmm/purchasesdk/PurchaseCode;->setStatusCode(I)V

    :cond_2
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lmm/purchasesdk/e;->printStackTrace()V

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x67

    new-instance v1, Lmm/purchasesdk/g/b;

    invoke-direct {v1}, Lmm/purchasesdk/g/b;-><init>()V

    invoke-static {}, Lmm/purchasesdk/l/d;->F()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lmm/purchasesdk/l/d;->H()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lmm/purchasesdk/l/d;->L()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lmm/purchasesdk/g/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_2
    const/16 v0, 0x1ce

    goto :goto_1

    :pswitch_3
    const/16 v0, 0x1d4

    goto :goto_1

    :pswitch_4
    const/16 v0, 0x1cc

    goto :goto_1

    :pswitch_5
    const/16 v0, 0x1cd

    goto :goto_1

    :pswitch_6
    const/16 v0, 0x1cf

    goto :goto_1

    :pswitch_7
    const/16 v0, 0x1d5

    goto :goto_1

    :pswitch_8
    :try_start_1
    invoke-static {}, Lmm/purchasesdk/l/d;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->DestorySecCert(Ljava/lang/String;)I

    :goto_2
    const/16 v0, 0x1d0

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/ccit/mmwlan/MMClientSDK_ForPad;->DestorySecCert(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :pswitch_9
    const/16 v0, 0x1d1

    goto :goto_1

    :pswitch_a
    const/16 v0, 0x1d2

    goto :goto_1

    :pswitch_b
    const/16 v0, 0x1d3

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method
