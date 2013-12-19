.class Lcom/unipay/dialog/lIlllIIIIIIIlIll;
.super Landroid/webkit/WebChromeClient;


# instance fields
.field final synthetic _$1:Lcom/unipay/dialog/AlipayWebViewDialog;


# direct methods
.method constructor <init>(Lcom/unipay/dialog/AlipayWebViewDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/dialog/lIlllIIIIIIIlIll;->_$1:Lcom/unipay/dialog/AlipayWebViewDialog;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/unipay/dialog/lIlllIIIIIIIlIll;->_$1:Lcom/unipay/dialog/AlipayWebViewDialog;

    invoke-static {v1}, Lcom/unipay/dialog/AlipayWebViewDialog;->_$2(Lcom/unipay/dialog/AlipayWebViewDialog;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u63d0\u793a"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v1, 0x104000a

    new-instance v2, Lcom/unipay/dialog/IllIllIIlIIIIIlI;

    invoke-direct {v2, p0, p4}, Lcom/unipay/dialog/IllIllIIlIIIIIlI;-><init>(Lcom/unipay/dialog/lIlllIIIIIIIlIll;Landroid/webkit/JsResult;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    const/4 v0, 0x1

    return v0
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    const/16 v0, 0x64

    if-lt p2, v0, :cond_0

    invoke-static {}, Lcom/unipay/unipay_sdk/UniPay;->getInstance()Lcom/unipay/unipay_sdk/UniPay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unipay/unipay_sdk/UniPay;->DismissProgressDialog()V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/unipay/unipay_sdk/UniPay;->getInstance()Lcom/unipay/unipay_sdk/UniPay;

    move-result-object v0

    const-string v1, "\u6b63\u5728\u52a0\u8f7d..."

    invoke-virtual {v0, v1}, Lcom/unipay/unipay_sdk/UniPay;->showProgressDialog(Ljava/lang/String;)V

    goto :goto_0
.end method
