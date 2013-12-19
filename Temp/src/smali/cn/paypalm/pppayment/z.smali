.class Lcn/paypalm/pppayment/z;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcn/paypalm/pppayment/am;

.field private final synthetic b:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcn/paypalm/pppayment/am;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcn/paypalm/pppayment/z;->a:Lcn/paypalm/pppayment/am;

    iput-object p2, p0, Lcn/paypalm/pppayment/z;->b:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcn/paypalm/pppayment/z;->a:Lcn/paypalm/pppayment/am;

    invoke-static {v0}, Lcn/paypalm/pppayment/am;->a(Lcn/paypalm/pppayment/am;)Lcn/paypalm/pppayment/UserMessageAct;

    move-result-object v0

    invoke-static {v0}, Lcn/paypalm/pppayment/UserMessageAct;->f(Lcn/paypalm/pppayment/UserMessageAct;)Landroid/app/ProgressDialog;

    move-result-object v0

    const-string v1, "\u6b63\u5728\u652f\u4ed8\uff0c\u8bf7\u7a0d\u540e..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcn/paypalm/pppayment/z;->a:Lcn/paypalm/pppayment/am;

    invoke-static {v0}, Lcn/paypalm/pppayment/am;->a(Lcn/paypalm/pppayment/am;)Lcn/paypalm/pppayment/UserMessageAct;

    move-result-object v0

    invoke-static {v0}, Lcn/paypalm/pppayment/UserMessageAct;->f(Lcn/paypalm/pppayment/UserMessageAct;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    new-instance v0, Lcn/paypalm/pppayment/s;

    iget-object v1, p0, Lcn/paypalm/pppayment/z;->a:Lcn/paypalm/pppayment/am;

    invoke-static {v1}, Lcn/paypalm/pppayment/am;->a(Lcn/paypalm/pppayment/am;)Lcn/paypalm/pppayment/UserMessageAct;

    move-result-object v1

    iget-object v2, p0, Lcn/paypalm/pppayment/z;->b:Landroid/content/Intent;

    invoke-direct {v0, v1, v2}, Lcn/paypalm/pppayment/s;-><init>(Lcn/paypalm/pppayment/UserMessageAct;Landroid/content/Intent;)V

    invoke-virtual {v0}, Lcn/paypalm/pppayment/s;->start()V

    return-void
.end method
