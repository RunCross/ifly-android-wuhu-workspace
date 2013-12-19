.class public final Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;
.super Ljava/lang/Object;


# static fields
.field private static final INT_RESULT_0:I = 0x0

.field private static final INT_RESULT_1:I = 0x1

.field private static final INT_RESULT_2:I = 0x2

.field private static final INT_RESULT_3:I = 0x3

.field private static final INT_RESULT_4:I = 0x4

.field private static final INT_RESULT_5:I = 0x5

.field private static final INT_RESULT_6:I = 0x6

.field private static final INT_RESULT_7:I = 0x7

.field private static final MMCLIENT_SDK:Ljava/lang/String; = "MMClientSDK_ForPhone"

.field private static SMSNumber:Ljava/lang/String;

.field private static clientSDK:Lcom/ccit/mmwlan/ClientSDK;

.field private static context:Landroid/content/Context;

.field private static strApplyCertForPhone:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->clientSDK:Lcom/ccit/mmwlan/ClientSDK;

    sput-object v0, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->context:Landroid/content/Context;

    sput-object v0, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->strApplyCertForPhone:Ljava/lang/String;

    sput-object v0, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->SMSNumber:Ljava/lang/String;

    new-instance v0, Lcom/ccit/mmwlan/ClientSDK;

    invoke-direct {v0}, Lcom/ccit/mmwlan/ClientSDK;-><init>()V

    sput-object v0, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->clientSDK:Lcom/ccit/mmwlan/ClientSDK;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static DestorySecCert(Ljava/lang/String;)I
    .locals 5

    const/4 v1, -0x1

    :try_start_0
    sget-object v0, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->clientSDK:Lcom/ccit/mmwlan/ClientSDK;

    invoke-virtual {v0, p0}, Lcom/ccit/mmwlan/ClientSDK;->DestorySecCertForBilling(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :try_start_1
    const-string v1, "MMClientSDK_ForPhone"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DestroySecCert() iRet -> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    move-object v4, v0

    move v0, v1

    move-object v1, v4

    :goto_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public static RSAEncryptWithPubKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    :try_start_0
    sget-object v0, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->clientSDK:Lcom/ccit/mmwlan/ClientSDK;

    invoke-virtual {v0, p0}, Lcom/ccit/mmwlan/ClientSDK;->AsymmetricEncryptionForBilling(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "1"

    :cond_0
    const-string v1, "MMClientSDK_ForPhone"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "RSAEncryptWithPubKey() strRet -> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v1, v0

    const-string v0, "1"

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static SIDSign(Ljava/lang/String;Lorg/apache/http/HttpHost;)Lcom/ccit/mmwlan/vo/SignView;
    .locals 9

    const/4 v8, 0x6

    const/4 v7, 0x0

    const/4 v6, 0x7

    const/4 v5, 0x2

    new-instance v0, Lcom/ccit/mmwlan/vo/SignView;

    invoke-direct {v0}, Lcom/ccit/mmwlan/vo/SignView;-><init>()V

    if-nez p0, :cond_0

    invoke-virtual {v0, v8}, Lcom/ccit/mmwlan/vo/SignView;->setResult(I)V

    :goto_0
    return-object v0

    :cond_0
    sget-object v1, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->clientSDK:Lcom/ccit/mmwlan/ClientSDK;

    invoke-virtual {v1}, Lcom/ccit/mmwlan/ClientSDK;->checkSecCertNativeForBilling()I

    move-result v1

    const-string v2, "MMClientSDK_ForPhone"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SIDSign() iCertState -> "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_3

    invoke-static {}, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->genSID()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v5}, Lcom/ccit/mmwlan/vo/SignView;->setResult(I)V

    goto :goto_0

    :cond_1
    invoke-static {v1, p0}, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->getSIDSignValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-virtual {v0, v6}, Lcom/ccit/mmwlan/vo/SignView;->setResult(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v7}, Lcom/ccit/mmwlan/vo/SignView;->setResult(I)V

    invoke-virtual {v0, v1}, Lcom/ccit/mmwlan/vo/SignView;->setUserSignature(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 v2, 0x1

    if-ne v2, v1, :cond_7

    invoke-static {p0, p1}, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->sendMessageAndApplyCert(Ljava/lang/String;Lorg/apache/http/HttpHost;)I

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0, v1}, Lcom/ccit/mmwlan/vo/SignView;->setResult(I)V

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->genSID()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0, v5}, Lcom/ccit/mmwlan/vo/SignView;->setResult(I)V

    goto :goto_0

    :cond_5
    invoke-static {v1, p0}, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->getSIDSignValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    invoke-virtual {v0, v6}, Lcom/ccit/mmwlan/vo/SignView;->setResult(I)V

    goto :goto_0

    :cond_6
    invoke-virtual {v0, v7}, Lcom/ccit/mmwlan/vo/SignView;->setResult(I)V

    invoke-virtual {v0, v1}, Lcom/ccit/mmwlan/vo/SignView;->setUserSignature(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    if-ne v5, v1, :cond_c

    invoke-static {}, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->genSID()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v0, v5}, Lcom/ccit/mmwlan/vo/SignView;->setResult(I)V

    goto :goto_0

    :cond_8
    :try_start_0
    invoke-static {v1, p0, p1}, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->applySecCertMethod(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/HttpHost;)I

    move-result v1

    const-string v2, "MMClientSDK_ForPhone"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SIDSign() iResult -> "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_b

    invoke-static {}, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->genSID()Ljava/lang/String;

    move-result-object v2

    const-string v3, "2"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/ccit/mmwlan/vo/SignView;->setResult(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v0, v8}, Lcom/ccit/mmwlan/vo/SignView;->setResult(I)V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_9
    :try_start_1
    invoke-static {v2, p0}, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->getSIDSignValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_a

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/ccit/mmwlan/vo/SignView;->setResult(I)V

    goto/16 :goto_0

    :cond_a
    invoke-virtual {v0, v1}, Lcom/ccit/mmwlan/vo/SignView;->setResult(I)V

    invoke-virtual {v0, v2}, Lcom/ccit/mmwlan/vo/SignView;->setUserSignature(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    invoke-virtual {v0, v1}, Lcom/ccit/mmwlan/vo/SignView;->setResult(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_c
    invoke-static {p0, p1}, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->sendMessageAndApplyCert(Ljava/lang/String;Lorg/apache/http/HttpHost;)I

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {v0, v1}, Lcom/ccit/mmwlan/vo/SignView;->setResult(I)V

    goto/16 :goto_0

    :cond_d
    invoke-static {}, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->genSID()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {v0, v5}, Lcom/ccit/mmwlan/vo/SignView;->setResult(I)V

    goto/16 :goto_0

    :cond_e
    invoke-static {v1, p0}, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->getSIDSignValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_f

    invoke-virtual {v0, v6}, Lcom/ccit/mmwlan/vo/SignView;->setResult(I)V

    goto/16 :goto_0

    :cond_f
    invoke-virtual {v0, v7}, Lcom/ccit/mmwlan/vo/SignView;->setResult(I)V

    invoke-virtual {v0, v1}, Lcom/ccit/mmwlan/vo/SignView;->setUserSignature(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static applyCertPrivate(Lcom/ccit/mmwlan/phone/c;Lcom/ccit/mmwlan/phone/d;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/HttpHost;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    const-string v0, "utf-8"

    invoke-virtual {p3, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p2, v0, p4, p5}, Lcom/ccit/mmwlan/phone/c;->a(Ljava/lang/String;[BLorg/apache/http/HttpHost;Ljava/lang/String;)[B

    move-result-object v0

    const-string v1, "MMClientSDK_ForPhone"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "applyCertPrivate() -> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p1, v1}, Lcom/ccit/mmwlan/phone/d;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ccit/mmwlan/phone/b;

    invoke-virtual {v0}, Lcom/ccit/mmwlan/phone/b;->a()Ljava/lang/String;

    move-result-object v0

    const-string v2, "0"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ccit/mmwlan/phone/b;

    invoke-virtual {v0}, Lcom/ccit/mmwlan/phone/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ccit/mmwlan/phone/b;

    invoke-virtual {v0}, Lcom/ccit/mmwlan/phone/b;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->updateRandNum(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->clientSDK:Lcom/ccit/mmwlan/ClientSDK;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/ccit/mmwlan/ClientSDK;->saveSecCertNativeForBilling(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const-string v1, "MMClientSDK_ForPhone"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "applyCertPrivate() iResult -> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static applySecCert(Ljava/lang/String;Lorg/apache/http/HttpHost;)I
    .locals 5

    const/4 v1, 0x6

    if-nez p0, :cond_0

    :goto_0
    return v1

    :cond_0
    invoke-static {}, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->genSID()Ljava/lang/String;

    move-result-object v0

    const-string v2, "2"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-static {v0, p0, p1}, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->applySecCertMethod(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/HttpHost;)I

    move-result v0

    const-string v2, "MMClientSDK_ForPhone"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "applySecCert() iResult -> "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    goto :goto_1
.end method

.method private static applySecCertMethod(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/HttpHost;)I
    .locals 11

    const/4 v1, 0x4

    const/4 v0, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "http://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->strApplyCertForPhone:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/mmwlan/applySecCertForAPPThird"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MMClientSDK_ForPhone"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "applySecCertMethod() strUrl -> "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->clientSDK:Lcom/ccit/mmwlan/ClientSDK;

    invoke-virtual {v3}, Lcom/ccit/mmwlan/ClientSDK;->checkSecCertNativeForBilling()I

    move-result v3

    const-string v4, "MMClientSDK_ForPhone"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "applySecCertMethod() iCertState -> "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    invoke-static {}, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->getGenPubkey()Ljava/lang/String;

    move-result-object v0

    const-string v3, "4"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->genPKIKey()I

    move-result v3

    if-eq v0, v3, :cond_0

    invoke-static {}, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->getGenPubkey()Ljava/lang/String;

    move-result-object v0

    const-string v3, "4"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move-object v1, v0

    invoke-static {}, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->imsiOfMD5Value()Ljava/lang/String;

    move-result-object v3

    const-string v0, "5"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x5

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/ccit/mmwlan/phone/c;

    invoke-direct {v0}, Lcom/ccit/mmwlan/phone/c;-><init>()V

    invoke-virtual {v0, p0, v1, v3, p1}, Lcom/ccit/mmwlan/phone/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "MMClientSDK_ForPhone"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "applySecCertMethod() requestXML -> "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/ccit/mmwlan/phone/d;

    invoke-direct {v1}, Lcom/ccit/mmwlan/phone/d;-><init>()V

    const-string v4, "utf-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    const-string v7, "3"

    invoke-static {v2, v4, p2, v7}, Lcom/ccit/mmwlan/phone/c;->a(Ljava/lang/String;[BLorg/apache/http/HttpHost;Ljava/lang/String;)[B

    move-result-object v4

    const-string v7, "MMClientSDK_ForPhone"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "applySecCertMethod() byResponse -> "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v4}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v4}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v7}, Lcom/ccit/mmwlan/phone/d;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ccit/mmwlan/phone/b;

    invoke-virtual {v4}, Lcom/ccit/mmwlan/phone/b;->a()Ljava/lang/String;

    move-result-object v4

    const-string v8, "MMClientSDK_ForPhone"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "applySecCertMethod() strApplyCertResult -> "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "0"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ccit/mmwlan/phone/b;

    invoke-virtual {v0}, Lcom/ccit/mmwlan/phone/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ccit/mmwlan/phone/b;

    invoke-virtual {v0}, Lcom/ccit/mmwlan/phone/b;->c()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MMClientSDK_ForPhone"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "applySecCertMethod() strDynPdworld -> "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ccit/mmwlan/phone/b;

    invoke-virtual {v0}, Lcom/ccit/mmwlan/phone/b;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {v0}, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->updateRandNum(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_4
    sget-object v0, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->clientSDK:Lcom/ccit/mmwlan/ClientSDK;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ccit/mmwlan/ClientSDK;->saveSecCertNativeForBilling(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const-string v1, "MMClientSDK_ForPhone"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "applySecCertMethod() iResult -> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    const-string v7, "7"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    move v7, v5

    :goto_1
    const/16 v4, 0xa

    if-lt v7, v4, :cond_6

    move v0, v6

    goto/16 :goto_0

    :cond_6
    const-string v5, "2"

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->applyCertPrivate(Lcom/ccit/mmwlan/phone/c;Lcom/ccit/mmwlan/phone/d;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/HttpHost;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "7"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    :cond_7
    add-int/lit8 v4, v7, 0x1

    move v7, v4

    goto :goto_1

    :cond_8
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0
.end method

.method public static checkSecCert()I
    .locals 4

    :try_start_0
    sget-object v0, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->clientSDK:Lcom/ccit/mmwlan/ClientSDK;

    invoke-virtual {v0}, Lcom/ccit/mmwlan/ClientSDK;->checkSecCertNativeForBilling()I

    move-result v0

    const-string v1, "MMClientSDK_ForPhone"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "checkSecCert()  iResult -> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    move-object v1, v0

    const/4 v0, 0x1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static genPKIKey()I
    .locals 4

    :try_start_0
    sget-object v0, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->clientSDK:Lcom/ccit/mmwlan/ClientSDK;

    invoke-virtual {v0}, Lcom/ccit/mmwlan/ClientSDK;->genPKIKeyNativeForBilling()I

    move-result v0

    const-string v1, "MMClientSDK_ForPhone"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "genPKIKey() iResult -> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    move-object v1, v0

    const/4 v0, 0x3

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static genSID()Ljava/lang/String;
    .locals 4

    :try_start_0
    sget-object v0, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->clientSDK:Lcom/ccit/mmwlan/ClientSDK;

    invoke-virtual {v0}, Lcom/ccit/mmwlan/ClientSDK;->genSIDNative()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "2"

    :cond_0
    const-string v1, "MMClientSDK_ForPhone"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "genSID() strResult -> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v1, v0

    const-string v0, "2"

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getDeviceID()Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    sget-object v0, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->context:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->context:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "MMClientSDK_ForPhone"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getDeviceID_PAD() MacAddress -> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "MMClientSDK_ForPhone"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getDeviceID_PAD() strIMEI -> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getGenPubkey()Ljava/lang/String;
    .locals 4

    :try_start_0
    sget-object v0, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->clientSDK:Lcom/ccit/mmwlan/ClientSDK;

    invoke-virtual {v0}, Lcom/ccit/mmwlan/ClientSDK;->getPubKeyForBilling()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "4"

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "MMClientSDK_ForPhone"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getGenPubkey()  strResult -> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    const-string v0, "4"

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getIMSI()Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    sget-object v0, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->context:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "1"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "MMClientSDK_ForPhone"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getIMSI() errorValue -> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "MMClientSDK_ForPhone"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getIMSI() IMSI -> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getSIDSignValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    sget-object v0, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->clientSDK:Lcom/ccit/mmwlan/ClientSDK;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, p1, v2}, Lcom/ccit/mmwlan/ClientSDK;->SIDSignNativeForBilling(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :try_start_1
    const-string v1, "MMClientSDK_ForPhone"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getSIDSignValue() -> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    :goto_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "1.1.6"

    return-object v0
.end method

.method private static imsiOfMD5Value()Ljava/lang/String;
    .locals 6

    const/4 v5, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->context:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v0, "5"

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    sget-object v2, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->clientSDK:Lcom/ccit/mmwlan/ClientSDK;

    const-string v3, "md5"

    invoke-virtual {v2, v3, v0}, Lcom/ccit/mmwlan/ClientSDK;->getDigestNative(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v0, "5"

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v2, "MMClientSDK_ForPhone"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "imsiOfMD5Value() strMD5Result -> "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v2, "5"

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private static initialImsiAndImeiValue()I
    .locals 6

    new-instance v1, Lcom/ccit/mmwlan/vo/DeviceInfo;

    invoke-direct {v1}, Lcom/ccit/mmwlan/vo/DeviceInfo;-><init>()V

    sget-object v0, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->context:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v1, v2}, Lcom/ccit/mmwlan/vo/DeviceInfo;->setStrImsi(Ljava/lang/String;)V

    const-string v3, "MMClientSDK_ForPhone"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "strIMSI -> "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->context:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MMClientSDK_ForPhone"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "initialImsiAndImeiValue() strIMEI MacAddress -> "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {v1, v0}, Lcom/ccit/mmwlan/vo/DeviceInfo;->setStrImei(Ljava/lang/String;)V

    const-string v2, "MMClientSDK_ForPhone"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "strIMEI -> "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ccit/mmwlan/vo/DeviceInfo;->setFilePath(Ljava/lang/String;)V

    const-string v2, "MMClientSDK_ForPhone"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "FilePath -> "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    sget-object v0, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->clientSDK:Lcom/ccit/mmwlan/ClientSDK;

    invoke-virtual {v0, v1}, Lcom/ccit/mmwlan/ClientSDK;->transmitInfoNative(Lcom/ccit/mmwlan/vo/DeviceInfo;)I

    move-result v0

    const-string v1, "MMClientSDK_ForPhone"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "initialImsiAndImeiValue() iResult -> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public static initialMMSDK(Landroid/content/Context;Lcom/ccit/mmwlan/phone/IPDress_ForPhone;)I
    .locals 4

    const/4 v0, 0x5

    sput-object p0, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->context:Landroid/content/Context;

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/ccit/mmwlan/phone/IPDress_ForPhone;->getStrApplySecCertIP()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/ccit/mmwlan/phone/IPDress_ForPhone;->getStrSMSNumber()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/ccit/mmwlan/phone/IPDress_ForPhone;->getStrApplySecCertIP()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->strApplyCertForPhone:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/ccit/mmwlan/phone/IPDress_ForPhone;->getStrSMSNumber()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->SMSNumber:Ljava/lang/String;

    const-string v0, "MMClientSDK_ForPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initialMMSDK() strIPDress -> "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->strApplyCertForPhone:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  :  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->SMSNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->initialImsiAndImeiValue()I

    move-result v0

    const-string v1, "MMClientSDK_ForPhone"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "initialMMSDK() iResult -> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static md5Algorithm(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_1

    const-string v0, "1"

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    sget-object v0, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->clientSDK:Lcom/ccit/mmwlan/ClientSDK;

    const-string v1, "md5"

    invoke-virtual {v0, v1, p0}, Lcom/ccit/mmwlan/ClientSDK;->getDigestNative(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "2"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    const-string v0, "2"

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static sendMessageAndApplyCert(Ljava/lang/String;Lorg/apache/http/HttpHost;)I
    .locals 8

    const/4 v2, 0x0

    invoke-static {}, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->genSID()Ljava/lang/String;

    move-result-object v6

    const-string v0, "2"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->imsiOfMD5Value()Ljava/lang/String;

    move-result-object v0

    const-string v1, "5"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v1, "MM#WLAN#"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "MMClientSDK_ForPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "sendMessageAndApplyCert() sendMessage -> "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v4, 0x46

    if-le v1, v4, :cond_1

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_1
    :try_start_0
    invoke-static {v6, p0, p1}, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->applySecCertMethod(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/HttpHost;)I

    move-result v0

    const-string v1, "MMClientSDK_ForPhone"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sendMessageAndApplyCert() -> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return v0

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sget-object v1, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->SMSNumber:Ljava/lang/String;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->SMSNumber:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v1, v0

    const/4 v0, 0x6

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public static updateRandNum(Ljava/lang/String;)I
    .locals 5

    const/4 v1, 0x1

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    :try_start_0
    sget-object v0, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->clientSDK:Lcom/ccit/mmwlan/ClientSDK;

    invoke-virtual {v0, p0}, Lcom/ccit/mmwlan/ClientSDK;->UpdateRandNumForBilling(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const-string v2, "MMClientSDK_ForPhone"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "updateRandNum()  iResult -> "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    goto :goto_1
.end method
