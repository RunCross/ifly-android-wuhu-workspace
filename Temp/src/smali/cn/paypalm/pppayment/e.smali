.class Lcn/paypalm/pppayment/e;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcn/paypalm/pppayment/InitialAct;


# direct methods
.method constructor <init>(Lcn/paypalm/pppayment/InitialAct;)V
    .locals 0

    iput-object p1, p0, Lcn/paypalm/pppayment/e;->a:Lcn/paypalm/pppayment/InitialAct;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcn/paypalm/pppayment/e;->a:Lcn/paypalm/pppayment/InitialAct;

    invoke-static {v0}, Lcn/paypalm/pppayment/InitialAct;->v(Lcn/paypalm/pppayment/InitialAct;)I

    move-result v0

    iget-object v1, p0, Lcn/paypalm/pppayment/e;->a:Lcn/paypalm/pppayment/InitialAct;

    invoke-static {v1}, Lcn/paypalm/pppayment/InitialAct;->c(Lcn/paypalm/pppayment/InitialAct;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "zsht_failed"

    const-string v3, "\u8bf7\u91cd\u65b0\u652f\u4ed8\uff01"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v1, p0, Lcn/paypalm/pppayment/e;->a:Lcn/paypalm/pppayment/InitialAct;

    const/4 v2, -0x2

    invoke-virtual {v1, v2, v0}, Lcn/paypalm/pppayment/InitialAct;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcn/paypalm/pppayment/e;->a:Lcn/paypalm/pppayment/InitialAct;

    invoke-virtual {v0}, Lcn/paypalm/pppayment/InitialAct;->finish()V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcn/paypalm/pppayment/e;->a:Lcn/paypalm/pppayment/InitialAct;

    invoke-static {v1}, Lcn/paypalm/pppayment/InitialAct;->j(Lcn/paypalm/pppayment/InitialAct;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
