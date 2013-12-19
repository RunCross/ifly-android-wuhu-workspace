.class public final Lcom/ccit/mmwlan/MMClientSDK_ForLogin;
.super Ljava/lang/Object;


# static fields
.field private static final INT_RESULT_0:I = 0x0

.field private static final INT_RESULT_1:I = 0x1

.field private static clientSDK:Lcom/ccit/mmwlan/ClientSDK;

.field private static context:Landroid/content/Context;

.field private static getDevInfo:Lcom/ccit/mmwlan/b/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/ccit/mmwlan/MMClientSDK_ForLogin;->clientSDK:Lcom/ccit/mmwlan/ClientSDK;

    sput-object v0, Lcom/ccit/mmwlan/MMClientSDK_ForLogin;->context:Landroid/content/Context;

    new-instance v0, Lcom/ccit/mmwlan/b/a;

    invoke-direct {v0}, Lcom/ccit/mmwlan/b/a;-><init>()V

    sput-object v0, Lcom/ccit/mmwlan/MMClientSDK_ForLogin;->getDevInfo:Lcom/ccit/mmwlan/b/a;

    new-instance v0, Lcom/ccit/mmwlan/ClientSDK;

    invoke-direct {v0}, Lcom/ccit/mmwlan/ClientSDK;-><init>()V

    sput-object v0, Lcom/ccit/mmwlan/MMClientSDK_ForLogin;->clientSDK:Lcom/ccit/mmwlan/ClientSDK;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static SIDSign(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v6, 0x0

    if-eqz p0, :cond_0

    if-eq p0, v0, :cond_0

    if-ne p0, v1, :cond_2

    :cond_0
    if-eq p1, v0, :cond_1

    if-ne p1, v1, :cond_2

    :cond_1
    if-eqz p3, :cond_2

    const-string v0, ""

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p4, :cond_2

    const-string v0, ""

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const-string v0, "MmClientSdk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SIDSign() result -> "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v6

    :goto_0
    return-object v0

    :cond_3
    if-ne p1, v1, :cond_5

    if-eqz p2, :cond_4

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    const-string v0, "MmClientSdk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SIDSign() result -> "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v6

    goto :goto_0

    :cond_5
    :try_start_0
    sget-object v0, Lcom/ccit/mmwlan/MMClientSDK_ForLogin;->context:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/ccit/mmwlan/b/a;->a(Landroid/content/Context;I)Lcom/ccit/mmwlan/vo/DeviceInfo;
    :try_end_0
    .catch Lcom/ccit/mmwlan/exception/ClientSDKException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    if-ne p0, v1, :cond_7

    invoke-virtual {v5}, Lcom/ccit/mmwlan/vo/DeviceInfo;->getStrMac()Ljava/lang/String;

    :goto_1
    :try_start_1
    sget-object v0, Lcom/ccit/mmwlan/MMClientSDK_ForLogin;->clientSDK:Lcom/ccit/mmwlan/ClientSDK;

    move-object v1, p3

    move-object v2, p4

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/ccit/mmwlan/ClientSDK;->SignNativeForLogin(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/ccit/mmwlan/vo/DeviceInfo;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_6
    const-string v0, "MmClientSdk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SIDSign() result -> "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; \u7b7e\u540d\u5931\u8d25!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lcom/ccit/mmwlan/exception/ClientSDKException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v6

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/ccit/mmwlan/exception/ClientSDKException;->printStackTrace()V

    const-string v1, "MmClientSdk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SIDSign() ClientSDKException -> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ccit/mmwlan/exception/ClientSDKException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v6

    goto :goto_0

    :cond_7
    invoke-virtual {v5}, Lcom/ccit/mmwlan/vo/DeviceInfo;->getStrImsi()Ljava/lang/String;

    goto :goto_1

    :cond_8
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "#V1.0#"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Lcom/ccit/mmwlan/exception/ClientSDKException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    const-string v1, "MmClientSdk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SIDSign() result -> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lcom/ccit/mmwlan/exception/ClientSDKException;->printStackTrace()V

    const-string v1, "MmClientSdk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SIDSign() ClientSDKException -> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ccit/mmwlan/exception/ClientSDKException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v6

    goto/16 :goto_0
.end method

.method public static applySecCert(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpHost;I)I
    .locals 11

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_0

    const/4 v1, 0x2

    if-ne p0, v1, :cond_2

    :cond_0
    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    :cond_1
    if-eqz p6, :cond_2

    const-string v1, ""

    move-object/from16 v0, p6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz p5, :cond_2

    const-string v1, ""

    move-object/from16 v0, p5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual/range {p7 .. p7}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual/range {p7 .. p7}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const-string v1, "MmClientSdk"

    const-string v2, "applySecCert() result -> 5"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x5

    :goto_0
    return v1

    :cond_3
    const/4 v1, 0x2

    if-ne p1, v1, :cond_5

    if-eqz p2, :cond_4

    const-string v1, ""

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    if-eqz p3, :cond_4

    const-string v1, ""

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    const-string v1, "MmClientSdk"

    const-string v2, "applySecCert() result -> 5"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x5

    goto :goto_0

    :cond_5
    :try_start_0
    sget-object v1, Lcom/ccit/mmwlan/MMClientSDK_ForLogin;->context:Landroid/content/Context;

    invoke-static {v1, p0}, Lcom/ccit/mmwlan/b/a;->a(Landroid/content/Context;I)Lcom/ccit/mmwlan/vo/DeviceInfo;
    :try_end_0
    .catch Lcom/ccit/mmwlan/exception/ClientSDKException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    const/4 v1, 0x2

    if-ne p0, v1, :cond_7

    invoke-virtual {v10}, Lcom/ccit/mmwlan/vo/DeviceInfo;->getStrMac()Ljava/lang/String;

    move-result-object v1

    :goto_1
    :try_start_1
    sget-object v2, Lcom/ccit/mmwlan/MMClientSDK_ForLogin;->clientSDK:Lcom/ccit/mmwlan/ClientSDK;

    const-string v3, "md5"

    invoke-virtual {v2, v3, v1}, Lcom/ccit/mmwlan/ClientSDK;->getDigestNative(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lcom/ccit/mmwlan/exception/ClientSDKException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    :try_start_2
    sget-object v1, Lcom/ccit/mmwlan/MMClientSDK_ForLogin;->clientSDK:Lcom/ccit/mmwlan/ClientSDK;

    invoke-virtual {v1, p1, p2, v10}, Lcom/ccit/mmwlan/ClientSDK;->getPubKeyForLogin(ILjava/lang/String;Lcom/ccit/mmwlan/vo/DeviceInfo;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    const-string v1, ""

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_6
    sget-object v1, Lcom/ccit/mmwlan/MMClientSDK_ForLogin;->clientSDK:Lcom/ccit/mmwlan/ClientSDK;

    invoke-virtual {v1, p1, p2, v10}, Lcom/ccit/mmwlan/ClientSDK;->genPKIKeyNativeForLogin(ILjava/lang/String;Lcom/ccit/mmwlan/vo/DeviceInfo;)I

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "MmClientSdk"

    const-string v2, "applySecCert() result -> 1"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lcom/ccit/mmwlan/exception/ClientSDKException; {:try_start_2 .. :try_end_2} :catch_2

    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lcom/ccit/mmwlan/exception/ClientSDKException;->printStackTrace()V

    const-string v2, "MmClientSdk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "applySecCert() ClientSDKException -> "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/ccit/mmwlan/exception/ClientSDKException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    goto :goto_0

    :cond_7
    invoke-virtual {v10}, Lcom/ccit/mmwlan/vo/DeviceInfo;->getStrImsi()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Lcom/ccit/mmwlan/exception/ClientSDKException;->printStackTrace()V

    const-string v2, "MmClientSdk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "applySecCert() ClientSDKException -> "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/ccit/mmwlan/exception/ClientSDKException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_8
    :try_start_3
    sget-object v1, Lcom/ccit/mmwlan/MMClientSDK_ForLogin;->clientSDK:Lcom/ccit/mmwlan/ClientSDK;

    invoke-virtual {v1, p1, p2, v10}, Lcom/ccit/mmwlan/ClientSDK;->getPubKeyForLogin(ILjava/lang/String;Lcom/ccit/mmwlan/vo/DeviceInfo;)Ljava/lang/String;
    :try_end_3
    .catch Lcom/ccit/mmwlan/exception/ClientSDKException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v3

    :cond_9
    move-object/from16 v1, p5

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-static/range {v1 .. v9}, Lcom/ccit/mmwlan/MMClientSDK_ForLogin;->applySecCertFromMoserver(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpHost;)[Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x0

    aget-object v1, v3, v1

    if-eqz v1, :cond_a

    const/4 v1, 0x0

    aget-object v1, v3, v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    :cond_a
    const-string v1, "MmClientSdk"

    const-string v2, "applySecCert() result -> 1"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    goto/16 :goto_0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Lcom/ccit/mmwlan/exception/ClientSDKException;->printStackTrace()V

    const-string v2, "MmClientSdk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "genPKIKeyNative() ClientSDKException -> "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/ccit/mmwlan/exception/ClientSDKException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_b
    const/4 v1, 0x0

    aget-object v1, v3, v1

    const-string v2, "105"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x0

    aget-object v1, v3, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "MmClientSdk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "applySecCert() result -> "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_c
    const/4 v1, 0x0

    aget-object v1, v3, v1

    const-string v2, "107"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v1, 0x0

    aget-object v1, v3, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "MmClientSdk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "applySecCert() result -> "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_d
    const/4 v1, 0x0

    aget-object v1, v3, v1

    const-string v2, "108"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x0

    aget-object v1, v3, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "MmClientSdk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "applySecCert() result -> "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_e
    const/4 v1, 0x0

    aget-object v1, v3, v1

    const-string v2, "122"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v1, 0x0

    aget-object v1, v3, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "MmClientSdk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "applySecCert() result -> "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_f
    const/4 v1, 0x0

    aget-object v1, v3, v1

    const-string v2, "500"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v1, 0x0

    aget-object v1, v3, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "MmClientSdk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "applySecCert() result -> "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_10
    :try_start_4
    sget-object v1, Lcom/ccit/mmwlan/MMClientSDK_ForLogin;->clientSDK:Lcom/ccit/mmwlan/ClientSDK;

    const/4 v2, 0x0

    aget-object v2, v3, v2

    const/4 v4, 0x1

    aget-object v3, v3, v4

    move v4, p1

    move-object v5, p2

    move-object v6, v10

    move-object/from16 v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/ccit/mmwlan/ClientSDK;->saveSecCertNativeForLogin(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/ccit/mmwlan/vo/DeviceInfo;Ljava/lang/String;)I
    :try_end_4
    .catch Lcom/ccit/mmwlan/exception/ClientSDKException; {:try_start_4 .. :try_end_4} :catch_3

    move-result v1

    if-nez v1, :cond_11

    const/4 v1, 0x0

    :goto_2
    const-string v2, "MmClientSdk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "applySecCert() result -> "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Lcom/ccit/mmwlan/exception/ClientSDKException;->printStackTrace()V

    const-string v2, "MmClientSdk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "saveSecCertNative() ClientSDKException -> "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/ccit/mmwlan/exception/ClientSDKException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_11
    const/4 v1, 0x1

    goto :goto_2
.end method

.method private static applySecCertFromMoserver(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpHost;)[Ljava/lang/String;
    .locals 14

    const/4 v1, 0x2

    new-array v10, v1, [Ljava/lang/String;

    new-instance v1, Lcom/ccit/mmwlan/b/b;

    invoke-direct {v1}, Lcom/ccit/mmwlan/b/b;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "http://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p7 .. p7}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p7 .. p7}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "applySecCertUrl"

    invoke-virtual {v1, v3}, Lcom/ccit/mmwlan/b/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v1, "MmClientSdk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "applySecCertFromMoserver() applyCertUrl -> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v12, Lcom/ccit/mmwlan/a/g;

    invoke-direct {v12}, Lcom/ccit/mmwlan/a/g;-><init>()V

    new-instance v1, Lcom/ccit/mmwlan/a/h;

    invoke-direct {v1}, Lcom/ccit/mmwlan/a/h;-><init>()V

    new-instance v13, Lcom/ccit/mmwlan/a/f;

    invoke-direct {v13}, Lcom/ccit/mmwlan/a/f;-><init>()V

    new-instance v1, Lcom/ccit/mmwlan/a/e;

    invoke-direct {v1}, Lcom/ccit/mmwlan/a/e;-><init>()V

    const/4 v2, 0x1

    move/from16 v0, p3

    if-ne v0, v2, :cond_1

    const v7, 0x10020

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v2, p0

    move-object/from16 v3, p6

    move-object/from16 v4, p2

    move-object v5, p1

    invoke-virtual/range {v1 .. v6}, Lcom/ccit/mmwlan/a/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    move v1, v7

    :goto_0
    const-string v3, "MmClientSdk"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "applySecCertFromMoserver() requestXml -> "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {v12, v2, v1}, Lcom/ccit/mmwlan/a/g;->a(Ljava/lang/String;I)[B

    move-result-object v1

    move-object/from16 v0, p8

    invoke-static {v11, v1, v0}, Lcom/ccit/mmwlan/a/e;->a(Ljava/lang/String;[BLorg/apache/http/HttpHost;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :try_start_1
    invoke-static {v1}, Lcom/ccit/mmwlan/a/h;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Lcom/ccit/mmwlan/a/f;->a(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ccit/mmwlan/vo/a;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    const-string v1, "MmClientSdk"

    const-string v2, "applySecCertFromMoserver()  Errormsg -> Apply cert failed!"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v10

    :goto_1
    return-object v1

    :cond_1
    const v9, 0x10030

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v2, p0

    move-object/from16 v3, p6

    move-object/from16 v4, p2

    move-object v5, p1

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    invoke-virtual/range {v1 .. v8}, Lcom/ccit/mmwlan/a/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    move v1, v9

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "MmClientSdk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "applySecCertFromMoserver() Exception -> \u4e0emo.server\u901a\u4fe1\u5f02\u5e38\n"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v10

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v2, "MmClientSdk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "applySecCertFromMoserver() Exception -> "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "returnCode"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v10, v2

    move-object v1, v10

    goto :goto_1

    :cond_2
    move-object v1, v10

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ccit/mmwlan/vo/a;

    invoke-virtual {v1}, Lcom/ccit/mmwlan/vo/a;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v3, "1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v3, "MmClientSdk"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v1, "applySecCertFromMoserver()  Errormsg -> "

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ccit/mmwlan/vo/a;

    invoke-virtual {v1}, Lcom/ccit/mmwlan/vo/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v10

    goto/16 :goto_1

    :cond_4
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ccit/mmwlan/vo/a;

    invoke-virtual {v1}, Lcom/ccit/mmwlan/vo/a;->c()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v10, v3

    const-string v3, "MmClientSdk"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "applySecCertFromMoserver() cert -> "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ccit/mmwlan/vo/a;

    invoke-virtual {v1}, Lcom/ccit/mmwlan/vo/a;->e()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v10, v2

    const-string v2, "MmClientSdk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "applySecCertFromMoserver() encData -> "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v10

    goto/16 :goto_1
.end method

.method public static checkSecCert(IILjava/lang/String;)I
    .locals 5

    const/4 v1, 0x5

    const/4 v0, 0x1

    const/4 v2, 0x2

    if-eqz p0, :cond_0

    if-eq p0, v0, :cond_0

    if-ne p0, v2, :cond_1

    :cond_0
    if-eq p1, v0, :cond_2

    if-eq p1, v2, :cond_2

    :cond_1
    const-string v0, "MmClientSdk"

    const-string v2, "checkSecCert() result -> 5"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    :goto_0
    return v0

    :cond_2
    if-ne p1, v2, :cond_4

    if-eqz p2, :cond_3

    const-string v3, ""

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    const-string v0, "MmClientSdk"

    const-string v2, "checkSecCert() result -> 5"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_0

    :cond_4
    :try_start_0
    sget-object v1, Lcom/ccit/mmwlan/MMClientSDK_ForLogin;->context:Landroid/content/Context;

    invoke-static {v1, p0}, Lcom/ccit/mmwlan/b/a;->a(Landroid/content/Context;I)Lcom/ccit/mmwlan/vo/DeviceInfo;
    :try_end_0
    .catch Lcom/ccit/mmwlan/exception/ClientSDKException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :try_start_1
    sget-object v2, Lcom/ccit/mmwlan/MMClientSDK_ForLogin;->clientSDK:Lcom/ccit/mmwlan/ClientSDK;

    invoke-virtual {v2, p1, p2, v1}, Lcom/ccit/mmwlan/ClientSDK;->checkSecCertNativeForLogin(ILjava/lang/String;Lcom/ccit/mmwlan/vo/DeviceInfo;)I
    :try_end_1
    .catch Lcom/ccit/mmwlan/exception/ClientSDKException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    if-nez v1, :cond_5

    const/4 v0, 0x0

    :cond_5
    const-string v1, "MmClientSdk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "checkSecCert() result -> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/ccit/mmwlan/exception/ClientSDKException;->printStackTrace()V

    const-string v1, "MmClientSdk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "checkSecCert() ClientSDKException -> "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ccit/mmwlan/exception/ClientSDKException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lcom/ccit/mmwlan/exception/ClientSDKException;->printStackTrace()V

    const-string v1, "MmClientSdk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "checkSecCertNative() ClientSDKException -> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ccit/mmwlan/exception/ClientSDKException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x6

    goto :goto_0
.end method

.method public static encWithCert(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, "MmClientSdk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "encWithCert() result -> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Lcom/ccit/mmwlan/b/b;

    invoke-direct {v1}, Lcom/ccit/mmwlan/b/b;-><init>()V

    const-string v2, "uicCert"

    invoke-virtual {v1, v2}, Lcom/ccit/mmwlan/b/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    sget-object v2, Lcom/ccit/mmwlan/MMClientSDK_ForLogin;->clientSDK:Lcom/ccit/mmwlan/ClientSDK;

    invoke-virtual {v2, p0, v1}, Lcom/ccit/mmwlan/ClientSDK;->encWithCertNativeForLogin(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/ccit/mmwlan/exception/ClientSDKException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    const-string v1, "MmClientSdk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "encWithCert() result -> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lcom/ccit/mmwlan/exception/ClientSDKException;->printStackTrace()V

    const-string v2, "MmClientSdk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "encWithCert() ClientSDKException -> "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/ccit/mmwlan/exception/ClientSDKException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static encWithPubKey(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    if-eq p0, v2, :cond_0

    if-ne p0, v1, :cond_1

    :cond_0
    if-eq p1, v2, :cond_2

    if-eq p1, v1, :cond_2

    :cond_1
    const-string v1, "MmClientSdk"

    const-string v2, "encWithPubKey() error -> parameters error!"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0

    :cond_2
    if-ne p1, v1, :cond_4

    if-eqz p2, :cond_3

    const-string v1, ""

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    const-string v1, "MmClientSdk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "encWithPubKey() error -> parameters error!"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    if-eqz p3, :cond_5

    const-string v1, ""

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    const-string v1, "MmClientSdk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "encWithPubKey error --> the fourth parameter error!"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    :try_start_0
    sget-object v1, Lcom/ccit/mmwlan/MMClientSDK_ForLogin;->context:Landroid/content/Context;

    invoke-static {v1, p0}, Lcom/ccit/mmwlan/b/a;->a(Landroid/content/Context;I)Lcom/ccit/mmwlan/vo/DeviceInfo;
    :try_end_0
    .catch Lcom/ccit/mmwlan/exception/ClientSDKException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :try_start_1
    sget-object v2, Lcom/ccit/mmwlan/MMClientSDK_ForLogin;->clientSDK:Lcom/ccit/mmwlan/ClientSDK;

    invoke-virtual {v2, p1, p2, v1, p3}, Lcom/ccit/mmwlan/ClientSDK;->AsymmetricEncryptionForMMLogin(ILjava/lang/String;Lcom/ccit/mmwlan/vo/DeviceInfo;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lcom/ccit/mmwlan/exception/ClientSDKException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lcom/ccit/mmwlan/exception/ClientSDKException;->printStackTrace()V

    const-string v2, "MmClientSdk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "checkSecCert() ClientSDKException -> "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/ccit/mmwlan/exception/ClientSDKException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v1, "MmClientSdk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "encWithPubKey call AsymmetricEncryptionForMMLogin error --> !"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static genPKIKey(IILjava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    if-eq p0, v2, :cond_0

    if-ne p0, v1, :cond_1

    :cond_0
    if-eq p1, v2, :cond_2

    if-eq p1, v1, :cond_2

    :cond_1
    const-string v1, "MmClientSdk"

    const-string v2, "genPKIKey() error -> parameters error!"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0

    :cond_2
    if-ne p1, v1, :cond_4

    if-eqz p2, :cond_3

    const-string v1, ""

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    const-string v1, "MmClientSdk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "genPKIKey() error -> parameters error!"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    :try_start_0
    sget-object v1, Lcom/ccit/mmwlan/MMClientSDK_ForLogin;->context:Landroid/content/Context;

    invoke-static {v1, p0}, Lcom/ccit/mmwlan/b/a;->a(Landroid/content/Context;I)Lcom/ccit/mmwlan/vo/DeviceInfo;
    :try_end_0
    .catch Lcom/ccit/mmwlan/exception/ClientSDKException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :try_start_1
    sget-object v2, Lcom/ccit/mmwlan/MMClientSDK_ForLogin;->clientSDK:Lcom/ccit/mmwlan/ClientSDK;

    invoke-virtual {v2, p1, p2, v1}, Lcom/ccit/mmwlan/ClientSDK;->genPKIKeyNativeForLogin(ILjava/lang/String;Lcom/ccit/mmwlan/vo/DeviceInfo;)I
    :try_end_1
    .catch Lcom/ccit/mmwlan/exception/ClientSDKException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    if-eqz v2, :cond_5

    const-string v1, "MmClientSdk"

    const-string v2, "genPKIKey() error -> generation pki key failed!"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lcom/ccit/mmwlan/exception/ClientSDKException;->printStackTrace()V

    const-string v2, "MmClientSdk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "checkSecCert() ClientSDKException -> "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/ccit/mmwlan/exception/ClientSDKException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Lcom/ccit/mmwlan/exception/ClientSDKException;->printStackTrace()V

    const-string v2, "MmClientSdk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "genPKIKeyNative() ClientSDKException -> "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/ccit/mmwlan/exception/ClientSDKException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    :try_start_2
    sget-object v2, Lcom/ccit/mmwlan/MMClientSDK_ForLogin;->clientSDK:Lcom/ccit/mmwlan/ClientSDK;

    invoke-virtual {v2, p1, p2, v1}, Lcom/ccit/mmwlan/ClientSDK;->getPubKeyForLogin(ILjava/lang/String;Lcom/ccit/mmwlan/vo/DeviceInfo;)Ljava/lang/String;
    :try_end_2
    .catch Lcom/ccit/mmwlan/exception/ClientSDKException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    const-string v1, "MmClientSdk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "genPKIKey() pubKey -> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Lcom/ccit/mmwlan/exception/ClientSDKException;->printStackTrace()V

    const-string v2, "MmClientSdk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "genPKIKeyNative() ClientSDKException -> "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/ccit/mmwlan/exception/ClientSDKException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public static genSID()Ljava/lang/String;
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    sget-object v0, Lcom/ccit/mmwlan/MMClientSDK_ForLogin;->clientSDK:Lcom/ccit/mmwlan/ClientSDK;

    invoke-virtual {v0}, Lcom/ccit/mmwlan/ClientSDK;->genSIDNative()Ljava/lang/String;
    :try_end_0
    .catch Lcom/ccit/mmwlan/exception/ClientSDKException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :try_start_1
    const-string v1, "MmClientSdk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "genSID() strResult -> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lcom/ccit/mmwlan/exception/ClientSDKException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    :goto_1
    const-string v2, "MmClientSdk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "genSID() \u751f\u6210SID\u5931\u8d25 -> "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public static getDigest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, "MmClientSdk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getMd5Digest() result -> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    sget-object v1, Lcom/ccit/mmwlan/MMClientSDK_ForLogin;->clientSDK:Lcom/ccit/mmwlan/ClientSDK;

    invoke-virtual {v1, p0, p1}, Lcom/ccit/mmwlan/ClientSDK;->getDigestNative(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/ccit/mmwlan/exception/ClientSDKException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    const-string v1, "MmClientSdk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getMd5Digest() result -> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lcom/ccit/mmwlan/exception/ClientSDKException;->printStackTrace()V

    const-string v2, "MmClientSdk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getDigestNative() ClientSDKException -> "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/ccit/mmwlan/exception/ClientSDKException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "1.1.6"

    return-object v0
.end method

.method public static initMmClientSdk(Landroid/content/Context;I)I
    .locals 5

    const/4 v0, 0x1

    sput-object p0, Lcom/ccit/mmwlan/MMClientSDK_ForLogin;->context:Landroid/content/Context;

    :try_start_0
    sget-object v1, Lcom/ccit/mmwlan/MMClientSDK_ForLogin;->context:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/ccit/mmwlan/b/a;->a(Landroid/content/Context;I)Lcom/ccit/mmwlan/vo/DeviceInfo;
    :try_end_0
    .catch Lcom/ccit/mmwlan/exception/ClientSDKException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :try_start_1
    sget-object v2, Lcom/ccit/mmwlan/MMClientSDK_ForLogin;->clientSDK:Lcom/ccit/mmwlan/ClientSDK;

    invoke-virtual {v2, v1}, Lcom/ccit/mmwlan/ClientSDK;->transmitInfoNative(Lcom/ccit/mmwlan/vo/DeviceInfo;)I
    :try_end_1
    .catch Lcom/ccit/mmwlan/exception/ClientSDKException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/ccit/mmwlan/exception/ClientSDKException;->printStackTrace()V

    const-string v1, "MmClientSdk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "initMmClientSdk() ClientSDKException -> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ccit/mmwlan/exception/ClientSDKException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Lcom/ccit/mmwlan/exception/ClientSDKException;->printStackTrace()V

    const-string v2, "MmClientSdk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "initMmClientSdk() ClientSDKException -> "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/ccit/mmwlan/exception/ClientSDKException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static saveCert(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 8

    const/4 v1, 0x2

    const/4 v7, 0x1

    if-eqz p0, :cond_0

    if-eq p0, v7, :cond_0

    if-ne p0, v1, :cond_2

    :cond_0
    if-eq p1, v7, :cond_1

    if-ne p1, v1, :cond_2

    :cond_1
    if-eqz p4, :cond_2

    const-string v0, ""

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p3, :cond_2

    const-string v0, ""

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p5, :cond_2

    const-string v0, ""

    invoke-virtual {p5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const-string v0, "MmClientSdk"

    const-string v1, "saveCert() parameter invalid -> 1"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v7

    :cond_3
    if-ne p1, v1, :cond_5

    if-eqz p2, :cond_4

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    const-string v0, "MmClientSdk"

    const-string v1, "saveCert() the third parameter invalid -> 1"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    :try_start_0
    sget-object v0, Lcom/ccit/mmwlan/MMClientSDK_ForLogin;->context:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/ccit/mmwlan/b/a;->a(Landroid/content/Context;I)Lcom/ccit/mmwlan/vo/DeviceInfo;
    :try_end_0
    .catch Lcom/ccit/mmwlan/exception/ClientSDKException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    :try_start_1
    sget-object v0, Lcom/ccit/mmwlan/MMClientSDK_ForLogin;->clientSDK:Lcom/ccit/mmwlan/ClientSDK;

    move-object v1, p4

    move-object v2, p5

    move v3, p1

    move-object v4, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/ccit/mmwlan/ClientSDK;->saveSecCertNativeForLogin(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/ccit/mmwlan/vo/DeviceInfo;Ljava/lang/String;)I
    :try_end_1
    .catch Lcom/ccit/mmwlan/exception/ClientSDKException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_1
    const-string v1, "MmClientSdk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "saveCert() result -> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/ccit/mmwlan/exception/ClientSDKException;->printStackTrace()V

    const-string v1, "MmClientSdk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "saveCert(...) call getDeviceInfo(...) ClientSDKException -> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ccit/mmwlan/exception/ClientSDKException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lcom/ccit/mmwlan/exception/ClientSDKException;->printStackTrace()V

    const-string v1, "MmClientSdk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "saveCert(...) call saveSecCertNativeForLogin() throw ClientSDKException -> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ccit/mmwlan/exception/ClientSDKException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    move v0, v7

    goto :goto_1
.end method

.method public static updateRandNum(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 7

    const/4 v1, 0x2

    const/4 v6, 0x1

    if-eqz p0, :cond_0

    if-eq p0, v6, :cond_0

    if-ne p0, v1, :cond_2

    :cond_0
    if-eq p1, v6, :cond_1

    if-ne p1, v1, :cond_2

    :cond_1
    if-eqz p3, :cond_2

    const-string v0, ""

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p4, :cond_2

    const-string v0, ""

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    const-string v0, "MmClientSdk"

    const-string v1, "updateRandNum() parameter invalid -> 1"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return v6

    :cond_4
    if-ne p1, v1, :cond_6

    if-eqz p2, :cond_5

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    const-string v0, "MmClientSdk"

    const-string v1, "updateRandNum() the third parameter error -> 1"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    :try_start_0
    sget-object v0, Lcom/ccit/mmwlan/MMClientSDK_ForLogin;->context:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/ccit/mmwlan/b/a;->a(Landroid/content/Context;I)Lcom/ccit/mmwlan/vo/DeviceInfo;
    :try_end_0
    .catch Lcom/ccit/mmwlan/exception/ClientSDKException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    :try_start_1
    sget-object v0, Lcom/ccit/mmwlan/MMClientSDK_ForLogin;->clientSDK:Lcom/ccit/mmwlan/ClientSDK;

    move-object v1, p4

    move v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/ccit/mmwlan/ClientSDK;->UpdateRandNumForLogin(Ljava/lang/String;ILjava/lang/String;Lcom/ccit/mmwlan/vo/DeviceInfo;Ljava/lang/String;)I

    move-result v0

    const-string v1, "MmClientSdk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "updateRandNum() call UpdateRandNumForLogin(...) iResult -> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v0, :cond_3

    :goto_1
    move v6, v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/ccit/mmwlan/exception/ClientSDKException;->printStackTrace()V

    const-string v1, "MmClientSdk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "updateRandNum() call getDeviceInfo(...) ClientSDKException -> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ccit/mmwlan/exception/ClientSDKException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v6

    goto :goto_1
.end method
