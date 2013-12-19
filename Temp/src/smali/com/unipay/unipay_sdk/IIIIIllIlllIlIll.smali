.class Lcom/unipay/unipay_sdk/IIIIIllIlllIlIll;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic _$1:Lcom/unipay/unipay_sdk/lIIlIlIIIIlIlIIl;


# direct methods
.method constructor <init>(Lcom/unipay/unipay_sdk/lIIlIlIIIIlIlIIl;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/unipay_sdk/IIIIIllIlllIlIll;->_$1:Lcom/unipay/unipay_sdk/lIIlIlIIIIlIlIIl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/unipay/unipay_sdk/IIIIIllIlllIlIll;->_$1:Lcom/unipay/unipay_sdk/lIIlIlIIIIlIlIIl;

    iget-object v0, v0, Lcom/unipay/unipay_sdk/lIIlIlIIIIlIlIIl;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->_$25(Lcom/unipay/unipay_sdk/UniPay;)Lcom/unipay/beans/UniPay3rdRsp;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/unipay/unipay_sdk/IIIIIllIlllIlIll;->_$1:Lcom/unipay/unipay_sdk/lIIlIlIIIIlIlIIl;

    iget-object v0, v0, Lcom/unipay/unipay_sdk/lIIlIlIIIIlIlIIl;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->_$25(Lcom/unipay/unipay_sdk/UniPay;)Lcom/unipay/beans/UniPay3rdRsp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unipay/beans/UniPay3rdRsp;->getHRet()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unipay/unipay_sdk/IIIIIllIlllIlIll;->_$1:Lcom/unipay/unipay_sdk/lIIlIlIIIIlIlIIl;

    iget-object v0, v0, Lcom/unipay/unipay_sdk/lIIlIlIIIIlIlIIl;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->_$25(Lcom/unipay/unipay_sdk/UniPay;)Lcom/unipay/beans/UniPay3rdRsp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unipay/beans/UniPay3rdRsp;->getStatus()Ljava/lang/String;

    move-result-object v0

    const-string v1, "00000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Lcom/unipay/upompsdk/UpompHelper;

    invoke-direct {v0}, Lcom/unipay/upompsdk/UpompHelper;-><init>()V

    iget-object v1, p0, Lcom/unipay/unipay_sdk/IIIIIllIlllIlIll;->_$1:Lcom/unipay/unipay_sdk/lIIlIlIIIIlIlIIl;

    iget-object v1, v1, Lcom/unipay/unipay_sdk/lIIlIlIIIIlIlIIl;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v1}, Lcom/unipay/unipay_sdk/UniPay;->_$39(Lcom/unipay/unipay_sdk/UniPay;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/unipay/unipay_sdk/IIIIIllIlllIlIll;->_$1:Lcom/unipay/unipay_sdk/lIIlIlIIIIlIlIIl;

    iget-object v2, v2, Lcom/unipay/unipay_sdk/lIIlIlIIIIlIlIIl;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v2}, Lcom/unipay/unipay_sdk/UniPay;->_$25(Lcom/unipay/unipay_sdk/UniPay;)Lcom/unipay/beans/UniPay3rdRsp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/unipay/beans/UniPay3rdRsp;->getMerchantOrderId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/unipay/unipay_sdk/IIIIIllIlllIlIll;->_$1:Lcom/unipay/unipay_sdk/lIIlIlIIIIlIlIIl;

    iget-object v3, v3, Lcom/unipay/unipay_sdk/lIIlIlIIIIlIlIIl;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v3}, Lcom/unipay/unipay_sdk/UniPay;->_$25(Lcom/unipay/unipay_sdk/UniPay;)Lcom/unipay/beans/UniPay3rdRsp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/unipay/beans/UniPay3rdRsp;->getMerchantOrderTime()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/unipay/unipay_sdk/IIIIIllIlllIlIll;->_$1:Lcom/unipay/unipay_sdk/lIIlIlIIIIlIlIIl;

    iget-object v4, v4, Lcom/unipay/unipay_sdk/lIIlIlIIIIlIlIIl;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v4}, Lcom/unipay/unipay_sdk/UniPay;->_$25(Lcom/unipay/unipay_sdk/UniPay;)Lcom/unipay/beans/UniPay3rdRsp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/unipay/beans/UniPay3rdRsp;->getMerchantId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/unipay/unipay_sdk/IIIIIllIlllIlIll;->_$1:Lcom/unipay/unipay_sdk/lIIlIlIIIIlIlIIl;

    iget-object v5, v5, Lcom/unipay/unipay_sdk/lIIlIlIIIIlIlIIl;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v5}, Lcom/unipay/unipay_sdk/UniPay;->_$25(Lcom/unipay/unipay_sdk/UniPay;)Lcom/unipay/beans/UniPay3rdRsp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/unipay/beans/UniPay3rdRsp;->getSign3()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/unipay/upompsdk/UpompHelper;->start_upomp_pay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/unipay/unipay_sdk/IIIIIllIlllIlIll;->_$1:Lcom/unipay/unipay_sdk/lIIlIlIIIIlIlIIl;

    iget-object v0, v0, Lcom/unipay/unipay_sdk/lIIlIlIIIIlIlIIl;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->_$39(Lcom/unipay/unipay_sdk/UniPay;)Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    const-string v2, "11"

    const-string v3, "\u83b7\u53d6\u9a8c\u8bc1\u4fe1\u606f\u5931\u8d25"

    const-string v4, "false"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/unipay/log/LogUtils;->writeLog_pay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unipay/unipay_sdk/IIIIIllIlllIlIll;->_$1:Lcom/unipay/unipay_sdk/lIIlIlIIIIlIlIIl;

    iget-object v0, v0, Lcom/unipay/unipay_sdk/lIIlIlIIIIlIlIIl;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    const-string v1, "\u83b7\u53d6\u9a8c\u8bc1\u4fe1\u606f\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/unipay/unipay_sdk/UniPay;->_$8(Lcom/unipay/unipay_sdk/UniPay;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/unipay/unipay_sdk/IIIIIllIlllIlIll;->_$1:Lcom/unipay/unipay_sdk/lIIlIlIIIIlIlIIl;

    iget-object v0, v0, Lcom/unipay/unipay_sdk/lIIlIlIIIIlIlIIl;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->_$39(Lcom/unipay/unipay_sdk/UniPay;)Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    const-string v2, "11"

    const-string v3, "\u83b7\u53d6\u9a8c\u8bc1\u4fe1\u606f\u5931\u8d25"

    const-string v4, "false"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/unipay/log/LogUtils;->writeLog_pay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unipay/unipay_sdk/IIIIIllIlllIlIll;->_$1:Lcom/unipay/unipay_sdk/lIIlIlIIIIlIlIIl;

    iget-object v0, v0, Lcom/unipay/unipay_sdk/lIIlIlIIIIlIlIIl;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    const-string v1, "\u83b7\u53d6\u9a8c\u8bc1\u4fe1\u606f\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/unipay/unipay_sdk/UniPay;->_$8(Lcom/unipay/unipay_sdk/UniPay;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/unipay/unipay_sdk/IIIIIllIlllIlIll;->_$1:Lcom/unipay/unipay_sdk/lIIlIlIIIIlIlIIl;

    iget-object v0, v0, Lcom/unipay/unipay_sdk/lIIlIlIIIIlIlIIl;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->_$39(Lcom/unipay/unipay_sdk/UniPay;)Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    const-string v2, "11"

    const-string v3, "\u83b7\u53d6\u9a8c\u8bc1\u4fe1\u606f\u5931\u8d25"

    const-string v4, "false"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/unipay/log/LogUtils;->writeLog_pay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unipay/unipay_sdk/IIIIIllIlllIlIll;->_$1:Lcom/unipay/unipay_sdk/lIIlIlIIIIlIlIIl;

    iget-object v0, v0, Lcom/unipay/unipay_sdk/lIIlIlIIIIlIlIIl;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    const-string v1, "\u83b7\u53d6\u9a8c\u8bc1\u4fe1\u606f\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/unipay/unipay_sdk/UniPay;->_$8(Lcom/unipay/unipay_sdk/UniPay;Ljava/lang/String;)V

    goto :goto_0
.end method
