.class Lcom/unipay/unipay_sdk/lIIlIlIIIIlIlIIl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unipay/net/AsyncMultimode$RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unipay/unipay_sdk/UniPay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RequestCheckListener"
.end annotation


# instance fields
.field final synthetic _$1:Lcom/unipay/unipay_sdk/UniPay;


# direct methods
.method constructor <init>(Lcom/unipay/unipay_sdk/UniPay;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/unipay_sdk/lIIlIlIIIIlIlIIl;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/io/InputStream;)V
    .locals 2

    iget-object v1, p0, Lcom/unipay/unipay_sdk/lIIlIlIIIIlIlIIl;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    const-class v0, Lcom/unipay/beans/UniPay3rdRsp;

    invoke-static {v0, p1}, Lcom/unipay/xmlParser/XMLUtil;->parserXml(Ljava/lang/Class;Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unipay/beans/UniPay3rdRsp;

    invoke-static {v1, v0}, Lcom/unipay/unipay_sdk/UniPay;->_$1(Lcom/unipay/unipay_sdk/UniPay;Lcom/unipay/beans/UniPay3rdRsp;)Lcom/unipay/beans/UniPay3rdRsp;

    iget-object v0, p0, Lcom/unipay/unipay_sdk/lIIlIlIIIIlIlIIl;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-virtual {v0}, Lcom/unipay/unipay_sdk/UniPay;->DismissProgressDialog()V

    iget-object v0, p0, Lcom/unipay/unipay_sdk/lIIlIlIIIIlIlIIl;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->_$39(Lcom/unipay/unipay_sdk/UniPay;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/unipay/unipay_sdk/IIIIIllIlllIlIll;

    invoke-direct {v1, p0}, Lcom/unipay/unipay_sdk/IIIIIllIlllIlIll;-><init>(Lcom/unipay/unipay_sdk/lIIlIlIIIIlIlIIl;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 2

    iget-object v0, p0, Lcom/unipay/unipay_sdk/lIIlIlIIIIlIlIIl;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-virtual {v0}, Lcom/unipay/unipay_sdk/UniPay;->DismissProgressDialog()V

    iget-object v0, p0, Lcom/unipay/unipay_sdk/lIIlIlIIIIlIlIIl;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->_$39(Lcom/unipay/unipay_sdk/UniPay;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/unipay/unipay_sdk/lIIIIllIlllIlIll;

    invoke-direct {v1, p0}, Lcom/unipay/unipay_sdk/lIIIIllIlllIlIll;-><init>(Lcom/unipay/unipay_sdk/lIIlIlIIIIlIlIIl;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
