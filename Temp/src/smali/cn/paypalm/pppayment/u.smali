.class Lcn/paypalm/pppayment/u;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcn/paypalm/pppayment/r;


# direct methods
.method constructor <init>(Lcn/paypalm/pppayment/r;)V
    .locals 0

    iput-object p1, p0, Lcn/paypalm/pppayment/u;->a:Lcn/paypalm/pppayment/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcn/paypalm/pppayment/u;->a:Lcn/paypalm/pppayment/r;

    invoke-static {v0}, Lcn/paypalm/pppayment/r;->a(Lcn/paypalm/pppayment/r;)Lcn/paypalm/pppayment/InitialAct;

    move-result-object v0

    invoke-static {v0}, Lcn/paypalm/pppayment/InitialAct;->g(Lcn/paypalm/pppayment/InitialAct;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/paypalm/pppayment/u;->a:Lcn/paypalm/pppayment/r;

    invoke-static {v0}, Lcn/paypalm/pppayment/r;->a(Lcn/paypalm/pppayment/r;)Lcn/paypalm/pppayment/InitialAct;

    move-result-object v0

    invoke-static {v0}, Lcn/paypalm/pppayment/InitialAct;->g(Lcn/paypalm/pppayment/InitialAct;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/paypalm/pppayment/u;->a:Lcn/paypalm/pppayment/r;

    invoke-static {v0}, Lcn/paypalm/pppayment/r;->a(Lcn/paypalm/pppayment/r;)Lcn/paypalm/pppayment/InitialAct;

    move-result-object v0

    invoke-static {v0}, Lcn/paypalm/pppayment/InitialAct;->g(Lcn/paypalm/pppayment/InitialAct;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcn/paypalm/pppayment/u;->a:Lcn/paypalm/pppayment/r;

    invoke-static {v0}, Lcn/paypalm/pppayment/r;->a(Lcn/paypalm/pppayment/r;)Lcn/paypalm/pppayment/InitialAct;

    move-result-object v0

    invoke-static {v0}, Lcn/paypalm/pppayment/InitialAct;->b(Lcn/paypalm/pppayment/InitialAct;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Lcn/paypalm/pppayment/u;->a:Lcn/paypalm/pppayment/r;

    invoke-static {v0}, Lcn/paypalm/pppayment/r;->a(Lcn/paypalm/pppayment/r;)Lcn/paypalm/pppayment/InitialAct;

    move-result-object v0

    invoke-static {v0}, Lcn/paypalm/pppayment/InitialAct;->b(Lcn/paypalm/pppayment/InitialAct;)Landroid/app/Dialog;

    move-result-object v0

    iget-object v1, p0, Lcn/paypalm/pppayment/u;->a:Lcn/paypalm/pppayment/r;

    iget v1, v1, Lcn/paypalm/pppayment/r;->a:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    return-void
.end method
