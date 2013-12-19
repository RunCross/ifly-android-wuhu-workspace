.class public Lmm/purchasesdk/g/e;
.super Ljava/lang/Object;

# interfaces
.implements Lmm/purchasesdk/g/c;


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lmm/purchasesdk/g/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmm/purchasesdk/g/e;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lmm/purchasesdk/h/e;Ljava/lang/String;Lmm/purchasesdk/h/f;)Ljava/lang/String;
    .locals 12

    const/16 v2, 0x6e

    const/16 v11, 0x76

    const/4 v0, 0x0

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lmm/purchasesdk/l/g;->a(Landroid/content/Context;)Lorg/apache/http/client/HttpClient;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-static {v2}, Lmm/purchasesdk/PurchaseCode;->setStatusCode(I)V

    new-instance v0, Lmm/purchasesdk/e;

    invoke-direct {v0, v2}, Lmm/purchasesdk/e;-><init>(I)V

    throw v0

    :cond_0
    new-instance v4, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v4, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    sget-object v1, Lmm/purchasesdk/g/e;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "url="

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmm/purchasesdk/l/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v1, 0x3

    if-ge v2, v1, :cond_7

    invoke-static {}, Lmm/purchasesdk/l/d;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    :try_start_0
    invoke-static {}, Lmm/purchasesdk/l/d;->F()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    invoke-static {v1, v5}, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->SIDSign(Ljava/lang/String;Lorg/apache/http/HttpHost;)Lcom/ccit/mmwlan/vo/SignView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ccit/mmwlan/vo/SignView;->getResult()I

    move-result v5

    if-eqz v5, :cond_1

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->DestorySecCert(Ljava/lang/String;)I

    sget-object v2, Lmm/purchasesdk/g/e;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mobile failed to make sidSignature.code="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/ccit/mmwlan/vo/SignView;->getResult()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lmm/purchasesdk/l/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x76

    invoke-static {v1}, Lmm/purchasesdk/PurchaseCode;->setStatusCode(I)V

    :goto_1
    return-object v0

    :cond_1
    invoke-virtual {p0, v1}, Lmm/purchasesdk/h/e;->b(Lcom/ccit/mmwlan/vo/SignView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_2
    :try_start_1
    invoke-virtual {p0}, Lmm/purchasesdk/h/e;->a()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    sget-object v1, Lmm/purchasesdk/g/e;->TAG:Ljava/lang/String;

    const-string v2, "failed to make query request.code="

    invoke-static {v1, v2}, Lmm/purchasesdk/l/e;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    sget-object v2, Lmm/purchasesdk/g/e;->TAG:Ljava/lang/String;

    const-string v3, "failed to make query request.exception.code="

    invoke-static {v2, v3, v1}, Lmm/purchasesdk/l/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    :catch_1
    move-exception v1

    sget-object v1, Lmm/purchasesdk/g/e;->TAG:Ljava/lang/String;

    const-string v2, "mobile failed to make sidSignature.code=118"

    invoke-static {v1, v2}, Lmm/purchasesdk/l/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v11}, Lmm/purchasesdk/PurchaseCode;->setStatusCode(I)V

    goto :goto_1

    :cond_2
    invoke-static {}, Lmm/purchasesdk/l/d;->F()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0, v0, v0}, Lcom/ccit/mmwlan/MMClientSDK_ForPad;->sidSign_PAD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ccit/mmwlan/vo/SignView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ccit/mmwlan/vo/SignView;->getResult()I

    move-result v5

    if-eqz v5, :cond_3

    const/4 v2, 0x0

    :try_start_2
    invoke-static {v2}, Lcom/ccit/mmwlan/MMClientSDK_ForPad;->DestorySecCert(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    sget-object v2, Lmm/purchasesdk/g/e;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "pad failed to make sidSignature.code="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/ccit/mmwlan/vo/SignView;->getResult()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lmm/purchasesdk/l/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v11}, Lmm/purchasesdk/PurchaseCode;->setStatusCode(I)V

    goto :goto_1

    :catch_2
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :cond_3
    invoke-virtual {p0, v1}, Lmm/purchasesdk/h/e;->b(Lcom/ccit/mmwlan/vo/SignView;)V

    goto :goto_2

    :cond_4
    :try_start_3
    sget-object v5, Lmm/purchasesdk/g/e;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "request : code = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lmm/purchasesdk/l/e;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    new-instance v5, Lorg/apache/http/entity/StringEntity;

    invoke-direct {v5, v1}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_3

    sget-object v6, Lmm/purchasesdk/g/e;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "request : code = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lmm/purchasesdk/l/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    :try_start_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-interface {v3, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    sget-object v7, Lmm/purchasesdk/g/e;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Req/Resp Time: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long v5, v9, v5

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lmm/purchasesdk/l/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    const/16 v6, 0xc8

    if-ne v5, v6, :cond_6

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    const-string v5, "utf-8"

    invoke-static {v1, v5}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v5, Lmm/purchasesdk/g/e;->TAG:Ljava/lang/String;

    invoke-static {v5, v1}, Lmm/purchasesdk/l/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Lmm/purchasesdk/h/f;->parse(Ljava/lang/String;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    move-result v5

    if-eqz v5, :cond_5

    move-object v0, v1

    goto/16 :goto_1

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto/16 :goto_1

    :cond_5
    const/16 v1, 0x77

    :try_start_6
    invoke-static {v1}, Lmm/purchasesdk/PurchaseCode;->setStatusCode(I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_1

    :catch_4
    move-exception v1

    sget-object v5, Lmm/purchasesdk/g/e;->TAG:Ljava/lang/String;

    const-string v6, "network failed"

    invoke-static {v5, v6, v1}, Lmm/purchasesdk/l/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_6
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto/16 :goto_0

    :cond_7
    sget-object v0, Lmm/purchasesdk/g/e;->TAG:Ljava/lang/String;

    const-string v1, "http response network timeout"

    invoke-static {v0, v1}, Lmm/purchasesdk/l/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lmm/purchasesdk/e;

    const/16 v1, 0x73

    invoke-direct {v0, v1}, Lmm/purchasesdk/e;-><init>(I)V

    throw v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lmm/purchasesdk/h/f;)Z
    .locals 11

    const/16 v4, 0x12c

    const/4 v0, 0x0

    const/16 v10, 0x73

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lmm/purchasesdk/l/g;->a(Landroid/content/Context;)Lorg/apache/http/client/HttpClient;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {v10}, Lmm/purchasesdk/PurchaseCode;->setStatusCode(I)V

    new-instance v0, Lmm/purchasesdk/e;

    invoke-direct {v0, v10}, Lmm/purchasesdk/e;-><init>(I)V

    throw v0

    :cond_0
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v2, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    :try_start_0
    new-instance v3, Lorg/apache/http/entity/StringEntity;

    invoke-direct {v3, p0}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v2, v3}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    sget-object v3, Lmm/purchasesdk/g/e;->TAG:Ljava/lang/String;

    invoke-static {v3, p0}, Lmm/purchasesdk/l/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v3, 0x3

    if-ge v0, v3, :cond_3

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-interface {v1, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    sget-object v6, Lmm/purchasesdk/g/e;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Req/Resp Time: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v3, v8, v3

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lmm/purchasesdk/l/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_2

    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    const-string v1, "utf-8"

    invoke-static {v0, v1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lmm/purchasesdk/g/e;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lmm/purchasesdk/l/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lmm/purchasesdk/h/f;->parse(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-static {v0}, Lmm/purchasesdk/PurchaseCode;->setStatusCode(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    invoke-static {v4}, Lmm/purchasesdk/PurchaseCode;->setStatusCode(I)V

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    new-instance v0, Lmm/purchasesdk/e;

    invoke-direct {v0, v4}, Lmm/purchasesdk/e;-><init>(I)V

    throw v0

    :cond_1
    const/16 v0, 0xe8

    :try_start_2
    invoke-static {v0}, Lmm/purchasesdk/PurchaseCode;->setStatusCode(I)V

    new-instance v0, Lmm/purchasesdk/e;

    const/16 v1, 0xe8

    invoke-direct {v0, v1}, Lmm/purchasesdk/e;-><init>(I)V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception v0

    invoke-static {v10}, Lmm/purchasesdk/PurchaseCode;->setStatusCode(I)V

    new-instance v0, Lmm/purchasesdk/e;

    invoke-direct {v0, v10}, Lmm/purchasesdk/e;-><init>(I)V

    throw v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-static {v10}, Lmm/purchasesdk/PurchaseCode;->setStatusCode(I)V

    sget-object v0, Lmm/purchasesdk/g/e;->TAG:Ljava/lang/String;

    const-string v1, "http response network timeout"

    invoke-static {v0, v1}, Lmm/purchasesdk/l/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lmm/purchasesdk/e;

    invoke-direct {v0, v10}, Lmm/purchasesdk/e;-><init>(I)V

    throw v0
.end method


# virtual methods
.method public a(Lmm/purchasesdk/h/e;Lmm/purchasesdk/h/f;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmm/purchasesdk/l/d;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lmm/purchasesdk/g/e;->a(Lmm/purchasesdk/h/e;Ljava/lang/String;Lmm/purchasesdk/h/f;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lmm/purchasesdk/h/f;)Ljava/lang/String;
    .locals 7

    const/16 v1, 0xf1

    const/16 v0, 0x65

    const/4 v3, 0x0

    new-instance v2, Lmm/purchasesdk/h/c;

    invoke-direct {v2}, Lmm/purchasesdk/h/c;-><init>()V

    check-cast p1, Lmm/purchasesdk/h/d;

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lmm/purchasesdk/l/d;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, p1}, Lmm/purchasesdk/g/e;->a(Lmm/purchasesdk/h/e;Ljava/lang/String;Lmm/purchasesdk/h/f;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    sget-object v2, Lmm/purchasesdk/g/e;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "queryOrderId retcode="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lmm/purchasesdk/h/d;->w()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lmm/purchasesdk/l/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lmm/purchasesdk/h/d;->w()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_0

    const/16 v5, 0x64

    if-ne v2, v5, :cond_1

    :cond_0
    invoke-static {v4}, Lmm/purchasesdk/l/a;->a(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_1

    const/16 v0, 0x79

    invoke-static {v0}, Lmm/purchasesdk/PurchaseCode;->setStatusCode(I)V

    move-object v0, v3

    :goto_0
    return-object v0

    :cond_1
    packed-switch v2, :pswitch_data_0

    :pswitch_0
    move v0, v2

    :cond_2
    :goto_1
    invoke-static {v0}, Lmm/purchasesdk/PurchaseCode;->setStatusCode(I)V

    invoke-virtual {p1}, Lmm/purchasesdk/h/d;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmm/purchasesdk/l/d;->U(Ljava/lang/String;)V

    invoke-virtual {p1}, Lmm/purchasesdk/h/d;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmm/purchasesdk/l/d;->b(Ljava/lang/String;)V

    invoke-virtual {p1}, Lmm/purchasesdk/h/d;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmm/purchasesdk/l/d;->T(Ljava/lang/String;)V

    invoke-virtual {p1}, Lmm/purchasesdk/h/d;->k()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-static {v4}, Lmm/purchasesdk/a/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_4

    :cond_3
    invoke-static {v1}, Lmm/purchasesdk/PurchaseCode;->setStatusCode(I)V

    sget-object v0, Lmm/purchasesdk/g/e;->TAG:Ljava/lang/String;

    const-string v2, "auth file is null,code=241"

    invoke-static {v0, v2}, Lmm/purchasesdk/l/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_1

    :cond_4
    invoke-static {}, Lmm/purchasesdk/l/d;->h()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lmm/purchasesdk/e/b;->a()Lmm/purchasesdk/e/a;

    move-result-object v1

    iget-object v1, v1, Lmm/purchasesdk/e/a;->a:Lmm/purchasesdk/e/a$a;

    iget-object v1, v1, Lmm/purchasesdk/e/a$a;->ab:Ljava/lang/String;

    invoke-virtual {p1}, Lmm/purchasesdk/h/d;->k()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lmm/purchasesdk/a/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lmm/purchasesdk/PurchaseCode;->setStatusCode(I)V

    const/16 v2, 0x68

    if-eq v1, v2, :cond_2

    move v0, v1

    goto :goto_1

    :pswitch_2
    const/16 v0, 0x1f4

    goto :goto_1

    :pswitch_3
    const/16 v0, 0x1f5

    goto :goto_1

    :pswitch_4
    const/16 v0, 0x1f6

    goto :goto_1

    :pswitch_5
    const/16 v0, 0x1f7

    goto :goto_1

    :pswitch_6
    const/16 v0, 0x1f8

    goto :goto_1

    :pswitch_7
    const/16 v0, 0x1f9

    goto :goto_1

    :pswitch_8
    :try_start_0
    invoke-static {}, Lmm/purchasesdk/l/d;->d()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->DestorySecCert(Ljava/lang/String;)I

    :goto_2
    const/16 v0, 0x1fa

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/ccit/mmwlan/MMClientSDK_ForPad;->DestorySecCert(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :pswitch_9
    const/16 v0, 0x1fb

    goto/16 :goto_1

    :pswitch_a
    const/16 v0, 0x1fc

    goto/16 :goto_1

    :pswitch_b
    const/16 v0, 0x1fd

    goto/16 :goto_1

    :pswitch_c
    const/16 v0, 0x1ff

    goto/16 :goto_1

    :pswitch_d
    const/16 v0, 0x200

    goto/16 :goto_1

    :cond_6
    sget-object v0, Lmm/purchasesdk/g/e;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "get getOrderId failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lmm/purchasesdk/h/d;->w()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmm/purchasesdk/l/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    goto/16 :goto_0

    nop

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
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public a(Lmm/purchasesdk/h/e;Lmm/purchasesdk/h/f;)Z
    .locals 10

    const/16 v9, 0x64

    const/4 v8, 0x6

    const/4 v7, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmm/purchasesdk/l/d;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lmm/purchasesdk/g/e;->a(Lmm/purchasesdk/h/e;Ljava/lang/String;Lmm/purchasesdk/h/f;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_29

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_29

    invoke-virtual {p2}, Lmm/purchasesdk/h/f;->w()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    if-eq v0, v7, :cond_0

    if-eq v0, v8, :cond_0

    if-ne v0, v9, :cond_1

    :cond_0
    invoke-static {v3}, Lmm/purchasesdk/l/a;->a(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_1

    const/16 v0, 0x79

    invoke-static {v0}, Lmm/purchasesdk/PurchaseCode;->setStatusCode(I)V

    move v0, v1

    :goto_0
    return v0

    :cond_1
    sget-object v4, Lmm/purchasesdk/g/e;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "checkAuth return code ="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lmm/purchasesdk/l/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_5

    invoke-static {v3}, Lmm/purchasesdk/a/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    const/16 v0, 0xf1

    invoke-static {v0}, Lmm/purchasesdk/PurchaseCode;->setStatusCode(I)V

    sget-object v0, Lmm/purchasesdk/g/e;->TAG:Ljava/lang/String;

    const-string v2, "auth file is null,code=241"

    invoke-static {v0, v2}, Lmm/purchasesdk/l/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-static {}, Lmm/purchasesdk/e/b;->a()Lmm/purchasesdk/e/a;

    move-result-object v3

    iget-object v3, v3, Lmm/purchasesdk/e/a;->a:Lmm/purchasesdk/e/a$a;

    iget-object v3, v3, Lmm/purchasesdk/e/a$a;->ab:Ljava/lang/String;

    invoke-virtual {p2}, Lmm/purchasesdk/h/f;->k()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lmm/purchasesdk/a/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lmm/purchasesdk/PurchaseCode;->setStatusCode(I)V

    const/16 v3, 0x68

    if-ne v0, v3, :cond_4

    move v0, v2

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    if-ne v0, v7, :cond_6

    const/16 v0, 0xf4

    :goto_1
    invoke-static {v0}, Lmm/purchasesdk/PurchaseCode;->setStatusCode(I)V

    move v0, v1

    goto :goto_0

    :cond_6
    if-ne v0, v2, :cond_7

    const/16 v0, 0xf6

    goto :goto_1

    :cond_7
    const/4 v2, 0x4

    if-ne v0, v2, :cond_8

    const/16 v0, 0x10d

    goto :goto_1

    :cond_8
    const/4 v2, 0x3

    if-ne v0, v2, :cond_9

    const/16 v0, 0xf5

    goto :goto_1

    :cond_9
    const/4 v2, 0x5

    if-ne v0, v2, :cond_a

    const/16 v0, 0xf7

    goto :goto_1

    :cond_a
    if-ne v0, v8, :cond_b

    const/16 v0, 0x109

    goto :goto_1

    :cond_b
    const/16 v2, 0x25

    if-ne v0, v2, :cond_c

    const/16 v0, 0x10a

    goto :goto_1

    :cond_c
    const/16 v2, 0xb

    if-ne v0, v2, :cond_d

    const/16 v0, 0xf8

    goto :goto_1

    :cond_d
    const/16 v2, 0xc

    if-ne v0, v2, :cond_e

    const/16 v0, 0xf9

    goto :goto_1

    :cond_e
    const/16 v2, 0xd

    if-ne v0, v2, :cond_f

    const/16 v0, 0xfa

    goto :goto_1

    :cond_f
    const/16 v2, 0xe

    if-ne v0, v2, :cond_11

    :try_start_0
    invoke-static {}, Lmm/purchasesdk/l/d;->d()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->DestorySecCert(Ljava/lang/String;)I

    :goto_2
    const/16 v0, 0xfe

    goto :goto_1

    :cond_10
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/ccit/mmwlan/MMClientSDK_ForPad;->DestorySecCert(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_11
    const/16 v2, 0xf

    if-ne v0, v2, :cond_12

    const/16 v0, 0xff

    goto :goto_1

    :cond_12
    const/16 v2, 0x10

    if-ne v0, v2, :cond_13

    const/16 v0, 0x100

    goto :goto_1

    :cond_13
    const/16 v2, 0x11

    if-ne v0, v2, :cond_14

    const/16 v0, 0x101

    goto :goto_1

    :cond_14
    const/16 v2, 0x12

    if-ne v0, v2, :cond_15

    const/16 v0, 0x103

    goto :goto_1

    :cond_15
    const/16 v2, 0x13

    if-ne v0, v2, :cond_16

    const/16 v0, 0x104

    goto :goto_1

    :cond_16
    if-ne v0, v9, :cond_17

    const/16 v0, 0x105

    goto :goto_1

    :cond_17
    const/16 v2, 0x65

    if-ne v0, v2, :cond_18

    const/16 v0, 0x108

    goto/16 :goto_1

    :cond_18
    const/16 v2, 0x63

    if-ne v0, v2, :cond_19

    const/16 v0, 0x10c

    goto/16 :goto_1

    :cond_19
    const/16 v2, 0x27

    if-ne v0, v2, :cond_1a

    const/16 v0, 0xfb

    goto/16 :goto_1

    :cond_1a
    const/16 v2, 0x28

    if-ne v0, v2, :cond_1b

    const/16 v0, 0xfc

    goto/16 :goto_1

    :cond_1b
    const/16 v2, 0x29

    if-ne v0, v2, :cond_1c

    const/16 v0, 0xfd

    goto/16 :goto_1

    :cond_1c
    const/16 v2, 0x2a

    if-ne v0, v2, :cond_1d

    const/16 v0, 0x119

    goto/16 :goto_1

    :cond_1d
    const/16 v2, 0x2b

    if-ne v0, v2, :cond_1e

    const/16 v0, 0x11a

    goto/16 :goto_1

    :cond_1e
    const/16 v2, 0xc9

    if-ne v0, v2, :cond_1f

    const/16 v0, 0x10e

    goto/16 :goto_1

    :cond_1f
    const/16 v2, 0xca

    if-ne v0, v2, :cond_20

    const/16 v0, 0x112

    goto/16 :goto_1

    :cond_20
    const/16 v2, 0x191

    if-ne v0, v2, :cond_21

    const/16 v0, 0x110

    goto/16 :goto_1

    :cond_21
    const/16 v2, 0x233b

    if-ne v0, v2, :cond_22

    const/16 v0, 0x114

    goto/16 :goto_1

    :cond_22
    const/16 v2, 0xb6

    if-ne v0, v2, :cond_23

    const/16 v0, 0x113

    goto/16 :goto_1

    :cond_23
    const/16 v2, 0x7d8

    if-ne v0, v2, :cond_24

    const/16 v0, 0x10f

    goto/16 :goto_1

    :cond_24
    const/16 v2, 0x7d9

    if-ne v0, v2, :cond_25

    const/16 v0, 0x115

    goto/16 :goto_1

    :cond_25
    const/16 v2, 0x14

    if-ne v0, v2, :cond_26

    const/16 v0, 0x116

    goto/16 :goto_1

    :cond_26
    const/16 v2, 0x16

    if-ne v0, v2, :cond_27

    const/16 v0, 0x117

    goto/16 :goto_1

    :cond_27
    const/16 v2, 0x19

    if-ne v0, v2, :cond_28

    const/16 v0, 0x118

    goto/16 :goto_1

    :cond_28
    sget-object v2, Lmm/purchasesdk/g/e;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "unknown error.code="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lmm/purchasesdk/l/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_29
    move v0, v1

    goto/16 :goto_0
.end method

.method public b(Lmm/purchasesdk/h/e;Lmm/purchasesdk/h/f;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmm/purchasesdk/l/d;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lmm/purchasesdk/g/e;->a(Lmm/purchasesdk/h/e;Ljava/lang/String;Lmm/purchasesdk/h/f;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(Lmm/purchasesdk/h/e;Lmm/purchasesdk/h/f;)Ljava/lang/String;
    .locals 15

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lmm/purchasesdk/l/g;->a(Landroid/content/Context;)Lorg/apache/http/client/HttpClient;

    move-result-object v5

    if-nez v5, :cond_1

    const-string v1, "\u77ed\u4fe1\u9a8c\u8bc1\u7801\u83b7\u53d6\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8fde\u63a5\u662f\u5426\u6b63\u5e38"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lmm/purchasesdk/h/f;->C(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    new-instance v6, Lorg/apache/http/client/methods/HttpPost;

    invoke-static {v1}, Lmm/purchasesdk/l/d;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    :try_start_0
    check-cast p1, Lmm/purchasesdk/h/g;

    invoke-virtual/range {p1 .. p1}, Lmm/purchasesdk/h/g;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    sget-object v4, Lmm/purchasesdk/g/e;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Query request : code = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v4, v7}, Lmm/purchasesdk/l/b;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v3, Lorg/apache/http/entity/StringEntity;

    invoke-direct {v3, v1}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v4, 0x0

    sget-object v7, Lmm/purchasesdk/g/e;->TAG:Ljava/lang/String;

    invoke-static {v4, v7, v1}, Lmm/purchasesdk/l/b;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    const/4 v3, 0x0

    const/4 v1, 0x0

    move v4, v1

    move-object v1, v2

    :goto_1
    const/4 v2, 0x3

    if-ge v4, v2, :cond_4

    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-interface {v5, v6}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    const/4 v9, 0x0

    sget-object v10, Lmm/purchasesdk/g/e;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "SMSRequest Req/Resp Time: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long v7, v12, v7

    invoke-virtual {v11, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v10, v7}, Lmm/purchasesdk/l/b;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v7

    const/16 v8, 0xc8

    if-ne v7, v8, :cond_2

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    const-string v7, "utf-8"

    invoke-static {v2, v7}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v2

    const/4 v1, 0x0

    :try_start_3
    sget-object v7, Lmm/purchasesdk/g/e;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "response:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v7, v8}, Lmm/purchasesdk/l/b;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    const/4 v1, 0x1

    move-object v14, v2

    move v2, v1

    move-object v1, v14

    :goto_2
    if-nez v2, :cond_3

    const-string v1, "\u77ed\u4fe1\u9a8c\u8bc1\u7801\u83b7\u53d6\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8fde\u63a5\u662f\u5426\u6b63\u5e38"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lmm/purchasesdk/h/f;->C(Ljava/lang/String;)V

    const/4 v1, 0x1

    sget-object v2, Lmm/purchasesdk/g/e;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SMS http response status code is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lmm/purchasesdk/h/f;->w()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lmm/purchasesdk/l/b;->a(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    const/4 v2, 0x2

    sget-object v3, Lmm/purchasesdk/g/e;->TAG:Ljava/lang/String;

    const-string v4, "failed to make query request"

    invoke-static {v2, v3, v4, v1}, Lmm/purchasesdk/l/b;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    const-string v1, "\u77ed\u4fe1\u9a8c\u8bc1\u7801\u83b7\u53d6\u5931\u8d25\uff0c\u77ed\u4fe1\u8bf7\u6c42\u9519\u8bef"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lmm/purchasesdk/h/f;->C(Ljava/lang/String;)V

    const/4 v1, 0x0

    goto/16 :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    const-string v1, "\u77ed\u4fe1\u9a8c\u8bc1\u7801\u83b7\u53d6\u5931\u8d25\uff0c\u7cfb\u7edf\u51fa\u73b0\u9519\u8bef"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lmm/purchasesdk/h/f;->C(Ljava/lang/String;)V

    const/4 v1, 0x0

    goto/16 :goto_0

    :catch_2
    move-exception v1

    move-object v14, v1

    move-object v1, v2

    move-object v2, v14

    :goto_3
    const-string v7, "\u77ed\u4fe1\u9a8c\u8bc1\u7801\u83b7\u53d6\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8fde\u63a5\u662f\u5426\u6b63\u5e38"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Lmm/purchasesdk/h/f;->C(Ljava/lang/String;)V

    const/4 v7, 0x2

    sget-object v8, Lmm/purchasesdk/g/e;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "sms network failed.code="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lmm/purchasesdk/h/f;->w()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9, v2}, Lmm/purchasesdk/l/b;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_2
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto/16 :goto_1

    :cond_3
    if-nez v1, :cond_0

    const/4 v1, 0x1

    sget-object v2, Lmm/purchasesdk/g/e;->TAG:Ljava/lang/String;

    const-string v3, "cannot read authorization response"

    invoke-static {v1, v2, v3}, Lmm/purchasesdk/l/b;->a(ILjava/lang/String;Ljava/lang/String;)V

    const-string v1, "\u77ed\u4fe1\u9a8c\u8bc1\u7801\u83b7\u53d6\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8fde\u63a5\u662f\u5426\u6b63\u5e38"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lmm/purchasesdk/h/f;->C(Ljava/lang/String;)V

    const/4 v1, 0x0

    goto/16 :goto_0

    :catch_3
    move-exception v2

    goto :goto_3

    :cond_4
    move v2, v3

    goto/16 :goto_2
.end method

.method public d(Lmm/purchasesdk/h/e;Lmm/purchasesdk/h/f;)Ljava/lang/String;
    .locals 7

    const/4 v2, 0x0

    invoke-virtual {p0, p1, p2}, Lmm/purchasesdk/g/e;->c(Lmm/purchasesdk/h/e;Lmm/purchasesdk/h/f;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    :try_start_0
    move-object v0, p2

    check-cast v0, Lmm/purchasesdk/h/h;

    move-object v1, v0

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const-string v5, "utf-8"

    invoke-virtual {v1, v4, v5}, Lmm/purchasesdk/h/h;->a([BLjava/lang/String;)Lmm/purchasesdk/h/h;

    move-result-object p2

    const/4 v1, 0x0

    sget-object v4, Lmm/purchasesdk/g/e;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "SMS response: code = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v4, v3}, Lmm/purchasesdk/l/b;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p2}, Lmm/purchasesdk/h/f;->w()Ljava/lang/String;

    move-result-object v1

    :goto_0
    move-object v2, v1

    :goto_1
    return-object v2

    :catch_0
    move-exception v1

    const/4 v3, 0x2

    sget-object v4, Lmm/purchasesdk/g/e;->TAG:Ljava/lang/String;

    const-string v5, "parse failed"

    invoke-static {v3, v4, v5, v1}, Lmm/purchasesdk/l/b;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    const-string v1, "\u77ed\u4fe1\u9a8c\u8bc1\u7801\u83b7\u53d6\u5931\u8d25\uff0c\u54cd\u5e94\u89e3\u6790\u9519\u8bef"

    invoke-virtual {p2, v1}, Lmm/purchasesdk/h/f;->C(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    move-object v1, v2

    goto :goto_0
.end method

.method public s()Ljava/lang/String;
    .locals 4

    new-instance v0, Lmm/purchasesdk/h/a;

    invoke-direct {v0}, Lmm/purchasesdk/h/a;-><init>()V

    new-instance v1, Lmm/purchasesdk/h/b;

    invoke-direct {v1}, Lmm/purchasesdk/h/b;-><init>()V

    invoke-virtual {v0}, Lmm/purchasesdk/h/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lmm/purchasesdk/l/d;->O()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lmm/purchasesdk/g/e;->a(Ljava/lang/String;Ljava/lang/String;Lmm/purchasesdk/h/f;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v1, Lmm/purchasesdk/h/b;->ag:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, v1, Lmm/purchasesdk/h/b;->ai:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lmm/purchasesdk/g/e;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "get copyright failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lmm/purchasesdk/h/b;->ah:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmm/purchasesdk/l/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
