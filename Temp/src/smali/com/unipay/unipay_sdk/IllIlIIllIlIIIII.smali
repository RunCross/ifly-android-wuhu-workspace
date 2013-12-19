.class Lcom/unipay/unipay_sdk/IllIlIIllIlIIIII;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unipay/dialog/OtherPayLostPersonalMessage$OtherPaySelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unipay/unipay_sdk/UniPay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OtherPaySelectedResult"
.end annotation


# instance fields
.field final synthetic _$1:Lcom/unipay/unipay_sdk/UniPay;


# direct methods
.method constructor <init>(Lcom/unipay/unipay_sdk/UniPay;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/unipay_sdk/IllIlIIllIlIIIII;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OtherPaySelect(I)V
    .locals 5

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/unipay/unipay_sdk/IllIlIIllIlIIIII;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->_$39(Lcom/unipay/unipay_sdk/UniPay;)Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    const-string v2, "8"

    const-string v3, "\u652f\u4ed8\u5b9d\u5feb\u6377\u652f\u4ed8\u5f00\u59cb"

    const-string v4, "true"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/unipay/log/LogUtils;->writeLog_pay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "alipay"

    invoke-static {v0}, Lcom/unipay/tools/MultimodeConfig;->setPayType(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unipay/unipay_sdk/IllIlIIllIlIIIII;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->_$31(Lcom/unipay/unipay_sdk/UniPay;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/unipay/unipay_sdk/IllIlIIllIlIIIII;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->_$39(Lcom/unipay/unipay_sdk/UniPay;)Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    const-string v2, "9"

    const-string v3, "\u795e\u5dde\u4ed8\u652f\u4ed8\u5f00\u59cb"

    const-string v4, "true"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/unipay/log/LogUtils;->writeLog_pay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "shenzhoufu"

    invoke-static {v0}, Lcom/unipay/tools/MultimodeConfig;->setPayType(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unipay/unipay_sdk/IllIlIIllIlIIIII;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->_$30(Lcom/unipay/unipay_sdk/UniPay;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/unipay/unipay_sdk/IllIlIIllIlIIIII;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->_$39(Lcom/unipay/unipay_sdk/UniPay;)Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    const-string v2, "10"

    const-string v3, "\u652f\u4ed8\u5b9dWEB\u652f\u4ed8\u5f00\u59cb"

    const-string v4, "true"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/unipay/log/LogUtils;->writeLog_pay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "alipay"

    invoke-static {v0}, Lcom/unipay/tools/MultimodeConfig;->setPayType(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unipay/unipay_sdk/IllIlIIllIlIIIII;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->_$29(Lcom/unipay/unipay_sdk/UniPay;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/unipay/unipay_sdk/IllIlIIllIlIIIII;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->_$39(Lcom/unipay/unipay_sdk/UniPay;)Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    const-string v2, "12"

    const-string v3, "\u7528\u6237\u53d6\u6d88\u652f\u4ed8"

    const-string v4, "true"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/unipay/log/LogUtils;->writeLog_pay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unipay/unipay_sdk/IllIlIIllIlIIIII;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    const-string v1, "\u7528\u6237\u53d6\u6d88\u652f\u4ed8"

    invoke-static {v0, v1}, Lcom/unipay/unipay_sdk/UniPay;->_$8(Lcom/unipay/unipay_sdk/UniPay;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/unipay/unipay_sdk/IllIlIIllIlIIIII;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->_$28(Lcom/unipay/unipay_sdk/UniPay;)V

    iget-object v0, p0, Lcom/unipay/unipay_sdk/IllIlIIllIlIIIII;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    iget-object v1, p0, Lcom/unipay/unipay_sdk/IllIlIIllIlIIIII;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v1}, Lcom/unipay/unipay_sdk/UniPay;->_$39(Lcom/unipay/unipay_sdk/UniPay;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/unipay/unipay_sdk/IllIlIIllIlIIIII;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v2}, Lcom/unipay/unipay_sdk/UniPay;->_$37(Lcom/unipay/unipay_sdk/UniPay;)Lcom/unipay/beans/PayValueBean;

    move-result-object v2

    iget-object v3, p0, Lcom/unipay/unipay_sdk/IllIlIIllIlIIIII;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v3}, Lcom/unipay/unipay_sdk/UniPay;->_$27(Lcom/unipay/unipay_sdk/UniPay;)Lcom/unipay/unipay_sdk/UniPay$UniPayCallBack;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/unipay/unipay_sdk/UniPay;->pay(Landroid/content/Context;Lcom/unipay/beans/PayValueBean;Lcom/unipay/unipay_sdk/UniPay$UniPayCallBack;)V

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/unipay/unipay_sdk/IllIlIIllIlIIIII;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->_$26(Lcom/unipay/unipay_sdk/UniPay;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
