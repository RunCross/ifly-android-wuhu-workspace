.class public Lmm/purchasesdk/c/l;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lmm/purchasesdk/c/l;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmm/purchasesdk/c/l;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(Lmm/purchasesdk/b;)I
    .locals 3

    const/16 v0, 0x64

    invoke-static {}, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->checkSecCert()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_1

    :goto_1
    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lmm/purchasesdk/b;->onBeforeApply()V

    invoke-static {}, Lmm/purchasesdk/c/l;->c()I

    move-result v1

    if-eq v1, v0, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lmm/purchasesdk/b;->onAfterApply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v1, Lmm/purchasesdk/c/l;->TAG:Ljava/lang/String;

    const-string v2, "checkPhoneCert exception"

    invoke-static {v1, v2, v0}, Lmm/purchasesdk/l/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    const/16 v0, 0xdd

    goto :goto_1
.end method

.method public static c()I
    .locals 5

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmm/purchasesdk/l/g;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    new-instance v0, Lorg/apache/http/HttpHost;

    const/16 v2, 0x50

    const-string v3, "http"

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    :cond_0
    invoke-static {}, Lmm/purchasesdk/l/d;->F()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lmm/purchasesdk/c/l;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ip="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lmm/purchasesdk/l/d;->T()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",port="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lmm/purchasesdk/l/d;->U()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",appid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lmm/purchasesdk/l/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v0}, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->SIDSign(Ljava/lang/String;Lorg/apache/http/HttpHost;)Lcom/ccit/mmwlan/vo/SignView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ccit/mmwlan/vo/SignView;->getResult()I

    move-result v0

    sget-object v1, Lmm/purchasesdk/c/l;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SidSignature result--\u3009"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmm/purchasesdk/l/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_7

    sget-object v1, Lmm/purchasesdk/c/l;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "applyforCert failure: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmm/purchasesdk/l/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/16 v0, 0xd7

    :goto_0
    return v0

    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    const/16 v0, 0xd8

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    const/16 v0, 0xd9

    goto :goto_0

    :cond_3
    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    const/16 v0, 0xda

    goto :goto_0

    :cond_4
    const/4 v1, 0x6

    if-ne v0, v1, :cond_5

    sget-object v0, Lmm/purchasesdk/c/l;->TAG:Ljava/lang/String;

    const-string v1, "applyforCert failure: 219"

    invoke-static {v0, v1}, Lmm/purchasesdk/l/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xdb

    goto :goto_0

    :cond_5
    const/4 v1, 0x7

    if-ne v0, v1, :cond_6

    const/16 v0, 0xdc

    goto :goto_0

    :cond_6
    const/16 v0, 0xd6

    goto :goto_0

    :cond_7
    const/16 v0, 0x64

    goto :goto_0
.end method

.method public static d()I
    .locals 1

    invoke-static {}, Lcom/ccit/mmwlan/MMClientSDK_ForPad;->checkSecCert_PAD()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    const/16 v0, 0x64

    :goto_1
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x6

    goto :goto_1
.end method
