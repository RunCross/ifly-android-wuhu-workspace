.class Lcn/paypalm/pppayment/aq;
.super Landroid/os/Handler;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field final synthetic c:Lcn/paypalm/pppayment/InitialAct;


# direct methods
.method constructor <init>(Lcn/paypalm/pppayment/InitialAct;)V
    .locals 1

    iput-object p1, p0, Lcn/paypalm/pppayment/aq;->c:Lcn/paypalm/pppayment/InitialAct;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const-string v0, "\u9519\u8bef"

    iput-object v0, p0, Lcn/paypalm/pppayment/aq;->a:Ljava/lang/String;

    const-string v0, "\u8bf7\u91cd\u65b0\u652f\u4ed8\uff01"

    iput-object v0, p0, Lcn/paypalm/pppayment/aq;->b:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcn/paypalm/pppayment/aq;)Lcn/paypalm/pppayment/InitialAct;
    .locals 1

    iget-object v0, p0, Lcn/paypalm/pppayment/aq;->c:Lcn/paypalm/pppayment/InitialAct;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const-string v0, "\u9519\u8bef"

    iput-object v0, p0, Lcn/paypalm/pppayment/aq;->a:Ljava/lang/String;

    const-string v0, "\u8bf7\u91cd\u65b0\u652f\u4ed8\uff01"

    iput-object v0, p0, Lcn/paypalm/pppayment/aq;->b:Ljava/lang/String;

    :goto_0
    :pswitch_1
    iget-object v0, p0, Lcn/paypalm/pppayment/aq;->c:Lcn/paypalm/pppayment/InitialAct;

    invoke-static {v0}, Lcn/paypalm/pppayment/InitialAct;->b(Lcn/paypalm/pppayment/InitialAct;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/paypalm/pppayment/aq;->c:Lcn/paypalm/pppayment/InitialAct;

    invoke-virtual {v0}, Lcn/paypalm/pppayment/InitialAct;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/paypalm/pppayment/aq;->c:Lcn/paypalm/pppayment/InitialAct;

    invoke-static {v0}, Lcn/paypalm/pppayment/InitialAct;->b(Lcn/paypalm/pppayment/InitialAct;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lcn/paypalm/pppayment/aq;->c:Lcn/paypalm/pppayment/InitialAct;

    invoke-static {v0}, Lcn/paypalm/pppayment/InitialAct;->c(Lcn/paypalm/pppayment/InitialAct;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, p0, Lcn/paypalm/pppayment/aq;->c:Lcn/paypalm/pppayment/InitialAct;

    const-class v3, Lcn/paypalm/pppayment/UserMessageAct;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v2, "bundle_check_phone_requestMessage"

    iget-object v3, p0, Lcn/paypalm/pppayment/aq;->c:Lcn/paypalm/pppayment/InitialAct;

    invoke-static {v3}, Lcn/paypalm/pppayment/InitialAct;->d(Lcn/paypalm/pppayment/InitialAct;)Lcn/paypalm/pppayment/global/a;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v2, "bundle_check_phone_responseMessage"

    iget-object v3, p0, Lcn/paypalm/pppayment/aq;->c:Lcn/paypalm/pppayment/InitialAct;

    invoke-static {v3}, Lcn/paypalm/pppayment/InitialAct;->a(Lcn/paypalm/pppayment/InitialAct;)Lcn/paypalm/pppayment/global/b;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v2, "bundle_myPaypalm_errorMessageList"

    iget-object v3, p0, Lcn/paypalm/pppayment/aq;->c:Lcn/paypalm/pppayment/InitialAct;

    invoke-static {v3}, Lcn/paypalm/pppayment/InitialAct;->e(Lcn/paypalm/pppayment/InitialAct;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v1, p0, Lcn/paypalm/pppayment/aq;->c:Lcn/paypalm/pppayment/InitialAct;

    invoke-virtual {v1, v0, v4}, Lcn/paypalm/pppayment/InitialAct;->startActivityForResult(Landroid/content/Intent;I)V

    iget-object v0, p0, Lcn/paypalm/pppayment/aq;->c:Lcn/paypalm/pppayment/InitialAct;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/paypalm/pppayment/InitialAct;->a(Lcn/paypalm/pppayment/InitialAct;Z)V

    iget-object v0, p0, Lcn/paypalm/pppayment/aq;->c:Lcn/paypalm/pppayment/InitialAct;

    invoke-static {v0, v4}, Lcn/paypalm/pppayment/InitialAct;->b(Lcn/paypalm/pppayment/InitialAct;Z)V

    :cond_0
    :goto_1
    return-void

    :pswitch_2
    const-string v0, "\u9519\u8bef"

    iput-object v0, p0, Lcn/paypalm/pppayment/aq;->a:Ljava/lang/String;

    iget-object v0, p0, Lcn/paypalm/pppayment/aq;->c:Lcn/paypalm/pppayment/InitialAct;

    invoke-static {v0}, Lcn/paypalm/pppayment/InitialAct;->a(Lcn/paypalm/pppayment/InitialAct;)Lcn/paypalm/pppayment/global/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/paypalm/pppayment/global/b;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/paypalm/pppayment/aq;->b:Ljava/lang/String;

    goto :goto_0

    :pswitch_3
    const-string v0, "\u63d2\u4ef6\u5f02\u5e38"

    iput-object v0, p0, Lcn/paypalm/pppayment/aq;->a:Ljava/lang/String;

    const-string v0, "PP\u652f\u4ed8\u63d2\u4ef6\u5f02\u5e38\uff0c\u8bf7\u91cd\u65b0\u5b89\u88c5\uff01"

    iput-object v0, p0, Lcn/paypalm/pppayment/aq;->b:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_4
    const-string v0, "\u8ba2\u5355\u83b7\u53d6\u5931\u8d25"

    iput-object v0, p0, Lcn/paypalm/pppayment/aq;->a:Ljava/lang/String;

    iget-object v0, p0, Lcn/paypalm/pppayment/aq;->c:Lcn/paypalm/pppayment/InitialAct;

    invoke-static {v0}, Lcn/paypalm/pppayment/InitialAct;->a(Lcn/paypalm/pppayment/InitialAct;)Lcn/paypalm/pppayment/global/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/paypalm/pppayment/global/b;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/paypalm/pppayment/aq;->b:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_5
    const-string v0, "\u7f51\u7edc\u5f02\u5e38"

    iput-object v0, p0, Lcn/paypalm/pppayment/aq;->a:Ljava/lang/String;

    const-string v0, "\u7f51\u7edc\u5f02\u5e38\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\u3002"

    iput-object v0, p0, Lcn/paypalm/pppayment/aq;->b:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_6
    const-string v0, "\u7f51\u7edc\u5f02\u5e38"

    iput-object v0, p0, Lcn/paypalm/pppayment/aq;->a:Ljava/lang/String;

    const-string v0, "\u7f51\u7edc\u672a\u8fde\u63a5\uff0c\u8bf7\u8bbe\u7f6e\u7f51\u7edc\u8fde\u63a5\u540e\u91cd\u8bd5\u3002"

    iput-object v0, p0, Lcn/paypalm/pppayment/aq;->b:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_7
    const-string v0, "\u9519\u8bef"

    iput-object v0, p0, Lcn/paypalm/pppayment/aq;->a:Ljava/lang/String;

    const-string v0, "\u6570\u636e\u89e3\u6790\u5931\u8d25\uff01"

    iput-object v0, p0, Lcn/paypalm/pppayment/aq;->b:Ljava/lang/String;

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcn/paypalm/pppayment/aq;->c:Lcn/paypalm/pppayment/InitialAct;

    invoke-static {v0}, Lcn/paypalm/pppayment/InitialAct;->f(Lcn/paypalm/pppayment/InitialAct;)V

    iget-object v0, p0, Lcn/paypalm/pppayment/aq;->c:Lcn/paypalm/pppayment/InitialAct;

    invoke-static {v0}, Lcn/paypalm/pppayment/InitialAct;->g(Lcn/paypalm/pppayment/InitialAct;)Landroid/app/AlertDialog;

    move-result-object v0

    const-string v1, "\u786e\u5b9a"

    new-instance v2, Lcn/paypalm/pppayment/k;

    invoke-direct {v2, p0}, Lcn/paypalm/pppayment/k;-><init>(Lcn/paypalm/pppayment/aq;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v0, p0, Lcn/paypalm/pppayment/aq;->c:Lcn/paypalm/pppayment/InitialAct;

    iget-object v1, p0, Lcn/paypalm/pppayment/aq;->a:Ljava/lang/String;

    iget-object v2, p0, Lcn/paypalm/pppayment/aq;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcn/paypalm/pppayment/InitialAct;->a(Lcn/paypalm/pppayment/InitialAct;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch -0xc
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
