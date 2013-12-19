.class Lcn/paypalm/pppayment/am;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcn/paypalm/pppayment/UserMessageAct;


# direct methods
.method constructor <init>(Lcn/paypalm/pppayment/UserMessageAct;)V
    .locals 0

    iput-object p1, p0, Lcn/paypalm/pppayment/am;->a:Lcn/paypalm/pppayment/UserMessageAct;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic a(Lcn/paypalm/pppayment/am;)Lcn/paypalm/pppayment/UserMessageAct;
    .locals 1

    iget-object v0, p0, Lcn/paypalm/pppayment/am;->a:Lcn/paypalm/pppayment/UserMessageAct;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v5, 0x0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    iget-object v0, p0, Lcn/paypalm/pppayment/am;->a:Lcn/paypalm/pppayment/UserMessageAct;

    invoke-static {v0}, Lcn/paypalm/pppayment/UserMessageAct;->d(Lcn/paypalm/pppayment/UserMessageAct;)Lcn/paypalm/pppayment/global/Tools;

    move-result-object v0

    iget-object v1, p0, Lcn/paypalm/pppayment/am;->a:Lcn/paypalm/pppayment/UserMessageAct;

    iget-object v2, p0, Lcn/paypalm/pppayment/am;->a:Lcn/paypalm/pppayment/UserMessageAct;

    invoke-static {v2}, Lcn/paypalm/pppayment/UserMessageAct;->g(Lcn/paypalm/pppayment/UserMessageAct;)Landroid/app/Dialog;

    move-result-object v2

    const-string v3, "\u9519\u8bef"

    const-string v4, "\u63d2\u4ef6\u5f02\u5e38\uff01"

    move v5, v7

    invoke-virtual/range {v0 .. v5}, Lcn/paypalm/pppayment/global/Tools;->a(Landroid/content/Context;Landroid/app/Dialog;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcn/paypalm/pppayment/am;->a:Lcn/paypalm/pppayment/UserMessageAct;

    invoke-static {v0}, Lcn/paypalm/pppayment/UserMessageAct;->f(Lcn/paypalm/pppayment/UserMessageAct;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcn/paypalm/pppayment/am;->a:Lcn/paypalm/pppayment/UserMessageAct;

    invoke-static {v0}, Lcn/paypalm/pppayment/UserMessageAct;->f(Lcn/paypalm/pppayment/UserMessageAct;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/paypalm/pppayment/am;->a:Lcn/paypalm/pppayment/UserMessageAct;

    invoke-static {v0}, Lcn/paypalm/pppayment/UserMessageAct;->f(Lcn/paypalm/pppayment/UserMessageAct;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/paypalm/pppayment/am;->a:Lcn/paypalm/pppayment/UserMessageAct;

    invoke-static {v0}, Lcn/paypalm/pppayment/UserMessageAct;->f(Lcn/paypalm/pppayment/UserMessageAct;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lcn/paypalm/pppayment/am;->a:Lcn/paypalm/pppayment/UserMessageAct;

    const-string v2, "title"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/paypalm/pppayment/UserMessageAct;->a(Lcn/paypalm/pppayment/UserMessageAct;Ljava/lang/String;)V

    iget-object v1, p0, Lcn/paypalm/pppayment/am;->a:Lcn/paypalm/pppayment/UserMessageAct;

    const-string v2, "text"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/paypalm/pppayment/UserMessageAct;->b(Lcn/paypalm/pppayment/UserMessageAct;Ljava/lang/String;)V

    const-string v1, "requestFocus"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcn/paypalm/pppayment/am;->a:Lcn/paypalm/pppayment/UserMessageAct;

    invoke-static {v1, v0}, Lcn/paypalm/pppayment/UserMessageAct;->a(Lcn/paypalm/pppayment/UserMessageAct;I)V

    iget-object v0, p0, Lcn/paypalm/pppayment/am;->a:Lcn/paypalm/pppayment/UserMessageAct;

    invoke-static {v0}, Lcn/paypalm/pppayment/UserMessageAct;->d(Lcn/paypalm/pppayment/UserMessageAct;)Lcn/paypalm/pppayment/global/Tools;

    move-result-object v0

    iget-object v1, p0, Lcn/paypalm/pppayment/am;->a:Lcn/paypalm/pppayment/UserMessageAct;

    iget-object v2, p0, Lcn/paypalm/pppayment/am;->a:Lcn/paypalm/pppayment/UserMessageAct;

    invoke-static {v2}, Lcn/paypalm/pppayment/UserMessageAct;->g(Lcn/paypalm/pppayment/UserMessageAct;)Landroid/app/Dialog;

    move-result-object v2

    iget-object v3, p0, Lcn/paypalm/pppayment/am;->a:Lcn/paypalm/pppayment/UserMessageAct;

    invoke-static {v3}, Lcn/paypalm/pppayment/UserMessageAct;->h(Lcn/paypalm/pppayment/UserMessageAct;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcn/paypalm/pppayment/am;->a:Lcn/paypalm/pppayment/UserMessageAct;

    invoke-static {v4}, Lcn/paypalm/pppayment/UserMessageAct;->i(Lcn/paypalm/pppayment/UserMessageAct;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v0 .. v5}, Lcn/paypalm/pppayment/global/Tools;->a(Landroid/content/Context;Landroid/app/Dialog;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcn/paypalm/pppayment/am;->a:Lcn/paypalm/pppayment/UserMessageAct;

    invoke-static {v0}, Lcn/paypalm/pppayment/UserMessageAct;->f(Lcn/paypalm/pppayment/UserMessageAct;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "iResult"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "isShowAuth"

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v2, p0, Lcn/paypalm/pppayment/am;->a:Lcn/paypalm/pppayment/UserMessageAct;

    invoke-static {v2, v1, v0}, Lcn/paypalm/pppayment/UserMessageAct;->a(Lcn/paypalm/pppayment/UserMessageAct;IZ)V

    goto/16 :goto_0

    :sswitch_3
    iget-object v0, p0, Lcn/paypalm/pppayment/am;->a:Lcn/paypalm/pppayment/UserMessageAct;

    invoke-static {v0}, Lcn/paypalm/pppayment/UserMessageAct;->j(Lcn/paypalm/pppayment/UserMessageAct;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcn/paypalm/pppayment/am;->a:Lcn/paypalm/pppayment/UserMessageAct;

    invoke-static {v0}, Lcn/paypalm/pppayment/UserMessageAct;->f(Lcn/paypalm/pppayment/UserMessageAct;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v0, p0, Lcn/paypalm/pppayment/am;->a:Lcn/paypalm/pppayment/UserMessageAct;

    invoke-static {v0}, Lcn/paypalm/pppayment/UserMessageAct;->k(Lcn/paypalm/pppayment/UserMessageAct;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v0, p0, Lcn/paypalm/pppayment/am;->a:Lcn/paypalm/pppayment/UserMessageAct;

    invoke-static {v0}, Lcn/paypalm/pppayment/UserMessageAct;->l(Lcn/paypalm/pppayment/UserMessageAct;)V

    iget-object v0, p0, Lcn/paypalm/pppayment/am;->a:Lcn/paypalm/pppayment/UserMessageAct;

    invoke-static {v0}, Lcn/paypalm/pppayment/UserMessageAct;->m(Lcn/paypalm/pppayment/UserMessageAct;)Lcn/paypalm/pppayment/global/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/paypalm/pppayment/global/b;->r()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcn/paypalm/pppayment/am;->a:Lcn/paypalm/pppayment/UserMessageAct;

    iget-object v1, p0, Lcn/paypalm/pppayment/am;->a:Lcn/paypalm/pppayment/UserMessageAct;

    invoke-static {v1}, Lcn/paypalm/pppayment/UserMessageAct;->m(Lcn/paypalm/pppayment/UserMessageAct;)Lcn/paypalm/pppayment/global/b;

    move-result-object v1

    invoke-virtual {v1}, Lcn/paypalm/pppayment/global/b;->t()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/paypalm/pppayment/UserMessageAct;->c(Lcn/paypalm/pppayment/UserMessageAct;Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcn/paypalm/pppayment/am;->a:Lcn/paypalm/pppayment/UserMessageAct;

    invoke-static {v0}, Lcn/paypalm/pppayment/UserMessageAct;->m(Lcn/paypalm/pppayment/UserMessageAct;)Lcn/paypalm/pppayment/global/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/paypalm/pppayment/global/b;->s()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/paypalm/pppayment/am;->a:Lcn/paypalm/pppayment/UserMessageAct;

    invoke-static {v1}, Lcn/paypalm/pppayment/UserMessageAct;->m(Lcn/paypalm/pppayment/UserMessageAct;)Lcn/paypalm/pppayment/global/b;

    move-result-object v1

    invoke-virtual {v1}, Lcn/paypalm/pppayment/global/b;->x()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/paypalm/pppayment/am;->a:Lcn/paypalm/pppayment/UserMessageAct;

    invoke-static {v1}, Lcn/paypalm/pppayment/UserMessageAct;->n(Lcn/paypalm/pppayment/UserMessageAct;)Lcn/paypalm/pppayment/global/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/paypalm/pppayment/global/a;->k()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "****"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/paypalm/pppayment/am;->a:Lcn/paypalm/pppayment/UserMessageAct;

    invoke-static {v1}, Lcn/paypalm/pppayment/UserMessageAct;->n(Lcn/paypalm/pppayment/UserMessageAct;)Lcn/paypalm/pppayment/global/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/paypalm/pppayment/global/a;->k()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    const/16 v3, 0xb

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    :goto_2
    iget-object v0, p0, Lcn/paypalm/pppayment/am;->a:Lcn/paypalm/pppayment/UserMessageAct;

    invoke-static {v0}, Lcn/paypalm/pppayment/UserMessageAct;->d(Lcn/paypalm/pppayment/UserMessageAct;)Lcn/paypalm/pppayment/global/Tools;

    move-result-object v0

    iget-object v1, p0, Lcn/paypalm/pppayment/am;->a:Lcn/paypalm/pppayment/UserMessageAct;

    iget-object v2, p0, Lcn/paypalm/pppayment/am;->a:Lcn/paypalm/pppayment/UserMessageAct;

    invoke-static {v2}, Lcn/paypalm/pppayment/UserMessageAct;->g(Lcn/paypalm/pppayment/UserMessageAct;)Landroid/app/Dialog;

    move-result-object v2

    const-string v3, "\u83b7\u53d6\u77ed\u4fe1\u9a8c\u8bc1\u7801\u6210\u529f"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\u5df2\u5c06\u9a8c\u8bc1\u7801\u53d1\u9001\u5230"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ",\u8bf7\u6ce8\u610f\u67e5\u6536\uff01"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v0 .. v5}, Lcn/paypalm/pppayment/global/Tools;->a(Landroid/content/Context;Landroid/app/Dialog;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_2
    iget-object v1, p0, Lcn/paypalm/pppayment/am;->a:Lcn/paypalm/pppayment/UserMessageAct;

    invoke-static {v1}, Lcn/paypalm/pppayment/UserMessageAct;->k(Lcn/paypalm/pppayment/UserMessageAct;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcn/paypalm/pppayment/am;->a:Lcn/paypalm/pppayment/UserMessageAct;

    invoke-static {v1}, Lcn/paypalm/pppayment/UserMessageAct;->k(Lcn/paypalm/pppayment/UserMessageAct;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    goto/16 :goto_1

    :sswitch_4
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "show_pay_card"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "show_cardholedr_name"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "bundle_check_phone_requestMessage"

    iget-object v6, p0, Lcn/paypalm/pppayment/am;->a:Lcn/paypalm/pppayment/UserMessageAct;

    invoke-static {v6}, Lcn/paypalm/pppayment/UserMessageAct;->n(Lcn/paypalm/pppayment/UserMessageAct;)Lcn/paypalm/pppayment/global/a;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v4, "bundle_check_phone_responseMessage"

    iget-object v6, p0, Lcn/paypalm/pppayment/am;->a:Lcn/paypalm/pppayment/UserMessageAct;

    invoke-static {v6}, Lcn/paypalm/pppayment/UserMessageAct;->m(Lcn/paypalm/pppayment/UserMessageAct;)Lcn/paypalm/pppayment/global/b;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v4, "bundle_myPaypalm_errorMessageList"

    iget-object v6, p0, Lcn/paypalm/pppayment/am;->a:Lcn/paypalm/pppayment/UserMessageAct;

    invoke-static {v6}, Lcn/paypalm/pppayment/UserMessageAct;->o(Lcn/paypalm/pppayment/UserMessageAct;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v4, "cardindex"

    iget-object v6, p0, Lcn/paypalm/pppayment/am;->a:Lcn/paypalm/pppayment/UserMessageAct;

    invoke-static {v6}, Lcn/paypalm/pppayment/UserMessageAct;->m(Lcn/paypalm/pppayment/UserMessageAct;)Lcn/paypalm/pppayment/global/b;

    move-result-object v6

    invoke-virtual {v6}, Lcn/paypalm/pppayment/global/b;->p()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "show_pay_card"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "show_cardholedr_name"

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v0, p0, Lcn/paypalm/pppayment/am;->a:Lcn/paypalm/pppayment/UserMessageAct;

    invoke-static {v0}, Lcn/paypalm/pppayment/UserMessageAct;->m(Lcn/paypalm/pppayment/UserMessageAct;)Lcn/paypalm/pppayment/global/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/paypalm/pppayment/global/b;->v()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcn/paypalm/pppayment/am;->a:Lcn/paypalm/pppayment/UserMessageAct;

    invoke-static {v0}, Lcn/paypalm/pppayment/UserMessageAct;->d(Lcn/paypalm/pppayment/UserMessageAct;)Lcn/paypalm/pppayment/global/Tools;

    move-result-object v0

    iget-object v1, p0, Lcn/paypalm/pppayment/am;->a:Lcn/paypalm/pppayment/UserMessageAct;

    iget-object v2, p0, Lcn/paypalm/pppayment/am;->a:Lcn/paypalm/pppayment/UserMessageAct;

    invoke-static {v2}, Lcn/paypalm/pppayment/UserMessageAct;->g(Lcn/paypalm/pppayment/UserMessageAct;)Landroid/app/Dialog;

    move-result-object v2

    const-string v3, "\u9519\u8bef"

    const-string v4, "\u63d2\u4ef6\u5f02\u5e38\uff01"

    move v5, v7

    invoke-virtual/range {v0 .. v5}, Lcn/paypalm/pppayment/global/Tools;->a(Landroid/content/Context;Landroid/app/Dialog;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_3
    iget-object v0, p0, Lcn/paypalm/pppayment/am;->a:Lcn/paypalm/pppayment/UserMessageAct;

    invoke-static {v0}, Lcn/paypalm/pppayment/UserMessageAct;->b(Lcn/paypalm/pppayment/UserMessageAct;)Landroid/os/Handler;

    move-result-object v0

    const v1, 0x1adb9

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcn/paypalm/pppayment/am;->a:Lcn/paypalm/pppayment/UserMessageAct;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u63d0\u793a"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u60a8\u5373\u5c06\u652f\u4ed8 "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcn/paypalm/pppayment/am;->a:Lcn/paypalm/pppayment/UserMessageAct;

    invoke-static {v4}, Lcn/paypalm/pppayment/UserMessageAct;->m(Lcn/paypalm/pppayment/UserMessageAct;)Lcn/paypalm/pppayment/global/b;

    move-result-object v4

    invoke-virtual {v4}, Lcn/paypalm/pppayment/global/b;->n()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \u5143,\u662f\u5426\u786e\u8ba4\u652f\u4ed8\uff1f"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v3, "\u786e\u5b9a"

    new-instance v4, Lcn/paypalm/pppayment/z;

    invoke-direct {v4, p0, v2}, Lcn/paypalm/pppayment/z;-><init>(Lcn/paypalm/pppayment/am;Landroid/content/Intent;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "\u53d6\u6d88"

    new-instance v3, Lcn/paypalm/pppayment/x;

    invoke-direct {v3, p0}, Lcn/paypalm/pppayment/x;-><init>(Lcn/paypalm/pppayment/am;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcn/paypalm/pppayment/am;->a:Lcn/paypalm/pppayment/UserMessageAct;

    invoke-static {v1, v0}, Lcn/paypalm/pppayment/UserMessageAct;->a(Lcn/paypalm/pppayment/UserMessageAct;Landroid/app/AlertDialog$Builder;)V

    goto :goto_3

    :pswitch_1
    new-instance v0, Lcn/paypalm/pppayment/s;

    iget-object v1, p0, Lcn/paypalm/pppayment/am;->a:Lcn/paypalm/pppayment/UserMessageAct;

    invoke-direct {v0, v1, v2}, Lcn/paypalm/pppayment/s;-><init>(Lcn/paypalm/pppayment/UserMessageAct;Landroid/content/Intent;)V

    invoke-virtual {v0}, Lcn/paypalm/pppayment/s;->start()V

    goto :goto_3

    :pswitch_2
    iget-object v0, p0, Lcn/paypalm/pppayment/am;->a:Lcn/paypalm/pppayment/UserMessageAct;

    const-class v1, Lcn/paypalm/pppayment/BankcardPayAct;

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v0, p0, Lcn/paypalm/pppayment/am;->a:Lcn/paypalm/pppayment/UserMessageAct;

    invoke-virtual {v0, v2, v5}, Lcn/paypalm/pppayment/UserMessageAct;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_3

    :pswitch_3
    iget-object v0, p0, Lcn/paypalm/pppayment/am;->a:Lcn/paypalm/pppayment/UserMessageAct;

    const-class v1, Lcn/paypalm/pppayment/BankcardPayAct;

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v0, p0, Lcn/paypalm/pppayment/am;->a:Lcn/paypalm/pppayment/UserMessageAct;

    invoke-virtual {v0, v2, v5}, Lcn/paypalm/pppayment/UserMessageAct;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_3

    :cond_3
    move-object v4, v0

    goto/16 :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x1adb2 -> :sswitch_3
        0x1adb3 -> :sswitch_2
        0x1adb4 -> :sswitch_1
        0x1adb9 -> :sswitch_0
        0x1adc2 -> :sswitch_4
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
