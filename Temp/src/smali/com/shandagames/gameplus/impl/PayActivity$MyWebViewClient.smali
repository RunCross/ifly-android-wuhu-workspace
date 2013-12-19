.class Lcom/shandagames/gameplus/impl/PayActivity$MyWebViewClient;
.super Landroid/webkit/WebViewClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shandagames/gameplus/impl/PayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shandagames/gameplus/impl/PayActivity;


# direct methods
.method private constructor <init>(Lcom/shandagames/gameplus/impl/PayActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/shandagames/gameplus/impl/PayActivity$MyWebViewClient;->this$0:Lcom/shandagames/gameplus/impl/PayActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/shandagames/gameplus/impl/PayActivity;Lcom/shandagames/gameplus/impl/PayActivity$MyWebViewClient;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/shandagames/gameplus/impl/PayActivity$MyWebViewClient;-><init>(Lcom/shandagames/gameplus/impl/PayActivity;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/shandagames/gameplus/impl/PayActivity$MyWebViewClient;->this$0:Lcom/shandagames/gameplus/impl/PayActivity;

    const/4 v1, 0x1

    #calls: Lcom/shandagames/gameplus/impl/PayActivity;->sendMessage(I)V
    invoke-static {v0, v1}, Lcom/shandagames/gameplus/impl/PayActivity;->access$5(Lcom/shandagames/gameplus/impl/PayActivity;I)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/shandagames/gameplus/impl/PayActivity$MyWebViewClient;->this$0:Lcom/shandagames/gameplus/impl/PayActivity;

    const/4 v1, 0x0

    #calls: Lcom/shandagames/gameplus/impl/PayActivity;->sendMessage(I)V
    invoke-static {v0, v1}, Lcom/shandagames/gameplus/impl/PayActivity;->access$5(Lcom/shandagames/gameplus/impl/PayActivity;I)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/shandagames/gameplus/impl/PayActivity$MyWebViewClient;->this$0:Lcom/shandagames/gameplus/impl/PayActivity;

    #getter for: Lcom/shandagames/gameplus/impl/PayActivity;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/shandagames/gameplus/impl/PayActivity;->access$6(Lcom/shandagames/gameplus/impl/PayActivity;)Landroid/webkit/WebView;

    move-result-object v0

    const-string v1, "<html><head><meta content=\"text/html; charset=utf-8\" http-equiv=\"Content-Type\" /></head><body style=\'text-align:center;line-height:300px;\'>\u7f51\u7edc\u8fde\u63a5\u8d85\u65f6\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u6216\u7a0d\u5019\u518d\u8bd5\uff01</body></html>"

    const-string v2, "text/html; charset=UTF-8"

    const-string v3, "UTF-8"

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0

    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5

    const/4 v4, 0x1

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v0, "http:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "https:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :goto_0
    return v4

    :cond_1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "\\?body="

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const-string v3, "sms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    array-length v2, v1

    if-le v2, v4, :cond_2

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.SENDTO"

    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v2, "sms_body"

    const/4 v3, 0x1

    aget-object v1, v1, v3

    invoke-static {v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_2
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
