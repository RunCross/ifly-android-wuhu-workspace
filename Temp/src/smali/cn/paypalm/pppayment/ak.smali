.class Lcn/paypalm/pppayment/ak;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcn/paypalm/pppayment/BankcardPayAct;


# direct methods
.method constructor <init>(Lcn/paypalm/pppayment/BankcardPayAct;)V
    .locals 0

    iput-object p1, p0, Lcn/paypalm/pppayment/ak;->a:Lcn/paypalm/pppayment/BankcardPayAct;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic a(Lcn/paypalm/pppayment/ak;)Lcn/paypalm/pppayment/BankcardPayAct;
    .locals 1

    iget-object v0, p0, Lcn/paypalm/pppayment/ak;->a:Lcn/paypalm/pppayment/BankcardPayAct;

    return-object v0
.end method

.method private a(I)V
    .locals 7

    iget-object v0, p0, Lcn/paypalm/pppayment/ak;->a:Lcn/paypalm/pppayment/BankcardPayAct;

    invoke-static {v0}, Lcn/paypalm/pppayment/BankcardPayAct;->e(Lcn/paypalm/pppayment/BankcardPayAct;)Lcn/paypalm/pppayment/global/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/paypalm/pppayment/global/b;->b()Ljava/lang/String;

    const-string v0, "-1"

    if-nez p1, :cond_2

    const-string v2, "\u5b89\u5168\u652f\u4ed8"

    const-string v1, "\u652f\u4ed8\u6210\u529f\uff01"

    const-string v0, "-1"

    :goto_0
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcn/paypalm/pppayment/ak;->a:Lcn/paypalm/pppayment/BankcardPayAct;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    new-instance v4, Lcn/paypalm/pppayment/q;

    invoke-direct {v4, p0}, Lcn/paypalm/pppayment/q;-><init>(Lcn/paypalm/pppayment/ak;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v4, "\u786e\u5b9a"

    new-instance v5, Lcn/paypalm/pppayment/p;

    invoke-direct {v5, p0, v0, v1, v2}, Lcn/paypalm/pppayment/p;-><init>(Lcn/paypalm/pppayment/ak;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcn/paypalm/pppayment/ak;->a:Lcn/paypalm/pppayment/BankcardPayAct;

    invoke-static {v0}, Lcn/paypalm/pppayment/BankcardPayAct;->b(Lcn/paypalm/pppayment/BankcardPayAct;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/paypalm/pppayment/ak;->a:Lcn/paypalm/pppayment/BankcardPayAct;

    invoke-static {v0}, Lcn/paypalm/pppayment/BankcardPayAct;->b(Lcn/paypalm/pppayment/BankcardPayAct;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/paypalm/pppayment/ak;->a:Lcn/paypalm/pppayment/BankcardPayAct;

    invoke-static {v0}, Lcn/paypalm/pppayment/BankcardPayAct;->b(Lcn/paypalm/pppayment/BankcardPayAct;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcn/paypalm/pppayment/ak;->a:Lcn/paypalm/pppayment/BankcardPayAct;

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/paypalm/pppayment/BankcardPayAct;->a(Lcn/paypalm/pppayment/BankcardPayAct;Landroid/app/Dialog;)V

    iget-object v0, p0, Lcn/paypalm/pppayment/ak;->a:Lcn/paypalm/pppayment/BankcardPayAct;

    invoke-static {v0}, Lcn/paypalm/pppayment/BankcardPayAct;->c(Lcn/paypalm/pppayment/BankcardPayAct;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/paypalm/pppayment/ak;->a:Lcn/paypalm/pppayment/BankcardPayAct;

    invoke-static {v0}, Lcn/paypalm/pppayment/BankcardPayAct;->c(Lcn/paypalm/pppayment/BankcardPayAct;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/paypalm/pppayment/ak;->a:Lcn/paypalm/pppayment/BankcardPayAct;

    invoke-static {v0}, Lcn/paypalm/pppayment/BankcardPayAct;->c(Lcn/paypalm/pppayment/BankcardPayAct;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_1
    iget-object v0, p0, Lcn/paypalm/pppayment/ak;->a:Lcn/paypalm/pppayment/BankcardPayAct;

    invoke-static {v0}, Lcn/paypalm/pppayment/BankcardPayAct;->b(Lcn/paypalm/pppayment/BankcardPayAct;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void

    :cond_2
    const/4 v1, -0x1

    if-ne p1, v1, :cond_6

    iget-object v0, p0, Lcn/paypalm/pppayment/ak;->a:Lcn/paypalm/pppayment/BankcardPayAct;

    invoke-static {v0}, Lcn/paypalm/pppayment/BankcardPayAct;->a(Lcn/paypalm/pppayment/BankcardPayAct;)Lcn/paypalm/pppayment/global/Tools;

    move-result-object v0

    iget-object v1, p0, Lcn/paypalm/pppayment/ak;->a:Lcn/paypalm/pppayment/BankcardPayAct;

    iget-object v2, p0, Lcn/paypalm/pppayment/ak;->a:Lcn/paypalm/pppayment/BankcardPayAct;

    invoke-static {v2}, Lcn/paypalm/pppayment/BankcardPayAct;->e(Lcn/paypalm/pppayment/BankcardPayAct;)Lcn/paypalm/pppayment/global/b;

    move-result-object v2

    invoke-virtual {v2}, Lcn/paypalm/pppayment/global/b;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/paypalm/pppayment/ak;->a:Lcn/paypalm/pppayment/BankcardPayAct;

    invoke-static {v3}, Lcn/paypalm/pppayment/BankcardPayAct;->f(Lcn/paypalm/pppayment/BankcardPayAct;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcn/paypalm/pppayment/ak;->a:Lcn/paypalm/pppayment/BankcardPayAct;

    invoke-static {v4}, Lcn/paypalm/pppayment/BankcardPayAct;->e(Lcn/paypalm/pppayment/BankcardPayAct;)Lcn/paypalm/pppayment/global/b;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcn/paypalm/pppayment/global/Tools;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Lcn/paypalm/pppayment/global/b;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcn/paypalm/pppayment/ak;->a:Lcn/paypalm/pppayment/BankcardPayAct;

    invoke-static {v0}, Lcn/paypalm/pppayment/BankcardPayAct;->e(Lcn/paypalm/pppayment/BankcardPayAct;)Lcn/paypalm/pppayment/global/b;

    move-result-object v0

    iget-object v2, v0, Lcn/paypalm/pppayment/global/b;->a:Ljava/lang/String;

    iget-object v0, p0, Lcn/paypalm/pppayment/ak;->a:Lcn/paypalm/pppayment/BankcardPayAct;

    invoke-static {v0}, Lcn/paypalm/pppayment/BankcardPayAct;->e(Lcn/paypalm/pppayment/BankcardPayAct;)Lcn/paypalm/pppayment/global/b;

    move-result-object v0

    iget-object v0, v0, Lcn/paypalm/pppayment/global/b;->b:Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    iget-object v0, p0, Lcn/paypalm/pppayment/ak;->a:Lcn/paypalm/pppayment/BankcardPayAct;

    invoke-static {v0}, Lcn/paypalm/pppayment/BankcardPayAct;->e(Lcn/paypalm/pppayment/BankcardPayAct;)Lcn/paypalm/pppayment/global/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/paypalm/pppayment/global/b;->b()Ljava/lang/String;

    move-result-object v0

    :cond_4
    iget-object v1, p0, Lcn/paypalm/pppayment/ak;->a:Lcn/paypalm/pppayment/BankcardPayAct;

    invoke-static {v1}, Lcn/paypalm/pppayment/BankcardPayAct;->e(Lcn/paypalm/pppayment/BankcardPayAct;)Lcn/paypalm/pppayment/global/b;

    move-result-object v1

    iget-object v1, v1, Lcn/paypalm/pppayment/global/b;->c:Ljava/lang/String;

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto/16 :goto_0

    :cond_5
    const-string v2, "\u9519\u8bef"

    iget-object v0, p0, Lcn/paypalm/pppayment/ak;->a:Lcn/paypalm/pppayment/BankcardPayAct;

    invoke-static {v0}, Lcn/paypalm/pppayment/BankcardPayAct;->e(Lcn/paypalm/pppayment/BankcardPayAct;)Lcn/paypalm/pppayment/global/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/paypalm/pppayment/global/b;->b()Ljava/lang/String;

    move-result-object v1

    const-string v0, "-1"

    goto/16 :goto_0

    :cond_6
    const/16 v1, -0xa

    if-ne p1, v1, :cond_7

    const-string v2, "\u7f51\u7edc\u5f02\u5e38\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\u3002"

    const-string v1, "\u7f51\u7edc\u5f02\u5e38\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\u3002"

    goto/16 :goto_0

    :cond_7
    const/16 v1, -0xb

    if-ne p1, v1, :cond_8

    const-string v2, "\u9519\u8bef"

    const-string v1, "\u6570\u636e\u89e3\u6790\u5931\u8d25\uff01"

    goto/16 :goto_0

    :cond_8
    const-string v2, "\u9519\u8bef"

    const-string v1, "\u8bf7\u91cd\u65b0\u652f\u4ed8\uff01"

    goto/16 :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    const/4 v5, 0x0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    iget-object v0, p0, Lcn/paypalm/pppayment/ak;->a:Lcn/paypalm/pppayment/BankcardPayAct;

    invoke-static {v0}, Lcn/paypalm/pppayment/BankcardPayAct;->a(Lcn/paypalm/pppayment/BankcardPayAct;)Lcn/paypalm/pppayment/global/Tools;

    move-result-object v0

    iget-object v1, p0, Lcn/paypalm/pppayment/ak;->a:Lcn/paypalm/pppayment/BankcardPayAct;

    iget-object v2, p0, Lcn/paypalm/pppayment/ak;->a:Lcn/paypalm/pppayment/BankcardPayAct;

    invoke-static {v2}, Lcn/paypalm/pppayment/BankcardPayAct;->b(Lcn/paypalm/pppayment/BankcardPayAct;)Landroid/app/Dialog;

    move-result-object v2

    const-string v3, "\u9519\u8bef"

    const-string v4, "\u63d2\u4ef6\u5f02\u5e38\uff01"

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcn/paypalm/pppayment/global/Tools;->a(Landroid/content/Context;Landroid/app/Dialog;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcn/paypalm/pppayment/ak;->a:Lcn/paypalm/pppayment/BankcardPayAct;

    invoke-static {v0}, Lcn/paypalm/pppayment/BankcardPayAct;->c(Lcn/paypalm/pppayment/BankcardPayAct;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    :goto_0
    return-void

    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "text"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcn/paypalm/pppayment/ak;->a:Lcn/paypalm/pppayment/BankcardPayAct;

    invoke-static {v0}, Lcn/paypalm/pppayment/BankcardPayAct;->a(Lcn/paypalm/pppayment/BankcardPayAct;)Lcn/paypalm/pppayment/global/Tools;

    move-result-object v0

    iget-object v1, p0, Lcn/paypalm/pppayment/ak;->a:Lcn/paypalm/pppayment/BankcardPayAct;

    iget-object v2, p0, Lcn/paypalm/pppayment/ak;->a:Lcn/paypalm/pppayment/BankcardPayAct;

    invoke-static {v2}, Lcn/paypalm/pppayment/BankcardPayAct;->b(Lcn/paypalm/pppayment/BankcardPayAct;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual/range {v0 .. v5}, Lcn/paypalm/pppayment/global/Tools;->a(Landroid/content/Context;Landroid/app/Dialog;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcn/paypalm/pppayment/ak;->a:Lcn/paypalm/pppayment/BankcardPayAct;

    invoke-static {v0}, Lcn/paypalm/pppayment/BankcardPayAct;->c(Lcn/paypalm/pppayment/BankcardPayAct;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "iResult"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "bundle_check_phone_requestMessage"

    iget-object v3, p0, Lcn/paypalm/pppayment/ak;->a:Lcn/paypalm/pppayment/BankcardPayAct;

    invoke-static {v3}, Lcn/paypalm/pppayment/BankcardPayAct;->d(Lcn/paypalm/pppayment/BankcardPayAct;)Lcn/paypalm/pppayment/global/a;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v2, "bundle_check_phone_responseMessage"

    iget-object v3, p0, Lcn/paypalm/pppayment/ak;->a:Lcn/paypalm/pppayment/BankcardPayAct;

    invoke-static {v3}, Lcn/paypalm/pppayment/BankcardPayAct;->e(Lcn/paypalm/pppayment/BankcardPayAct;)Lcn/paypalm/pppayment/global/b;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v2, "bundle_myPaypalm_errorMessageList"

    iget-object v3, p0, Lcn/paypalm/pppayment/ak;->a:Lcn/paypalm/pppayment/BankcardPayAct;

    invoke-static {v3}, Lcn/paypalm/pppayment/BankcardPayAct;->f(Lcn/paypalm/pppayment/BankcardPayAct;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v1, p0, Lcn/paypalm/pppayment/ak;->a:Lcn/paypalm/pppayment/BankcardPayAct;

    const-class v2, Lcn/paypalm/pppayment/SuccessAct;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v1, p0, Lcn/paypalm/pppayment/ak;->a:Lcn/paypalm/pppayment/BankcardPayAct;

    invoke-virtual {v1, v0, v5}, Lcn/paypalm/pppayment/BankcardPayAct;->startActivityForResult(Landroid/content/Intent;I)V

    iget-object v0, p0, Lcn/paypalm/pppayment/ak;->a:Lcn/paypalm/pppayment/BankcardPayAct;

    invoke-static {v0}, Lcn/paypalm/pppayment/BankcardPayAct;->c(Lcn/paypalm/pppayment/BankcardPayAct;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/paypalm/pppayment/ak;->a:Lcn/paypalm/pppayment/BankcardPayAct;

    invoke-static {v0}, Lcn/paypalm/pppayment/BankcardPayAct;->c(Lcn/paypalm/pppayment/BankcardPayAct;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/paypalm/pppayment/ak;->a:Lcn/paypalm/pppayment/BankcardPayAct;

    invoke-static {v0}, Lcn/paypalm/pppayment/BankcardPayAct;->c(Lcn/paypalm/pppayment/BankcardPayAct;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    goto/16 :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lcn/paypalm/pppayment/ak;->a(I)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1adb4
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
