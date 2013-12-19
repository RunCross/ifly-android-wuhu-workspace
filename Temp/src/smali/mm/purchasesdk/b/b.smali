.class public Lmm/purchasesdk/b/b;
.super Ljava/lang/Object;


# static fields
.field static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lmm/purchasesdk/b/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmm/purchasesdk/b/b;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lmm/purchasesdk/b/a;Landroid/os/Bundle;)I
    .locals 7

    const/4 v0, 0x0

    const/16 v2, 0x79

    const/16 v1, 0x6e

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Lmm/purchasesdk/g/e;

    invoke-direct {v4}, Lmm/purchasesdk/g/e;-><init>()V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lmm/purchasesdk/b/c;

    invoke-direct {v4}, Lmm/purchasesdk/b/c;-><init>()V

    if-eqz p1, :cond_0

    const-string v5, "dyMark"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lmm/purchasesdk/b/c;->v(Ljava/lang/String;)V

    const-string v5, "CheckAnswer"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lmm/purchasesdk/b/c;->w(Ljava/lang/String;)V

    const-string v5, "CheckId"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lmm/purchasesdk/b/c;->l(Ljava/lang/String;)V

    const-string v5, "Password"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lmm/purchasesdk/b/c;->x(Ljava/lang/String;)V

    const-string v5, "RandomPwd"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lmm/purchasesdk/b/c;->u(Ljava/lang/String;)V

    const-string v5, "SessionId"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lmm/purchasesdk/b/c;->j(Ljava/lang/String;)V

    const-string v5, "OrderCount"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lmm/purchasesdk/b/c;->c(I)V

    const-string v5, "multiSubs"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v4, v5}, Lmm/purchasesdk/b/c;->c(Z)V

    const-string v5, "NeedPasswd"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v4, v5}, Lmm/purchasesdk/b/c;->d(Z)V

    const-string v5, "NeedInput"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v4, v5}, Lmm/purchasesdk/b/c;->e(Z)V

    :cond_0
    new-instance v5, Lmm/purchasesdk/b/d;

    invoke-direct {v5}, Lmm/purchasesdk/b/d;-><init>()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmm/purchasesdk/g/c;

    :try_start_0
    invoke-interface {v0, v4, v5}, Lmm/purchasesdk/g/c;->a(Lmm/purchasesdk/h/e;Lmm/purchasesdk/h/f;)Ljava/lang/String;
    :try_end_0
    .catch Lmm/purchasesdk/e; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_1

    move-object v1, v0

    :goto_0
    const/4 v0, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {v5}, Lmm/purchasesdk/b/d;->w()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v5}, Lmm/purchasesdk/b/d;->w()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v3, Lmm/purchasesdk/b/b;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "billing code:"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lmm/purchasesdk/l/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_2

    const/4 v3, 0x1

    if-ne v0, v3, :cond_4

    :cond_2
    invoke-static {v1}, Lmm/purchasesdk/l/a;->a(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {v2}, Lmm/purchasesdk/PurchaseCode;->setStatusCode(I)V

    move v0, v2

    :cond_3
    :goto_1
    return v0

    :catch_0
    move-exception v0

    invoke-static {v1}, Lmm/purchasesdk/PurchaseCode;->setStatusCode(I)V

    move v0, v1

    goto :goto_1

    :cond_4
    sparse-switch v0, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    invoke-static {v1}, Lmm/purchasesdk/a/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_7

    :cond_5
    sget-object v0, Lmm/purchasesdk/b/b;->TAG:Ljava/lang/String;

    const-string v1, "no license file"

    invoke-static {v0, v1}, Lmm/purchasesdk/l/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lmm/purchasesdk/l/d;->K()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v0, 0x1a6

    goto :goto_1

    :cond_6
    const/16 v0, 0xf1

    goto :goto_1

    :cond_7
    invoke-static {}, Lmm/purchasesdk/e/b;->a()Lmm/purchasesdk/e/a;

    move-result-object v1

    iget-object v1, v1, Lmm/purchasesdk/e/a;->a:Lmm/purchasesdk/e/a$a;

    iget-object v1, v1, Lmm/purchasesdk/e/a$a;->ab:Ljava/lang/String;

    invoke-virtual {v5}, Lmm/purchasesdk/b/d;->k()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lmm/purchasesdk/a/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x68

    if-ne v0, v1, :cond_3

    const-string v1, "OrderId"

    invoke-virtual {v5}, Lmm/purchasesdk/b/d;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "LeftDay"

    invoke-virtual {v5}, Lmm/purchasesdk/b/d;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "OrderType"

    invoke-virtual {v5}, Lmm/purchasesdk/b/d;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :sswitch_1
    const/16 v0, 0x193

    goto :goto_1

    :sswitch_2
    const/16 v0, 0x194

    goto :goto_1

    :sswitch_3
    const/4 v0, 0x0

    :try_start_1
    invoke-static {v0}, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->DestorySecCert(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    const/16 v0, 0x198

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :sswitch_4
    const/16 v0, 0x1a5

    goto :goto_1

    :sswitch_5
    const/16 v0, 0x195

    goto :goto_1

    :sswitch_6
    const/16 v0, 0x196

    goto :goto_1

    :sswitch_7
    const/16 v0, 0x199

    goto :goto_1

    :sswitch_8
    const/16 v0, 0x19a

    goto :goto_1

    :sswitch_9
    const/16 v0, 0x19c

    goto/16 :goto_1

    :sswitch_a
    const/16 v0, 0x19e

    goto/16 :goto_1

    :sswitch_b
    const/16 v0, 0x19f

    goto/16 :goto_1

    :sswitch_c
    const/16 v0, 0x1a3

    goto/16 :goto_1

    :sswitch_d
    const/16 v0, 0x19b

    goto/16 :goto_1

    :sswitch_e
    const/16 v0, 0x1a4

    goto/16 :goto_1

    :sswitch_f
    const/16 v0, 0x1a7

    goto/16 :goto_1

    :sswitch_10
    const/16 v0, 0x1a8

    goto/16 :goto_1

    :sswitch_11
    const/16 v0, 0x1ad

    goto/16 :goto_1

    :sswitch_12
    const/16 v0, 0x1ab

    goto/16 :goto_1

    :sswitch_13
    const/16 v0, 0x1aa

    goto/16 :goto_1

    :sswitch_14
    const/16 v0, 0x1ac

    goto/16 :goto_1

    :sswitch_15
    const/16 v0, 0x1ae

    goto/16 :goto_1

    :sswitch_16
    const/16 v0, 0x1af

    goto/16 :goto_1

    :sswitch_17
    const/16 v0, 0x1b0

    goto/16 :goto_1

    :sswitch_18
    const/16 v0, 0x1b1

    goto/16 :goto_1

    :sswitch_19
    const/16 v0, 0x1b2

    goto/16 :goto_1

    :cond_8
    move-object v1, v0

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0xb -> :sswitch_5
        0xc -> :sswitch_6
        0xd -> :sswitch_4
        0xe -> :sswitch_3
        0xf -> :sswitch_7
        0x10 -> :sswitch_8
        0x11 -> :sswitch_9
        0x12 -> :sswitch_a
        0x13 -> :sswitch_b
        0x14 -> :sswitch_15
        0x16 -> :sswitch_16
        0x19 -> :sswitch_17
        0x24 -> :sswitch_2
        0x26 -> :sswitch_e
        0x2a -> :sswitch_d
        0x63 -> :sswitch_11
        0x65 -> :sswitch_c
        0x6a -> :sswitch_19
        0x6b -> :sswitch_18
        0xb6 -> :sswitch_12
        0xc9 -> :sswitch_f
        0xca -> :sswitch_10
        0x7d8 -> :sswitch_14
        0x233b -> :sswitch_13
    .end sparse-switch
.end method
