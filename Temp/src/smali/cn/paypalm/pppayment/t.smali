.class Lcn/paypalm/pppayment/t;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcn/paypalm/pppayment/j;


# direct methods
.method constructor <init>(Lcn/paypalm/pppayment/j;)V
    .locals 0

    iput-object p1, p0, Lcn/paypalm/pppayment/t;->a:Lcn/paypalm/pppayment/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcn/paypalm/pppayment/t;->a:Lcn/paypalm/pppayment/j;

    iget-object v0, v0, Lcn/paypalm/pppayment/j;->a:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/paypalm/pppayment/t;->a:Lcn/paypalm/pppayment/j;

    invoke-static {v0}, Lcn/paypalm/pppayment/j;->a(Lcn/paypalm/pppayment/j;)Lcn/paypalm/pppayment/BankcardAgreement;

    move-result-object v0

    iget-object v0, v0, Lcn/paypalm/pppayment/BankcardAgreement;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/paypalm/pppayment/t;->a:Lcn/paypalm/pppayment/j;

    iget-object v1, v1, Lcn/paypalm/pppayment/j;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcn/paypalm/pppayment/t;->a:Lcn/paypalm/pppayment/j;

    invoke-static {v0}, Lcn/paypalm/pppayment/j;->a(Lcn/paypalm/pppayment/j;)Lcn/paypalm/pppayment/BankcardAgreement;

    move-result-object v0

    const-string v1, "\u534f\u8bae\u8bfb\u53d6\u5931\u8d25\uff01"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
