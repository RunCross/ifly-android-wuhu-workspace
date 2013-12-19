.class Lcn/paypalm/pppayment/aj;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcn/paypalm/pppayment/UserMessageAct;


# direct methods
.method constructor <init>(Lcn/paypalm/pppayment/UserMessageAct;)V
    .locals 0

    iput-object p1, p0, Lcn/paypalm/pppayment/aj;->a:Lcn/paypalm/pppayment/UserMessageAct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcn/paypalm/pppayment/aj;->a:Lcn/paypalm/pppayment/UserMessageAct;

    invoke-static {v0}, Lcn/paypalm/pppayment/UserMessageAct;->E(Lcn/paypalm/pppayment/UserMessageAct;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setClickable(Z)V

    iget-object v0, p0, Lcn/paypalm/pppayment/aj;->a:Lcn/paypalm/pppayment/UserMessageAct;

    invoke-static {v0}, Lcn/paypalm/pppayment/UserMessageAct;->a(Lcn/paypalm/pppayment/UserMessageAct;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u83b7\u53d6"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/paypalm/pppayment/aj;->a:Lcn/paypalm/pppayment/UserMessageAct;

    invoke-static {v0}, Lcn/paypalm/pppayment/UserMessageAct;->e(Lcn/paypalm/pppayment/UserMessageAct;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/paypalm/pppayment/aj;->a:Lcn/paypalm/pppayment/UserMessageAct;

    invoke-static {v0}, Lcn/paypalm/pppayment/UserMessageAct;->d(Lcn/paypalm/pppayment/UserMessageAct;)Lcn/paypalm/pppayment/global/Tools;

    move-result-object v0

    iget-object v1, p0, Lcn/paypalm/pppayment/aj;->a:Lcn/paypalm/pppayment/UserMessageAct;

    invoke-static {v1}, Lcn/paypalm/pppayment/UserMessageAct;->e(Lcn/paypalm/pppayment/UserMessageAct;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcn/paypalm/pppayment/global/Tools;->a(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/paypalm/pppayment/aj;->a:Lcn/paypalm/pppayment/UserMessageAct;

    invoke-static {v0}, Lcn/paypalm/pppayment/UserMessageAct;->a(Lcn/paypalm/pppayment/UserMessageAct;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setClickable(Z)V

    iget-object v0, p0, Lcn/paypalm/pppayment/aj;->a:Lcn/paypalm/pppayment/UserMessageAct;

    invoke-static {v0}, Lcn/paypalm/pppayment/UserMessageAct;->a(Lcn/paypalm/pppayment/UserMessageAct;)Landroid/widget/Button;

    move-result-object v0

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    :cond_0
    return-void
.end method
