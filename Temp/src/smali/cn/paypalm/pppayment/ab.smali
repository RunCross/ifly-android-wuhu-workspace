.class Lcn/paypalm/pppayment/ab;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcn/paypalm/pppayment/UserMessageAct;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/paypalm/pppayment/UserMessageAct;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/paypalm/pppayment/ab;->a:Lcn/paypalm/pppayment/UserMessageAct;

    iput-object p2, p0, Lcn/paypalm/pppayment/ab;->b:Ljava/lang/String;

    iput-object p3, p0, Lcn/paypalm/pppayment/ab;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    const/4 v2, 0x1

    iget-object v0, p0, Lcn/paypalm/pppayment/ab;->b:Ljava/lang/String;

    const-string v1, "-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "intent.action.result.failed"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "zsht_failed"

    iget-object v3, p0, Lcn/paypalm/pppayment/ab;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v1, p0, Lcn/paypalm/pppayment/ab;->a:Lcn/paypalm/pppayment/UserMessageAct;

    const-class v2, Lcn/paypalm/pppayment/InitialAct;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v1, p0, Lcn/paypalm/pppayment/ab;->a:Lcn/paypalm/pppayment/UserMessageAct;

    const/4 v2, -0x2

    invoke-virtual {v1, v2, v0}, Lcn/paypalm/pppayment/UserMessageAct;->setResult(ILandroid/content/Intent;)V

    const/high16 v1, 0x2400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v1, p0, Lcn/paypalm/pppayment/ab;->a:Lcn/paypalm/pppayment/UserMessageAct;

    invoke-virtual {v1, v0}, Lcn/paypalm/pppayment/UserMessageAct;->startActivity(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcn/paypalm/pppayment/ab;->a:Lcn/paypalm/pppayment/UserMessageAct;

    invoke-static {v0}, Lcn/paypalm/pppayment/UserMessageAct;->m(Lcn/paypalm/pppayment/UserMessageAct;)Lcn/paypalm/pppayment/global/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/paypalm/pppayment/global/b;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "2P5002"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "2P5001"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "2P5028"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iget-object v0, p0, Lcn/paypalm/pppayment/ab;->a:Lcn/paypalm/pppayment/UserMessageAct;

    invoke-static {v0}, Lcn/paypalm/pppayment/UserMessageAct;->k(Lcn/paypalm/pppayment/UserMessageAct;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    :cond_3
    const-string v1, "2P5020"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "0P1017"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "0P1034"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "2P5014"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "2P5031"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_4
    iget-object v0, p0, Lcn/paypalm/pppayment/ab;->a:Lcn/paypalm/pppayment/UserMessageAct;

    invoke-static {v0}, Lcn/paypalm/pppayment/UserMessageAct;->s(Lcn/paypalm/pppayment/UserMessageAct;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcn/paypalm/pppayment/ab;->a:Lcn/paypalm/pppayment/UserMessageAct;

    invoke-static {v0, v2}, Lcn/paypalm/pppayment/UserMessageAct;->a(Lcn/paypalm/pppayment/UserMessageAct;Z)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcn/paypalm/pppayment/ab;->a:Lcn/paypalm/pppayment/UserMessageAct;

    invoke-static {v0}, Lcn/paypalm/pppayment/UserMessageAct;->e(Lcn/paypalm/pppayment/UserMessageAct;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    :cond_6
    const-string v1, "0P2012"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "0P2011"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "0P2001"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "0P2009"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "2P2016"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "0P2017"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "0P2016"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "2P5027"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    iget-object v0, p0, Lcn/paypalm/pppayment/ab;->a:Lcn/paypalm/pppayment/UserMessageAct;

    invoke-static {v0}, Lcn/paypalm/pppayment/UserMessageAct;->A(Lcn/paypalm/pppayment/UserMessageAct;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_0

    :cond_8
    const-string v1, "0S8303"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v0, p0, Lcn/paypalm/pppayment/ab;->a:Lcn/paypalm/pppayment/UserMessageAct;

    invoke-static {v0}, Lcn/paypalm/pppayment/UserMessageAct;->F(Lcn/paypalm/pppayment/UserMessageAct;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_0

    :cond_9
    const-string v1, "2P5025"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcn/paypalm/pppayment/ab;->a:Lcn/paypalm/pppayment/UserMessageAct;

    invoke-static {v0, v2}, Lcn/paypalm/pppayment/UserMessageAct;->a(Lcn/paypalm/pppayment/UserMessageAct;Z)V

    iget-object v0, p0, Lcn/paypalm/pppayment/ab;->a:Lcn/paypalm/pppayment/UserMessageAct;

    invoke-static {v0}, Lcn/paypalm/pppayment/UserMessageAct;->m(Lcn/paypalm/pppayment/UserMessageAct;)Lcn/paypalm/pppayment/global/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/paypalm/pppayment/global/b;->A()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x31

    if-ne v3, v4, :cond_a

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcn/paypalm/pppayment/ab;->a:Lcn/paypalm/pppayment/UserMessageAct;

    invoke-static {v0}, Lcn/paypalm/pppayment/UserMessageAct;->A(Lcn/paypalm/pppayment/UserMessageAct;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_0

    :pswitch_0
    iget-object v0, p0, Lcn/paypalm/pppayment/ab;->a:Lcn/paypalm/pppayment/UserMessageAct;

    invoke-static {v0}, Lcn/paypalm/pppayment/UserMessageAct;->A(Lcn/paypalm/pppayment/UserMessageAct;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_0

    :pswitch_1
    iget-object v0, p0, Lcn/paypalm/pppayment/ab;->a:Lcn/paypalm/pppayment/UserMessageAct;

    invoke-static {v0}, Lcn/paypalm/pppayment/UserMessageAct;->F(Lcn/paypalm/pppayment/UserMessageAct;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lcn/paypalm/pppayment/ab;->a:Lcn/paypalm/pppayment/UserMessageAct;

    invoke-static {v0}, Lcn/paypalm/pppayment/UserMessageAct;->G(Lcn/paypalm/pppayment/UserMessageAct;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcn/paypalm/pppayment/ab;->a:Lcn/paypalm/pppayment/UserMessageAct;

    invoke-static {v0}, Lcn/paypalm/pppayment/UserMessageAct;->e(Lcn/paypalm/pppayment/UserMessageAct;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_0

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_b
    iget-object v0, p0, Lcn/paypalm/pppayment/ab;->a:Lcn/paypalm/pppayment/UserMessageAct;

    invoke-static {v0}, Lcn/paypalm/pppayment/UserMessageAct;->A(Lcn/paypalm/pppayment/UserMessageAct;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
