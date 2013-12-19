.class public Lcom/test/WebViewWrapper;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/webkit/WebView;

.field private b:Z

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/test/WebViewWrapper;->b:Z

    iput-boolean v0, p0, Lcom/test/WebViewWrapper;->d:Z

    return-void
.end method

.method static synthetic a(Lcom/test/WebViewWrapper;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/test/WebViewWrapper;->e:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getLatestUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/test/WebViewWrapper;->c:Ljava/lang/String;

    return-object v0
.end method

.method public isEnable()Z
    .locals 1

    iget-object v0, p0, Lcom/test/WebViewWrapper;->a:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isForceclose()Z
    .locals 1

    iget-boolean v0, p0, Lcom/test/WebViewWrapper;->d:Z

    return v0
.end method

.method public isOpen()Z
    .locals 1

    iget-boolean v0, p0, Lcom/test/WebViewWrapper;->b:Z

    return v0
.end method

.method public pauseTimers()V
    .locals 1

    iget-object v0, p0, Lcom/test/WebViewWrapper;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->pauseTimers()V

    return-void
.end method

.method public resumeTimers()V
    .locals 1

    iget-object v0, p0, Lcom/test/WebViewWrapper;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->resumeTimers()V

    return-void
.end method

.method public setOfficialWebUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/test/WebViewWrapper;->e:Ljava/lang/String;

    return-void
.end method

.method public setforceclose(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/test/WebViewWrapper;->d:Z

    return-void
.end method

.method public showWebView(Landroid/content/Context;Landroid/widget/FrameLayout;Ljava/lang/String;Z)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v0, "webview : [%s]"

    new-array v1, v6, [Ljava/lang/Object;

    aput-object p3, v1, v5

    invoke-static {v0, v1}, Lcom/test/Debug;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/test/WebViewWrapper;->c:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/test/WebViewWrapper;->b:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03002c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-static {}, Lcom/test/GLRenderer;->getScreenOffsetX()I

    move-result v0

    invoke-static {}, Lcom/test/GLRenderer;->getScreenOffsetY()I

    move-result v1

    invoke-static {}, Lcom/test/GLRenderer;->getScreenOffsetX()I

    move-result v3

    invoke-static {}, Lcom/test/GLRenderer;->getScreenOffsetY()I

    move-result v4

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    if-eqz p3, :cond_1

    if-nez p4, :cond_1

    const-string v0, "\\?"

    invoke-virtual {p3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    aget-object v3, v0, v5

    aget-object v0, v0, v6

    invoke-virtual {v1, v3, v0}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const v0, 0x7f090310

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    const v1, 0x7f09030e

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    iput-object v1, p0, Lcom/test/WebViewWrapper;->a:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/test/WebViewWrapper;->a:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v1, p0, Lcom/test/WebViewWrapper;->a:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    iget-object v1, p0, Lcom/test/WebViewWrapper;->a:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    iget-object v1, p0, Lcom/test/WebViewWrapper;->a:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    iget-object v1, p0, Lcom/test/WebViewWrapper;->a:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-static {}, Lcom/test/DeviceInfo;->getUserAgent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/test/WebViewWrapper;->a:Landroid/webkit/WebView;

    new-instance v3, Lcom/test/v;

    invoke-direct {v3, p0, p1, p2, v0}, Lcom/test/v;-><init>(Lcom/test/WebViewWrapper;Landroid/content/Context;Landroid/widget/FrameLayout;Landroid/widget/ProgressBar;)V

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/test/WebViewWrapper;->a:Landroid/webkit/WebView;

    new-instance v1, Lcom/test/w;

    invoke-direct {v1, p0, p1}, Lcom/test/w;-><init>(Lcom/test/WebViewWrapper;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, p0, Lcom/test/WebViewWrapper;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, p3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/test/WebViewWrapper;->a:Landroid/webkit/WebView;

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->requestFocus(I)Z

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    iput v0, p0, Lcom/test/WebViewWrapper;->f:I

    iget v0, p0, Lcom/test/WebViewWrapper;->f:I

    invoke-virtual {p2, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    iput-boolean v6, p0, Lcom/test/WebViewWrapper;->b:Z

    invoke-static {v5}, Lcom/test/RooneyJActivity;->webViewSetDisable(Z)V

    const-string v0, "showWebView END"

    invoke-static {v0}, Lcom/test/Debug;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public showWebViewPost(Landroid/content/Context;Landroid/widget/FrameLayout;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/test/WebViewWrapper$3;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/test/WebViewWrapper$3;-><init>(Lcom/test/WebViewWrapper;Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public showWebchatView(Landroid/content/Context;Landroid/widget/FrameLayout;Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-boolean v0, p0, Lcom/test/WebViewWrapper;->b:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03002c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-static {}, Lcom/test/GLRenderer;->getScreenOffsetX()I

    move-result v0

    invoke-static {}, Lcom/test/GLRenderer;->getScreenOffsetY()I

    move-result v1

    invoke-static {}, Lcom/test/GLRenderer;->getScreenOffsetX()I

    move-result v3

    invoke-static {}, Lcom/test/GLRenderer;->getScreenOffsetY()I

    move-result v4

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    const v0, 0x7f090310

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    const v1, 0x7f09030e

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    iput-object v1, p0, Lcom/test/WebViewWrapper;->a:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/test/WebViewWrapper;->a:Landroid/webkit/WebView;

    new-instance v3, Lcom/strumsoft/websocket/phonegap/WebSocketFactory;

    iget-object v4, p0, Lcom/test/WebViewWrapper;->a:Landroid/webkit/WebView;

    invoke-direct {v3, v4}, Lcom/strumsoft/websocket/phonegap/WebSocketFactory;-><init>(Landroid/webkit/WebView;)V

    const-string v4, "WebSocketFactory"

    invoke-virtual {v1, v3, v4}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/test/WebViewWrapper;->a:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setPluginsEnabled(Z)V

    iget-object v1, p0, Lcom/test/WebViewWrapper;->a:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    sget-object v3, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    iget-object v1, p0, Lcom/test/WebViewWrapper;->a:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v1, p0, Lcom/test/WebViewWrapper;->a:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    iget-object v1, p0, Lcom/test/WebViewWrapper;->a:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    iget-object v1, p0, Lcom/test/WebViewWrapper;->a:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    iget-object v1, p0, Lcom/test/WebViewWrapper;->a:Landroid/webkit/WebView;

    new-instance v3, Lcom/test/y;

    invoke-direct {v3, p0, v0}, Lcom/test/y;-><init>(Lcom/test/WebViewWrapper;Landroid/widget/ProgressBar;)V

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/test/WebViewWrapper;->a:Landroid/webkit/WebView;

    new-instance v1, Lcom/test/z;

    invoke-direct {v1, p0, p1}, Lcom/test/z;-><init>(Lcom/test/WebViewWrapper;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, p0, Lcom/test/WebViewWrapper;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, p3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/test/WebViewWrapper;->a:Landroid/webkit/WebView;

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->requestFocus(I)Z

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    iput v0, p0, Lcom/test/WebViewWrapper;->f:I

    iget v0, p0, Lcom/test/WebViewWrapper;->f:I

    invoke-virtual {p2, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    iput-boolean v5, p0, Lcom/test/WebViewWrapper;->b:Z

    invoke-static {v6}, Lcom/test/RooneyJActivity;->webViewSetDisable(Z)V

    goto/16 :goto_0
.end method

.method public webViewDestroy(Landroid/widget/FrameLayout;)V
    .locals 1

    iget-boolean v0, p0, Lcom/test/WebViewWrapper;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "close webview"

    invoke-static {v0}, Lcom/test/Debug;->log(Ljava/lang/String;)V

    iget v0, p0, Lcom/test/WebViewWrapper;->f:I

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->removeViewAt(I)V

    iget-object v0, p0, Lcom/test/WebViewWrapper;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/test/WebViewWrapper;->a:Landroid/webkit/WebView;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/test/WebViewWrapper;->b:Z

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/test/RooneyJActivity;->webViewSetDisable(Z)V

    :cond_0
    return-void
.end method
