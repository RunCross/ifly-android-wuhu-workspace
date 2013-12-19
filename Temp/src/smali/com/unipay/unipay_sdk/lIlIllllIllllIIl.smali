.class Lcom/unipay/unipay_sdk/lIlIllllIllllIIl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic _$1:Lcom/unipay/unipay_sdk/IlllIlIIIlIllIll;


# direct methods
.method constructor <init>(Lcom/unipay/unipay_sdk/IlllIlIIIlIllIll;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/unipay_sdk/lIlIllllIllllIIl;->_$1:Lcom/unipay/unipay_sdk/IlllIlIIIlIllIll;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/unipay/unipay_sdk/lIlIllllIllllIIl;->_$1:Lcom/unipay/unipay_sdk/IlllIlIIIlIllIll;

    iget-object v0, v0, Lcom/unipay/unipay_sdk/IlllIlIIIlIllIll;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->_$25(Lcom/unipay/unipay_sdk/UniPay;)Lcom/unipay/beans/UniPay3rdRsp;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/unipay/unipay_sdk/lIlIllllIllllIIl;->_$1:Lcom/unipay/unipay_sdk/IlllIlIIIlIllIll;

    iget-object v0, v0, Lcom/unipay/unipay_sdk/IlllIlIIIlIllIll;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->_$25(Lcom/unipay/unipay_sdk/UniPay;)Lcom/unipay/beans/UniPay3rdRsp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unipay/beans/UniPay3rdRsp;->getHRet()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/unipay/unipay_sdk/lIlIllllIllllIIl;->_$1:Lcom/unipay/unipay_sdk/IlllIlIIIlIllIll;

    iget-object v0, v0, Lcom/unipay/unipay_sdk/IlllIlIIIlIllIll;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->_$25(Lcom/unipay/unipay_sdk/UniPay;)Lcom/unipay/beans/UniPay3rdRsp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unipay/beans/UniPay3rdRsp;->getStatus()Ljava/lang/String;

    move-result-object v0

    const-string v1, "00000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unipay/unipay_sdk/lIlIllllIllllIIl;->_$1:Lcom/unipay/unipay_sdk/IlllIlIIIlIllIll;

    iget-object v0, v0, Lcom/unipay/unipay_sdk/IlllIlIIIlIllIll;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->_$24(Lcom/unipay/unipay_sdk/UniPay;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unipay/unipay_sdk/lIlIllllIllllIIl;->_$1:Lcom/unipay/unipay_sdk/IlllIlIIIlIllIll;

    iget-object v0, v0, Lcom/unipay/unipay_sdk/IlllIlIIIlIllIll;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->_$39(Lcom/unipay/unipay_sdk/UniPay;)Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    const-string v2, "31"

    const-string v3, "\u652f\u4ed8\u5b9d\u8d26\u6237\u68c0\u6d4b\u5931\u8d25"

    const-string v4, "true"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/unipay/log/LogUtils;->writeLog_pay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unipay/unipay_sdk/lIlIllllIllllIIl;->_$1:Lcom/unipay/unipay_sdk/IlllIlIIIlIllIll;

    iget-object v0, v0, Lcom/unipay/unipay_sdk/IlllIlIIIlIllIll;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    const-string v1, "\u652f\u4ed8\u5b9d\u652f\u4ed8\u8d26\u6237\u68c0\u6d4b\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/unipay/unipay_sdk/UniPay;->_$8(Lcom/unipay/unipay_sdk/UniPay;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/unipay/unipay_sdk/lIlIllllIllllIIl;->_$1:Lcom/unipay/unipay_sdk/IlllIlIIIlIllIll;

    iget-object v0, v0, Lcom/unipay/unipay_sdk/IlllIlIIIlIllIll;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->_$25(Lcom/unipay/unipay_sdk/UniPay;)Lcom/unipay/beans/UniPay3rdRsp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unipay/beans/UniPay3rdRsp;->getConsumePrice()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    const-wide/high16 v2, 0x4059

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/unipay/unipay_sdk/lIlIllllIllllIIl;->_$1:Lcom/unipay/unipay_sdk/IlllIlIIIlIllIll;

    iget-object v1, v1, Lcom/unipay/unipay_sdk/IlllIlIIIlIllIll;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v1, v0}, Lcom/unipay/unipay_sdk/UniPay;->_$6(Lcom/unipay/unipay_sdk/UniPay;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/unipay/unipay_sdk/lIlIllllIllllIIl;->_$1:Lcom/unipay/unipay_sdk/IlllIlIIIlIllIll;

    iget-object v0, v0, Lcom/unipay/unipay_sdk/IlllIlIIIlIllIll;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    iget-object v1, p0, Lcom/unipay/unipay_sdk/lIlIllllIllllIIl;->_$1:Lcom/unipay/unipay_sdk/IlllIlIIIlIllIll;

    iget-object v1, v1, Lcom/unipay/unipay_sdk/IlllIlIIIlIllIll;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v1}, Lcom/unipay/unipay_sdk/UniPay;->_$25(Lcom/unipay/unipay_sdk/UniPay;)Lcom/unipay/beans/UniPay3rdRsp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unipay/beans/UniPay3rdRsp;->getWoorderid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unipay/unipay_sdk/UniPay;->_$5(Lcom/unipay/unipay_sdk/UniPay;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/unipay/unipay_sdk/lIlIllllIllllIIl;->_$1:Lcom/unipay/unipay_sdk/IlllIlIIIlIllIll;

    iget-object v0, v0, Lcom/unipay/unipay_sdk/IlllIlIIIlIllIll;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->_$25(Lcom/unipay/unipay_sdk/UniPay;)Lcom/unipay/beans/UniPay3rdRsp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unipay/beans/UniPay3rdRsp;->getCallbackURL()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unipay/Alipay/PartnerConfig;->setNotify_url(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unipay/unipay_sdk/lIlIllllIllllIIl;->_$1:Lcom/unipay/unipay_sdk/IlllIlIIIlIllIll;

    iget-object v0, v0, Lcom/unipay/unipay_sdk/IlllIlIIIlIllIll;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->_$23(Lcom/unipay/unipay_sdk/UniPay;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/unipay/unipay_sdk/lIlIllllIllllIIl;->_$1:Lcom/unipay/unipay_sdk/IlllIlIIIlIllIll;

    iget-object v1, v1, Lcom/unipay/unipay_sdk/IlllIlIIIlIllIll;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v1}, Lcom/unipay/unipay_sdk/UniPay;->_$22(Lcom/unipay/unipay_sdk/UniPay;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/unipay/unipay_sdk/lIlIllllIllllIIl;->_$1:Lcom/unipay/unipay_sdk/IlllIlIIIlIllIll;

    iget-object v2, v2, Lcom/unipay/unipay_sdk/IlllIlIIIlIllIll;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v2, v1, v0}, Lcom/unipay/unipay_sdk/UniPay;->_$1(Lcom/unipay/unipay_sdk/UniPay;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&sign=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/unipay/unipay_sdk/lIlIllllIllllIIl;->_$1:Lcom/unipay/unipay_sdk/IlllIlIIIlIllIll;

    iget-object v1, v1, Lcom/unipay/unipay_sdk/IlllIlIIIlIllIll;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v1}, Lcom/unipay/unipay_sdk/UniPay;->_$22(Lcom/unipay/unipay_sdk/UniPay;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/unipay/Alipay/MobileSecurePayer;

    invoke-direct {v2}, Lcom/unipay/Alipay/MobileSecurePayer;-><init>()V

    iget-object v0, p0, Lcom/unipay/unipay_sdk/lIlIllllIllllIIl;->_$1:Lcom/unipay/unipay_sdk/IlllIlIIIlIllIll;

    iget-object v0, v0, Lcom/unipay/unipay_sdk/IlllIlIIIlIllIll;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->_$21(Lcom/unipay/unipay_sdk/UniPay;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/unipay/unipay_sdk/lIlIllllIllllIIl;->_$1:Lcom/unipay/unipay_sdk/IlllIlIIIlIllIll;

    iget-object v0, v0, Lcom/unipay/unipay_sdk/IlllIlIIIlIllIll;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->_$39(Lcom/unipay/unipay_sdk/UniPay;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v2, v1, v3, v4, v0}, Lcom/unipay/Alipay/MobileSecurePayer;->pay(Ljava/lang/String;Landroid/os/Handler;ILandroid/app/Activity;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/unipay/unipay_sdk/lIlIllllIllllIIl;->_$1:Lcom/unipay/unipay_sdk/IlllIlIIIlIllIll;

    iget-object v0, v0, Lcom/unipay/unipay_sdk/IlllIlIIIlIllIll;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->_$39(Lcom/unipay/unipay_sdk/UniPay;)Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    const-string v2, "32"

    const-string v3, "\u83b7\u53d6\u8ba2\u5355\u53f7\u5931\u8d25"

    const-string v4, "true"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/unipay/log/LogUtils;->writeLog_pay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unipay/unipay_sdk/lIlIllllIllllIIl;->_$1:Lcom/unipay/unipay_sdk/IlllIlIIIlIllIll;

    iget-object v0, v0, Lcom/unipay/unipay_sdk/IlllIlIIIlIllIll;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    const-string v1, "\u83b7\u53d6\u8ba2\u5355\u53f7\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/unipay/unipay_sdk/UniPay;->_$8(Lcom/unipay/unipay_sdk/UniPay;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/unipay/unipay_sdk/lIlIllllIllllIIl;->_$1:Lcom/unipay/unipay_sdk/IlllIlIIIlIllIll;

    iget-object v0, v0, Lcom/unipay/unipay_sdk/IlllIlIIIlIllIll;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->_$39(Lcom/unipay/unipay_sdk/UniPay;)Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    const-string v2, "32"

    const-string v3, "\u83b7\u53d6\u8ba2\u5355\u53f7\u5931\u8d25"

    const-string v4, "true"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/unipay/log/LogUtils;->writeLog_pay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unipay/unipay_sdk/lIlIllllIllllIIl;->_$1:Lcom/unipay/unipay_sdk/IlllIlIIIlIllIll;

    iget-object v0, v0, Lcom/unipay/unipay_sdk/IlllIlIIIlIllIll;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    const-string v1, "\u83b7\u53d6\u8ba2\u5355\u53f7\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/unipay/unipay_sdk/UniPay;->_$8(Lcom/unipay/unipay_sdk/UniPay;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/unipay/unipay_sdk/lIlIllllIllllIIl;->_$1:Lcom/unipay/unipay_sdk/IlllIlIIIlIllIll;

    iget-object v0, v0, Lcom/unipay/unipay_sdk/IlllIlIIIlIllIll;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->_$39(Lcom/unipay/unipay_sdk/UniPay;)Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    const-string v2, "32"

    const-string v3, "\u83b7\u53d6\u8ba2\u5355\u53f7\u5931\u8d25"

    const-string v4, "true"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/unipay/log/LogUtils;->writeLog_pay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unipay/unipay_sdk/lIlIllllIllllIIl;->_$1:Lcom/unipay/unipay_sdk/IlllIlIIIlIllIll;

    iget-object v0, v0, Lcom/unipay/unipay_sdk/IlllIlIIIlIllIll;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    const-string v1, "\u83b7\u53d6\u8ba2\u5355\u53f7\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/unipay/unipay_sdk/UniPay;->_$8(Lcom/unipay/unipay_sdk/UniPay;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
