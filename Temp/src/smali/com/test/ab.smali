.class final Lcom/test/ab;
.super Landroid/webkit/WebViewClient;


# instance fields
.field final synthetic a:Lcom/test/WebchatActivity;


# direct methods
.method constructor <init>(Lcom/test/WebchatActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/test/ab;->a:Lcom/test/WebchatActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/test/ab;->a:Lcom/test/WebchatActivity;

    invoke-static {v0}, Lcom/test/WebchatActivity;->a(Lcom/test/WebchatActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/test/ab;->a:Lcom/test/WebchatActivity;

    invoke-static {v0}, Lcom/test/WebchatActivity;->a(Lcom/test/WebchatActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const/4 v0, 0x1

    return v0
.end method
