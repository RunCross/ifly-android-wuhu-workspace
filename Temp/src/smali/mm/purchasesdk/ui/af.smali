.class Lmm/purchasesdk/ui/af;
.super Landroid/webkit/WebChromeClient;


# instance fields
.field final synthetic b:Lmm/purchasesdk/ui/ac;


# direct methods
.method constructor <init>(Lmm/purchasesdk/ui/ac;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/ui/af;->b:Lmm/purchasesdk/ui/ac;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 3

    const-string v0, "WebViewLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "progress ="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmm/purchasesdk/l/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    return-void
.end method
