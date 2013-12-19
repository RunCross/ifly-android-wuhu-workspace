.class public Lcom/strumsoft/websocket/phonegap/WebSocketFactory;
.super Ljava/lang/Object;


# instance fields
.field a:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/strumsoft/websocket/phonegap/WebSocketFactory;->a:Landroid/webkit/WebView;

    return-void
.end method


# virtual methods
.method public getInstance(Ljava/lang/String;)Lcom/strumsoft/websocket/phonegap/WebSocket;
    .locals 1

    sget-object v0, Lcom/strumsoft/websocket/phonegap/WebSocket$Draft;->DRAFT75:Lcom/strumsoft/websocket/phonegap/WebSocket$Draft;

    invoke-virtual {p0, p1, v0}, Lcom/strumsoft/websocket/phonegap/WebSocketFactory;->getInstance(Ljava/lang/String;Lcom/strumsoft/websocket/phonegap/WebSocket$Draft;)Lcom/strumsoft/websocket/phonegap/WebSocket;

    move-result-object v0

    return-object v0
.end method

.method public getInstance(Ljava/lang/String;Lcom/strumsoft/websocket/phonegap/WebSocket$Draft;)Lcom/strumsoft/websocket/phonegap/WebSocket;
    .locals 7

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Lcom/strumsoft/websocket/phonegap/WebSocket;

    iget-object v2, p0, Lcom/strumsoft/websocket/phonegap/WebSocketFactory;->a:Landroid/webkit/WebView;

    new-instance v3, Ljava/net/URI;

    invoke-direct {v3, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "WEBSOCKET."

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/util/Random;

    invoke-direct {v5}, Ljava/util/Random;-><init>()V

    const/16 v6, 0x64

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v2, v3, p2, v4}, Lcom/strumsoft/websocket/phonegap/WebSocket;-><init>(Landroid/webkit/WebView;Ljava/net/URI;Lcom/strumsoft/websocket/phonegap/WebSocket$Draft;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/strumsoft/websocket/phonegap/WebSocket;->connect()Ljava/lang/Thread;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method
