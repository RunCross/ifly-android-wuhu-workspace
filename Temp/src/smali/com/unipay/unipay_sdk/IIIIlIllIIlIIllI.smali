.class Lcom/unipay/unipay_sdk/IIIIlIllIIlIIllI;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unipay/dialog/ShenzhouFuDialog$ShenzhouFuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unipay/unipay_sdk/UniPay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ShenzhouFuListnerImpl"
.end annotation


# instance fields
.field final synthetic _$1:Lcom/unipay/unipay_sdk/UniPay;


# direct methods
.method constructor <init>(Lcom/unipay/unipay_sdk/UniPay;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/unipay_sdk/IIIIlIllIIlIIllI;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public opearation(ILcom/unipay/beans/ShenzhouParamsBean;)V
    .locals 5

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/unipay/unipay_sdk/IIIIlIllIIlIIllI;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->_$39(Lcom/unipay/unipay_sdk/UniPay;)Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    const-string v2, "12"

    const-string v3, "\u7528\u6237\u53d6\u6d88\u652f\u4ed8"

    const-string v4, "true"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/unipay/log/LogUtils;->writeLog_pay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unipay/unipay_sdk/IIIIlIllIIlIIllI;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    const-string v1, "\u7528\u6237\u53d6\u6d88\u652f\u4ed8"

    invoke-static {v0, v1}, Lcom/unipay/unipay_sdk/UniPay;->_$8(Lcom/unipay/unipay_sdk/UniPay;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    new-instance v0, Lcom/unipay/dialog/ShenzhouFuMoneySeletedDialog;

    iget-object v1, p0, Lcom/unipay/unipay_sdk/IIIIlIllIIlIIllI;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v1}, Lcom/unipay/unipay_sdk/UniPay;->_$39(Lcom/unipay/unipay_sdk/UniPay;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/unipay/unipay_sdk/llIlIlllIIIIIlII;

    iget-object v3, p0, Lcom/unipay/unipay_sdk/IIIIlIllIIlIIllI;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-direct {v2, v3}, Lcom/unipay/unipay_sdk/llIlIlllIIIIIlII;-><init>(Lcom/unipay/unipay_sdk/UniPay;)V

    invoke-direct {v0, v1, v2}, Lcom/unipay/dialog/ShenzhouFuMoneySeletedDialog;-><init>(Landroid/content/Context;Lcom/unipay/dialog/ShenzhouFuMoneySeletedDialog$MoneySeletedDialog;)V

    invoke-virtual {v0}, Lcom/unipay/dialog/ShenzhouFuMoneySeletedDialog;->show()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/unipay/unipay_sdk/IIIIlIllIIlIIllI;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-virtual {p2}, Lcom/unipay/beans/ShenzhouParamsBean;->getCardType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/unipay/beans/ShenzhouParamsBean;->getCardNo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/unipay/beans/ShenzhouParamsBean;->getCardPassWord()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/unipay/beans/ShenzhouParamsBean;->getCardMoney()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/unipay/unipay_sdk/UniPay;->_$1(Lcom/unipay/unipay_sdk/UniPay;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
