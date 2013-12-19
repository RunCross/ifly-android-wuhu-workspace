.class Lcom/unipay/unipay_sdk/IIllIIlIIlIIIIII;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unipay/dialog/UniPayEnSureDialog$UniPayEnsureListenr;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unipay/unipay_sdk/UniPay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UnipayListener"
.end annotation


# instance fields
.field final synthetic _$1:Lcom/unipay/unipay_sdk/UniPay;


# direct methods
.method constructor <init>(Lcom/unipay/unipay_sdk/UniPay;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/unipay_sdk/IIllIIlIIlIIIIII;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public UniPayEnSureResult(I)V
    .locals 7

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    iget-object v0, p0, Lcom/unipay/unipay_sdk/IIllIIlIIlIIIIII;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    const-string v1, "\u6b63\u5728\u9274\u6743\uff0c\u8bf7\u7a0d\u540e..."

    invoke-virtual {v0, v1}, Lcom/unipay/unipay_sdk/UniPay;->showProgressDialog(Ljava/lang/String;)V

    invoke-static {}, Lcom/unipay/unipay_sdk/UniPay;->getInstance()Lcom/unipay/unipay_sdk/UniPay;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/unipay/unipay_sdk/UniPay;->setOtherPay(Z)V

    iget-object v0, p0, Lcom/unipay/unipay_sdk/IIllIIlIIlIIIIII;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->_$40(Lcom/unipay/unipay_sdk/UniPay;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/unipay/unipay_sdk/IIllIIlIIlIIIIII;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->_$39(Lcom/unipay/unipay_sdk/UniPay;)Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    const-string v2, "12"

    const-string v3, "\u7528\u6237\u53d6\u6d88\u652f\u4ed8"

    const-string v4, "true"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/unipay/log/LogUtils;->writeLog_pay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unipay/unipay_sdk/IIllIIlIIlIIIIII;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    const-string v1, "\u7528\u6237\u53d6\u6d88\u652f\u4ed8"

    invoke-static {v0, v1}, Lcom/unipay/unipay_sdk/UniPay;->_$8(Lcom/unipay/unipay_sdk/UniPay;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Lcom/unipay/unipay_sdk/IIllIIlIIlIIIIII;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-virtual {v0}, Lcom/unipay/unipay_sdk/UniPay;->isCpOtherPay()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/unipay/unipay_sdk/IIllIIlIIlIIIIII;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->_$39(Lcom/unipay/unipay_sdk/UniPay;)Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    const-string v2, "6"

    const-string v3, "\u5176\u4ed6\u7b2c\u4e09\u65b9\u652f\u4ed8"

    const-string v4, "false"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/unipay/log/LogUtils;->writeLog_pay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unipay/unipay_sdk/IIllIIlIIlIIIIII;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->_$38(Lcom/unipay/unipay_sdk/UniPay;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/unipay/unipay_sdk/IIllIIlIIlIIIIII;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    const-string v1, "\u6b63\u5728\u9274\u6743\uff0c\u8bf7\u7a0d\u540e..."

    invoke-virtual {v0, v1}, Lcom/unipay/unipay_sdk/UniPay;->showProgressDialog(Ljava/lang/String;)V

    invoke-static {}, Lcom/unipay/unipay_sdk/UniPay;->getInstance()Lcom/unipay/unipay_sdk/UniPay;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/unipay/unipay_sdk/UniPay;->setOtherPay(Z)V

    iget-object v0, p0, Lcom/unipay/unipay_sdk/IIllIIlIIlIIIIII;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-virtual {v0}, Lcom/unipay/unipay_sdk/UniPay;->otherPayChoice()V

    goto :goto_0

    :cond_4
    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/unipay/unipay_sdk/IIllIIlIIlIIIIII;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-virtual {v0}, Lcom/unipay/unipay_sdk/UniPay;->checkStatus()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/unipay/tools/MultimodeConfig;->getImsi()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unipay/tools/PhoneInfoTools;->isUnicomCard(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/unipay/unipay_sdk/IIllIIlIIlIIIIII;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->_$39(Lcom/unipay/unipay_sdk/UniPay;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Lcom/unipay/dialog/ExchangeCodeDialog;

    iget-object v1, p0, Lcom/unipay/unipay_sdk/IIllIIlIIlIIIIII;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v1}, Lcom/unipay/unipay_sdk/UniPay;->_$39(Lcom/unipay/unipay_sdk/UniPay;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/unipay/unipay_sdk/IIllIIlIIlIIIIII;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v2}, Lcom/unipay/unipay_sdk/UniPay;->_$37(Lcom/unipay/unipay_sdk/UniPay;)Lcom/unipay/beans/PayValueBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/unipay/beans/PayValueBean;->getProps()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/unipay/unipay_sdk/IIllIIlIIlIIIIII;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v4}, Lcom/unipay/unipay_sdk/UniPay;->_$37(Lcom/unipay/unipay_sdk/UniPay;)Lcom/unipay/beans/PayValueBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/unipay/beans/PayValueBean;->getMoney()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/unipay/unipay_sdk/IIllIIlIIlIIIIII;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v4}, Lcom/unipay/unipay_sdk/UniPay;->_$36(Lcom/unipay/unipay_sdk/UniPay;)Lcom/unipay/beans/GameBaseBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/unipay/beans/GameBaseBean;->getTelephone()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/unipay/unipay_sdk/llIllllIllllllll;

    iget-object v6, p0, Lcom/unipay/unipay_sdk/IIllIIlIIlIIIIII;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-direct {v5, v6}, Lcom/unipay/unipay_sdk/llIllllIllllllll;-><init>(Lcom/unipay/unipay_sdk/UniPay;)V

    invoke-direct/range {v0 .. v5}, Lcom/unipay/dialog/ExchangeCodeDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unipay/dialog/ExchangeCodeDialog$ExchangeCodeListener;)V

    invoke-virtual {v0}, Lcom/unipay/dialog/ExchangeCodeDialog;->show()V

    goto/16 :goto_0

    :cond_5
    new-instance v0, Lcom/unipay/dialog/PExchangeCodeDialog;

    iget-object v1, p0, Lcom/unipay/unipay_sdk/IIllIIlIIlIIIIII;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v1}, Lcom/unipay/unipay_sdk/UniPay;->_$39(Lcom/unipay/unipay_sdk/UniPay;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/unipay/unipay_sdk/IIllIIlIIlIIIIII;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v2}, Lcom/unipay/unipay_sdk/UniPay;->_$37(Lcom/unipay/unipay_sdk/UniPay;)Lcom/unipay/beans/PayValueBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/unipay/beans/PayValueBean;->getProps()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/unipay/unipay_sdk/IIllIIlIIlIIIIII;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v4}, Lcom/unipay/unipay_sdk/UniPay;->_$37(Lcom/unipay/unipay_sdk/UniPay;)Lcom/unipay/beans/PayValueBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/unipay/beans/PayValueBean;->getMoney()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/unipay/unipay_sdk/IIllIIlIIlIIIIII;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v4}, Lcom/unipay/unipay_sdk/UniPay;->_$36(Lcom/unipay/unipay_sdk/UniPay;)Lcom/unipay/beans/GameBaseBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/unipay/beans/GameBaseBean;->getTelephone()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/unipay/unipay_sdk/llIllllIllllllll;

    iget-object v6, p0, Lcom/unipay/unipay_sdk/IIllIIlIIlIIIIII;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-direct {v5, v6}, Lcom/unipay/unipay_sdk/llIllllIllllllll;-><init>(Lcom/unipay/unipay_sdk/UniPay;)V

    invoke-direct/range {v0 .. v5}, Lcom/unipay/dialog/PExchangeCodeDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unipay/dialog/ExchangeCodeDialog$ExchangeCodeListener;)V

    invoke-virtual {v0}, Lcom/unipay/dialog/PExchangeCodeDialog;->show()V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/unipay/unipay_sdk/IIllIIlIIlIIIIII;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->_$39(Lcom/unipay/unipay_sdk/UniPay;)Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    const-string v2, "22"

    const-string v3, "\u975e\u8054\u901a\u53f7\u7801\u65e0\u6cd5\u5b8c\u6210\u5151\u6362"

    const-string v4, "true"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/unipay/log/LogUtils;->writeLog_pay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unipay/unipay_sdk/IIllIIlIIlIIIIII;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    const-string v1, "\u975e\u8054\u901a\u53f7\u7801\u65e0\u6cd5\u5b8c\u6210\u5151\u6362"

    invoke-static {v0, v1}, Lcom/unipay/unipay_sdk/UniPay;->_$8(Lcom/unipay/unipay_sdk/UniPay;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/unipay/unipay_sdk/IIllIIlIIlIIIIII;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->_$39(Lcom/unipay/unipay_sdk/UniPay;)Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    const-string v2, "17"

    const-string v3, "\u624b\u673a\u7f51\u7edc\u6216\u8005\u914d\u7f6e\u9519\u8bef"

    const-string v4, "true"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/unipay/log/LogUtils;->writeLog_pay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unipay/unipay_sdk/IIllIIlIIlIIIIII;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    const-string v1, "\u624b\u673a\u7f51\u7edc\u6216\u8005\u914d\u7f6e\u9519\u8bef"

    invoke-static {v0, v1}, Lcom/unipay/unipay_sdk/UniPay;->_$8(Lcom/unipay/unipay_sdk/UniPay;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
