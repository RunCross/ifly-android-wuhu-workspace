.class public final Lcom/ccit/mmwlan/MMClientSDK_ForIdentity;
.super Ljava/lang/Object;


# instance fields
.field private TAG:Ljava/lang/String;

.field private clientsdk:Lcom/ccit/mmwlan/MMClientSDK_ForLogin;

.field private context:Landroid/content/Context;

.field private deviceInfo:Lcom/ccit/mmwlan/vo/DeviceInfo;

.field private userProfile:Lcom/ccit/mmwlan/UserProfile;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "IdentitySDK"

    iput-object v0, p0, Lcom/ccit/mmwlan/MMClientSDK_ForIdentity;->TAG:Ljava/lang/String;

    iput-object v1, p0, Lcom/ccit/mmwlan/MMClientSDK_ForIdentity;->clientsdk:Lcom/ccit/mmwlan/MMClientSDK_ForLogin;

    iput-object v1, p0, Lcom/ccit/mmwlan/MMClientSDK_ForIdentity;->context:Landroid/content/Context;

    iput-object v1, p0, Lcom/ccit/mmwlan/MMClientSDK_ForIdentity;->userProfile:Lcom/ccit/mmwlan/UserProfile;

    iput-object v1, p0, Lcom/ccit/mmwlan/MMClientSDK_ForIdentity;->deviceInfo:Lcom/ccit/mmwlan/vo/DeviceInfo;

    return-void
.end method


# virtual methods
.method public final applyCert()I
    .locals 10

    const/4 v4, 0x0

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/ccit/mmwlan/MMClientSDK_ForIdentity;->userProfile:Lcom/ccit/mmwlan/UserProfile;

    iget v0, v0, Lcom/ccit/mmwlan/UserProfile;->cardSlot:I

    iget-object v1, p0, Lcom/ccit/mmwlan/MMClientSDK_ForIdentity;->userProfile:Lcom/ccit/mmwlan/UserProfile;

    iget v1, v1, Lcom/ccit/mmwlan/UserProfile;->loginType:I

    iget-object v2, p0, Lcom/ccit/mmwlan/MMClientSDK_ForIdentity;->userProfile:Lcom/ccit/mmwlan/UserProfile;

    iget-object v2, v2, Lcom/ccit/mmwlan/UserProfile;->userName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/ccit/mmwlan/MMClientSDK_ForLogin;->checkSecCert(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ccit/mmwlan/MMClientSDK_ForIdentity;->getSessionID()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/ccit/mmwlan/MMClientSDK_ForIdentity;->userProfile:Lcom/ccit/mmwlan/UserProfile;

    iget-object v3, v0, Lcom/ccit/mmwlan/UserProfile;->password:Ljava/lang/String;

    iget-object v0, p0, Lcom/ccit/mmwlan/MMClientSDK_ForIdentity;->userProfile:Lcom/ccit/mmwlan/UserProfile;

    iget v0, v0, Lcom/ccit/mmwlan/UserProfile;->cardSlot:I

    iget-object v1, p0, Lcom/ccit/mmwlan/MMClientSDK_ForIdentity;->userProfile:Lcom/ccit/mmwlan/UserProfile;

    iget v1, v1, Lcom/ccit/mmwlan/UserProfile;->loginType:I

    iget-object v2, p0, Lcom/ccit/mmwlan/MMClientSDK_ForIdentity;->userProfile:Lcom/ccit/mmwlan/UserProfile;

    iget-object v2, v2, Lcom/ccit/mmwlan/UserProfile;->userName:Ljava/lang/String;

    iget-object v5, p0, Lcom/ccit/mmwlan/MMClientSDK_ForIdentity;->userProfile:Lcom/ccit/mmwlan/UserProfile;

    iget-object v5, v5, Lcom/ccit/mmwlan/UserProfile;->appID:Ljava/lang/String;

    iget-object v7, p0, Lcom/ccit/mmwlan/MMClientSDK_ForIdentity;->userProfile:Lcom/ccit/mmwlan/UserProfile;

    iget-object v7, v7, Lcom/ccit/mmwlan/UserProfile;->moServerHost:Lorg/apache/http/HttpHost;

    move-object v8, v4

    invoke-static/range {v0 .. v9}, Lcom/ccit/mmwlan/MMClientSDK_ForLogin;->applySecCert(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpHost;I)I

    move-result v9

    :cond_0
    return v9
.end method

.method public final getDeviceID()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/ccit/mmwlan/MMClientSDK_ForIdentity;->deviceInfo:Lcom/ccit/mmwlan/vo/DeviceInfo;

    if-nez v1, :cond_0

    new-instance v1, Lcom/ccit/mmwlan/b/a;

    invoke-direct {v1}, Lcom/ccit/mmwlan/b/a;-><init>()V

    :try_start_0
    iget-object v1, p0, Lcom/ccit/mmwlan/MMClientSDK_ForIdentity;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/ccit/mmwlan/MMClientSDK_ForIdentity;->userProfile:Lcom/ccit/mmwlan/UserProfile;

    iget v2, v2, Lcom/ccit/mmwlan/UserProfile;->cardSlot:I

    invoke-static {v1, v2}, Lcom/ccit/mmwlan/b/a;->a(Landroid/content/Context;I)Lcom/ccit/mmwlan/vo/DeviceInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/ccit/mmwlan/MMClientSDK_ForIdentity;->deviceInfo:Lcom/ccit/mmwlan/vo/DeviceInfo;
    :try_end_0
    .catch Lcom/ccit/mmwlan/exception/ClientSDKException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/ccit/mmwlan/MMClientSDK_ForIdentity;->deviceInfo:Lcom/ccit/mmwlan/vo/DeviceInfo;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/ccit/mmwlan/MMClientSDK_ForIdentity;->deviceInfo:Lcom/ccit/mmwlan/vo/DeviceInfo;

    invoke-virtual {v0}, Lcom/ccit/mmwlan/vo/DeviceInfo;->getStrImei()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lcom/ccit/mmwlan/exception/ClientSDKException;->printStackTrace()V

    goto :goto_0
.end method

.method public final getIdentity()Ljava/lang/String;
    .locals 8

    const/4 v1, 0x0

    const/4 v7, 0x0

    const/4 v6, -0x1

    invoke-virtual {p0}, Lcom/ccit/mmwlan/MMClientSDK_ForIdentity;->getSessionID()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/ccit/mmwlan/MMClientSDK_ForIdentity;->userProfile:Lcom/ccit/mmwlan/UserProfile;

    iget v2, v2, Lcom/ccit/mmwlan/UserProfile;->cardSlot:I

    iget-object v3, p0, Lcom/ccit/mmwlan/MMClientSDK_ForIdentity;->userProfile:Lcom/ccit/mmwlan/UserProfile;

    iget v3, v3, Lcom/ccit/mmwlan/UserProfile;->loginType:I

    iget-object v4, p0, Lcom/ccit/mmwlan/MMClientSDK_ForIdentity;->userProfile:Lcom/ccit/mmwlan/UserProfile;

    iget-object v4, v4, Lcom/ccit/mmwlan/UserProfile;->userName:Ljava/lang/String;

    iget-object v5, p0, Lcom/ccit/mmwlan/MMClientSDK_ForIdentity;->userProfile:Lcom/ccit/mmwlan/UserProfile;

    iget-object v5, v5, Lcom/ccit/mmwlan/UserProfile;->appID:Ljava/lang/String;

    invoke-static {v2, v3, v4, v0, v5}, Lcom/ccit/mmwlan/MMClientSDK_ForLogin;->SIDSign(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "<req><sidSignature>%s</sidSignature></req>"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/ccit/mmwlan/a/e;

    invoke-direct {v2}, Lcom/ccit/mmwlan/a/e;-><init>()V

    new-instance v2, Lcom/ccit/mmwlan/b/b;

    invoke-direct {v2}, Lcom/ccit/mmwlan/b/b;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "http://"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/ccit/mmwlan/MMClientSDK_ForIdentity;->userProfile:Lcom/ccit/mmwlan/UserProfile;

    iget-object v4, v4, Lcom/ccit/mmwlan/UserProfile;->moServerHost:Lorg/apache/http/HttpHost;

    invoke-virtual {v4}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/ccit/mmwlan/MMClientSDK_ForIdentity;->userProfile:Lcom/ccit/mmwlan/UserProfile;

    iget-object v4, v4, Lcom/ccit/mmwlan/UserProfile;->moServerHost:Lorg/apache/http/HttpHost;

    invoke-virtual {v4}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "applyIdentUrl"

    invoke-virtual {v2, v4}, Lcom/ccit/mmwlan/b/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Lcom/ccit/mmwlan/a/e;->a(Ljava/lang/String;[BLorg/apache/http/HttpHost;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    const-string v0, "result"

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string v3, "result"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v0, v6, :cond_0

    if-eq v3, v6, :cond_0

    add-int/lit8 v4, v0, 0x7

    add-int/lit8 v5, v3, -0x3

    if-gt v4, v5, :cond_0

    add-int/lit8 v4, v3, -0x3

    add-int/lit8 v5, v0, 0x7

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    new-array v4, v4, [C

    add-int/lit8 v0, v0, 0x7

    add-int/lit8 v3, v3, -0x3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v0, v3, v4, v7}, Ljava/lang/String;->getChars(II[CI)V

    invoke-static {v4}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "mobilephone"

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string v3, "mobilephone"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v0, v6, :cond_0

    if-eq v3, v6, :cond_0

    add-int/lit8 v4, v0, 0xc

    add-int/lit8 v5, v3, -0x3

    if-gt v4, v5, :cond_0

    add-int/lit8 v4, v3, -0x3

    add-int/lit8 v5, v0, 0xc

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    new-array v4, v4, [C

    add-int/lit8 v0, v0, 0xc

    add-int/lit8 v3, v3, -0x3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v0, v3, v4, v7}, Ljava/lang/String;->getChars(II[CI)V

    invoke-static {v4}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    const-string v2, "13900000000"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>([C)V

    :cond_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method

.method public final getSessionID()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/ccit/mmwlan/MMClientSDK_ForLogin;->genSID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final initContext(Landroid/content/Context;Lcom/ccit/mmwlan/UserProfile;)I
    .locals 1

    iget-object v0, p0, Lcom/ccit/mmwlan/MMClientSDK_ForIdentity;->clientsdk:Lcom/ccit/mmwlan/MMClientSDK_ForLogin;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ccit/mmwlan/MMClientSDK_ForLogin;

    invoke-direct {v0}, Lcom/ccit/mmwlan/MMClientSDK_ForLogin;-><init>()V

    iput-object v0, p0, Lcom/ccit/mmwlan/MMClientSDK_ForIdentity;->clientsdk:Lcom/ccit/mmwlan/MMClientSDK_ForLogin;

    :cond_0
    iget v0, p2, Lcom/ccit/mmwlan/UserProfile;->cardSlot:I

    invoke-static {p1, v0}, Lcom/ccit/mmwlan/MMClientSDK_ForLogin;->initMmClientSdk(Landroid/content/Context;I)I

    move-result v0

    iput-object p1, p0, Lcom/ccit/mmwlan/MMClientSDK_ForIdentity;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/ccit/mmwlan/MMClientSDK_ForIdentity;->userProfile:Lcom/ccit/mmwlan/UserProfile;

    return v0
.end method

.method public final registerIdentity()Ljava/lang/String;
    .locals 6

    const/4 v2, 0x0

    const-string v0, "md5"

    iget-object v1, p0, Lcom/ccit/mmwlan/MMClientSDK_ForIdentity;->deviceInfo:Lcom/ccit/mmwlan/vo/DeviceInfo;

    invoke-virtual {v1}, Lcom/ccit/mmwlan/vo/DeviceInfo;->getStrImsi()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ccit/mmwlan/MMClientSDK_ForLogin;->getDigest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "GDWLANIDP#%s#%s:%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/ccit/mmwlan/MMClientSDK_ForIdentity;->getSessionID()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x2

    iget-object v4, p0, Lcom/ccit/mmwlan/MMClientSDK_ForIdentity;->userProfile:Lcom/ccit/mmwlan/UserProfile;

    iget-object v4, v4, Lcom/ccit/mmwlan/UserProfile;->appID:Ljava/lang/String;

    aput-object v4, v3, v0

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    const-string v1, "10658682803"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    iget-object v0, p0, Lcom/ccit/mmwlan/MMClientSDK_ForIdentity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "send sms:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " to:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3
.end method
