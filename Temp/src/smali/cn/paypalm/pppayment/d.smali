.class Lcn/paypalm/pppayment/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field final synthetic a:Lcn/paypalm/pppayment/InitialAct;


# direct methods
.method constructor <init>(Lcn/paypalm/pppayment/InitialAct;)V
    .locals 0

    iput-object p1, p0, Lcn/paypalm/pppayment/d;->a:Lcn/paypalm/pppayment/InitialAct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcn/paypalm/pppayment/d;->a:Lcn/paypalm/pppayment/InitialAct;

    invoke-static {v0}, Lcn/paypalm/pppayment/InitialAct;->u(Lcn/paypalm/pppayment/InitialAct;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/paypalm/pppayment/d;->a:Lcn/paypalm/pppayment/InitialAct;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/paypalm/pppayment/InitialAct;->a(Lcn/paypalm/pppayment/InitialAct;Z)V

    :cond_0
    return-void
.end method
