.class Lcn/paypalm/pppayment/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcn/paypalm/pppayment/ap;


# direct methods
.method constructor <init>(Lcn/paypalm/pppayment/ap;)V
    .locals 0

    iput-object p1, p0, Lcn/paypalm/pppayment/m;->a:Lcn/paypalm/pppayment/ap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcn/paypalm/pppayment/m;->a:Lcn/paypalm/pppayment/ap;

    invoke-static {v0}, Lcn/paypalm/pppayment/ap;->a(Lcn/paypalm/pppayment/ap;)Lcn/paypalm/pppayment/InitialAct;

    move-result-object v0

    invoke-static {v0}, Lcn/paypalm/pppayment/InitialAct;->i(Lcn/paypalm/pppayment/InitialAct;)V

    return-void
.end method
