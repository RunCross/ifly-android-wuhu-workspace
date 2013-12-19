.class public Lcom/qihoopp/framework/HttpLoadThread;
.super Ljava/lang/Thread;


# static fields
.field private static a:Ljava/lang/String;

.field private static b:I

.field private static c:I


# instance fields
.field private d:Lcom/qihoopp/framework/HttpRequestMode;

.field private e:Ljava/lang/String;

.field private f:Ljava/util/Map;

.field private g:Ljava/util/Map;

.field private h:Landroid/content/Context;

.field private i:Z

.field private j:Landroid/os/Handler;

.field private k:Ljava/lang/String;

.field private l:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "HttpLoadThread"

    sput-object v0, Lcom/qihoopp/framework/HttpLoadThread;->a:Ljava/lang/String;

    const/16 v0, 0x4e20

    sput v0, Lcom/qihoopp/framework/HttpLoadThread;->b:I

    const/16 v0, 0x7530

    sput v0, Lcom/qihoopp/framework/HttpLoadThread;->c:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/qihoopp/framework/HttpRequestMode;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lcom/qihoopp/framework/HttpLoadThread;->h:Landroid/content/Context;

    iput-object p3, p0, Lcom/qihoopp/framework/HttpLoadThread;->d:Lcom/qihoopp/framework/HttpRequestMode;

    iput-object p4, p0, Lcom/qihoopp/framework/HttpLoadThread;->e:Ljava/lang/String;

    iput-object p5, p0, Lcom/qihoopp/framework/HttpLoadThread;->f:Ljava/util/Map;

    iput-object p6, p0, Lcom/qihoopp/framework/HttpLoadThread;->g:Ljava/util/Map;

    iput-object p2, p0, Lcom/qihoopp/framework/HttpLoadThread;->j:Landroid/os/Handler;

    return-void
.end method

.method private a(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x400

    new-array v1, v1, [B

    :goto_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    iget-boolean v3, p0, Lcom/qihoopp/framework/HttpLoadThread;->i:Z

    if-eqz v3, :cond_0

    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const-string v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v1
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    sget-object v0, Lcom/qihoopp/framework/HttpLoadThread;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "uriEncode = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qihoopp/framework/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, " "

    const-string v1, "%20"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    if-eqz v4, :cond_0

    array-length v5, v4

    if-gtz v5, :cond_1

    :cond_0
    new-instance v0, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v0}, Ljava/io/UnsupportedEncodingException;-><init>()V

    throw v0

    :cond_1
    array-length v5, v4

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(ILjava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "state"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "json"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/qihoopp/framework/HttpLoadThread;->j:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private a()Z
    .locals 5

    const/16 v4, 0x50

    iget-object v0, p0, Lcom/qihoopp/framework/HttpLoadThread;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/qihoopp/framework/a;->a(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "type"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ni.getType() ="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qihoopp/framework/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "cmwap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "uniwap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "3gwap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const-string v1, "10.0.0.172"

    iput-object v1, p0, Lcom/qihoopp/framework/HttpLoadThread;->k:Ljava/lang/String;

    iput v4, p0, Lcom/qihoopp/framework/HttpLoadThread;->l:I

    :cond_1
    :goto_0
    const-string v1, "wap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    :goto_1
    return v0

    :cond_2
    const-string v1, "ctwap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "10.0.0.200"

    iput-object v1, p0, Lcom/qihoopp/framework/HttpLoadThread;->k:Ljava/lang/String;

    iput v4, p0, Lcom/qihoopp/framework/HttpLoadThread;->l:I

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private b()V
    .locals 10

    const/4 v5, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_0
    new-instance v0, Lcom/qihoopp/framework/e;

    invoke-direct {v0}, Lcom/qihoopp/framework/e;-><init>()V

    sget v1, Lcom/qihoopp/framework/HttpLoadThread;->b:I

    iget-object v2, p0, Lcom/qihoopp/framework/HttpLoadThread;->k:Ljava/lang/String;

    iget v6, p0, Lcom/qihoopp/framework/HttpLoadThread;->l:I

    invoke-virtual {v0, v1, v2, v6}, Lcom/qihoopp/framework/e;->a(ILjava/lang/String;I)Lorg/apache/http/client/HttpClient;

    move-result-object v0

    check-cast v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v1, Lorg/apache/http/HttpHost;

    iget-object v2, p0, Lcom/qihoopp/framework/HttpLoadThread;->k:Ljava/lang/String;

    iget v6, p0, Lcom/qihoopp/framework/HttpLoadThread;->l:I

    invoke-direct {v1, v2, v6}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    const-string v6, "http.route.default-proxy"

    invoke-interface {v2, v6, v1}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    iget-boolean v1, p0, Lcom/qihoopp/framework/HttpLoadThread;->i:Z

    if-eqz v1, :cond_1

    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    :catch_0
    move-exception v0

    move-object v0, v3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/qihoopp/framework/HttpLoadThread;->a:Ljava/lang/String;

    const-string v2, "\u53d6\u6d88\u7ebf\u7a0b"

    invoke-static {v1, v2}, Lcom/qihoopp/framework/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v0

    move v0, v4

    :goto_1
    iget-boolean v2, p0, Lcom/qihoopp/framework/HttpLoadThread;->i:Z

    if-eqz v2, :cond_0

    const/4 v0, -0x1

    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/qihoopp/framework/HttpLoadThread;->a(ILjava/lang/String;)V

    return-void

    :cond_1
    :try_start_2
    new-instance v6, Lorg/apache/http/client/methods/HttpPost;

    iget-object v1, p0, Lcom/qihoopp/framework/HttpLoadThread;->e:Ljava/lang/String;

    invoke-static {v1}, Lcom/qihoopp/framework/HttpLoadThread;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    const-string v1, "Content-Type"

    const-string v2, "application/x-www-form-urlencoded"

    invoke-virtual {v6, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Charset"

    const-string v2, "UTF-8"

    invoke-virtual {v6, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/qihoopp/framework/HttpLoadThread;->f:Ljava/util/Map;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/qihoopp/framework/HttpLoadThread;->f:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/qihoopp/framework/HttpLoadThread;->f:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v9, v2, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v1, v0

    move-object v0, v3

    :goto_3
    :try_start_3
    sget-object v2, Lcom/qihoopp/framework/HttpLoadThread;->a:Ljava/lang/String;

    const-string v3, "UnknownHostException"

    invoke-static {v2, v3, v1}, Lcom/qihoopp/framework/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v1, v0

    move v0, v5

    goto :goto_1

    :cond_2
    :try_start_4
    new-instance v1, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v2, "utf-8"

    invoke-direct {v1, v7, v2}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    :cond_3
    invoke-virtual {v0, v6}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    iget-boolean v2, p0, Lcom/qihoopp/framework/HttpLoadThread;->i:Z

    if-eqz v2, :cond_4

    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    :catch_2
    move-exception v0

    move-object v1, v0

    move-object v0, v3

    :goto_4
    :try_start_5
    sget-object v2, Lcom/qihoopp/framework/HttpLoadThread;->a:Ljava/lang/String;

    const-string v3, "SocketException"

    invoke-static {v2, v3, v1}, Lcom/qihoopp/framework/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v1, v0

    move v0, v5

    goto/16 :goto_1

    :cond_4
    :try_start_6
    sget-object v2, Lcom/qihoopp/framework/HttpLoadThread;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "httpclient--post--StateCode="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/qihoopp/framework/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_5

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-direct {p0, v0}, Lcom/qihoopp/framework/HttpLoadThread;->a(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/net/SocketException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    move-result-object v0

    :try_start_7
    sget-object v1, Lcom/qihoopp/framework/HttpLoadThread;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "httpclient--post--response:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qihoopp/framework/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_d
    .catch Ljava/net/UnknownHostException; {:try_start_7 .. :try_end_7} :catch_c
    .catch Ljava/net/SocketException; {:try_start_7 .. :try_end_7} :catch_b
    .catch Ljava/net/SocketTimeoutException; {:try_start_7 .. :try_end_7} :catch_a
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_9
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    :goto_5
    move-object v1, v0

    move v0, v4

    goto/16 :goto_1

    :catch_3
    move-exception v0

    move-object v2, v0

    move-object v1, v3

    :goto_6
    const/4 v0, 0x3

    :try_start_8
    sget-object v3, Lcom/qihoopp/framework/HttpLoadThread;->a:Ljava/lang/String;

    const-string v4, "SocketTimeoutException"

    invoke-static {v3, v4, v2}, Lcom/qihoopp/framework/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    throw v0

    :catch_4
    move-exception v0

    move-object v2, v0

    move-object v1, v3

    :goto_7
    const/4 v0, 0x2

    :try_start_9
    sget-object v3, Lcom/qihoopp/framework/HttpLoadThread;->a:Ljava/lang/String;

    const-string v4, "IOException"

    invoke-static {v3, v4, v2}, Lcom/qihoopp/framework/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :catch_5
    move-exception v0

    move-object v2, v0

    move-object v1, v3

    :goto_8
    const/4 v0, 0x4

    sget-object v3, Lcom/qihoopp/framework/HttpLoadThread;->a:Ljava/lang/String;

    const-string v4, "NullPointerException"

    invoke-static {v3, v4, v2}, Lcom/qihoopp/framework/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :catch_6
    move-exception v0

    move-object v1, v0

    move-object v0, v3

    :goto_9
    sget-object v2, Lcom/qihoopp/framework/HttpLoadThread;->a:Ljava/lang/String;

    const-string v3, "Exception"

    invoke-static {v2, v3, v1}, Lcom/qihoopp/framework/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-object v1, v0

    move v0, v5

    goto/16 :goto_1

    :catch_7
    move-exception v1

    goto :goto_9

    :catch_8
    move-exception v1

    move-object v2, v1

    move-object v1, v0

    goto :goto_8

    :catch_9
    move-exception v1

    move-object v2, v1

    move-object v1, v0

    goto :goto_7

    :catch_a
    move-exception v1

    move-object v2, v1

    move-object v1, v0

    goto :goto_6

    :catch_b
    move-exception v1

    goto/16 :goto_4

    :catch_c
    move-exception v1

    goto/16 :goto_3

    :catch_d
    move-exception v1

    goto/16 :goto_0

    :cond_5
    move-object v0, v3

    goto :goto_5
.end method

.method private c()V
    .locals 11

    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x5

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qihoopp/framework/HttpLoadThread;->e:Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/qihoopp/framework/HttpLoadThread;->f:Ljava/util/Map;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/qihoopp/framework/HttpLoadThread;->f:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "?"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qihoopp/framework/HttpLoadThread;->f:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, "="

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v9, "UTF-8"

    invoke-static {v1, v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_15
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_13
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v1, v7

    :goto_1
    :try_start_1
    sget-object v2, Lcom/qihoopp/framework/HttpLoadThread;->a:Ljava/lang/String;

    const-string v3, "\u53d6\u6d88\u7ebf\u7a0b"

    invoke-static {v2, v3}, Lcom/qihoopp/framework/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v7, :cond_c

    invoke-virtual {v7}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    move-object v2, v1

    move v1, v4

    :cond_0
    :goto_2
    iget-boolean v3, p0, Lcom/qihoopp/framework/HttpLoadThread;->i:Z

    if-eqz v3, :cond_1

    const/4 v1, -0x1

    :cond_1
    invoke-direct {p0, v1, v2}, Lcom/qihoopp/framework/HttpLoadThread;->a(ILjava/lang/String;)V

    return-void

    :cond_2
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_3
    new-instance v1, Ljava/net/URL;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/qihoopp/framework/HttpLoadThread;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v8, "connection--get--Url="

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qihoopp/framework/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x8

    if-ge v2, v3, :cond_4

    sget-object v2, Lcom/qihoopp/framework/HttpLoadThread;->a:Ljava/lang/String;

    const-string v3, "\u5c0f\u4e8e2.2"

    invoke-static {v2, v3}, Lcom/qihoopp/framework/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/qihoopp/framework/c;->a()V

    :cond_4
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_15
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_13
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8

    :try_start_3
    iget-boolean v2, p0, Lcom/qihoopp/framework/HttpLoadThread;->i:Z

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/InterruptedException;

    invoke-direct {v2}, Ljava/lang/InterruptedException;-><init>()V

    throw v2

    :catch_1
    move-exception v2

    move-object v10, v7

    move-object v7, v1

    move-object v1, v10

    goto :goto_1

    :cond_5
    const-string v2, "GET"

    invoke-virtual {v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    sget v2, Lcom/qihoopp/framework/HttpLoadThread;->b:I

    invoke-virtual {v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    sget v2, Lcom/qihoopp/framework/HttpLoadThread;->c:I

    invoke-virtual {v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    iget-object v2, p0, Lcom/qihoopp/framework/HttpLoadThread;->g:Ljava/util/Map;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/qihoopp/framework/HttpLoadThread;->g:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/qihoopp/framework/HttpLoadThread;->g:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/util/Map$Entry;

    move-object v3, v0

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_11
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_3 .. :try_end_3} :catch_f
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_d
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_9

    goto :goto_3

    :catch_2
    move-exception v2

    move-object v10, v7

    move-object v7, v1

    move-object v1, v10

    :goto_4
    :try_start_4
    sget-object v3, Lcom/qihoopp/framework/HttpLoadThread;->a:Ljava/lang/String;

    const-string v4, "UnknownHostException"

    invoke-static {v3, v4, v2}, Lcom/qihoopp/framework/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v7, :cond_a

    invoke-virtual {v7}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    move-object v2, v1

    move v1, v5

    goto/16 :goto_2

    :cond_6
    :try_start_5
    iget-boolean v2, p0, Lcom/qihoopp/framework/HttpLoadThread;->i:Z

    if-eqz v2, :cond_7

    new-instance v2, Ljava/lang/InterruptedException;

    invoke-direct {v2}, Ljava/lang/InterruptedException;-><init>()V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/net/UnknownHostException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/net/SocketException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_11
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_5 .. :try_end_5} :catch_f
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_d
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_9

    :catch_3
    move-exception v2

    move-object v10, v7

    move-object v7, v1

    move-object v1, v10

    :goto_5
    :try_start_6
    sget-object v3, Lcom/qihoopp/framework/HttpLoadThread;->a:Ljava/lang/String;

    const-string v4, "SocketException"

    invoke-static {v3, v4, v2}, Lcom/qihoopp/framework/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v7, :cond_a

    invoke-virtual {v7}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    move-object v2, v1

    move v1, v5

    goto/16 :goto_2

    :cond_7
    :try_start_7
    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->connect()V

    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v2

    sget-object v3, Lcom/qihoopp/framework/HttpLoadThread;->a:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "connection--get--StateCode="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/qihoopp/framework/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_e

    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qihoopp/framework/HttpLoadThread;->a(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/net/UnknownHostException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/net/SocketException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_7 .. :try_end_7} :catch_11
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_7 .. :try_end_7} :catch_f
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_d
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_b
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_9

    move-result-object v2

    :try_start_8
    sget-object v3, Lcom/qihoopp/framework/HttpLoadThread;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "connection--get--response:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/qihoopp/framework/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_17
    .catch Ljava/net/UnknownHostException; {:try_start_8 .. :try_end_8} :catch_16
    .catch Ljava/net/SocketException; {:try_start_8 .. :try_end_8} :catch_14
    .catch Ljava/net/SocketTimeoutException; {:try_start_8 .. :try_end_8} :catch_12
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_8 .. :try_end_8} :catch_10
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_e
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_a

    :goto_6
    if-eqz v1, :cond_d

    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    move v1, v4

    goto/16 :goto_2

    :catch_4
    move-exception v1

    move-object v3, v1

    move-object v2, v7

    :goto_7
    const/4 v1, 0x3

    :try_start_9
    sget-object v4, Lcom/qihoopp/framework/HttpLoadThread;->a:Ljava/lang/String;

    const-string v5, "SocketTimeoutException"

    invoke-static {v4, v5, v3}, Lcom/qihoopp/framework/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    goto/16 :goto_2

    :catch_5
    move-exception v1

    move-object v3, v1

    move-object v2, v7

    :goto_8
    :try_start_a
    invoke-virtual {v3}, Ljavax/net/ssl/SSLHandshakeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v4, "current time"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v3}, Ljavax/net/ssl/SSLHandshakeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v4, "validation time"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x6

    :goto_9
    sget-object v4, Lcom/qihoopp/framework/HttpLoadThread;->a:Ljava/lang/String;

    const-string v5, "SSLHandshakeException"

    invoke-static {v4, v5, v3}, Lcom/qihoopp/framework/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    goto/16 :goto_2

    :cond_8
    move v1, v6

    goto :goto_9

    :catch_6
    move-exception v1

    move-object v2, v1

    move-object v1, v7

    :goto_a
    :try_start_b
    sget-object v3, Lcom/qihoopp/framework/HttpLoadThread;->a:Ljava/lang/String;

    const-string v4, "IOException"

    invoke-static {v3, v4, v2}, Lcom/qihoopp/framework/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    if-eqz v7, :cond_b

    invoke-virtual {v7}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    move-object v2, v1

    move v1, v6

    goto/16 :goto_2

    :catch_7
    move-exception v1

    move-object v3, v1

    move-object v2, v7

    :goto_b
    const/4 v1, 0x4

    :try_start_c
    sget-object v4, Lcom/qihoopp/framework/HttpLoadThread;->a:Ljava/lang/String;

    const-string v5, "NullPointerException"

    invoke-static {v4, v5, v3}, Lcom/qihoopp/framework/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    goto/16 :goto_2

    :catch_8
    move-exception v1

    move-object v2, v1

    move-object v1, v7

    :goto_c
    :try_start_d
    sget-object v3, Lcom/qihoopp/framework/HttpLoadThread;->a:Ljava/lang/String;

    const-string v4, "Exception"

    invoke-static {v3, v4, v2}, Lcom/qihoopp/framework/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    if-eqz v7, :cond_a

    invoke-virtual {v7}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    move-object v2, v1

    move v1, v5

    goto/16 :goto_2

    :catchall_0
    move-exception v1

    :goto_d
    if-eqz v7, :cond_9

    invoke-virtual {v7}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_9
    throw v1

    :catchall_1
    move-exception v2

    move-object v7, v1

    move-object v1, v2

    goto :goto_d

    :catch_9
    move-exception v2

    move-object v10, v7

    move-object v7, v1

    move-object v1, v10

    goto :goto_c

    :catch_a
    move-exception v3

    move-object v7, v1

    move-object v1, v2

    move-object v2, v3

    goto :goto_c

    :catch_b
    move-exception v2

    move-object v3, v2

    move-object v2, v7

    move-object v7, v1

    goto :goto_b

    :catch_c
    move-exception v3

    move-object v7, v1

    goto :goto_b

    :catch_d
    move-exception v2

    move-object v10, v7

    move-object v7, v1

    move-object v1, v10

    goto :goto_a

    :catch_e
    move-exception v3

    move-object v7, v1

    move-object v1, v2

    move-object v2, v3

    goto :goto_a

    :catch_f
    move-exception v2

    move-object v3, v2

    move-object v2, v7

    move-object v7, v1

    goto/16 :goto_8

    :catch_10
    move-exception v3

    move-object v7, v1

    goto/16 :goto_8

    :catch_11
    move-exception v2

    move-object v3, v2

    move-object v2, v7

    move-object v7, v1

    goto/16 :goto_7

    :catch_12
    move-exception v3

    move-object v7, v1

    goto/16 :goto_7

    :catch_13
    move-exception v1

    move-object v2, v1

    move-object v1, v7

    goto/16 :goto_5

    :catch_14
    move-exception v3

    move-object v7, v1

    move-object v1, v2

    move-object v2, v3

    goto/16 :goto_5

    :catch_15
    move-exception v1

    move-object v2, v1

    move-object v1, v7

    goto/16 :goto_4

    :catch_16
    move-exception v3

    move-object v7, v1

    move-object v1, v2

    move-object v2, v3

    goto/16 :goto_4

    :catch_17
    move-exception v3

    move-object v7, v1

    move-object v1, v2

    goto/16 :goto_1

    :cond_a
    move-object v2, v1

    move v1, v5

    goto/16 :goto_2

    :cond_b
    move-object v2, v1

    move v1, v6

    goto/16 :goto_2

    :cond_c
    move-object v2, v1

    move v1, v4

    goto/16 :goto_2

    :cond_d
    move v1, v4

    goto/16 :goto_2

    :cond_e
    move-object v2, v7

    goto/16 :goto_6
.end method

.method private d()V
    .locals 11

    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_0
    iget-object v1, p0, Lcom/qihoopp/framework/HttpLoadThread;->f:Ljava/util/Map;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/qihoopp/framework/HttpLoadThread;->f:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/qihoopp/framework/HttpLoadThread;->f:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, "="

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v9, "UTF-8"

    invoke-static {v1, v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_15
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_13
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v1, v7

    :goto_1
    :try_start_1
    sget-object v2, Lcom/qihoopp/framework/HttpLoadThread;->a:Ljava/lang/String;

    const-string v3, "\u53d6\u6d88\u7ebf\u7a0b"

    invoke-static {v2, v3}, Lcom/qihoopp/framework/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v7, :cond_c

    invoke-virtual {v7}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    move-object v2, v1

    move v1, v4

    :cond_0
    :goto_2
    iget-boolean v3, p0, Lcom/qihoopp/framework/HttpLoadThread;->i:Z

    if-eqz v3, :cond_1

    const/4 v1, -0x1

    :cond_1
    invoke-direct {p0, v1, v2}, Lcom/qihoopp/framework/HttpLoadThread;->a(ILjava/lang/String;)V

    return-void

    :cond_2
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-ge v1, v2, :cond_4

    sget-object v1, Lcom/qihoopp/framework/HttpLoadThread;->a:Ljava/lang/String;

    const-string v2, "\u5c0f\u4e8e2.2"

    invoke-static {v1, v2}, Lcom/qihoopp/framework/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/qihoopp/framework/c;->a()V

    :cond_4
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lcom/qihoopp/framework/HttpLoadThread;->e:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/qihoopp/framework/HttpLoadThread;->a:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "connection--post--url="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/qihoopp/framework/HttpLoadThread;->e:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/qihoopp/framework/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_15
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_13
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8

    :try_start_3
    iget-boolean v2, p0, Lcom/qihoopp/framework/HttpLoadThread;->i:Z

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/InterruptedException;

    invoke-direct {v2}, Ljava/lang/InterruptedException;-><init>()V

    throw v2

    :catch_1
    move-exception v2

    move-object v10, v7

    move-object v7, v1

    move-object v1, v10

    goto :goto_1

    :cond_5
    const-string v2, "POST"

    invoke-virtual {v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    sget v2, Lcom/qihoopp/framework/HttpLoadThread;->b:I

    invoke-virtual {v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "UTF-8"

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/io/OutputStream;->write([B)V

    sget-object v2, Lcom/qihoopp/framework/HttpLoadThread;->a:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "connection--post--data="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qihoopp/framework/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/qihoopp/framework/HttpLoadThread;->g:Ljava/util/Map;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/qihoopp/framework/HttpLoadThread;->g:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/qihoopp/framework/HttpLoadThread;->g:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/util/Map$Entry;

    move-object v3, v0

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_11
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_3 .. :try_end_3} :catch_f
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_d
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_9

    goto :goto_3

    :catch_2
    move-exception v2

    move-object v10, v7

    move-object v7, v1

    move-object v1, v10

    :goto_4
    :try_start_4
    sget-object v3, Lcom/qihoopp/framework/HttpLoadThread;->a:Ljava/lang/String;

    const-string v4, "UnknownHostException"

    invoke-static {v3, v4, v2}, Lcom/qihoopp/framework/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v7, :cond_a

    invoke-virtual {v7}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    move-object v2, v1

    move v1, v5

    goto/16 :goto_2

    :cond_6
    :try_start_5
    iget-boolean v2, p0, Lcom/qihoopp/framework/HttpLoadThread;->i:Z

    if-eqz v2, :cond_7

    new-instance v2, Ljava/lang/InterruptedException;

    invoke-direct {v2}, Ljava/lang/InterruptedException;-><init>()V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/net/UnknownHostException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/net/SocketException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_11
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_5 .. :try_end_5} :catch_f
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_d
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_9

    :catch_3
    move-exception v2

    move-object v10, v7

    move-object v7, v1

    move-object v1, v10

    :goto_5
    :try_start_6
    sget-object v3, Lcom/qihoopp/framework/HttpLoadThread;->a:Ljava/lang/String;

    const-string v4, "SocketException"

    invoke-static {v3, v4, v2}, Lcom/qihoopp/framework/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v7, :cond_a

    invoke-virtual {v7}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    move-object v2, v1

    move v1, v5

    goto/16 :goto_2

    :cond_7
    :try_start_7
    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v2

    sget-object v3, Lcom/qihoopp/framework/HttpLoadThread;->a:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "connection--post--StateCode="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/qihoopp/framework/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_e

    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qihoopp/framework/HttpLoadThread;->a(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/net/UnknownHostException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/net/SocketException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_7 .. :try_end_7} :catch_11
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_7 .. :try_end_7} :catch_f
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_d
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_b
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_9

    move-result-object v2

    :try_start_8
    sget-object v3, Lcom/qihoopp/framework/HttpLoadThread;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "connection--post--response:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/qihoopp/framework/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_17
    .catch Ljava/net/UnknownHostException; {:try_start_8 .. :try_end_8} :catch_16
    .catch Ljava/net/SocketException; {:try_start_8 .. :try_end_8} :catch_14
    .catch Ljava/net/SocketTimeoutException; {:try_start_8 .. :try_end_8} :catch_12
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_8 .. :try_end_8} :catch_10
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_e
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_a

    :goto_6
    if-eqz v1, :cond_d

    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    move v1, v4

    goto/16 :goto_2

    :catch_4
    move-exception v1

    move-object v3, v1

    move-object v2, v7

    :goto_7
    const/4 v1, 0x3

    :try_start_9
    sget-object v4, Lcom/qihoopp/framework/HttpLoadThread;->a:Ljava/lang/String;

    const-string v5, "SocketTimeoutException"

    invoke-static {v4, v5, v3}, Lcom/qihoopp/framework/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    goto/16 :goto_2

    :catch_5
    move-exception v1

    move-object v3, v1

    move-object v2, v7

    :goto_8
    :try_start_a
    invoke-virtual {v3}, Ljavax/net/ssl/SSLHandshakeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v4, "current time"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v3}, Ljavax/net/ssl/SSLHandshakeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v4, "validation time"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x6

    :goto_9
    sget-object v4, Lcom/qihoopp/framework/HttpLoadThread;->a:Ljava/lang/String;

    const-string v5, "SSLHandshakeException"

    invoke-static {v4, v5, v3}, Lcom/qihoopp/framework/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    goto/16 :goto_2

    :cond_8
    move v1, v6

    goto :goto_9

    :catch_6
    move-exception v1

    move-object v2, v1

    move-object v1, v7

    :goto_a
    :try_start_b
    sget-object v3, Lcom/qihoopp/framework/HttpLoadThread;->a:Ljava/lang/String;

    const-string v4, "IOException"

    invoke-static {v3, v4, v2}, Lcom/qihoopp/framework/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    if-eqz v7, :cond_b

    invoke-virtual {v7}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    move-object v2, v1

    move v1, v6

    goto/16 :goto_2

    :catch_7
    move-exception v1

    move-object v3, v1

    move-object v2, v7

    :goto_b
    const/4 v1, 0x4

    :try_start_c
    sget-object v4, Lcom/qihoopp/framework/HttpLoadThread;->a:Ljava/lang/String;

    const-string v5, "NullPointerException"

    invoke-static {v4, v5, v3}, Lcom/qihoopp/framework/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    goto/16 :goto_2

    :catch_8
    move-exception v1

    move-object v2, v1

    move-object v1, v7

    :goto_c
    :try_start_d
    sget-object v3, Lcom/qihoopp/framework/HttpLoadThread;->a:Ljava/lang/String;

    const-string v4, "Exception"

    invoke-static {v3, v4, v2}, Lcom/qihoopp/framework/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    if-eqz v7, :cond_a

    invoke-virtual {v7}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    move-object v2, v1

    move v1, v5

    goto/16 :goto_2

    :catchall_0
    move-exception v1

    :goto_d
    if-eqz v7, :cond_9

    invoke-virtual {v7}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_9
    throw v1

    :catchall_1
    move-exception v2

    move-object v7, v1

    move-object v1, v2

    goto :goto_d

    :catch_9
    move-exception v2

    move-object v10, v7

    move-object v7, v1

    move-object v1, v10

    goto :goto_c

    :catch_a
    move-exception v3

    move-object v7, v1

    move-object v1, v2

    move-object v2, v3

    goto :goto_c

    :catch_b
    move-exception v2

    move-object v3, v2

    move-object v2, v7

    move-object v7, v1

    goto :goto_b

    :catch_c
    move-exception v3

    move-object v7, v1

    goto :goto_b

    :catch_d
    move-exception v2

    move-object v10, v7

    move-object v7, v1

    move-object v1, v10

    goto :goto_a

    :catch_e
    move-exception v3

    move-object v7, v1

    move-object v1, v2

    move-object v2, v3

    goto :goto_a

    :catch_f
    move-exception v2

    move-object v3, v2

    move-object v2, v7

    move-object v7, v1

    goto/16 :goto_8

    :catch_10
    move-exception v3

    move-object v7, v1

    goto/16 :goto_8

    :catch_11
    move-exception v2

    move-object v3, v2

    move-object v2, v7

    move-object v7, v1

    goto/16 :goto_7

    :catch_12
    move-exception v3

    move-object v7, v1

    goto/16 :goto_7

    :catch_13
    move-exception v1

    move-object v2, v1

    move-object v1, v7

    goto/16 :goto_5

    :catch_14
    move-exception v3

    move-object v7, v1

    move-object v1, v2

    move-object v2, v3

    goto/16 :goto_5

    :catch_15
    move-exception v1

    move-object v2, v1

    move-object v1, v7

    goto/16 :goto_4

    :catch_16
    move-exception v3

    move-object v7, v1

    move-object v1, v2

    move-object v2, v3

    goto/16 :goto_4

    :catch_17
    move-exception v3

    move-object v7, v1

    move-object v1, v2

    goto/16 :goto_1

    :cond_a
    move-object v2, v1

    move v1, v5

    goto/16 :goto_2

    :cond_b
    move-object v2, v1

    move v1, v6

    goto/16 :goto_2

    :cond_c
    move-object v2, v1

    move v1, v4

    goto/16 :goto_2

    :cond_d
    move v1, v4

    goto/16 :goto_2

    :cond_e
    move-object v2, v7

    goto/16 :goto_6
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qihoopp/framework/HttpLoadThread;->i:Z

    return-void
.end method

.method public clone()Lcom/qihoopp/framework/HttpLoadThread;
    .locals 7

    new-instance v0, Lcom/qihoopp/framework/HttpLoadThread;

    iget-object v1, p0, Lcom/qihoopp/framework/HttpLoadThread;->h:Landroid/content/Context;

    iget-object v2, p0, Lcom/qihoopp/framework/HttpLoadThread;->j:Landroid/os/Handler;

    iget-object v3, p0, Lcom/qihoopp/framework/HttpLoadThread;->d:Lcom/qihoopp/framework/HttpRequestMode;

    iget-object v4, p0, Lcom/qihoopp/framework/HttpLoadThread;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/qihoopp/framework/HttpLoadThread;->f:Ljava/util/Map;

    iget-object v6, p0, Lcom/qihoopp/framework/HttpLoadThread;->g:Ljava/util/Map;

    invoke-direct/range {v0 .. v6}, Lcom/qihoopp/framework/HttpLoadThread;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/qihoopp/framework/HttpRequestMode;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/qihoopp/framework/HttpLoadThread;->clone()Lcom/qihoopp/framework/HttpLoadThread;

    move-result-object v0

    return-object v0
.end method

.method public run()V
    .locals 9

    const/4 v5, 0x5

    iget-object v0, p0, Lcom/qihoopp/framework/HttpLoadThread;->d:Lcom/qihoopp/framework/HttpRequestMode;

    sget-object v1, Lcom/qihoopp/framework/HttpRequestMode;->GET:Lcom/qihoopp/framework/HttpRequestMode;

    if-ne v0, v1, :cond_7

    invoke-direct {p0}, Lcom/qihoopp/framework/HttpLoadThread;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_0
    new-instance v0, Lcom/qihoopp/framework/e;

    invoke-direct {v0}, Lcom/qihoopp/framework/e;-><init>()V

    sget v1, Lcom/qihoopp/framework/HttpLoadThread;->b:I

    iget-object v2, p0, Lcom/qihoopp/framework/HttpLoadThread;->k:Ljava/lang/String;

    iget v6, p0, Lcom/qihoopp/framework/HttpLoadThread;->l:I

    invoke-virtual {v0, v1, v2, v6}, Lcom/qihoopp/framework/e;->a(ILjava/lang/String;I)Lorg/apache/http/client/HttpClient;

    move-result-object v0

    check-cast v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v1, Lorg/apache/http/HttpHost;

    iget-object v2, p0, Lcom/qihoopp/framework/HttpLoadThread;->k:Ljava/lang/String;

    iget v6, p0, Lcom/qihoopp/framework/HttpLoadThread;->l:I

    invoke-direct {v1, v2, v6}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    const-string v6, "http.route.default-proxy"

    invoke-interface {v2, v6, v1}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    iget-boolean v1, p0, Lcom/qihoopp/framework/HttpLoadThread;->i:Z

    if-eqz v1, :cond_2

    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    :catch_0
    move-exception v0

    move-object v0, v3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/qihoopp/framework/HttpLoadThread;->a:Ljava/lang/String;

    const-string v2, "\u53d6\u6d88\u7ebf\u7a0b"

    invoke-static {v1, v2}, Lcom/qihoopp/framework/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v0

    move v0, v4

    :goto_1
    iget-boolean v2, p0, Lcom/qihoopp/framework/HttpLoadThread;->i:Z

    if-eqz v2, :cond_0

    const/4 v0, -0x1

    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/qihoopp/framework/HttpLoadThread;->a(ILjava/lang/String;)V

    :cond_1
    :goto_2
    return-void

    :cond_2
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qihoopp/framework/HttpLoadThread;->e:Ljava/lang/String;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/qihoopp/framework/HttpLoadThread;->f:Ljava/util/Map;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/qihoopp/framework/HttpLoadThread;->f:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "?"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qihoopp/framework/HttpLoadThread;->f:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, "="

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v8, "UTF-8"

    invoke-static {v1, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v1, v0

    move-object v0, v3

    :goto_4
    :try_start_3
    sget-object v2, Lcom/qihoopp/framework/HttpLoadThread;->a:Ljava/lang/String;

    const-string v3, "UnknownHostException"

    invoke-static {v2, v3, v1}, Lcom/qihoopp/framework/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v1, v0

    move v0, v5

    goto :goto_1

    :cond_3
    :try_start_4
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_4
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qihoopp/framework/HttpLoadThread;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    const-string v2, "Content-Type"

    const-string v6, "application/x-www-form-urlencoded"

    invoke-virtual {v1, v2, v6}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Charset"

    const-string v6, "UTF-8"

    invoke-virtual {v1, v2, v6}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    iget-boolean v2, p0, Lcom/qihoopp/framework/HttpLoadThread;->i:Z

    if-eqz v2, :cond_5

    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    :catch_2
    move-exception v0

    move-object v1, v0

    move-object v0, v3

    :goto_5
    :try_start_5
    sget-object v2, Lcom/qihoopp/framework/HttpLoadThread;->a:Ljava/lang/String;

    const-string v3, "SocketException"

    invoke-static {v2, v3, v1}, Lcom/qihoopp/framework/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v1, v0

    move v0, v5

    goto/16 :goto_1

    :cond_5
    :try_start_6
    sget-object v2, Lcom/qihoopp/framework/HttpLoadThread;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "httpclient--get--StateCode="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/qihoopp/framework/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_9

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-direct {p0, v0}, Lcom/qihoopp/framework/HttpLoadThread;->a(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/net/SocketException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    move-result-object v0

    :try_start_7
    sget-object v1, Lcom/qihoopp/framework/HttpLoadThread;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "httpclient--get--response:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qihoopp/framework/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_d
    .catch Ljava/net/UnknownHostException; {:try_start_7 .. :try_end_7} :catch_c
    .catch Ljava/net/SocketException; {:try_start_7 .. :try_end_7} :catch_b
    .catch Ljava/net/SocketTimeoutException; {:try_start_7 .. :try_end_7} :catch_a
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_9
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    :goto_6
    move-object v1, v0

    move v0, v4

    goto/16 :goto_1

    :catch_3
    move-exception v0

    move-object v2, v0

    move-object v1, v3

    :goto_7
    const/4 v0, 0x3

    :try_start_8
    sget-object v3, Lcom/qihoopp/framework/HttpLoadThread;->a:Ljava/lang/String;

    const-string v4, "SocketTimeoutException"

    invoke-static {v3, v4, v2}, Lcom/qihoopp/framework/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    throw v0

    :catch_4
    move-exception v0

    move-object v2, v0

    move-object v1, v3

    :goto_8
    const/4 v0, 0x2

    :try_start_9
    sget-object v3, Lcom/qihoopp/framework/HttpLoadThread;->a:Ljava/lang/String;

    const-string v4, "IOException"

    invoke-static {v3, v4, v2}, Lcom/qihoopp/framework/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :catch_5
    move-exception v0

    move-object v2, v0

    move-object v1, v3

    :goto_9
    const/4 v0, 0x4

    sget-object v3, Lcom/qihoopp/framework/HttpLoadThread;->a:Ljava/lang/String;

    const-string v4, "NullPointerException"

    invoke-static {v3, v4, v2}, Lcom/qihoopp/framework/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :catch_6
    move-exception v0

    move-object v1, v0

    move-object v0, v3

    :goto_a
    sget-object v2, Lcom/qihoopp/framework/HttpLoadThread;->a:Ljava/lang/String;

    const-string v3, "Exception"

    invoke-static {v2, v3, v1}, Lcom/qihoopp/framework/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-object v1, v0

    move v0, v5

    goto/16 :goto_1

    :cond_6
    invoke-direct {p0}, Lcom/qihoopp/framework/HttpLoadThread;->c()V

    goto/16 :goto_2

    :cond_7
    iget-object v0, p0, Lcom/qihoopp/framework/HttpLoadThread;->d:Lcom/qihoopp/framework/HttpRequestMode;

    sget-object v1, Lcom/qihoopp/framework/HttpRequestMode;->POST:Lcom/qihoopp/framework/HttpRequestMode;

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/qihoopp/framework/HttpLoadThread;->a()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lcom/qihoopp/framework/HttpLoadThread;->b()V

    goto/16 :goto_2

    :cond_8
    invoke-direct {p0}, Lcom/qihoopp/framework/HttpLoadThread;->d()V

    goto/16 :goto_2

    :catch_7
    move-exception v1

    goto :goto_a

    :catch_8
    move-exception v1

    move-object v2, v1

    move-object v1, v0

    goto :goto_9

    :catch_9
    move-exception v1

    move-object v2, v1

    move-object v1, v0

    goto :goto_8

    :catch_a
    move-exception v1

    move-object v2, v1

    move-object v1, v0

    goto :goto_7

    :catch_b
    move-exception v1

    goto/16 :goto_5

    :catch_c
    move-exception v1

    goto/16 :goto_4

    :catch_d
    move-exception v1

    goto/16 :goto_0

    :cond_9
    move-object v0, v3

    goto :goto_6
.end method
