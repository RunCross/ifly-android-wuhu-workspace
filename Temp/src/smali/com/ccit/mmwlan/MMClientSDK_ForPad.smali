.class public final Lcom/ccit/mmwlan/MMClientSDK_ForPad;
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

.field private static final MMCLIENT_SDK:Ljava/lang/String; = "MMClientSDK_ForPad"

.field private static clientSDK:Lcom/ccit/mmwlan/ClientSDK;

.field private static context:Landroid/content/Context;

.field private static strApplyCert:Ljava/lang/String;

.field private static strDeviceOuth:Ljava/lang/String;

.field private static strGetDeviceName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/ccit/mmwlan/MMClientSDK_ForPad;->context:Landroid/content/Context;

    sput-object v0, Lcom/ccit/mmwlan/MMClientSDK_ForPad;->clientSDK:Lcom/ccit/mmwlan/ClientSDK;

    sput-object v0, Lcom/ccit/mmwlan/MMClientSDK_ForPad;->strDeviceOuth:Ljava/lang/String;

    sput-object v0, Lcom/ccit/mmwlan/MMClientSDK_ForPad;->strApplyCert:Ljava/lang/String;

    sput-object v0, Lcom/ccit/mmwlan/MMClientSDK_ForPad;->strGetDeviceName:Ljava/lang/String;

    new-instance v0, Lcom/ccit/mmwlan/ClientSDK;

    invoke-direct {v0}, Lcom/ccit/mmwlan/ClientSDK;-><init>()V

    sput-object v0, Lcom/ccit/mmwlan/MMClientSDK_ForPad;->clientSDK:Lcom/ccit/mmwlan/ClientSDK;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static DestorySecCert(Ljava/lang/String;)I
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/ccit/mmwlan/MMClientSDK_ForPad;->clientSDK:Lcom/ccit/mmwlan/ClientSDK;

    invoke-virtual {v1, p0}, Lcom/ccit/mmwlan/ClientSDK;->DestorySecCertForBilling(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :try_start_1
    const-string v2, "MMClientSDK_ForPad"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DestroySecCert() iRet -> "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return v0

    :catch_0
    move-exception v1

    :goto_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v5, v0

    move v0, v1

    move-object v1, v5

    goto :goto_1
.end method

.method public static RSAEncryptWithPubKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    :try_start_0
    sget-object v0, Lcom/ccit/mmwlan/MMClientSDK_ForPad;->clientSDK:Lcom/ccit/mmwlan/ClientSDK;

    invoke-virtual {v0, p0}, Lcom/ccit/mmwlan/ClientSDK;->AsymmetricEncryptionForBilling(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "1"

    :cond_0
    const-string v1, "MMClientSDK_ForPad"

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

.method private static applyCert(Ljava/lang/String;Ljava/lang/String;)Lcom/ccit/mmwlan/vo/SignView;
    .locals 10

    const/4 v5, 0x0

    const/4 v9, 0x7

    const/4 v8, 0x4

    const/4 v4, 0x3

    new-instance v6, Lcom/ccit/mmwlan/vo/SignView;

    invoke-direct {v6}, Lcom/ccit/mmwlan/vo/SignView;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/ccit/mmwlan/MMClientSDK_ForPad;->strApplyCert:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mmwlan/applyCert_PAD"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/ccit/mmwlan/MMClientSDK_ForPad;->imeiOfMD5Value()Ljava/lang/String;

    move-result-object v2

    const-string v0, "5"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    invoke-virtual {v6, v0}, Lcom/ccit/mmwlan/vo/SignView;->setResult(I)V

    const-string v0, "\u83b7\u53d6IMEIMD5\u503c\u5931\u8d25"

    invoke-virtual {v6, v0}, Lcom/ccit/mmwlan/vo/SignView;->setErrMsg(Ljava/lang/String;)V

    move-object v0, v6

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/ccit/mmwlan/MMClientSDK_ForPad;->genSid_PAD()Ljava/lang/String;

    move-result-object v3

    const-string v0, "2"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    invoke-virtual {v6, v0}, Lcom/ccit/mmwlan/vo/SignView;->setResult(I)V

    const-string v0, "\u51c6\u5907PKI\u5bc6\u94a5\u5bf9\u5931\u8d25"

    invoke-virtual {v6, v0}, Lcom/ccit/mmwlan/vo/SignView;->setErrMsg(Ljava/lang/String;)V

    move-object v0, v6

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/ccit/mmwlan/MMClientSDK_ForPad;->genPKIKey_PAD()I

    move-result v0

    if-ne v4, v0, :cond_2

    invoke-virtual {v6, v4}, Lcom/ccit/mmwlan/vo/SignView;->setResult(I)V

    const-string v0, "\u7533\u8bf7\u5b89\u5168\u51ed\u8bc1\u5931\u8d25"

    invoke-virtual {v6, v0}, Lcom/ccit/mmwlan/vo/SignView;->setErrMsg(Ljava/lang/String;)V

    move-object v0, v6

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/ccit/mmwlan/MMClientSDK_ForPad;->getGenPubkey()Ljava/lang/String;

    move-result-object v4

    const-string v0, "4"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v6, v8}, Lcom/ccit/mmwlan/vo/SignView;->setResult(I)V

    const-string v0, "\u4fdd\u5b58\u5b89\u5168\u51ed\u8bc1\u5931\u8d25"

    invoke-virtual {v6, v0}, Lcom/ccit/mmwlan/vo/SignView;->setErrMsg(Ljava/lang/String;)V

    move-object v0, v6

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/ccit/mmwlan/a/d;

    invoke-direct {v0}, Lcom/ccit/mmwlan/a/d;-><init>()V

    if-nez p1, :cond_4

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ccit/mmwlan/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    const-string v1, "MMClientSDK_ForPad"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "applyCert() strRequestXML -> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/ccit/mmwlan/a/f;

    invoke-direct {v1}, Lcom/ccit/mmwlan/a/f;-><init>()V

    :try_start_0
    const-string v2, "utf-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v7, v0}, Lcom/ccit/mmwlan/a/d;->a(Ljava/lang/String;[B)[B

    move-result-object v0

    const-string v2, "MMClientSDK_ForPad"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "applyCert() byResponse -> "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Lcom/ccit/mmwlan/a/f;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ccit/mmwlan/vo/a;

    invoke-virtual {v0}, Lcom/ccit/mmwlan/vo/a;->a()Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ccit/mmwlan/vo/a;

    invoke-virtual {v0}, Lcom/ccit/mmwlan/vo/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/ccit/mmwlan/vo/SignView;->setErrMsg(Ljava/lang/String;)V

    const-string v0, "MMClientSDK_ForPad"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "applyCert() strCertResult -> "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ccit/mmwlan/vo/a;

    invoke-virtual {v0}, Lcom/ccit/mmwlan/vo/a;->c()Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ccit/mmwlan/vo/a;

    invoke-virtual {v0}, Lcom/ccit/mmwlan/vo/a;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {v0}, Lcom/ccit/mmwlan/MMClientSDK_ForPad;->updateRandNum_PAD(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/ccit/mmwlan/vo/SignView;->setResult(I)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v0, :cond_5

    move-object v0, v6

    goto/16 :goto_0

    :cond_4
    move-object v1, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/ccit/mmwlan/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_5
    :try_start_1
    sget-object v0, Lcom/ccit/mmwlan/MMClientSDK_ForPad;->clientSDK:Lcom/ccit/mmwlan/ClientSDK;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/ccit/mmwlan/ClientSDK;->saveSecCertNativeForBilling(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/ccit/mmwlan/vo/SignView;->setResult(I)V

    const-string v1, "MMClientSDK_ForPad"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "applyCert() saveSecCertNative -> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lcom/ccit/mmwlan/exception/ClientSDKException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {v6, v0}, Lcom/ccit/mmwlan/vo/SignView;->setResult(I)V

    const-string v0, "\u6210\u529f"

    invoke-virtual {v6, v0}, Lcom/ccit/mmwlan/vo/SignView;->setErrMsg(Ljava/lang/String;)V

    move-object v0, v6

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x4

    invoke-virtual {v6, v1}, Lcom/ccit/mmwlan/vo/SignView;->setResult(I)V

    const-string v1, "\u4fdd\u5b58\u5b89\u5168\u51ed\u8bc1\u5931\u8d25"

    invoke-virtual {v6, v1}, Lcom/ccit/mmwlan/vo/SignView;->setErrMsg(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ccit/mmwlan/exception/ClientSDKException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v6, v9}, Lcom/ccit/mmwlan/vo/SignView;->setResult(I)V

    const-string v1, "\u7b7e\u540d\u5931\u8d25"

    invoke-virtual {v6, v1}, Lcom/ccit/mmwlan/vo/SignView;->setErrMsg(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :goto_3
    move-object v0, v6

    goto/16 :goto_0

    :cond_6
    :try_start_3
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/ccit/mmwlan/vo/SignView;->setResult(I)V
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    invoke-virtual {v6, v9}, Lcom/ccit/mmwlan/vo/SignView;->setResult(I)V

    const-string v1, "\u7b7e\u540d\u5931\u8d25"

    invoke-virtual {v6, v1}, Lcom/ccit/mmwlan/vo/SignView;->setErrMsg(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method public static applyCert_PAD(Ljava/lang/String;)Lcom/ccit/mmwlan/vo/SignView;
    .locals 2

    new-instance v0, Lcom/ccit/mmwlan/vo/SignView;

    invoke-direct {v0}, Lcom/ccit/mmwlan/vo/SignView;-><init>()V

    if-nez p0, :cond_0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/ccit/mmwlan/vo/SignView;->setResult(I)V

    const-string v1, "\u83b7\u53d6\u5e94\u7528appid\u9519\u8bef"

    invoke-virtual {v0, v1}, Lcom/ccit/mmwlan/vo/SignView;->setErrMsg(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/ccit/mmwlan/MMClientSDK_ForPad;->applyCert(Ljava/lang/String;Ljava/lang/String;)Lcom/ccit/mmwlan/vo/SignView;

    move-result-object v0

    goto :goto_0
.end method

.method private static authProcess(Lcom/ccit/mmwlan/vo/SignView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ccit/mmwlan/vo/SignView;
    .locals 10

    const/4 v9, 0x7

    const/4 v4, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/ccit/mmwlan/MMClientSDK_ForPad;->strDeviceOuth:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mmwlan/ApplyDeviceAuth_PAD"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v0, "MMClientSDK_ForPad"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "authProcess() strUrl -> "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/ccit/mmwlan/a/d;

    invoke-direct {v0}, Lcom/ccit/mmwlan/a/d;-><init>()V

    move-object v1, p1

    move-object v2, p4

    move-object v3, p2

    move-object v5, p3

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Lcom/ccit/mmwlan/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MMClientSDK_ForPad"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "authProcess() strRequestXML -> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/ccit/mmwlan/a/f;

    invoke-direct {v1}, Lcom/ccit/mmwlan/a/f;-><init>()V

    :try_start_0
    const-string v2, "utf-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v8, v0}, Lcom/ccit/mmwlan/a/d;->a(Ljava/lang/String;[B)[B

    move-result-object v0

    const-string v2, "MMClientSDK_ForPad"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "authProcess() byResponse -> "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Lcom/ccit/mmwlan/a/f;->c(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ccit/mmwlan/vo/b;

    invoke-virtual {v0}, Lcom/ccit/mmwlan/vo/b;->a()Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ccit/mmwlan/vo/b;

    invoke-virtual {v0}, Lcom/ccit/mmwlan/vo/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ccit/mmwlan/vo/SignView;->setErrMsg(Ljava/lang/String;)V

    const-string v0, "MMClientSDK_ForPad"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "authProcess() strCertResult -> "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ccit/mmwlan/vo/SignView;->setResult(I)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-object p0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v9}, Lcom/ccit/mmwlan/vo/SignView;->setResult(I)V

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {p0, v9}, Lcom/ccit/mmwlan/vo/SignView;->setResult(I)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static checkSecCert_PAD()I
    .locals 4

    :try_start_0
    sget-object v0, Lcom/ccit/mmwlan/MMClientSDK_ForPad;->clientSDK:Lcom/ccit/mmwlan/ClientSDK;

    invoke-virtual {v0}, Lcom/ccit/mmwlan/ClientSDK;->checkSecCertNativeForBilling()I

    move-result v0

    const-string v1, "MMClientSDK_ForPad"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "checkSecCert_PAD() -> "

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

.method private static genPKIKey_PAD()I
    .locals 4

    :try_start_0
    sget-object v0, Lcom/ccit/mmwlan/MMClientSDK_ForPad;->clientSDK:Lcom/ccit/mmwlan/ClientSDK;

    invoke-virtual {v0}, Lcom/ccit/mmwlan/ClientSDK;->genPKIKeyNativeForBilling()I

    move-result v0

    const-string v1, "MMClientSDK_ForPad"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "genPKIKey_PAD() -> "

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

.method private static genSid_PAD()Ljava/lang/String;
    .locals 4

    :try_start_0
    sget-object v0, Lcom/ccit/mmwlan/MMClientSDK_ForPad;->clientSDK:Lcom/ccit/mmwlan/ClientSDK;

    invoke-virtual {v0}, Lcom/ccit/mmwlan/ClientSDK;->genSIDNative()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "2"

    :cond_0
    const-string v1, "MMClientSDK_ForPad"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "genSid_PAD() -> "

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

.method public static getDeviceID_PAD()Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    sget-object v0, Lcom/ccit/mmwlan/MMClientSDK_ForPad;->context:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/ccit/mmwlan/MMClientSDK_ForPad;->context:Landroid/content/Context;

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

    const-string v0, "MMClientSDK_ForPad"

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

    const-string v0, "MMClientSDK_ForPad"

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

.method public static getDeviceNameNew_PAD()Lcom/ccit/mmwlan/vo/DeviceName;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/ccit/mmwlan/MMClientSDK_ForPad;->strGetDeviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mmwlan/getDeviceName_PAD"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/ccit/mmwlan/vo/DeviceName;

    invoke-direct {v1}, Lcom/ccit/mmwlan/vo/DeviceName;-><init>()V

    invoke-static {}, Lcom/ccit/mmwlan/MMClientSDK_ForPad;->imeiOfMD5Value()Ljava/lang/String;

    move-result-object v2

    const-string v3, "5"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v0, "5"

    invoke-virtual {v1, v0}, Lcom/ccit/mmwlan/vo/DeviceName;->setResult(Ljava/lang/String;)V

    const-string v0, "imei/imsi/mac\u7684MD5\u5931\u8d25"

    invoke-virtual {v1, v0}, Lcom/ccit/mmwlan/vo/DeviceName;->setErrormsg(Ljava/lang/String;)V

    const-string v0, ""

    invoke-virtual {v1, v0}, Lcom/ccit/mmwlan/vo/DeviceName;->setDeviceName(Ljava/lang/String;)V

    :goto_0
    return-object v1

    :cond_0
    new-instance v3, Lcom/ccit/mmwlan/a/d;

    invoke-direct {v3}, Lcom/ccit/mmwlan/a/d;-><init>()V

    invoke-virtual {v3, v2}, Lcom/ccit/mmwlan/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "MMClientSDK_ForPad"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getDeviceName_PAD() strRequestXML -> "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lcom/ccit/mmwlan/a/f;

    invoke-direct {v3}, Lcom/ccit/mmwlan/a/f;-><init>()V

    :try_start_0
    const-string v4, "utf-8"

    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ccit/mmwlan/a/d;->a(Ljava/lang/String;[B)[B

    move-result-object v0

    const-string v2, "MMClientSDK_ForPad"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getDeviceName_PAD() byResponse -> "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v2}, Lcom/ccit/mmwlan/a/f;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ccit/mmwlan/vo/DeviceName;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "7"

    invoke-virtual {v1, v2}, Lcom/ccit/mmwlan/vo/DeviceName;->setResult(Ljava/lang/String;)V

    const-string v2, "\u8bf7\u6c42\u8bbe\u5907\u540d\u5931\u8d25"

    invoke-virtual {v1, v2}, Lcom/ccit/mmwlan/vo/DeviceName;->setErrormsg(Ljava/lang/String;)V

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/ccit/mmwlan/vo/DeviceName;->setDeviceName(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    move-object v0, v1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v2, "7"

    invoke-virtual {v1, v2}, Lcom/ccit/mmwlan/vo/DeviceName;->setResult(Ljava/lang/String;)V

    const-string v2, "\u8bf7\u6c42\u8bbe\u5907\u540d\u5931\u8d25"

    invoke-virtual {v1, v2}, Lcom/ccit/mmwlan/vo/DeviceName;->setErrormsg(Ljava/lang/String;)V

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/ccit/mmwlan/vo/DeviceName;->setDeviceName(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_1
.end method

.method public static getDeviceName_PAD()Ljava/lang/String;
    .locals 8

    const/4 v7, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/ccit/mmwlan/MMClientSDK_ForPad;->strGetDeviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mmwlan/getDeviceName_PAD"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/ccit/mmwlan/MMClientSDK_ForPad;->imeiOfMD5Value()Ljava/lang/String;

    move-result-object v2

    const-string v3, "5"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v3, Lcom/ccit/mmwlan/a/d;

    invoke-direct {v3}, Lcom/ccit/mmwlan/a/d;-><init>()V

    invoke-virtual {v3, v2}, Lcom/ccit/mmwlan/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "MMClientSDK_ForPad"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getDeviceName_PAD() strRequestXML -> "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lcom/ccit/mmwlan/a/f;

    invoke-direct {v3}, Lcom/ccit/mmwlan/a/f;-><init>()V

    :try_start_0
    const-string v4, "utf-8"

    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ccit/mmwlan/a/d;->a(Ljava/lang/String;[B)[B

    move-result-object v0

    const-string v2, "MMClientSDK_ForPad"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getDeviceName_PAD() byResponse -> "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v2}, Lcom/ccit/mmwlan/a/f;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ccit/mmwlan/vo/DeviceName;

    invoke-virtual {v0}, Lcom/ccit/mmwlan/vo/DeviceName;->getDeviceName()Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ccit/mmwlan/vo/DeviceName;

    invoke-virtual {v0}, Lcom/ccit/mmwlan/vo/DeviceName;->getResult()Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ccit/mmwlan/vo/DeviceName;

    invoke-virtual {v0}, Lcom/ccit/mmwlan/vo/DeviceName;->getErrormsg()Ljava/lang/String;

    const-string v0, "MMClientSDK_ForPad"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getDeviceName_PAD() strXMLResult -> "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "0"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ccit/mmwlan/vo/DeviceName;

    invoke-virtual {v0}, Lcom/ccit/mmwlan/vo/DeviceName;->getDeviceName()Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ccit/mmwlan/vo/DeviceName;

    invoke-virtual {v0}, Lcom/ccit/mmwlan/vo/DeviceName;->getResult()Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ccit/mmwlan/vo/DeviceName;

    invoke-virtual {v0}, Lcom/ccit/mmwlan/vo/DeviceName;->getErrormsg()Ljava/lang/String;

    move-result-object v0

    const-string v2, "strDeviceName --- >"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "strDeviceName"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "MMClientSDK_ForPad"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getDeviceName_PAD() strDeviceName -> "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v2, "7"

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v2, "7"

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private static getGenPubkey()Ljava/lang/String;
    .locals 4

    :try_start_0
    sget-object v0, Lcom/ccit/mmwlan/MMClientSDK_ForPad;->clientSDK:Lcom/ccit/mmwlan/ClientSDK;

    invoke-virtual {v0}, Lcom/ccit/mmwlan/ClientSDK;->getPubKeyForBilling()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "4"

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "MMClientSDK_ForPad"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getGenPubkey() -> "

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

.method public static getIMSI_PAD()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v1, "10086"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "MMClientSDK_ForPad"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getIMSI_PAD() strIMEI -> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 4

    const-string v0, "1.1.6"

    const-string v1, "MMClientSDK_ForPad"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getVersion() -> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private static imeiOfMD5Value()Ljava/lang/String;
    .locals 6

    const/4 v5, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/ccit/mmwlan/MMClientSDK_ForPad;->getDeviceID_PAD()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    sget-object v2, Lcom/ccit/mmwlan/MMClientSDK_ForPad;->clientSDK:Lcom/ccit/mmwlan/ClientSDK;

    const-string v3, "md5"

    invoke-virtual {v2, v3, v0}, Lcom/ccit/mmwlan/ClientSDK;->getDigestNative(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

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

    :goto_0
    return-object v0

    :cond_0
    const-string v2, "MMClientSDK_ForPad"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "imeiOfMD5Value() strMD5Result -> "

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
    .locals 5

    new-instance v0, Lcom/ccit/mmwlan/vo/DeviceInfo;

    invoke-direct {v0}, Lcom/ccit/mmwlan/vo/DeviceInfo;-><init>()V

    const-string v1, "10086"

    invoke-virtual {v0, v1}, Lcom/ccit/mmwlan/vo/DeviceInfo;->setStrImei(Ljava/lang/String;)V

    const-string v2, "MMClientSDK_ForPad"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "initialImsiAndImeiValue() strIMSI -> "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/ccit/mmwlan/MMClientSDK_ForPad;->getDeviceID_PAD()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MMClientSDK_ForPad"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "initialImsiAndImeiValue() IMEI ->"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0, v1}, Lcom/ccit/mmwlan/vo/DeviceInfo;->setStrImsi(Ljava/lang/String;)V

    const-string v2, "MMClientSDK_ForPad"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "initialImsiAndImeiValue() strIMEI -> "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/ccit/mmwlan/MMClientSDK_ForPad;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ccit/mmwlan/vo/DeviceInfo;->setFilePath(Ljava/lang/String;)V

    const-string v2, "MMClientSDK_ForPad"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "initialImsiAndImeiValue() FilePath -> "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    sget-object v1, Lcom/ccit/mmwlan/MMClientSDK_ForPad;->clientSDK:Lcom/ccit/mmwlan/ClientSDK;

    invoke-virtual {v1, v0}, Lcom/ccit/mmwlan/ClientSDK;->transmitInfoNative(Lcom/ccit/mmwlan/vo/DeviceInfo;)I

    move-result v0

    const-string v1, "MMClientSDK_ForPad"

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

    if-eqz v0, :cond_1

    :cond_1
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static initialMMSDK(Landroid/content/Context;Lcom/ccit/mmwlan/vo/IPDress_ForPad;)I
    .locals 4

    const/4 v0, 0x5

    sput-object p0, Lcom/ccit/mmwlan/MMClientSDK_ForPad;->context:Landroid/content/Context;

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/ccit/mmwlan/vo/IPDress_ForPad;->getStrDeviceOuthIp()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/ccit/mmwlan/vo/IPDress_ForPad;->getStrApplySecCertIP()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/ccit/mmwlan/vo/IPDress_ForPad;->getStrGetDeviceName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/ccit/mmwlan/vo/IPDress_ForPad;->getStrDeviceOuthIp()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ccit/mmwlan/MMClientSDK_ForPad;->strDeviceOuth:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/ccit/mmwlan/vo/IPDress_ForPad;->getStrApplySecCertIP()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ccit/mmwlan/MMClientSDK_ForPad;->strApplyCert:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/ccit/mmwlan/vo/IPDress_ForPad;->getStrGetDeviceName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ccit/mmwlan/MMClientSDK_ForPad;->strGetDeviceName:Ljava/lang/String;

    const-string v0, "MMClientSDK_ForPad"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initialMMSDK() strIPDress -> "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/ccit/mmwlan/MMClientSDK_ForPad;->strApplyCert:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  :  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/ccit/mmwlan/MMClientSDK_ForPad;->strApplyCert:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/ccit/mmwlan/MMClientSDK_ForPad;->initialImsiAndImeiValue()I

    move-result v0

    const-string v1, "MMClientSDK_ForPad"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "initialMMSDK() -> "

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
    sget-object v0, Lcom/ccit/mmwlan/MMClientSDK_ForPad;->clientSDK:Lcom/ccit/mmwlan/ClientSDK;

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

.method public static sidSign_PAD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ccit/mmwlan/vo/SignView;
    .locals 7

    const/4 v6, 0x6

    new-instance v0, Lcom/ccit/mmwlan/vo/SignView;

    invoke-direct {v0}, Lcom/ccit/mmwlan/vo/SignView;-><init>()V

    if-nez p0, :cond_0

    invoke-virtual {v0, v6}, Lcom/ccit/mmwlan/vo/SignView;->setResult(I)V

    const-string v1, "\u5e94\u7528appid\u4e3a\u7a7a"

    invoke-virtual {v0, v1}, Lcom/ccit/mmwlan/vo/SignView;->setErrMsg(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/ccit/mmwlan/MMClientSDK_ForPad;->imeiOfMD5Value()Ljava/lang/String;

    move-result-object v3

    const-string v1, "5"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/ccit/mmwlan/vo/SignView;->setResult(I)V

    const-string v1, "\u83b7\u53d6IMEI\u7684MD5\u503c\u9519\u8bef"

    invoke-virtual {v0, v1}, Lcom/ccit/mmwlan/vo/SignView;->setErrMsg(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    :try_start_0
    sget-object v1, Lcom/ccit/mmwlan/MMClientSDK_ForPad;->clientSDK:Lcom/ccit/mmwlan/ClientSDK;

    invoke-virtual {v1}, Lcom/ccit/mmwlan/ClientSDK;->checkSecCertNativeForBilling()I

    move-result v2

    const-string v1, "MMClientSDK_ForPad"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "sidSign_PAD() iCertState -> "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/ccit/mmwlan/exception/ClientSDKException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    if-nez v2, :cond_2

    invoke-static {v0, p0}, Lcom/ccit/mmwlan/MMClientSDK_ForPad;->signProcess(Lcom/ccit/mmwlan/vo/SignView;Ljava/lang/String;)Lcom/ccit/mmwlan/vo/SignView;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v4, 0x7

    invoke-virtual {v0, v4}, Lcom/ccit/mmwlan/vo/SignView;->setResult(I)V

    const-string v4, "\u68c0\u67e5\u51ed\u8bc1\u5f02\u5e38"

    invoke-virtual {v0, v4}, Lcom/ccit/mmwlan/vo/SignView;->setErrMsg(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/ccit/mmwlan/exception/ClientSDKException;->printStackTrace()V

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    if-ne v1, v2, :cond_6

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    invoke-static {v0, p0, v3, p1, p2}, Lcom/ccit/mmwlan/MMClientSDK_ForPad;->authProcess(Lcom/ccit/mmwlan/vo/SignView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ccit/mmwlan/vo/SignView;

    move-result-object v0

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_5

    if-eqz p3, :cond_5

    invoke-static {p0, p3}, Lcom/ccit/mmwlan/MMClientSDK_ForPad;->applyCert(Ljava/lang/String;Ljava/lang/String;)Lcom/ccit/mmwlan/vo/SignView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ccit/mmwlan/vo/SignView;->getResult()I

    move-result v2

    if-nez v2, :cond_4

    invoke-static {v0, p0}, Lcom/ccit/mmwlan/MMClientSDK_ForPad;->signProcess(Lcom/ccit/mmwlan/vo/SignView;Ljava/lang/String;)Lcom/ccit/mmwlan/vo/SignView;

    move-result-object v0

    goto :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_0

    :cond_5
    invoke-virtual {v0, v6}, Lcom/ccit/mmwlan/vo/SignView;->setResult(I)V

    const-string v1, "\u5e94\u7528appid\u4e3a\u7a7a"

    invoke-virtual {v0, v1}, Lcom/ccit/mmwlan/vo/SignView;->setErrMsg(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    const/4 v1, 0x2

    if-ne v1, v2, :cond_8

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/ccit/mmwlan/MMClientSDK_ForPad;->applyCert(Ljava/lang/String;Ljava/lang/String;)Lcom/ccit/mmwlan/vo/SignView;

    move-result-object v1

    const-string v2, "MMClientSDK_ForPad"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "sidSign_PAD() iUpdateCert -> "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/ccit/mmwlan/vo/SignView;->getResult()I

    move-result v2

    if-nez v2, :cond_7

    invoke-static {v0, p0}, Lcom/ccit/mmwlan/MMClientSDK_ForPad;->signProcess(Lcom/ccit/mmwlan/vo/SignView;Ljava/lang/String;)Lcom/ccit/mmwlan/vo/SignView;

    move-result-object v0

    goto/16 :goto_0

    :cond_7
    move-object v0, v1

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v0, v2}, Lcom/ccit/mmwlan/vo/SignView;->setResult(I)V

    goto/16 :goto_0
.end method

.method private static signProcess(Lcom/ccit/mmwlan/vo/SignView;Ljava/lang/String;)Lcom/ccit/mmwlan/vo/SignView;
    .locals 5

    const/4 v4, 0x7

    invoke-static {}, Lcom/ccit/mmwlan/MMClientSDK_ForPad;->genSid_PAD()Ljava/lang/String;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/ccit/mmwlan/vo/SignView;->setResult(I)V

    const-string v0, "\u83b7\u53d6sid\u5931\u8d25"

    invoke-virtual {p0, v0}, Lcom/ccit/mmwlan/vo/SignView;->setErrMsg(Ljava/lang/String;)V

    :goto_0
    return-object p0

    :cond_0
    :try_start_0
    sget-object v1, Lcom/ccit/mmwlan/MMClientSDK_ForPad;->clientSDK:Lcom/ccit/mmwlan/ClientSDK;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p1, v2}, Lcom/ccit/mmwlan/ClientSDK;->SIDSignNativeForBilling(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/ccit/mmwlan/vo/SignView;->setResult(I)V

    const-string v0, "\u7b7e\u540d\u5931\u8d25"

    invoke-virtual {p0, v0}, Lcom/ccit/mmwlan/vo/SignView;->setErrMsg(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v4}, Lcom/ccit/mmwlan/vo/SignView;->setResult(I)V

    const-string v1, "\u7b7e\u540d\u5931\u8d25"

    invoke-virtual {p0, v1}, Lcom/ccit/mmwlan/vo/SignView;->setErrMsg(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    :try_start_1
    const-string v1, "MMClientSDK_ForPad"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "signProcess() strSignResult -> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/ccit/mmwlan/vo/SignView;->setResult(I)V

    const-string v1, "\u7b7e\u540d\u6210\u529f"

    invoke-virtual {p0, v1}, Lcom/ccit/mmwlan/vo/SignView;->setErrMsg(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/ccit/mmwlan/vo/SignView;->setUserSignature(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static updateRandNum_PAD(Ljava/lang/String;)I
    .locals 5

    const/4 v1, 0x1

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    :try_start_0
    sget-object v0, Lcom/ccit/mmwlan/MMClientSDK_ForPad;->clientSDK:Lcom/ccit/mmwlan/ClientSDK;

    invoke-virtual {v0, p0}, Lcom/ccit/mmwlan/ClientSDK;->UpdateRandNumForBilling(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const-string v2, "MMClientSDK_ForPad"

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
