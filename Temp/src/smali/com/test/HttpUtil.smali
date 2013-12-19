.class public Lcom/test/HttpUtil;
.super Ljava/lang/Object;


# static fields
.field public static final CONNECT_TASK_BILLING:I = 0x186a1

.field public static final CONNECT_TASK_PUSH_NOTIFICATION:I = 0x186a0

.field private static a:I

.field private static b:Lorg/apache/http/impl/client/DefaultHttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/test/HttpUtil;->a:I

    const/4 v0, 0x0

    sput-object v0, Lcom/test/HttpUtil;->b:Lorg/apache/http/impl/client/DefaultHttpClient;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v10, -0x1

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "="

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v0, 0x0

    sget-boolean v2, Lcom/square_enix/million/util/Crypt;->isNewCrypt:Z

    if-eqz v2, :cond_6

    const-string v0, "NEW Crypt!!!!!!!!!!!!!!!!"

    invoke-static {v0}, Lcom/test/Debug;->log_cjh(Ljava/lang/String;)V

    new-instance v0, Lcom/playpiegames/clib/CLibMain;

    invoke-direct {v0}, Lcom/playpiegames/clib/CLibMain;-><init>()V

    invoke-virtual {v0}, Lcom/playpiegames/clib/CLibMain;->init()V

    invoke-virtual {v0}, Lcom/playpiegames/clib/CLibMain;->getSigned()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "K"

    invoke-direct {v3, v6, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v3, v0

    move v2, v4

    :goto_0
    if-ne v1, v10, :cond_0

    return-object v5

    :cond_0
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v2, v1, 0x1

    const-string v0, "&"

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v10, :cond_4

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    if-eqz v3, :cond_5

    sget-object v7, Lcom/playpiegames/clib/E_CODE;->AES:Lcom/playpiegames/clib/E_CODE;

    invoke-virtual {v3, v7, v0}, Lcom/playpiegames/clib/CLibMain;->encrypt(Lcom/playpiegames/clib/E_CODE;Ljava/lang/String;)[B

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-static {v7, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    :cond_1
    const-string v7, "login?"

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-ne v10, v7, :cond_2

    const-string v7, "regist?"

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-eq v10, v7, :cond_3

    :cond_2
    sget-object v7, Lcom/playpiegames/clib/E_CODE;->RSA_EP:Lcom/playpiegames/clib/E_CODE;

    invoke-virtual {v3, v7, v0}, Lcom/playpiegames/clib/CLibMain;->encrypt(Lcom/playpiegames/clib/E_CODE;Ljava/lang/String;)[B

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-static {v7, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    :cond_3
    :goto_2
    const-string v7, "&"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "connectPost key:%s, value:%s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v6, v8, v4

    const/4 v9, 0x1

    aput-object v0, v8, v9

    invoke-static {v7, v8}, Lcom/test/Debug;->log_cjh(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    invoke-direct {v7, v6, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v2, v1, 0x1

    const-string v1, "="

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    goto :goto_1

    :cond_5
    invoke-static {v0}, Lcom/square_enix/million/util/Crypt;->encodeWithBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_6
    move-object v3, v0

    move v2, v4

    goto :goto_0
.end method

.method static synthetic a(Lorg/apache/http/HttpResponse;)Z
    .locals 2

    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "gzip"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 9

    const/4 v8, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/square_enix/million/util/Crypt;->getCryptUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    const-string v2, "NativeParam = %s %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Lcom/test/Debug;->detail(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1, v1}, Lcom/test/HttpUtil;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v4, "UTF-8"

    invoke-direct {v3, v2, v4}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    const-string v2, "User-Agent"

    invoke-static {}, Lcom/test/DeviceInfo;->getUserAgent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Accept-Encoding"

    const-string v3, "gzip, deflate"

    invoke-virtual {v0, v2, v3}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    sget v2, Lcom/test/HttpUtil;->a:I

    if-nez v2, :cond_0

    const-string v2, ">BASIC> BEGIN"

    invoke-static {v2}, Lcom/test/Debug;->log(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpPost;->getURI()Ljava/net/URI;

    move-result-object v2

    sget-object v3, Lcom/test/HttpUtil;->b:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCredentialsProvider()Lorg/apache/http/client/CredentialsProvider;

    move-result-object v3

    new-instance v4, Lorg/apache/http/auth/AuthScope;

    invoke-virtual {v2}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Ljava/net/URI;->getPort()I

    move-result v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/auth/AuthScope;-><init>(Ljava/lang/String;I)V

    new-instance v5, Lorg/apache/http/auth/UsernamePasswordCredentials;

    const-string v6, "iW7B5MWJ"

    const-string v7, "8KdtjVfX"

    invoke-direct {v5, v6, v7}, Lorg/apache/http/auth/UsernamePasswordCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4, v5}, Lorg/apache/http/client/CredentialsProvider;->setCredentials(Lorg/apache/http/auth/AuthScope;Lorg/apache/http/auth/Credentials;)V

    const-string v3, ">BASIC> host:[%s]"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v2}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/test/Debug;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v3, ">BASIC> port:[%s]"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v2}, Ljava/net/URI;->getPort()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Lcom/test/Debug;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    sget-object v2, Lcom/test/HttpUtil;->b:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v3, Lcom/test/i;

    invoke-direct {v3}, Lcom/test/i;-><init>()V

    invoke-virtual {v2, v0, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    const/4 v2, -0x1

    const-string v3, "gp_verify_receipt?"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v2, v1, :cond_2

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/square_enix/million/util/Crypt;->decode([B)[B
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "[\u4f8b\u5916\u30ad\u30e3\u30c3\u30c1] ClientProtocolException"

    new-array v1, v8, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/test/Debug;->err(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v0, "[\u4f8b\u5916\u30ad\u30e3\u30c3\u30c1] IOException"

    new-array v1, v8, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/test/Debug;->err(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public static connectGet(Ljava/lang/String;Z)[B
    .locals 6

    const/4 v1, 0x0

    const/16 v5, 0x4e20

    const/4 v4, 0x0

    invoke-static {}, Lcom/test/HttpUtil;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v0, ">connect> connectGet:[%s]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v4

    invoke-static {v0, v2}, Lcom/test/Debug;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/test/HttpUtil;->b:Lorg/apache/http/impl/client/DefaultHttpClient;

    if-nez v0, :cond_2

    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    sput-object v0, Lcom/test/HttpUtil;->b:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string v2, "http.socket.timeout"

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v2, v3}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    sget-object v0, Lcom/test/HttpUtil;->b:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string v2, "http.connection.timeout"

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v2, v3}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    :cond_2
    :try_start_0
    invoke-static {p0}, Lcom/square_enix/million/util/Crypt;->getCryptUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    const-string v0, "User-Agent"

    invoke-static {}, Lcom/test/DeviceInfo;->getUserAgent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Accept-Encoding"

    const-string v3, "gzip, deflate"

    invoke-virtual {v2, v0, v3}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/test/HttpUtil;->b:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v3, Lcom/test/h;

    invoke-direct {v3}, Lcom/test/h;-><init>()V

    invoke-virtual {v0, v2, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz p1, :cond_0

    invoke-static {v0}, Lcom/square_enix/million/util/Crypt;->decode([B)[B
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "[\u4f8b\u5916\u30ad\u30e3\u30c3\u30c1] ClientProtocolException"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/test/Debug;->err(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v0, "[\u4f8b\u5916\u30ad\u30e3\u30c3\u30c1] IOException"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/test/Debug;->err(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public static connectPost(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 8

    const/16 v3, 0x4e20

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-static {}, Lcom/test/HttpUtil;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ">connect> connectPost:[%s] param:[%s]"

    new-array v1, v7, [Ljava/lang/Object;

    aput-object p0, v1, v5

    aput-object p1, v1, v6

    invoke-static {v0, v1}, Lcom/test/Debug;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/test/HttpUtil;->b:Lorg/apache/http/impl/client/DefaultHttpClient;

    if-nez v0, :cond_1

    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    sput-object v0, Lcom/test/HttpUtil;->b:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string v1, "http.socket.timeout"

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    sget-object v0, Lcom/test/HttpUtil;->b:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string v1, "http.connection.timeout"

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    :cond_1
    const-string v0, "/regist?"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "&param="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/test/DeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "> > regist.xml with param [%s]"

    new-array v1, v6, [Ljava/lang/Object;

    aput-object p1, v1, v5

    invoke-static {v0, v1}, Lcom/test/Debug;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    sget-object v0, Lcom/test/HttpUtil;->b:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCookieStore()Lorg/apache/http/client/CookieStore;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/client/CookieStore;->getCookies()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p0, p1}, Lcom/test/HttpUtil;->b(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    sget v1, Lcom/test/HttpUtil;->a:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/test/HttpUtil;->a:I

    goto :goto_0

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/cookie/Cookie;

    const-string v2, "Cookie : name[%s] value[%s] domain[%s]"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getValue()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v7

    invoke-static {v2, v3}, Lcom/test/Debug;->detail(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public static initialize()V
    .locals 0

    return-void
.end method

.method public static isConnected()Z
    .locals 2

    invoke-static {}, Lcom/test/RooneyJActivity;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    goto :goto_0
.end method
