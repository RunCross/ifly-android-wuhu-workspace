.class Lcom/unipay/unipay_sdk/llIlIlIlIIllIllI;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic _$1:Lcom/unipay/unipay_sdk/UniPay;

.field final synthetic _$2:Lcom/unipay/beans/upomp;


# direct methods
.method constructor <init>(Lcom/unipay/unipay_sdk/UniPay;Lcom/unipay/beans/upomp;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/unipay_sdk/llIlIlIlIIllIllI;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    iput-object p2, p0, Lcom/unipay/unipay_sdk/llIlIlIlIIllIllI;->_$2:Lcom/unipay/beans/upomp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/unipay/unipay_sdk/llIlIlIlIIllIllI;->_$2:Lcom/unipay/beans/upomp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unipay/unipay_sdk/llIlIlIlIIllIllI;->_$2:Lcom/unipay/beans/upomp;

    invoke-virtual {v0}, Lcom/unipay/beans/upomp;->getRespCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unipay/unipay_sdk/llIlIlIlIIllIllI;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->_$39(Lcom/unipay/unipay_sdk/UniPay;)Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    const-string v2, "0"

    const-string v3, "\u94f6\u8054\u652f\u4ed8\u6210\u529f"

    const-string v4, "true"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/unipay/log/LogUtils;->writeLog_pay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/unipay/unipay_sdk/UniPay;->getInstance()Lcom/unipay/unipay_sdk/UniPay;

    move-result-object v0

    const-string v1, "\u652f\u4ed8\u6210\u529f\uff01"

    invoke-static {v0, v1}, Lcom/unipay/unipay_sdk/UniPay;->_$3(Lcom/unipay/unipay_sdk/UniPay;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/unipay/unipay_sdk/llIlIlIlIIllIllI;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->_$39(Lcom/unipay/unipay_sdk/UniPay;)Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    const-string v2, "1"

    const-string v3, "\u94f6\u8054\u652f\u4ed8\u5931\u8d25"

    const-string v4, "true"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/unipay/log/LogUtils;->writeLog_pay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/unipay/unipay_sdk/UniPay;->getInstance()Lcom/unipay/unipay_sdk/UniPay;

    move-result-object v0

    iget-object v1, p0, Lcom/unipay/unipay_sdk/llIlIlIlIIllIllI;->_$2:Lcom/unipay/beans/upomp;

    invoke-virtual {v1}, Lcom/unipay/beans/upomp;->getRespDesc()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unipay/unipay_sdk/UniPay;->_$8(Lcom/unipay/unipay_sdk/UniPay;Ljava/lang/String;)V

    goto :goto_0
.end method
