.class Lcom/unipay/unipay_sdk/IlllIlIlIIllIllI;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic _$1:Lcom/unipay/unipay_sdk/UniPay;

.field final synthetic _$2:I


# direct methods
.method constructor <init>(Lcom/unipay/unipay_sdk/UniPay;I)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/unipay_sdk/IlllIlIlIIllIllI;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    iput p2, p0, Lcom/unipay/unipay_sdk/IlllIlIlIIllIllI;->_$2:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    const-wide/high16 v9, 0x4059

    iget v0, p0, Lcom/unipay/unipay_sdk/IlllIlIlIIllIllI;->_$2:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/unipay/unipay_sdk/IlllIlIlIIllIllI;->_$2:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    :cond_0
    new-instance v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;

    iget-object v1, p0, Lcom/unipay/unipay_sdk/IlllIlIlIIllIllI;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v1}, Lcom/unipay/unipay_sdk/UniPay;->_$39(Lcom/unipay/unipay_sdk/UniPay;)Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/unipay/unipay_sdk/IlllIlIlIIllIllI;->_$2:I

    iget-object v3, p0, Lcom/unipay/unipay_sdk/IlllIlIlIIllIllI;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v3}, Lcom/unipay/unipay_sdk/UniPay;->_$32(Lcom/unipay/unipay_sdk/UniPay;)Lcom/unipay/beans/LoginRsp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/unipay/beans/LoginRsp;->getPhoneNum()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/unipay/unipay_sdk/IlllIlIlIIllIllI;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v4}, Lcom/unipay/unipay_sdk/UniPay;->_$36(Lcom/unipay/unipay_sdk/UniPay;)Lcom/unipay/beans/GameBaseBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/unipay/beans/GameBaseBean;->getGame()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/unipay/unipay_sdk/IlllIlIlIIllIllI;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v5}, Lcom/unipay/unipay_sdk/UniPay;->_$36(Lcom/unipay/unipay_sdk/UniPay;)Lcom/unipay/beans/GameBaseBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/unipay/beans/GameBaseBean;->getCompany()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/unipay/unipay_sdk/IlllIlIlIIllIllI;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v6}, Lcom/unipay/unipay_sdk/UniPay;->_$37(Lcom/unipay/unipay_sdk/UniPay;)Lcom/unipay/beans/PayValueBean;

    move-result-object v6

    invoke-virtual {v6}, Lcom/unipay/beans/PayValueBean;->getProps()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/unipay/unipay_sdk/IlllIlIlIIllIllI;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v7}, Lcom/unipay/unipay_sdk/UniPay;->_$37(Lcom/unipay/unipay_sdk/UniPay;)Lcom/unipay/beans/PayValueBean;

    move-result-object v7

    invoke-virtual {v7}, Lcom/unipay/beans/PayValueBean;->getMoney()I

    move-result v7

    int-to-double v7, v7

    div-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/unipay/unipay_sdk/IlllIlIlIIllIllI;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v8}, Lcom/unipay/unipay_sdk/UniPay;->_$36(Lcom/unipay/unipay_sdk/UniPay;)Lcom/unipay/beans/GameBaseBean;

    move-result-object v8

    invoke-virtual {v8}, Lcom/unipay/beans/GameBaseBean;->getTelephone()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/unipay/unipay_sdk/IllIlIIllIlIIIII;

    iget-object v10, p0, Lcom/unipay/unipay_sdk/IlllIlIlIIllIllI;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-direct {v9, v10}, Lcom/unipay/unipay_sdk/IllIlIIllIlIIIII;-><init>(Lcom/unipay/unipay_sdk/UniPay;)V

    invoke-direct/range {v0 .. v9}, Lcom/unipay/dialog/OtherPayLostPersonalMessage;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unipay/dialog/OtherPayLostPersonalMessage$OtherPaySelectedListener;)V

    invoke-virtual {v0}, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->show()V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/unipay/dialog/OtherPayLostPersonalMessage;

    iget-object v1, p0, Lcom/unipay/unipay_sdk/IlllIlIlIIllIllI;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v1}, Lcom/unipay/unipay_sdk/UniPay;->_$39(Lcom/unipay/unipay_sdk/UniPay;)Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/unipay/unipay_sdk/IlllIlIlIIllIllI;->_$2:I

    invoke-static {}, Lcom/unipay/tools/MultimodeConfig;->getImsi()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/unipay/unipay_sdk/IlllIlIlIIllIllI;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v4}, Lcom/unipay/unipay_sdk/UniPay;->_$36(Lcom/unipay/unipay_sdk/UniPay;)Lcom/unipay/beans/GameBaseBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/unipay/beans/GameBaseBean;->getGame()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/unipay/unipay_sdk/IlllIlIlIIllIllI;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v5}, Lcom/unipay/unipay_sdk/UniPay;->_$36(Lcom/unipay/unipay_sdk/UniPay;)Lcom/unipay/beans/GameBaseBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/unipay/beans/GameBaseBean;->getCompany()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/unipay/unipay_sdk/IlllIlIlIIllIllI;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v6}, Lcom/unipay/unipay_sdk/UniPay;->_$37(Lcom/unipay/unipay_sdk/UniPay;)Lcom/unipay/beans/PayValueBean;

    move-result-object v6

    invoke-virtual {v6}, Lcom/unipay/beans/PayValueBean;->getProps()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/unipay/unipay_sdk/IlllIlIlIIllIllI;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v7}, Lcom/unipay/unipay_sdk/UniPay;->_$37(Lcom/unipay/unipay_sdk/UniPay;)Lcom/unipay/beans/PayValueBean;

    move-result-object v7

    invoke-virtual {v7}, Lcom/unipay/beans/PayValueBean;->getMoney()I

    move-result v7

    int-to-double v7, v7

    div-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/unipay/unipay_sdk/IlllIlIlIIllIllI;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v8}, Lcom/unipay/unipay_sdk/UniPay;->_$36(Lcom/unipay/unipay_sdk/UniPay;)Lcom/unipay/beans/GameBaseBean;

    move-result-object v8

    invoke-virtual {v8}, Lcom/unipay/beans/GameBaseBean;->getTelephone()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/unipay/unipay_sdk/IllIlIIllIlIIIII;

    iget-object v10, p0, Lcom/unipay/unipay_sdk/IlllIlIlIIllIllI;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-direct {v9, v10}, Lcom/unipay/unipay_sdk/IllIlIIllIlIIIII;-><init>(Lcom/unipay/unipay_sdk/UniPay;)V

    invoke-direct/range {v0 .. v9}, Lcom/unipay/dialog/OtherPayLostPersonalMessage;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unipay/dialog/OtherPayLostPersonalMessage$OtherPaySelectedListener;)V

    invoke-virtual {v0}, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->show()V

    goto :goto_0
.end method
