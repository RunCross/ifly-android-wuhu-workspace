.class Lcom/unipay/unipay_sdk/llIllllIlIlIIlIl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unipay/dialog/ExceedDialog$ExceedingResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unipay/unipay_sdk/UniPay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ExceedingDialogListener"
.end annotation


# instance fields
.field final synthetic _$1:Lcom/unipay/unipay_sdk/UniPay;


# direct methods
.method constructor <init>(Lcom/unipay/unipay_sdk/UniPay;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/unipay_sdk/llIllllIlIlIIlIl;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public result(I)V
    .locals 10

    const-wide/high16 v8, 0x4059

    const/4 v0, 0x1

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lcom/unipay/unipay_sdk/llIllllIlIlIIlIl;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->_$39(Lcom/unipay/unipay_sdk/UniPay;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/unipay/dialog/SmsEnSureDialog;

    iget-object v1, p0, Lcom/unipay/unipay_sdk/llIllllIlIlIIlIl;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v1}, Lcom/unipay/unipay_sdk/UniPay;->_$39(Lcom/unipay/unipay_sdk/UniPay;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/unipay/unipay_sdk/llIllllIlIlIIlIl;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v2}, Lcom/unipay/unipay_sdk/UniPay;->_$36(Lcom/unipay/unipay_sdk/UniPay;)Lcom/unipay/beans/GameBaseBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/unipay/beans/GameBaseBean;->getCompany()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/unipay/unipay_sdk/llIllllIlIlIIlIl;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v3}, Lcom/unipay/unipay_sdk/UniPay;->_$36(Lcom/unipay/unipay_sdk/UniPay;)Lcom/unipay/beans/GameBaseBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/unipay/beans/GameBaseBean;->getTelephone()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/unipay/unipay_sdk/llIllllIlIlIIlIl;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v4}, Lcom/unipay/unipay_sdk/UniPay;->_$36(Lcom/unipay/unipay_sdk/UniPay;)Lcom/unipay/beans/GameBaseBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/unipay/beans/GameBaseBean;->getGame()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/unipay/unipay_sdk/llIllllIlIlIIlIl;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v5}, Lcom/unipay/unipay_sdk/UniPay;->_$37(Lcom/unipay/unipay_sdk/UniPay;)Lcom/unipay/beans/PayValueBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/unipay/beans/PayValueBean;->getProps()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/unipay/unipay_sdk/llIllllIlIlIIlIl;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v6}, Lcom/unipay/unipay_sdk/UniPay;->_$37(Lcom/unipay/unipay_sdk/UniPay;)Lcom/unipay/beans/PayValueBean;

    move-result-object v6

    invoke-virtual {v6}, Lcom/unipay/beans/PayValueBean;->getMoney()I

    move-result v6

    int-to-double v6, v6

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/unipay/unipay_sdk/lIllIlllIIllIlII;

    iget-object v8, p0, Lcom/unipay/unipay_sdk/llIllllIlIlIIlIl;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-direct {v7, v8}, Lcom/unipay/unipay_sdk/lIllIlllIIllIlII;-><init>(Lcom/unipay/unipay_sdk/UniPay;)V

    invoke-direct/range {v0 .. v7}, Lcom/unipay/dialog/SmsEnSureDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unipay/dialog/SmsEnSureDialog$SmsEnSureResultListener;)V

    invoke-virtual {v0}, Lcom/unipay/dialog/SmsEnSureDialog;->show()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/unipay/dialog/PSmsEnSureDialog;

    iget-object v1, p0, Lcom/unipay/unipay_sdk/llIllllIlIlIIlIl;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v1}, Lcom/unipay/unipay_sdk/UniPay;->_$39(Lcom/unipay/unipay_sdk/UniPay;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/unipay/unipay_sdk/llIllllIlIlIIlIl;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v2}, Lcom/unipay/unipay_sdk/UniPay;->_$36(Lcom/unipay/unipay_sdk/UniPay;)Lcom/unipay/beans/GameBaseBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/unipay/beans/GameBaseBean;->getCompany()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/unipay/unipay_sdk/llIllllIlIlIIlIl;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v3}, Lcom/unipay/unipay_sdk/UniPay;->_$36(Lcom/unipay/unipay_sdk/UniPay;)Lcom/unipay/beans/GameBaseBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/unipay/beans/GameBaseBean;->getTelephone()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/unipay/unipay_sdk/llIllllIlIlIIlIl;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v4}, Lcom/unipay/unipay_sdk/UniPay;->_$36(Lcom/unipay/unipay_sdk/UniPay;)Lcom/unipay/beans/GameBaseBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/unipay/beans/GameBaseBean;->getGame()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/unipay/unipay_sdk/llIllllIlIlIIlIl;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v5}, Lcom/unipay/unipay_sdk/UniPay;->_$37(Lcom/unipay/unipay_sdk/UniPay;)Lcom/unipay/beans/PayValueBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/unipay/beans/PayValueBean;->getProps()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/unipay/unipay_sdk/llIllllIlIlIIlIl;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v6}, Lcom/unipay/unipay_sdk/UniPay;->_$37(Lcom/unipay/unipay_sdk/UniPay;)Lcom/unipay/beans/PayValueBean;

    move-result-object v6

    invoke-virtual {v6}, Lcom/unipay/beans/PayValueBean;->getMoney()I

    move-result v6

    int-to-double v6, v6

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/unipay/unipay_sdk/IIlIlIIIlIIlIIll;

    iget-object v8, p0, Lcom/unipay/unipay_sdk/llIllllIlIlIIlIl;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-direct {v7, v8}, Lcom/unipay/unipay_sdk/IIlIlIIIlIIlIIll;-><init>(Lcom/unipay/unipay_sdk/UniPay;)V

    invoke-direct/range {v0 .. v7}, Lcom/unipay/dialog/PSmsEnSureDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unipay/dialog/PSmsEnSureDialog$PSmsEnSureResultListener;)V

    invoke-virtual {v0}, Lcom/unipay/dialog/PSmsEnSureDialog;->show()V

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/unipay/unipay_sdk/llIllllIlIlIIlIl;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->_$2(Lcom/unipay/unipay_sdk/UniPay;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
