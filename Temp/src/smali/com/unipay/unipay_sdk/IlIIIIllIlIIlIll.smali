.class Lcom/unipay/unipay_sdk/IlIIIIllIlIIlIll;
.super Landroid/os/CountDownTimer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unipay/unipay_sdk/UniPay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyCount"
.end annotation


# instance fields
.field final synthetic _$1:Lcom/unipay/unipay_sdk/UniPay;


# direct methods
.method public constructor <init>(Lcom/unipay/unipay_sdk/UniPay;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/unipay_sdk/IlIIIIllIlIIlIll;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/unipay/unipay_sdk/IlIIIIllIlIIlIll;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->_$39(Lcom/unipay/unipay_sdk/UniPay;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/unipay/unipay_sdk/IlIIIIllIlIIlIll;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v1}, Lcom/unipay/unipay_sdk/UniPay;->_$13(Lcom/unipay/unipay_sdk/UniPay;)Lcom/unipay/unipay_sdk/IIlIlIllIIllIIlI;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/unipay/unipay_sdk/IlIIIIllIlIIlIll;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->_$14(Lcom/unipay/unipay_sdk/UniPay;)Lcom/unipay/unipay_sdk/lIIlIIlllIIIIllI;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unipay/unipay_sdk/IlIIIIllIlIIlIll;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->_$14(Lcom/unipay/unipay_sdk/UniPay;)Lcom/unipay/unipay_sdk/lIIlIIlllIIIIllI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unipay/unipay_sdk/lIIlIIlllIIIIllI;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/unipay/unipay_sdk/IlIIIIllIlIIlIll;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-virtual {v0}, Lcom/unipay/unipay_sdk/UniPay;->DismissProgressDialog()V

    iget-object v0, p0, Lcom/unipay/unipay_sdk/IlIIIIllIlIIlIll;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->_$39(Lcom/unipay/unipay_sdk/UniPay;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/unipay/unipay_sdk/IIlIIIIlllllIlll;

    invoke-direct {v1, p0}, Lcom/unipay/unipay_sdk/IIlIIIIlllllIlll;-><init>(Lcom/unipay/unipay_sdk/IlIIIIllIlIIlIll;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onTick(J)V
    .locals 0

    return-void
.end method
