.class Lcom/unipay/unipay_sdk/llIllllIllllllll;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unipay/dialog/ExchangeCodeDialog$ExchangeCodeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unipay/unipay_sdk/UniPay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ExchangeCodeListenerImp"
.end annotation


# instance fields
.field final synthetic _$1:Lcom/unipay/unipay_sdk/UniPay;


# direct methods
.method constructor <init>(Lcom/unipay/unipay_sdk/UniPay;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/unipay_sdk/llIllllIllllllll;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OneSure(II)V
    .locals 5

    const/4 v0, 0x6

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/unipay/unipay_sdk/llIllllIllllllll;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-virtual {v0}, Lcom/unipay/unipay_sdk/UniPay;->checkStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    sput p2, Lcom/unipay/unipay_sdk/UniPay;->echangeCode:I

    iget-object v0, p0, Lcom/unipay/unipay_sdk/llIllllIllllllll;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    const-string v1, "\u6b63\u5728\u5151\u6362\u8bf7\u7a0d\u7b49..."

    invoke-virtual {v0, v1}, Lcom/unipay/unipay_sdk/UniPay;->showProgressDialog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unipay/unipay_sdk/llIllllIllllllll;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/unipay/unipay_sdk/UniPay;->_$1(Lcom/unipay/unipay_sdk/UniPay;Z)Z

    iget-object v0, p0, Lcom/unipay/unipay_sdk/llIllllIllllllll;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->_$3(Lcom/unipay/unipay_sdk/UniPay;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/unipay/unipay_sdk/llIllllIllllllll;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->_$39(Lcom/unipay/unipay_sdk/UniPay;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/unipay/unipay_sdk/lIlIllIIlllIllIl;

    invoke-direct {v1, p0}, Lcom/unipay/unipay_sdk/lIlIllIIlllIllIl;-><init>(Lcom/unipay/unipay_sdk/llIllllIllllllll;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/unipay/unipay_sdk/llIllllIllllllll;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->_$39(Lcom/unipay/unipay_sdk/UniPay;)Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    const-string v2, "15"

    const-string v3, "\u53d6\u6d88\u5151\u6362"

    const-string v4, "true"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/unipay/log/LogUtils;->writeLog_pay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
