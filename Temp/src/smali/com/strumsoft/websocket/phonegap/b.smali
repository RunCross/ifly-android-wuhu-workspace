.class final Lcom/strumsoft/websocket/phonegap/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/strumsoft/websocket/phonegap/WebSocket;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/strumsoft/websocket/phonegap/WebSocket;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/strumsoft/websocket/phonegap/b;->a:Lcom/strumsoft/websocket/phonegap/WebSocket;

    iput-object p2, p0, Lcom/strumsoft/websocket/phonegap/b;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/strumsoft/websocket/phonegap/b;->a:Lcom/strumsoft/websocket/phonegap/WebSocket;

    invoke-static {v0}, Lcom/strumsoft/websocket/phonegap/WebSocket;->c(Lcom/strumsoft/websocket/phonegap/WebSocket;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/strumsoft/websocket/phonegap/b;->a:Lcom/strumsoft/websocket/phonegap/WebSocket;

    invoke-static {}, Lcom/strumsoft/websocket/phonegap/WebSocket;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/strumsoft/websocket/phonegap/b;->b:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/strumsoft/websocket/phonegap/WebSocket;->a(Lcom/strumsoft/websocket/phonegap/WebSocket;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
