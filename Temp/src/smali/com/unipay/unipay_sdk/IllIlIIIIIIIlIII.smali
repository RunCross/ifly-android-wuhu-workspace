.class Lcom/unipay/unipay_sdk/IllIlIIIIIIIlIII;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic _$1:Lcom/unipay/unipay_sdk/IIIIIIIIllIIIllI;


# direct methods
.method constructor <init>(Lcom/unipay/unipay_sdk/IIIIIIIIllIIIllI;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/unipay_sdk/IllIlIIIIIIIlIII;->_$1:Lcom/unipay/unipay_sdk/IIIIIIIIllIIIllI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/unipay/unipay_sdk/IllIlIIIIIIIlIII;->_$1:Lcom/unipay/unipay_sdk/IIIIIIIIllIIIllI;

    iget-object v0, v0, Lcom/unipay/unipay_sdk/IIIIIIIIllIIIllI;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->_$39(Lcom/unipay/unipay_sdk/UniPay;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/unipay/dialog/ExchangeCodeSuccess;

    iget-object v1, p0, Lcom/unipay/unipay_sdk/IllIlIIIIIIIlIII;->_$1:Lcom/unipay/unipay_sdk/IIIIIIIIllIIIllI;

    iget-object v1, v1, Lcom/unipay/unipay_sdk/IIIIIIIIllIIIllI;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v1}, Lcom/unipay/unipay_sdk/UniPay;->_$39(Lcom/unipay/unipay_sdk/UniPay;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/unipay/unipay_sdk/IllIlIIIIIIIlIII;->_$1:Lcom/unipay/unipay_sdk/IIIIIIIIllIIIllI;

    iget-object v2, v2, Lcom/unipay/unipay_sdk/IIIIIIIIllIIIllI;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v2}, Lcom/unipay/unipay_sdk/UniPay;->_$36(Lcom/unipay/unipay_sdk/UniPay;)Lcom/unipay/beans/GameBaseBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/unipay/beans/GameBaseBean;->getTelephone()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u60a8\u5151\u6362\u5931\u8d25"

    new-instance v4, Lcom/unipay/unipay_sdk/IlIlIllIlIlIIIII;

    iget-object v5, p0, Lcom/unipay/unipay_sdk/IllIlIIIIIIIlIII;->_$1:Lcom/unipay/unipay_sdk/IIIIIIIIllIIIllI;

    iget-object v5, v5, Lcom/unipay/unipay_sdk/IIIIIIIIllIIIllI;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-direct {v4, v5}, Lcom/unipay/unipay_sdk/IlIlIllIlIlIIIII;-><init>(Lcom/unipay/unipay_sdk/UniPay;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/unipay/dialog/ExchangeCodeSuccess;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/unipay/dialog/ExchangeCodeSuccess$ExchangeCodeSuccessListener;)V

    invoke-virtual {v0}, Lcom/unipay/dialog/ExchangeCodeSuccess;->show()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/unipay/dialog/PExchangeCodeSuccess;

    iget-object v1, p0, Lcom/unipay/unipay_sdk/IllIlIIIIIIIlIII;->_$1:Lcom/unipay/unipay_sdk/IIIIIIIIllIIIllI;

    iget-object v1, v1, Lcom/unipay/unipay_sdk/IIIIIIIIllIIIllI;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v1}, Lcom/unipay/unipay_sdk/UniPay;->_$39(Lcom/unipay/unipay_sdk/UniPay;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/unipay/unipay_sdk/IllIlIIIIIIIlIII;->_$1:Lcom/unipay/unipay_sdk/IIIIIIIIllIIIllI;

    iget-object v2, v2, Lcom/unipay/unipay_sdk/IIIIIIIIllIIIllI;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v2}, Lcom/unipay/unipay_sdk/UniPay;->_$36(Lcom/unipay/unipay_sdk/UniPay;)Lcom/unipay/beans/GameBaseBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/unipay/beans/GameBaseBean;->getTelephone()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u60a8\u5151\u6362\u5931\u8d25"

    new-instance v4, Lcom/unipay/unipay_sdk/IlIlIllIlIlIIIII;

    iget-object v5, p0, Lcom/unipay/unipay_sdk/IllIlIIIIIIIlIII;->_$1:Lcom/unipay/unipay_sdk/IIIIIIIIllIIIllI;

    iget-object v5, v5, Lcom/unipay/unipay_sdk/IIIIIIIIllIIIllI;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-direct {v4, v5}, Lcom/unipay/unipay_sdk/IlIlIllIlIlIIIII;-><init>(Lcom/unipay/unipay_sdk/UniPay;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/unipay/dialog/PExchangeCodeSuccess;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/unipay/dialog/ExchangeCodeSuccess$ExchangeCodeSuccessListener;)V

    invoke-virtual {v0}, Lcom/unipay/dialog/PExchangeCodeSuccess;->show()V

    goto :goto_0
.end method
