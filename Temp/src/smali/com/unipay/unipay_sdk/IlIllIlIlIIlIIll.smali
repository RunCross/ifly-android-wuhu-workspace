.class Lcom/unipay/unipay_sdk/IlIllIlIlIIlIIll;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unipay/net/AsyncMultimode$RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unipay/unipay_sdk/UniPay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RequestBuyResultListener"
.end annotation


# instance fields
.field final synthetic _$1:Lcom/unipay/unipay_sdk/UniPay;


# direct methods
.method constructor <init>(Lcom/unipay/unipay_sdk/UniPay;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/unipay_sdk/IlIllIlIlIIlIIll;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/io/InputStream;)V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/unipay/unipay_sdk/IlIllIlIlIIlIIll;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-virtual {v0}, Lcom/unipay/unipay_sdk/UniPay;->DismissProgressDialog()V

    iget-object v1, p0, Lcom/unipay/unipay_sdk/IlIllIlIlIIlIIll;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    const-class v0, Lcom/unipay/beans/PayviaVACRsp;

    invoke-static {v0, p1}, Lcom/unipay/xmlParser/XMLUtil;->parserXml(Ljava/lang/Class;Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unipay/beans/PayviaVACRsp;

    invoke-static {v1, v0}, Lcom/unipay/unipay_sdk/UniPay;->_$1(Lcom/unipay/unipay_sdk/UniPay;Lcom/unipay/beans/PayviaVACRsp;)Lcom/unipay/beans/PayviaVACRsp;

    iget-object v0, p0, Lcom/unipay/unipay_sdk/IlIllIlIlIIlIIll;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->_$7(Lcom/unipay/unipay_sdk/UniPay;)Lcom/unipay/beans/PayviaVACRsp;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/unipay/unipay_sdk/IlIllIlIlIIlIIll;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->_$7(Lcom/unipay/unipay_sdk/UniPay;)Lcom/unipay/beans/PayviaVACRsp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unipay/beans/PayviaVACRsp;->getHRet()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/unipay/unipay_sdk/IlIllIlIlIIlIIll;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->_$7(Lcom/unipay/unipay_sdk/UniPay;)Lcom/unipay/beans/PayviaVACRsp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unipay/beans/PayviaVACRsp;->getStatus()Ljava/lang/String;

    move-result-object v0

    const-string v1, "00000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unipay/unipay_sdk/IlIllIlIlIIlIIll;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->_$39(Lcom/unipay/unipay_sdk/UniPay;)Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    const-string v2, "1"

    const-string v3, "\u5728\u7ebfVAC\u652f\u4ed8\u6210\u529f"

    const-string v4, "true"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/unipay/log/LogUtils;->writeLog_pay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unipay/unipay_sdk/IlIllIlIlIIlIIll;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    const-string v1, "\u652f\u4ed8\u6210\u529f"

    invoke-static {v0, v1}, Lcom/unipay/unipay_sdk/UniPay;->_$3(Lcom/unipay/unipay_sdk/UniPay;Ljava/lang/String;)V

    invoke-static {}, Lcom/unipay/tools/Utilities;->getInstances()Lcom/unipay/tools/Utilities;

    move-result-object v0

    iget-object v1, p0, Lcom/unipay/unipay_sdk/IlIllIlIlIIlIIll;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v1}, Lcom/unipay/unipay_sdk/UniPay;->_$7(Lcom/unipay/unipay_sdk/UniPay;)Lcom/unipay/beans/PayviaVACRsp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unipay/beans/PayviaVACRsp;->getEncrypt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unipay/tools/Utilities;->setEncrypt(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/unipay/unipay_sdk/IlIllIlIlIIlIIll;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->_$39(Lcom/unipay/unipay_sdk/UniPay;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/unipay/unipay_sdk/lIlIIIIlIllIIIIl;

    invoke-direct {v1, p0}, Lcom/unipay/unipay_sdk/lIlIIIIlIllIIIIl;-><init>(Lcom/unipay/unipay_sdk/IlIllIlIlIIlIIll;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/unipay/unipay_sdk/IlIllIlIlIIlIIll;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v1}, Lcom/unipay/unipay_sdk/UniPay;->_$39(Lcom/unipay/unipay_sdk/UniPay;)Landroid/content/Context;

    move-result-object v1

    const-string v2, ""

    const-string v3, "3"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u5f02\u5e38:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "true"

    invoke-static {v1, v2, v3, v0, v4}, Lcom/unipay/log/LogUtils;->writeLog_pay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unipay/unipay_sdk/IlIllIlIlIIlIIll;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->_$20(Lcom/unipay/unipay_sdk/UniPay;)V

    iget-object v0, p0, Lcom/unipay/unipay_sdk/IlIllIlIlIIlIIll;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->_$14(Lcom/unipay/unipay_sdk/UniPay;)Lcom/unipay/unipay_sdk/lIIlIIlllIIIIllI;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unipay/unipay_sdk/IlIllIlIlIIlIIll;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->_$14(Lcom/unipay/unipay_sdk/UniPay;)Lcom/unipay/unipay_sdk/lIIlIIlllIIIIllI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unipay/unipay_sdk/lIIlIIlllIIIIllI;->cancel()V

    :cond_1
    iget-object v0, p0, Lcom/unipay/unipay_sdk/IlIllIlIlIIlIIll;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-virtual {v0}, Lcom/unipay/unipay_sdk/UniPay;->DismissProgressDialog()V

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/unipay/unipay_sdk/IlIllIlIlIIlIIll;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->_$39(Lcom/unipay/unipay_sdk/UniPay;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/unipay/unipay_sdk/IlIllIIlIllIIIIl;

    invoke-direct {v1, p0}, Lcom/unipay/unipay_sdk/IlIllIIlIllIIIIl;-><init>(Lcom/unipay/unipay_sdk/IlIllIlIlIIlIIll;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/unipay/unipay_sdk/IlIllIlIlIIlIIll;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->_$39(Lcom/unipay/unipay_sdk/UniPay;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/unipay/unipay_sdk/llIllIIlIllIIIIl;

    invoke-direct {v1, p0}, Lcom/unipay/unipay_sdk/llIllIIlIllIIIIl;-><init>(Lcom/unipay/unipay_sdk/IlIllIlIlIIlIIll;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 5

    iget-object v0, p0, Lcom/unipay/unipay_sdk/IlIllIlIlIIlIIll;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->_$39(Lcom/unipay/unipay_sdk/UniPay;)Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    const-string v2, "17"

    const-string v3, "\u8bf7\u6c42\u670d\u52a1\u5668\u5931\u8d25"

    const-string v4, "true"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/unipay/log/LogUtils;->writeLog_pay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unipay/unipay_sdk/IlIllIlIlIIlIIll;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    const-string v1, "\u8bf7\u6c42\u670d\u52a1\u5668\u5931\u8d25..."

    invoke-static {v0, v1}, Lcom/unipay/unipay_sdk/UniPay;->_$8(Lcom/unipay/unipay_sdk/UniPay;Ljava/lang/String;)V

    return-void
.end method
