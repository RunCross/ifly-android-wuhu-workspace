.class Lcom/unipay/unipay_sdk/IlllIlIIIlIllIll;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unipay/net/AsyncMultimode$RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unipay/unipay_sdk/UniPay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RequestTradeNumListener"
.end annotation


# instance fields
.field final synthetic _$1:Lcom/unipay/unipay_sdk/UniPay;


# direct methods
.method constructor <init>(Lcom/unipay/unipay_sdk/UniPay;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/unipay_sdk/IlllIlIIIlIllIll;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/io/InputStream;)V
    .locals 2

    invoke-static {}, Lcom/unipay/unipay_sdk/UniPay;->getInstance()Lcom/unipay/unipay_sdk/UniPay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unipay/unipay_sdk/UniPay;->DismissProgressDialog()V

    iget-object v1, p0, Lcom/unipay/unipay_sdk/IlllIlIIIlIllIll;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    const-class v0, Lcom/unipay/beans/UniPay3rdRsp;

    invoke-static {v0, p1}, Lcom/unipay/xmlParser/XMLUtil;->parserXml(Ljava/lang/Class;Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unipay/beans/UniPay3rdRsp;

    invoke-static {v1, v0}, Lcom/unipay/unipay_sdk/UniPay;->_$1(Lcom/unipay/unipay_sdk/UniPay;Lcom/unipay/beans/UniPay3rdRsp;)Lcom/unipay/beans/UniPay3rdRsp;

    iget-object v0, p0, Lcom/unipay/unipay_sdk/IlllIlIIIlIllIll;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-virtual {v0}, Lcom/unipay/unipay_sdk/UniPay;->DismissProgressDialog()V

    iget-object v0, p0, Lcom/unipay/unipay_sdk/IlllIlIIIlIllIll;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->_$39(Lcom/unipay/unipay_sdk/UniPay;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/unipay/unipay_sdk/lIlIllllIllllIIl;

    invoke-direct {v1, p0}, Lcom/unipay/unipay_sdk/lIlIllllIllllIIl;-><init>(Lcom/unipay/unipay_sdk/IlllIlIIIlIllIll;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 5

    iget-object v0, p0, Lcom/unipay/unipay_sdk/IlllIlIIIlIllIll;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-virtual {v0}, Lcom/unipay/unipay_sdk/UniPay;->DismissProgressDialog()V

    iget-object v0, p0, Lcom/unipay/unipay_sdk/IlllIlIIIlIllIll;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->_$39(Lcom/unipay/unipay_sdk/UniPay;)Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    const-string v2, "32"

    const-string v3, "\u83b7\u53d6\u8ba2\u5355\u53f7\u5931\u8d25"

    const-string v4, "true"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/unipay/log/LogUtils;->writeLog_pay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unipay/unipay_sdk/IlllIlIIIlIllIll;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->_$39(Lcom/unipay/unipay_sdk/UniPay;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/unipay/unipay_sdk/IIlIllllIllllIIl;

    invoke-direct {v1, p0}, Lcom/unipay/unipay_sdk/IIlIllllIllllIIl;-><init>(Lcom/unipay/unipay_sdk/IlllIlIIIlIllIll;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
