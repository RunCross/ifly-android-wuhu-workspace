.class final Lcom/strumsoft/websocket/phonegap/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/strumsoft/websocket/phonegap/WebSocket;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/strumsoft/websocket/phonegap/WebSocket;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/strumsoft/websocket/phonegap/a;->a:Lcom/strumsoft/websocket/phonegap/WebSocket;

    iput-object p2, p0, Lcom/strumsoft/websocket/phonegap/a;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/strumsoft/websocket/phonegap/a;->a:Lcom/strumsoft/websocket/phonegap/WebSocket;

    invoke-static {v0}, Lcom/strumsoft/websocket/phonegap/WebSocket;->a(Lcom/strumsoft/websocket/phonegap/WebSocket;)Lcom/strumsoft/websocket/phonegap/WebSocket;

    move-result-object v0

    invoke-static {v0}, Lcom/strumsoft/websocket/phonegap/WebSocket;->b(Lcom/strumsoft/websocket/phonegap/WebSocket;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/strumsoft/websocket/phonegap/a;->a:Lcom/strumsoft/websocket/phonegap/WebSocket;

    invoke-static {v0}, Lcom/strumsoft/websocket/phonegap/WebSocket;->a(Lcom/strumsoft/websocket/phonegap/WebSocket;)Lcom/strumsoft/websocket/phonegap/WebSocket;

    move-result-object v0

    iget-object v1, p0, Lcom/strumsoft/websocket/phonegap/a;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/strumsoft/websocket/phonegap/WebSocket;->a(Lcom/strumsoft/websocket/phonegap/WebSocket;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/strumsoft/websocket/phonegap/a;->a:Lcom/strumsoft/websocket/phonegap/WebSocket;

    invoke-static {v1}, Lcom/strumsoft/websocket/phonegap/WebSocket;->a(Lcom/strumsoft/websocket/phonegap/WebSocket;)Lcom/strumsoft/websocket/phonegap/WebSocket;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/strumsoft/websocket/phonegap/WebSocket;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/strumsoft/websocket/phonegap/a;->a:Lcom/strumsoft/websocket/phonegap/WebSocket;

    invoke-static {v0}, Lcom/strumsoft/websocket/phonegap/WebSocket;->a(Lcom/strumsoft/websocket/phonegap/WebSocket;)Lcom/strumsoft/websocket/phonegap/WebSocket;

    move-result-object v0

    new-instance v1, Ljava/nio/channels/NotYetConnectedException;

    invoke-direct {v1}, Ljava/nio/channels/NotYetConnectedException;-><init>()V

    invoke-virtual {v0, v1}, Lcom/strumsoft/websocket/phonegap/WebSocket;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
