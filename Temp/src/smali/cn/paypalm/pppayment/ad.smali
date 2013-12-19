.class Lcn/paypalm/pppayment/ad;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcn/paypalm/pppayment/BankcardPayAct;


# direct methods
.method constructor <init>(Lcn/paypalm/pppayment/BankcardPayAct;)V
    .locals 0

    iput-object p1, p0, Lcn/paypalm/pppayment/ad;->a:Lcn/paypalm/pppayment/BankcardPayAct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcn/paypalm/pppayment/ad;->a:Lcn/paypalm/pppayment/BankcardPayAct;

    invoke-static {v0}, Lcn/paypalm/pppayment/BankcardPayAct;->m(Lcn/paypalm/pppayment/BankcardPayAct;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    return-void
.end method
