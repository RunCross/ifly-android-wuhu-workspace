.class Lcom/unipay/unipay_sdk/IIIlIIIIllIlIIIl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic _$1:Lcom/unipay/unipay_sdk/IlIIIIIllIIIlIIl;

.field final synthetic _$2:Ljava/lang/StringBuffer;


# direct methods
.method constructor <init>(Lcom/unipay/unipay_sdk/IlIIIIIllIIIlIIl;Ljava/lang/StringBuffer;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/unipay_sdk/IIIlIIIIllIlIIIl;->_$1:Lcom/unipay/unipay_sdk/IlIIIIIllIIIlIIl;

    iput-object p2, p0, Lcom/unipay/unipay_sdk/IIIlIIIIllIlIIIl;->_$2:Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Lcom/unipay/unipay_sdk/UniPay;->getInstance()Lcom/unipay/unipay_sdk/UniPay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unipay/unipay_sdk/UniPay;->DismissProgressDialog()V

    new-instance v0, Lcom/unipay/dialog/AlipayWebViewDialog;

    iget-object v1, p0, Lcom/unipay/unipay_sdk/IIIlIIIIllIlIIIl;->_$1:Lcom/unipay/unipay_sdk/IlIIIIIllIIIlIIl;

    iget-object v1, v1, Lcom/unipay/unipay_sdk/IlIIIIIllIIIlIIl;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v1}, Lcom/unipay/unipay_sdk/UniPay;->_$39(Lcom/unipay/unipay_sdk/UniPay;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/unipay/unipay_sdk/IIIlIIIIllIlIIIl;->_$2:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/unipay/unipay_sdk/llIIlIIIIIIIlllI;

    iget-object v4, p0, Lcom/unipay/unipay_sdk/IIIlIIIIllIlIIIl;->_$1:Lcom/unipay/unipay_sdk/IlIIIIIllIIIlIIl;

    iget-object v4, v4, Lcom/unipay/unipay_sdk/IlIIIIIllIIIlIIl;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-direct {v3, v4}, Lcom/unipay/unipay_sdk/llIIlIIIIIIIlllI;-><init>(Lcom/unipay/unipay_sdk/UniPay;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/unipay/dialog/AlipayWebViewDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/unipay/dialog/AlipayWebViewDialog$AilpayWebListener;)V

    invoke-virtual {v0}, Lcom/unipay/dialog/AlipayWebViewDialog;->show()V

    return-void
.end method
