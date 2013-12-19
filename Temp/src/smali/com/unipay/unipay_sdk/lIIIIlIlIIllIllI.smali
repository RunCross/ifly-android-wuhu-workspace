.class Lcom/unipay/unipay_sdk/lIIIIlIlIIllIllI;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic _$1:Lcom/unipay/unipay_sdk/UniPay;


# direct methods
.method constructor <init>(Lcom/unipay/unipay_sdk/UniPay;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/unipay_sdk/lIIIIlIlIIllIllI;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    const-wide/high16 v10, 0x4059

    iget-object v0, p0, Lcom/unipay/unipay_sdk/lIIIIlIlIIllIllI;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->_$39(Lcom/unipay/unipay_sdk/UniPay;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/unipay/dialog/VacEnSureDialog;

    iget-object v1, p0, Lcom/unipay/unipay_sdk/lIIIIlIlIIllIllI;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v1}, Lcom/unipay/unipay_sdk/UniPay;->_$39(Lcom/unipay/unipay_sdk/UniPay;)Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/unipay/tools/MultimodeConfig;->getPhone()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/unipay/unipay_sdk/lIIIIlIlIIllIllI;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v3}, Lcom/unipay/unipay_sdk/UniPay;->_$36(Lcom/unipay/unipay_sdk/UniPay;)Lcom/unipay/beans/GameBaseBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/unipay/beans/GameBaseBean;->getCompany()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/unipay/unipay_sdk/lIIIIlIlIIllIllI;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v4}, Lcom/unipay/unipay_sdk/UniPay;->_$36(Lcom/unipay/unipay_sdk/UniPay;)Lcom/unipay/beans/GameBaseBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/unipay/beans/GameBaseBean;->getTelephone()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/unipay/unipay_sdk/lIIIIlIlIIllIllI;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v5}, Lcom/unipay/unipay_sdk/UniPay;->_$36(Lcom/unipay/unipay_sdk/UniPay;)Lcom/unipay/beans/GameBaseBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/unipay/beans/GameBaseBean;->getGame()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/unipay/unipay_sdk/lIIIIlIlIIllIllI;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v6}, Lcom/unipay/unipay_sdk/UniPay;->_$37(Lcom/unipay/unipay_sdk/UniPay;)Lcom/unipay/beans/PayValueBean;

    move-result-object v6

    invoke-virtual {v6}, Lcom/unipay/beans/PayValueBean;->getProps()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/unipay/unipay_sdk/lIIIIlIlIIllIllI;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v7}, Lcom/unipay/unipay_sdk/UniPay;->_$37(Lcom/unipay/unipay_sdk/UniPay;)Lcom/unipay/beans/PayValueBean;

    move-result-object v7

    invoke-virtual {v7}, Lcom/unipay/beans/PayValueBean;->getVac_mode()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/unipay/unipay_sdk/lIIIIlIlIIllIllI;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v8}, Lcom/unipay/unipay_sdk/UniPay;->_$37(Lcom/unipay/unipay_sdk/UniPay;)Lcom/unipay/beans/PayValueBean;

    move-result-object v8

    invoke-virtual {v8}, Lcom/unipay/beans/PayValueBean;->getMoney()I

    move-result v8

    int-to-double v8, v8

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/unipay/unipay_sdk/lIlIlIllllIlIlll;

    iget-object v10, p0, Lcom/unipay/unipay_sdk/lIIIIlIlIIllIllI;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-direct {v9, v10}, Lcom/unipay/unipay_sdk/lIlIlIllllIlIlll;-><init>(Lcom/unipay/unipay_sdk/UniPay;)V

    invoke-direct/range {v0 .. v9}, Lcom/unipay/dialog/VacEnSureDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unipay/dialog/VacEnSureDialog$VacEnSureResultListener;)V

    invoke-virtual {v0}, Lcom/unipay/dialog/VacEnSureDialog;->show()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/unipay/dialog/PVacEnSureDialog;

    iget-object v1, p0, Lcom/unipay/unipay_sdk/lIIIIlIlIIllIllI;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v1}, Lcom/unipay/unipay_sdk/UniPay;->_$39(Lcom/unipay/unipay_sdk/UniPay;)Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/unipay/tools/MultimodeConfig;->getPhone()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/unipay/unipay_sdk/lIIIIlIlIIllIllI;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v3}, Lcom/unipay/unipay_sdk/UniPay;->_$36(Lcom/unipay/unipay_sdk/UniPay;)Lcom/unipay/beans/GameBaseBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/unipay/beans/GameBaseBean;->getCompany()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/unipay/unipay_sdk/lIIIIlIlIIllIllI;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v4}, Lcom/unipay/unipay_sdk/UniPay;->_$36(Lcom/unipay/unipay_sdk/UniPay;)Lcom/unipay/beans/GameBaseBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/unipay/beans/GameBaseBean;->getTelephone()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/unipay/unipay_sdk/lIIIIlIlIIllIllI;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v5}, Lcom/unipay/unipay_sdk/UniPay;->_$36(Lcom/unipay/unipay_sdk/UniPay;)Lcom/unipay/beans/GameBaseBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/unipay/beans/GameBaseBean;->getGame()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/unipay/unipay_sdk/lIIIIlIlIIllIllI;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v6}, Lcom/unipay/unipay_sdk/UniPay;->_$37(Lcom/unipay/unipay_sdk/UniPay;)Lcom/unipay/beans/PayValueBean;

    move-result-object v6

    invoke-virtual {v6}, Lcom/unipay/beans/PayValueBean;->getProps()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/unipay/unipay_sdk/lIIIIlIlIIllIllI;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v7}, Lcom/unipay/unipay_sdk/UniPay;->_$37(Lcom/unipay/unipay_sdk/UniPay;)Lcom/unipay/beans/PayValueBean;

    move-result-object v7

    invoke-virtual {v7}, Lcom/unipay/beans/PayValueBean;->getVac_mode()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/unipay/unipay_sdk/lIIIIlIlIIllIllI;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v8}, Lcom/unipay/unipay_sdk/UniPay;->_$37(Lcom/unipay/unipay_sdk/UniPay;)Lcom/unipay/beans/PayValueBean;

    move-result-object v8

    invoke-virtual {v8}, Lcom/unipay/beans/PayValueBean;->getMoney()I

    move-result v8

    int-to-double v8, v8

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/unipay/unipay_sdk/IllIlIlIllIIlIIl;

    iget-object v10, p0, Lcom/unipay/unipay_sdk/lIIIIlIlIIllIllI;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-direct {v9, v10}, Lcom/unipay/unipay_sdk/IllIlIlIllIIlIIl;-><init>(Lcom/unipay/unipay_sdk/UniPay;)V

    invoke-direct/range {v0 .. v9}, Lcom/unipay/dialog/PVacEnSureDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unipay/dialog/PVacEnSureDialog$PVacEnSureResultListener;)V

    invoke-virtual {v0}, Lcom/unipay/dialog/PVacEnSureDialog;->show()V

    goto :goto_0
.end method
