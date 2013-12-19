.class Lmm/purchasesdk/ui/ae;
.super Landroid/webkit/WebViewClient;


# instance fields
.field final synthetic a:Landroid/widget/RelativeLayout$LayoutParams;

.field final synthetic b:Lmm/purchasesdk/ui/ac;


# direct methods
.method constructor <init>(Lmm/purchasesdk/ui/ac;Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/ui/ae;->b:Lmm/purchasesdk/ui/ac;

    iput-object p2, p0, Lmm/purchasesdk/ui/ae;->a:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    const-string v0, "WebViewLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Finished loading URL: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmm/purchasesdk/l/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lmm/purchasesdk/ui/ae;->b:Lmm/purchasesdk/ui/ac;

    invoke-static {v0}, Lmm/purchasesdk/ui/ac;->a(Lmm/purchasesdk/ui/ac;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lmm/purchasesdk/ui/ae;->b:Lmm/purchasesdk/ui/ac;

    invoke-static {v1}, Lmm/purchasesdk/ui/ac;->a(Lmm/purchasesdk/ui/ac;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lmm/purchasesdk/ui/ae;->b:Lmm/purchasesdk/ui/ac;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmm/purchasesdk/ui/ac;->a(Lmm/purchasesdk/ui/ac;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    iget-object v0, p0, Lmm/purchasesdk/ui/ae;->b:Lmm/purchasesdk/ui/ac;

    invoke-static {v0}, Lmm/purchasesdk/ui/ac;->a(Lmm/purchasesdk/ui/ac;)Landroid/widget/ProgressBar;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmm/purchasesdk/ui/ae;->b:Lmm/purchasesdk/ui/ac;

    new-instance v1, Landroid/widget/ProgressBar;

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lmm/purchasesdk/ui/ac;->a(Lmm/purchasesdk/ui/ac;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;

    iget-object v0, p0, Lmm/purchasesdk/ui/ae;->b:Lmm/purchasesdk/ui/ac;

    invoke-static {v0}, Lmm/purchasesdk/ui/ac;->a(Lmm/purchasesdk/ui/ac;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lmm/purchasesdk/ui/ae;->b:Lmm/purchasesdk/ui/ac;

    invoke-static {v1}, Lmm/purchasesdk/ui/ac;->a(Lmm/purchasesdk/ui/ac;)Landroid/widget/ProgressBar;

    move-result-object v1

    iget-object v2, p0, Lmm/purchasesdk/ui/ae;->a:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/ui/ae;->b:Lmm/purchasesdk/ui/ac;

    invoke-static {v0}, Lmm/purchasesdk/ui/ac;->a(Lmm/purchasesdk/ui/ac;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method
