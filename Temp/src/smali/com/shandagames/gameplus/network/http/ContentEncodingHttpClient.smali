.class public Lcom/shandagames/gameplus/network/http/ContentEncodingHttpClient;
.super Lorg/apache/http/impl/client/DefaultHttpClient;


# annotations
.annotation build Lcom/shandagames/gameplus/network/http/ThreadSafe;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/shandagames/gameplus/network/http/ContentEncodingHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/params/HttpParams;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/shandagames/gameplus/network/http/ContentEncodingHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    return-void
.end method


# virtual methods
.method protected createHttpProcessor()Lorg/apache/http/protocol/BasicHttpProcessor;
    .locals 2

    invoke-super {p0}, Lorg/apache/http/impl/client/DefaultHttpClient;->createHttpProcessor()Lorg/apache/http/protocol/BasicHttpProcessor;

    move-result-object v0

    new-instance v1, Lcom/shandagames/gameplus/network/http/RequestAcceptEncoding;

    invoke-direct {v1}, Lcom/shandagames/gameplus/network/http/RequestAcceptEncoding;-><init>()V

    invoke-virtual {v0, v1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    new-instance v1, Lcom/shandagames/gameplus/network/http/ResponseContentEncoding;

    invoke-direct {v1}, Lcom/shandagames/gameplus/network/http/ResponseContentEncoding;-><init>()V

    invoke-virtual {v0, v1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addResponseInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V

    return-object v0
.end method
