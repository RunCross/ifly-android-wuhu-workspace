.class Lcom/unipay/unipay_sdk/llIlIlllIIIIIlII;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unipay/dialog/ShenzhouFuMoneySeletedDialog$MoneySeletedDialog;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unipay/unipay_sdk/UniPay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "shenzhouMoneySeletedImpl"
.end annotation


# instance fields
.field final synthetic _$1:Lcom/unipay/unipay_sdk/UniPay;


# direct methods
.method constructor <init>(Lcom/unipay/unipay_sdk/UniPay;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/unipay_sdk/llIlIlllIIIIIlII;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public SeletedMoney(ILjava/lang/String;)V
    .locals 5

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/unipay/unipay_sdk/llIlIlllIIIIIlII;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->_$39(Lcom/unipay/unipay_sdk/UniPay;)Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    const-string v2, "12"

    const-string v3, "\u7528\u6237\u53d6\u6d88\u652f\u4ed8"

    const-string v4, "true"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/unipay/log/LogUtils;->writeLog_pay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unipay/unipay_sdk/llIlIlllIIIIIlII;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    const-string v1, "\u7528\u6237\u53d6\u6d88\u652f\u4ed8"

    invoke-static {v0, v1}, Lcom/unipay/unipay_sdk/UniPay;->_$8(Lcom/unipay/unipay_sdk/UniPay;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/unipay/unipay_sdk/llIlIlllIIIIIlII;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    iget-object v1, p0, Lcom/unipay/unipay_sdk/llIlIlllIIIIIlII;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    iget v1, v1, Lcom/unipay/unipay_sdk/UniPay;->usertype:I

    invoke-static {v0, v1}, Lcom/unipay/unipay_sdk/UniPay;->_$1(Lcom/unipay/unipay_sdk/UniPay;I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    new-instance v0, Lcom/unipay/dialog/ShenzhouFuDialog;

    iget-object v1, p0, Lcom/unipay/unipay_sdk/llIlIlllIIIIIlII;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v1}, Lcom/unipay/unipay_sdk/UniPay;->_$39(Lcom/unipay/unipay_sdk/UniPay;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/unipay/unipay_sdk/llIlIlllIIIIIlII;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v2}, Lcom/unipay/unipay_sdk/UniPay;->_$37(Lcom/unipay/unipay_sdk/UniPay;)Lcom/unipay/beans/PayValueBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/unipay/beans/PayValueBean;->getMoney()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x42c8

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/unipay/unipay_sdk/IIIIlIllIIlIIllI;

    iget-object v4, p0, Lcom/unipay/unipay_sdk/llIlIlllIIIIIlII;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-direct {v3, v4}, Lcom/unipay/unipay_sdk/IIIIlIllIIlIIllI;-><init>(Lcom/unipay/unipay_sdk/UniPay;)V

    invoke-direct {v0, v1, v2, p2, v3}, Lcom/unipay/dialog/ShenzhouFuDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/unipay/dialog/ShenzhouFuDialog$ShenzhouFuListener;)V

    invoke-virtual {v0}, Lcom/unipay/dialog/ShenzhouFuDialog;->show()V

    goto :goto_0
.end method
