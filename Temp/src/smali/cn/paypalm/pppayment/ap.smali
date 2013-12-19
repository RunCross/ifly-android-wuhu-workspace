.class Lcn/paypalm/pppayment/ap;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcn/paypalm/pppayment/InitialAct;


# direct methods
.method constructor <init>(Lcn/paypalm/pppayment/InitialAct;)V
    .locals 0

    iput-object p1, p0, Lcn/paypalm/pppayment/ap;->a:Lcn/paypalm/pppayment/InitialAct;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic a(Lcn/paypalm/pppayment/ap;)Lcn/paypalm/pppayment/InitialAct;
    .locals 1

    iget-object v0, p0, Lcn/paypalm/pppayment/ap;->a:Lcn/paypalm/pppayment/InitialAct;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    iget-object v0, p0, Lcn/paypalm/pppayment/ap;->a:Lcn/paypalm/pppayment/InitialAct;

    const-string v1, "\u68c0\u67e5\u66f4\u65b0\u5931\u8d25\uff0c\u60a8\u5c06\u7ee7\u7eed\u4f7f\u7528\u5f53\u524d\u7248\u672c"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcn/paypalm/pppayment/ap;->a:Lcn/paypalm/pppayment/InitialAct;

    const-string v1, "\u68c0\u67e5\u66f4\u65b0\u5931\u8d25\uff0c\u60a8\u5c06\u7ee7\u7eed\u4f7f\u7528\u5f53\u524d\u7248\u672c"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "path"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/paypalm/pppayment/ap;->a:Lcn/paypalm/pppayment/InitialAct;

    invoke-static {v1, v3}, Lcn/paypalm/pppayment/InitialAct;->a(Lcn/paypalm/pppayment/InitialAct;Z)V

    iget-object v1, p0, Lcn/paypalm/pppayment/ap;->a:Lcn/paypalm/pppayment/InitialAct;

    invoke-static {v1}, Lcn/paypalm/pppayment/InitialAct;->f(Lcn/paypalm/pppayment/InitialAct;)V

    iget-object v1, p0, Lcn/paypalm/pppayment/ap;->a:Lcn/paypalm/pppayment/InitialAct;

    invoke-static {v1}, Lcn/paypalm/pppayment/InitialAct;->g(Lcn/paypalm/pppayment/InitialAct;)Landroid/app/AlertDialog;

    move-result-object v1

    const-string v2, "\u786e\u5b9a"

    new-instance v3, Lcn/paypalm/pppayment/o;

    invoke-direct {v3, p0, v0}, Lcn/paypalm/pppayment/o;-><init>(Lcn/paypalm/pppayment/ap;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog;->setButton3(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v0, p0, Lcn/paypalm/pppayment/ap;->a:Lcn/paypalm/pppayment/InitialAct;

    invoke-static {v0}, Lcn/paypalm/pppayment/InitialAct;->g(Lcn/paypalm/pppayment/InitialAct;)Landroid/app/AlertDialog;

    move-result-object v0

    const-string v1, "\u53d6\u6d88"

    new-instance v2, Lcn/paypalm/pppayment/m;

    invoke-direct {v2, p0}, Lcn/paypalm/pppayment/m;-><init>(Lcn/paypalm/pppayment/ap;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v0, p0, Lcn/paypalm/pppayment/ap;->a:Lcn/paypalm/pppayment/InitialAct;

    const-string v1, "\u66f4\u65b0\u63d0\u793a"

    const-string v2, "\u5f53\u524d\u63d2\u4ef6\u7248\u672c\u8f83\u4f4e\uff0c\u662f\u5426\u4e0b\u8f7d\u66f4\u65b0\uff1f"

    invoke-static {v0, v1, v2}, Lcn/paypalm/pppayment/InitialAct;->a(Lcn/paypalm/pppayment/InitialAct;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "path"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/paypalm/pppayment/ap;->a:Lcn/paypalm/pppayment/InitialAct;

    invoke-static {v1, v3}, Lcn/paypalm/pppayment/InitialAct;->a(Lcn/paypalm/pppayment/InitialAct;Z)V

    iget-object v1, p0, Lcn/paypalm/pppayment/ap;->a:Lcn/paypalm/pppayment/InitialAct;

    invoke-static {v1}, Lcn/paypalm/pppayment/InitialAct;->b(Lcn/paypalm/pppayment/InitialAct;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    iget-object v1, p0, Lcn/paypalm/pppayment/ap;->a:Lcn/paypalm/pppayment/InitialAct;

    invoke-static {v1}, Lcn/paypalm/pppayment/InitialAct;->g(Lcn/paypalm/pppayment/InitialAct;)Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/paypalm/pppayment/ap;->a:Lcn/paypalm/pppayment/InitialAct;

    invoke-static {v1}, Lcn/paypalm/pppayment/InitialAct;->g(Lcn/paypalm/pppayment/InitialAct;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/paypalm/pppayment/ap;->a:Lcn/paypalm/pppayment/InitialAct;

    invoke-static {v1}, Lcn/paypalm/pppayment/InitialAct;->g(Lcn/paypalm/pppayment/InitialAct;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    iget-object v1, p0, Lcn/paypalm/pppayment/ap;->a:Lcn/paypalm/pppayment/InitialAct;

    invoke-static {v1}, Lcn/paypalm/pppayment/InitialAct;->f(Lcn/paypalm/pppayment/InitialAct;)V

    iget-object v1, p0, Lcn/paypalm/pppayment/ap;->a:Lcn/paypalm/pppayment/InitialAct;

    invoke-static {v1}, Lcn/paypalm/pppayment/InitialAct;->g(Lcn/paypalm/pppayment/InitialAct;)Landroid/app/AlertDialog;

    move-result-object v1

    const-string v2, "\u66f4\u65b0\u63d0\u793a"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcn/paypalm/pppayment/ap;->a:Lcn/paypalm/pppayment/InitialAct;

    invoke-static {v1}, Lcn/paypalm/pppayment/InitialAct;->g(Lcn/paypalm/pppayment/InitialAct;)Landroid/app/AlertDialog;

    move-result-object v1

    const-string v2, "\u5b58\u5728\u65b0\u7248\u672c\uff0c\u662f\u5426\u7acb\u5373\u66f4\u65b0\uff1f"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcn/paypalm/pppayment/ap;->a:Lcn/paypalm/pppayment/InitialAct;

    invoke-static {v1}, Lcn/paypalm/pppayment/InitialAct;->g(Lcn/paypalm/pppayment/InitialAct;)Landroid/app/AlertDialog;

    move-result-object v1

    const-string v2, "\u786e\u5b9a"

    new-instance v3, Lcn/paypalm/pppayment/n;

    invoke-direct {v3, p0, v0}, Lcn/paypalm/pppayment/n;-><init>(Lcn/paypalm/pppayment/ap;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog;->setButton3(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v0, p0, Lcn/paypalm/pppayment/ap;->a:Lcn/paypalm/pppayment/InitialAct;

    invoke-static {v0}, Lcn/paypalm/pppayment/InitialAct;->g(Lcn/paypalm/pppayment/InitialAct;)Landroid/app/AlertDialog;

    move-result-object v0

    const-string v1, "\u53d6\u6d88"

    new-instance v2, Lcn/paypalm/pppayment/i;

    invoke-direct {v2, p0}, Lcn/paypalm/pppayment/i;-><init>(Lcn/paypalm/pppayment/ap;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v0, p0, Lcn/paypalm/pppayment/ap;->a:Lcn/paypalm/pppayment/InitialAct;

    invoke-static {v0}, Lcn/paypalm/pppayment/InitialAct;->b(Lcn/paypalm/pppayment/InitialAct;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/paypalm/pppayment/ap;->a:Lcn/paypalm/pppayment/InitialAct;

    invoke-static {v0}, Lcn/paypalm/pppayment/InitialAct;->b(Lcn/paypalm/pppayment/InitialAct;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/paypalm/pppayment/ap;->a:Lcn/paypalm/pppayment/InitialAct;

    invoke-static {v0}, Lcn/paypalm/pppayment/InitialAct;->b(Lcn/paypalm/pppayment/InitialAct;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_1
    iget-object v0, p0, Lcn/paypalm/pppayment/ap;->a:Lcn/paypalm/pppayment/InitialAct;

    invoke-static {v0}, Lcn/paypalm/pppayment/InitialAct;->g(Lcn/paypalm/pppayment/InitialAct;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x7 -> :sswitch_0
        0xa -> :sswitch_1
        0xb -> :sswitch_2
    .end sparse-switch
.end method
