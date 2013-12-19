.class Lcom/unipay/unipay_sdk/IllIlIlIllIIlIIl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unipay/dialog/PVacEnSureDialog$PVacEnSureResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unipay/unipay_sdk/UniPay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PVacPayResultListener"
.end annotation


# instance fields
.field final synthetic _$1:Lcom/unipay/unipay_sdk/UniPay;


# direct methods
.method constructor <init>(Lcom/unipay/unipay_sdk/UniPay;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/unipay_sdk/IllIlIlIllIIlIIl;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public VacResult(I)V
    .locals 6

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/unipay/unipay_sdk/IllIlIlIllIIlIIl;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->_$39(Lcom/unipay/unipay_sdk/UniPay;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/unipay/tools/PhoneInfoTools;->isNetAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/unipay/unipay_sdk/IllIlIlIllIIlIIl;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->_$39(Lcom/unipay/unipay_sdk/UniPay;)Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    const-string v2, "13"

    const-string v3, "\u72b6\u6001\u68c0\u6d4b\u5931\u8d25\uff0c\u7f51\u7edc\u8fde\u63a5\u4e0d\u53ef\u7528"

    const-string v4, "true"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/unipay/log/LogUtils;->writeLog_pay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unipay/unipay_sdk/IllIlIlIllIIlIIl;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    const-string v1, "\u60a8\u7684\u7f51\u7edc\u8fde\u63a5\u597d\u50cf\u6709\u95ee\u9898\uff0c\u8bf7\u91cd\u8bd5"

    invoke-static {v0, v1}, Lcom/unipay/unipay_sdk/UniPay;->_$8(Lcom/unipay/unipay_sdk/UniPay;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/unipay/unipay_sdk/IllIlIlIllIIlIIl;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    const-string v1, "\u6b63\u5728\u652f\u4ed8..."

    invoke-virtual {v0, v1}, Lcom/unipay/unipay_sdk/UniPay;->showProgressDialog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unipay/unipay_sdk/IllIlIlIllIIlIIl;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->_$18(Lcom/unipay/unipay_sdk/UniPay;)V

    iget-object v0, p0, Lcom/unipay/unipay_sdk/IllIlIlIllIIlIIl;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->_$16(Lcom/unipay/unipay_sdk/UniPay;)Lcom/unipay/net/AsyncMultimode;

    move-result-object v0

    sget-object v1, Lcom/unipay/tools/MultimodeConfig;->VAC_URL:Ljava/lang/String;

    const-string v2, "GET"

    iget-object v3, p0, Lcom/unipay/unipay_sdk/IllIlIlIllIIlIIl;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v3}, Lcom/unipay/unipay_sdk/UniPay;->_$17(Lcom/unipay/unipay_sdk/UniPay;)Lcom/unipay/net/Parameters;

    move-result-object v3

    new-instance v4, Lcom/unipay/unipay_sdk/IlIllIlIlIIlIIll;

    iget-object v5, p0, Lcom/unipay/unipay_sdk/IllIlIlIllIIlIIl;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-direct {v4, v5}, Lcom/unipay/unipay_sdk/IlIllIlIlIIlIIll;-><init>(Lcom/unipay/unipay_sdk/UniPay;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/unipay/net/AsyncMultimode;->request(Ljava/lang/String;Ljava/lang/String;Lcom/unipay/net/Parameters;Lcom/unipay/net/AsyncMultimode$RequestListener;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/unipay/unipay_sdk/IllIlIlIllIIlIIl;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->_$39(Lcom/unipay/unipay_sdk/UniPay;)Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    const-string v2, "12"

    const-string v3, "\u7528\u6237\u53d6\u6d88\u652f\u4ed8"

    const-string v4, "true"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/unipay/log/LogUtils;->writeLog_pay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unipay/unipay_sdk/IllIlIlIllIIlIIl;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    const-string v1, "\u7528\u6237\u53d6\u6d88\u652f\u4ed8"

    invoke-static {v0, v1}, Lcom/unipay/unipay_sdk/UniPay;->_$8(Lcom/unipay/unipay_sdk/UniPay;Ljava/lang/String;)V

    goto :goto_0
.end method
