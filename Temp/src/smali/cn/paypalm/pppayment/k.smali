.class Lcn/paypalm/pppayment/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcn/paypalm/pppayment/aq;


# direct methods
.method constructor <init>(Lcn/paypalm/pppayment/aq;)V
    .locals 0

    iput-object p1, p0, Lcn/paypalm/pppayment/k;->a:Lcn/paypalm/pppayment/aq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "zsht_failed"

    iget-object v3, p0, Lcn/paypalm/pppayment/k;->a:Lcn/paypalm/pppayment/aq;

    iget-object v3, v3, Lcn/paypalm/pppayment/aq;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v1, p0, Lcn/paypalm/pppayment/k;->a:Lcn/paypalm/pppayment/aq;

    invoke-static {v1}, Lcn/paypalm/pppayment/aq;->a(Lcn/paypalm/pppayment/aq;)Lcn/paypalm/pppayment/InitialAct;

    move-result-object v1

    const/4 v2, -0x2

    invoke-virtual {v1, v2, v0}, Lcn/paypalm/pppayment/InitialAct;->setResult(ILandroid/content/Intent;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcn/paypalm/pppayment/k;->a:Lcn/paypalm/pppayment/aq;

    invoke-static {v0}, Lcn/paypalm/pppayment/aq;->a(Lcn/paypalm/pppayment/aq;)Lcn/paypalm/pppayment/InitialAct;

    move-result-object v0

    invoke-virtual {v0}, Lcn/paypalm/pppayment/InitialAct;->finish()V

    return-void
.end method
