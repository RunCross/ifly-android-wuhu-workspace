.class Lcn/paypalm/pppayment/l;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcn/paypalm/pppayment/BankcardAgreement;


# direct methods
.method constructor <init>(Lcn/paypalm/pppayment/BankcardAgreement;)V
    .locals 0

    iput-object p1, p0, Lcn/paypalm/pppayment/l;->a:Lcn/paypalm/pppayment/BankcardAgreement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcn/paypalm/pppayment/l;->a:Lcn/paypalm/pppayment/BankcardAgreement;

    invoke-virtual {v0}, Lcn/paypalm/pppayment/BankcardAgreement;->finish()V

    return-void
.end method
