.class Lcom/unipay/unipay_sdk/IIlIlIllIIllIIlI;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unipay/unipay_sdk/UniPay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic _$1:Lcom/unipay/unipay_sdk/UniPay;


# direct methods
.method constructor <init>(Lcom/unipay/unipay_sdk/UniPay;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/unipay_sdk/IIlIlIllIIllIIlI;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v2, -0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.unipay.vac_action"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/unipay/unipay_sdk/IIlIlIllIIllIIlI;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->_$15(Lcom/unipay/unipay_sdk/UniPay;)Lcom/unipay/unipay_sdk/IlIIIIllIlIIlIll;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unipay/unipay_sdk/IIlIlIllIIllIIlI;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->_$15(Lcom/unipay/unipay_sdk/UniPay;)Lcom/unipay/unipay_sdk/IlIIIIllIlIIlIll;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unipay/unipay_sdk/IlIIIIllIlIIlIll;->cancel()V

    iget-object v0, p0, Lcom/unipay/unipay_sdk/IIlIlIllIIllIIlI;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0, v5}, Lcom/unipay/unipay_sdk/UniPay;->_$1(Lcom/unipay/unipay_sdk/UniPay;Lcom/unipay/unipay_sdk/IlIIIIllIlIIlIll;)Lcom/unipay/unipay_sdk/IlIIIIllIlIIlIll;

    :cond_0
    invoke-virtual {p0}, Lcom/unipay/unipay_sdk/IIlIlIllIIllIIlI;->getResultCode()I

    move-result v0

    if-ne v0, v2, :cond_2

    sget v0, Lcom/unipay/unipay_sdk/UniPay;->singleRequestTimes:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/unipay/unipay_sdk/UniPay;->singleRequestTimes:I

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/unipay/unipay_sdk/IIlIlIllIIllIIlI;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    iget-object v1, v1, Lcom/unipay/unipay_sdk/UniPay;->_$1:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/unipay/unipay_sdk/IIlIlIllIIllIIlI;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->_$39(Lcom/unipay/unipay_sdk/UniPay;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/unipay/unipay_sdk/IIlIlIllIIllIIlI;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v1}, Lcom/unipay/unipay_sdk/UniPay;->_$13(Lcom/unipay/unipay_sdk/UniPay;)Lcom/unipay/unipay_sdk/IIlIlIllIIllIIlI;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/unipay/unipay_sdk/IIlIlIllIIllIIlI;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-virtual {v0}, Lcom/unipay/unipay_sdk/UniPay;->isOtherPay()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/unipay/unipay_sdk/IIlIlIllIIllIIlI;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->_$39(Lcom/unipay/unipay_sdk/UniPay;)Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    const-string v2, "14"

    const-string v3, "\u77ed\u4fe1\u4e0a\u884c\u5931\u8d25"

    const-string v4, "true"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/unipay/log/LogUtils;->writeLog_pay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unipay/unipay_sdk/IIlIlIllIIllIIlI;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-virtual {v0}, Lcom/unipay/unipay_sdk/UniPay;->DismissProgressDialog()V

    iget-object v0, p0, Lcom/unipay/unipay_sdk/IIlIlIllIIllIIlI;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->_$14(Lcom/unipay/unipay_sdk/UniPay;)Lcom/unipay/unipay_sdk/lIIlIIlllIIIIllI;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/unipay/unipay_sdk/IIlIlIllIIllIIlI;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->_$14(Lcom/unipay/unipay_sdk/UniPay;)Lcom/unipay/unipay_sdk/lIIlIIlllIIIIllI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unipay/unipay_sdk/lIIlIIlllIIIIllI;->cancel()V

    iget-object v0, p0, Lcom/unipay/unipay_sdk/IIlIlIllIIllIIlI;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0, v5}, Lcom/unipay/unipay_sdk/UniPay;->_$1(Lcom/unipay/unipay_sdk/UniPay;Lcom/unipay/unipay_sdk/lIIlIIlllIIIIllI;)Lcom/unipay/unipay_sdk/lIIlIIlllIIIIllI;

    :cond_3
    iget-object v0, p0, Lcom/unipay/unipay_sdk/IIlIlIllIIllIIlI;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->_$39(Lcom/unipay/unipay_sdk/UniPay;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/unipay/unipay_sdk/IIIIllIIIIIIlIIl;

    invoke-direct {v1, p0}, Lcom/unipay/unipay_sdk/IIIIllIIIIIIlIIl;-><init>(Lcom/unipay/unipay_sdk/IIlIlIllIIllIIlI;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/unipay/unipay_sdk/IIlIlIllIIllIIlI;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->_$33(Lcom/unipay/unipay_sdk/UniPay;)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.unipay.sms_action"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unipay/unipay_sdk/IIlIlIllIIllIIlI;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->_$15(Lcom/unipay/unipay_sdk/UniPay;)Lcom/unipay/unipay_sdk/IlIIIIllIlIIlIll;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/unipay/unipay_sdk/IIlIlIllIIllIIlI;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->_$15(Lcom/unipay/unipay_sdk/UniPay;)Lcom/unipay/unipay_sdk/IlIIIIllIlIIlIll;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unipay/unipay_sdk/IlIIIIllIlIIlIll;->cancel()V

    :cond_6
    invoke-virtual {p0}, Lcom/unipay/unipay_sdk/IIlIlIllIIllIIlI;->getResultCode()I

    move-result v0

    if-ne v0, v2, :cond_7

    iget-object v0, p0, Lcom/unipay/unipay_sdk/IIlIlIllIIllIIlI;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->_$12(Lcom/unipay/unipay_sdk/UniPay;)Lcom/unipay/tools/ExceedingTools;

    move-result-object v0

    iget-object v1, p0, Lcom/unipay/unipay_sdk/IIlIlIllIIllIIlI;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v1}, Lcom/unipay/unipay_sdk/UniPay;->_$37(Lcom/unipay/unipay_sdk/UniPay;)Lcom/unipay/beans/PayValueBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unipay/beans/PayValueBean;->getMoney()I

    move-result v1

    div-int/lit8 v1, v1, 0x64

    invoke-virtual {v0, v1}, Lcom/unipay/tools/ExceedingTools;->SubMoney(I)V

    iget-object v0, p0, Lcom/unipay/unipay_sdk/IIlIlIllIIllIIlI;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-virtual {v0}, Lcom/unipay/unipay_sdk/UniPay;->DismissProgressDialog()V

    iget-object v0, p0, Lcom/unipay/unipay_sdk/IIlIlIllIIllIIlI;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->_$39(Lcom/unipay/unipay_sdk/UniPay;)Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    const-string v2, "1"

    const-string v3, "\u652f\u4ed8\u6210\u529f"

    const-string v4, "true"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/unipay/log/LogUtils;->writeLog_pay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unipay/unipay_sdk/IIlIlIllIIllIIlI;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    const-string v1, "\u652f\u4ed8\u6210\u529f"

    invoke-static {v0, v1}, Lcom/unipay/unipay_sdk/UniPay;->_$2(Lcom/unipay/unipay_sdk/UniPay;Ljava/lang/String;)V

    :goto_2
    :try_start_1
    iget-object v0, p0, Lcom/unipay/unipay_sdk/IIlIlIllIIllIIlI;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->_$39(Lcom/unipay/unipay_sdk/UniPay;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/unipay/unipay_sdk/IIlIlIllIIllIIlI;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v1}, Lcom/unipay/unipay_sdk/UniPay;->_$13(Lcom/unipay/unipay_sdk/UniPay;)Lcom/unipay/unipay_sdk/IIlIlIllIIllIIlI;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/unipay/unipay_sdk/IIlIlIllIIllIIlI;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-virtual {v1}, Lcom/unipay/unipay_sdk/UniPay;->DismissProgressDialog()V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    :cond_7
    iget-object v0, p0, Lcom/unipay/unipay_sdk/IIlIlIllIIllIIlI;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-virtual {v0}, Lcom/unipay/unipay_sdk/UniPay;->DismissProgressDialog()V

    iget-object v0, p0, Lcom/unipay/unipay_sdk/IIlIlIllIIllIIlI;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->_$39(Lcom/unipay/unipay_sdk/UniPay;)Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    const-string v2, "3"

    const-string v3, "\u652f\u4ed8\u5931\u8d25"

    const-string v4, "true"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/unipay/log/LogUtils;->writeLog_pay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unipay/unipay_sdk/IIlIlIllIIllIIlI;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    const-string v1, "\u652f\u4ed8\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/unipay/unipay_sdk/UniPay;->_$8(Lcom/unipay/unipay_sdk/UniPay;Ljava/lang/String;)V

    goto :goto_2
.end method
