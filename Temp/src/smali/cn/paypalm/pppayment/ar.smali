.class Lcn/paypalm/pppayment/ar;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcn/paypalm/pppayment/s;


# direct methods
.method constructor <init>(Lcn/paypalm/pppayment/s;)V
    .locals 0

    iput-object p1, p0, Lcn/paypalm/pppayment/ar;->a:Lcn/paypalm/pppayment/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcn/paypalm/pppayment/ar;->a:Lcn/paypalm/pppayment/s;

    iget-object v0, v0, Lcn/paypalm/pppayment/s;->a:Landroid/content/Intent;

    iget-object v1, p0, Lcn/paypalm/pppayment/ar;->a:Lcn/paypalm/pppayment/s;

    invoke-static {v1}, Lcn/paypalm/pppayment/s;->a(Lcn/paypalm/pppayment/s;)Lcn/paypalm/pppayment/UserMessageAct;

    move-result-object v1

    const-class v2, Lcn/paypalm/pppayment/SuccessAct;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v0, p0, Lcn/paypalm/pppayment/ar;->a:Lcn/paypalm/pppayment/s;

    invoke-static {v0}, Lcn/paypalm/pppayment/s;->a(Lcn/paypalm/pppayment/s;)Lcn/paypalm/pppayment/UserMessageAct;

    move-result-object v0

    iget-object v1, p0, Lcn/paypalm/pppayment/ar;->a:Lcn/paypalm/pppayment/s;

    iget-object v1, v1, Lcn/paypalm/pppayment/s;->a:Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/paypalm/pppayment/UserMessageAct;->startActivityForResult(Landroid/content/Intent;I)V

    iget-object v0, p0, Lcn/paypalm/pppayment/ar;->a:Lcn/paypalm/pppayment/s;

    invoke-static {v0}, Lcn/paypalm/pppayment/s;->a(Lcn/paypalm/pppayment/s;)Lcn/paypalm/pppayment/UserMessageAct;

    move-result-object v0

    invoke-static {v0}, Lcn/paypalm/pppayment/UserMessageAct;->f(Lcn/paypalm/pppayment/UserMessageAct;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/paypalm/pppayment/ar;->a:Lcn/paypalm/pppayment/s;

    invoke-static {v0}, Lcn/paypalm/pppayment/s;->a(Lcn/paypalm/pppayment/s;)Lcn/paypalm/pppayment/UserMessageAct;

    move-result-object v0

    invoke-static {v0}, Lcn/paypalm/pppayment/UserMessageAct;->f(Lcn/paypalm/pppayment/UserMessageAct;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/paypalm/pppayment/ar;->a:Lcn/paypalm/pppayment/s;

    invoke-static {v0}, Lcn/paypalm/pppayment/s;->a(Lcn/paypalm/pppayment/s;)Lcn/paypalm/pppayment/UserMessageAct;

    move-result-object v0

    invoke-static {v0}, Lcn/paypalm/pppayment/UserMessageAct;->f(Lcn/paypalm/pppayment/UserMessageAct;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method
