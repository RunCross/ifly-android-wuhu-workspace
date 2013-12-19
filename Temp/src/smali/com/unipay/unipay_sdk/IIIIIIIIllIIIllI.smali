.class Lcom/unipay/unipay_sdk/IIIIIIIIllIIIllI;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unipay/net/AsyncMultimode$RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unipay/unipay_sdk/UniPay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RequestRedeemListener"
.end annotation


# instance fields
.field final synthetic _$1:Lcom/unipay/unipay_sdk/UniPay;


# direct methods
.method constructor <init>(Lcom/unipay/unipay_sdk/UniPay;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/unipay_sdk/IIIIIIIIllIIIllI;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/io/InputStream;)V
    .locals 2

    iget-object v1, p0, Lcom/unipay/unipay_sdk/IIIIIIIIllIIIllI;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    const-class v0, Lcom/unipay/tools/CheckRedeemRsp;

    invoke-static {v0, p1}, Lcom/unipay/xmlParser/XMLUtil;->parserXml(Ljava/lang/Class;Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unipay/tools/CheckRedeemRsp;

    invoke-static {v1, v0}, Lcom/unipay/unipay_sdk/UniPay;->_$1(Lcom/unipay/unipay_sdk/UniPay;Lcom/unipay/tools/CheckRedeemRsp;)Lcom/unipay/tools/CheckRedeemRsp;

    iget-object v0, p0, Lcom/unipay/unipay_sdk/IIIIIIIIllIIIllI;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-virtual {v0}, Lcom/unipay/unipay_sdk/UniPay;->DismissProgressDialog()V

    iget-object v0, p0, Lcom/unipay/unipay_sdk/IIIIIIIIllIIIllI;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->_$1(Lcom/unipay/unipay_sdk/UniPay;)Lcom/unipay/tools/CheckRedeemRsp;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "0"

    iget-object v1, p0, Lcom/unipay/unipay_sdk/IIIIIIIIllIIIllI;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v1}, Lcom/unipay/unipay_sdk/UniPay;->_$1(Lcom/unipay/unipay_sdk/UniPay;)Lcom/unipay/tools/CheckRedeemRsp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unipay/tools/CheckRedeemRsp;->getHRet()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unipay/unipay_sdk/IIIIIIIIllIIIllI;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->_$1(Lcom/unipay/unipay_sdk/UniPay;)Lcom/unipay/tools/CheckRedeemRsp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unipay/tools/CheckRedeemRsp;->getCheckResult()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unipay/unipay_sdk/IIIIIIIIllIIIllI;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->_$39(Lcom/unipay/unipay_sdk/UniPay;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/unipay/unipay_sdk/IIIIlIIIIIIIlIII;

    invoke-direct {v1, p0}, Lcom/unipay/unipay_sdk/IIIIlIIIIIIIlIII;-><init>(Lcom/unipay/unipay_sdk/IIIIIIIIllIIIllI;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/unipay/unipay_sdk/IIIIIIIIllIIIllI;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->_$39(Lcom/unipay/unipay_sdk/UniPay;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/unipay/unipay_sdk/lIIIlIIIIIIIlIII;

    invoke-direct {v1, p0}, Lcom/unipay/unipay_sdk/lIIIlIIIIIIIlIII;-><init>(Lcom/unipay/unipay_sdk/IIIIIIIIllIIIllI;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/unipay/unipay_sdk/IIIIIIIIllIIIllI;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-virtual {v0}, Lcom/unipay/unipay_sdk/UniPay;->DismissProgressDialog()V

    iget-object v0, p0, Lcom/unipay/unipay_sdk/IIIIIIIIllIIIllI;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->_$39(Lcom/unipay/unipay_sdk/UniPay;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/unipay/unipay_sdk/IllIlIIIIIIIlIII;

    invoke-direct {v1, p0}, Lcom/unipay/unipay_sdk/IllIlIIIIIIIlIII;-><init>(Lcom/unipay/unipay_sdk/IIIIIIIIllIIIllI;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method
