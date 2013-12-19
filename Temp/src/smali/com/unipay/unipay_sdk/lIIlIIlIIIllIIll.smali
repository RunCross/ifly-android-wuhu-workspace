.class Lcom/unipay/unipay_sdk/lIIlIIlIIIllIIll;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic _$1:Lcom/unipay/unipay_sdk/llIllIIIIlIllIlI;


# direct methods
.method constructor <init>(Lcom/unipay/unipay_sdk/llIllIIIIlIllIlI;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/unipay_sdk/lIIlIIlIIIllIIll;->_$1:Lcom/unipay/unipay_sdk/llIllIIIIlIllIlI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/unipay/unipay_sdk/lIIlIIlIIIllIIll;->_$1:Lcom/unipay/unipay_sdk/llIllIIIIlIllIlI;

    iget-object v0, v0, Lcom/unipay/unipay_sdk/llIllIIIIlIllIlI;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->_$25(Lcom/unipay/unipay_sdk/UniPay;)Lcom/unipay/beans/UniPay3rdRsp;

    move-result-object v0

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/unipay/unipay_sdk/lIIlIIlIIIllIIll;->_$1:Lcom/unipay/unipay_sdk/llIllIIIIlIllIlI;

    iget-object v0, v0, Lcom/unipay/unipay_sdk/llIllIIIIlIllIlI;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->_$25(Lcom/unipay/unipay_sdk/UniPay;)Lcom/unipay/beans/UniPay3rdRsp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unipay/beans/UniPay3rdRsp;->getMENO()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/unipay/unipay_sdk/lIIlIIlIIIllIIll;->_$1:Lcom/unipay/unipay_sdk/llIllIIIIlIllIlI;

    iget-object v1, v1, Lcom/unipay/unipay_sdk/llIllIIIIlIllIlI;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v1}, Lcom/unipay/unipay_sdk/UniPay;->_$25(Lcom/unipay/unipay_sdk/UniPay;)Lcom/unipay/beans/UniPay3rdRsp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unipay/beans/UniPay3rdRsp;->getMENO()Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/unipay/unipay_sdk/lIIlIIlIIIllIIll;->_$1:Lcom/unipay/unipay_sdk/llIllIIIIlIllIlI;

    iget-object v1, v1, Lcom/unipay/unipay_sdk/llIllIIIIlIllIlI;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v1}, Lcom/unipay/unipay_sdk/UniPay;->_$25(Lcom/unipay/unipay_sdk/UniPay;)Lcom/unipay/beans/UniPay3rdRsp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unipay/beans/UniPay3rdRsp;->getHRet()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/unipay/unipay_sdk/lIIlIIlIIIllIIll;->_$1:Lcom/unipay/unipay_sdk/llIllIIIIlIllIlI;

    iget-object v1, v1, Lcom/unipay/unipay_sdk/llIllIIIIlIllIlI;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v1}, Lcom/unipay/unipay_sdk/UniPay;->_$25(Lcom/unipay/unipay_sdk/UniPay;)Lcom/unipay/beans/UniPay3rdRsp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unipay/beans/UniPay3rdRsp;->getStatus()Ljava/lang/String;

    move-result-object v1

    const-string v2, "00000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/unipay/unipay_sdk/lIIlIIlIIIllIIll;->_$1:Lcom/unipay/unipay_sdk/llIllIIIIlIllIlI;

    iget-object v0, v0, Lcom/unipay/unipay_sdk/llIllIIIIlIllIlI;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->_$39(Lcom/unipay/unipay_sdk/UniPay;)Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    const-string v2, "2"

    const-string v3, "\u795e\u5dde\u4ed8\u652f\u4ed8\u8bf7\u6c42\u5df2\u63d0\u4ea4"

    const-string v4, "true"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/unipay/log/LogUtils;->writeLog_pay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unipay/unipay_sdk/lIIlIIlIIIllIIll;->_$1:Lcom/unipay/unipay_sdk/llIllIIIIlIllIlI;

    iget-object v0, v0, Lcom/unipay/unipay_sdk/llIllIIIIlIllIlI;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->_$19(Lcom/unipay/unipay_sdk/UniPay;)V

    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string v0, "\u652f\u4ed8\u5931\u8d25"

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/unipay/unipay_sdk/lIIlIIlIIIllIIll;->_$1:Lcom/unipay/unipay_sdk/llIllIIIIlIllIlI;

    iget-object v1, v1, Lcom/unipay/unipay_sdk/llIllIIIIlIllIlI;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v1}, Lcom/unipay/unipay_sdk/UniPay;->_$39(Lcom/unipay/unipay_sdk/UniPay;)Landroid/content/Context;

    move-result-object v1

    const-string v2, ""

    const-string v3, "3"

    const-string v4, "\u795e\u5dde\u4ed8\u652f\u4ed8\u5931\u8d25"

    const-string v5, "true"

    invoke-static {v1, v2, v3, v4, v5}, Lcom/unipay/log/LogUtils;->writeLog_pay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unipay/unipay_sdk/lIIlIIlIIIllIIll;->_$1:Lcom/unipay/unipay_sdk/llIllIIIIlIllIlI;

    iget-object v1, v1, Lcom/unipay/unipay_sdk/llIllIIIIlIllIlI;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v1, v0}, Lcom/unipay/unipay_sdk/UniPay;->_$8(Lcom/unipay/unipay_sdk/UniPay;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/unipay/unipay_sdk/lIIlIIlIIIllIIll;->_$1:Lcom/unipay/unipay_sdk/llIllIIIIlIllIlI;

    iget-object v1, v1, Lcom/unipay/unipay_sdk/llIllIIIIlIllIlI;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v1}, Lcom/unipay/unipay_sdk/UniPay;->_$39(Lcom/unipay/unipay_sdk/UniPay;)Landroid/content/Context;

    move-result-object v1

    const-string v2, ""

    const-string v3, "3"

    const-string v4, "\u795e\u5dde\u4ed8\u652f\u4ed8\u5931\u8d25"

    const-string v5, "true"

    invoke-static {v1, v2, v3, v4, v5}, Lcom/unipay/log/LogUtils;->writeLog_pay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unipay/unipay_sdk/lIIlIIlIIIllIIll;->_$1:Lcom/unipay/unipay_sdk/llIllIIIIlIllIlI;

    iget-object v1, v1, Lcom/unipay/unipay_sdk/llIllIIIIlIllIlI;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v1, v0}, Lcom/unipay/unipay_sdk/UniPay;->_$8(Lcom/unipay/unipay_sdk/UniPay;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/unipay/unipay_sdk/lIIlIIlIIIllIIll;->_$1:Lcom/unipay/unipay_sdk/llIllIIIIlIllIlI;

    iget-object v0, v0, Lcom/unipay/unipay_sdk/llIllIIIIlIllIlI;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->_$39(Lcom/unipay/unipay_sdk/UniPay;)Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    const-string v2, "7"

    const-string v3, "\u8bf7\u6c42\u670d\u52a1\u5668\u5931\u8d25"

    const-string v4, "true"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/unipay/log/LogUtils;->writeLog_pay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unipay/unipay_sdk/lIIlIIlIIIllIIll;->_$1:Lcom/unipay/unipay_sdk/llIllIIIIlIllIlI;

    iget-object v0, v0, Lcom/unipay/unipay_sdk/llIllIIIIlIllIlI;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    const-string v1, "\u8bf7\u6c42\u670d\u52a1\u5668\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/unipay/unipay_sdk/UniPay;->_$8(Lcom/unipay/unipay_sdk/UniPay;Ljava/lang/String;)V

    goto :goto_1
.end method
