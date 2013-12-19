.class Lcn/paypalm/pppayment/ae;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcn/paypalm/pppayment/UserMessageAct;


# direct methods
.method constructor <init>(Lcn/paypalm/pppayment/UserMessageAct;)V
    .locals 0

    iput-object p1, p0, Lcn/paypalm/pppayment/ae;->a:Lcn/paypalm/pppayment/UserMessageAct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    iget-object v0, p0, Lcn/paypalm/pppayment/ae;->a:Lcn/paypalm/pppayment/UserMessageAct;

    iget-object v1, p0, Lcn/paypalm/pppayment/ae;->a:Lcn/paypalm/pppayment/UserMessageAct;

    invoke-static {v1}, Lcn/paypalm/pppayment/UserMessageAct;->A(Lcn/paypalm/pppayment/UserMessageAct;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcn/paypalm/pppayment/ae;->a:Lcn/paypalm/pppayment/UserMessageAct;

    invoke-static {v2}, Lcn/paypalm/pppayment/UserMessageAct;->B(Lcn/paypalm/pppayment/UserMessageAct;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, p1, v2}, Lcn/paypalm/pppayment/UserMessageAct;->a(Lcn/paypalm/pppayment/UserMessageAct;Landroid/widget/EditText;Landroid/text/Editable;Ljava/lang/String;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
