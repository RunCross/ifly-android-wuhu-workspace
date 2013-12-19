.class Lcn/paypalm/pppayment/as;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcn/paypalm/pppayment/BankcardPayAct;


# direct methods
.method constructor <init>(Lcn/paypalm/pppayment/BankcardPayAct;)V
    .locals 0

    iput-object p1, p0, Lcn/paypalm/pppayment/as;->a:Lcn/paypalm/pppayment/BankcardPayAct;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    iget-object v0, p0, Lcn/paypalm/pppayment/as;->a:Lcn/paypalm/pppayment/BankcardPayAct;

    invoke-static {v0}, Lcn/paypalm/pppayment/BankcardPayAct;->i(Lcn/paypalm/pppayment/BankcardPayAct;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v4

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const v0, 0x1adb4

    iput v0, v4, Landroid/os/Message;->what:I

    const-string v3, ""

    const/4 v2, 0x0

    iget-object v0, p0, Lcn/paypalm/pppayment/as;->a:Lcn/paypalm/pppayment/BankcardPayAct;

    invoke-static {v0}, Lcn/paypalm/pppayment/BankcardPayAct;->j(Lcn/paypalm/pppayment/BankcardPayAct;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcn/paypalm/pppayment/as;->a:Lcn/paypalm/pppayment/BankcardPayAct;

    invoke-static {v0}, Lcn/paypalm/pppayment/BankcardPayAct;->k(Lcn/paypalm/pppayment/BankcardPayAct;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v6, p0, Lcn/paypalm/pppayment/as;->a:Lcn/paypalm/pppayment/BankcardPayAct;

    invoke-static {v6}, Lcn/paypalm/pppayment/BankcardPayAct;->e(Lcn/paypalm/pppayment/BankcardPayAct;)Lcn/paypalm/pppayment/global/b;

    move-result-object v6

    invoke-virtual {v6}, Lcn/paypalm/pppayment/global/b;->i()Ljava/lang/String;

    move-result-object v6

    const-string v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcn/paypalm/pppayment/as;->a:Lcn/paypalm/pppayment/BankcardPayAct;

    invoke-static {v6, v1, v0, v5, v4}, Lcn/paypalm/pppayment/BankcardPayAct;->a(Lcn/paypalm/pppayment/BankcardPayAct;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Message;)Z

    move-result v6

    if-nez v6, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v6, p0, Lcn/paypalm/pppayment/as;->a:Lcn/paypalm/pppayment/BankcardPayAct;

    invoke-static {v6}, Lcn/paypalm/pppayment/BankcardPayAct;->a(Lcn/paypalm/pppayment/BankcardPayAct;)Lcn/paypalm/pppayment/global/Tools;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcn/paypalm/pppayment/global/Tools;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lcn/paypalm/pppayment/as;->a:Lcn/paypalm/pppayment/BankcardPayAct;

    invoke-static {v6}, Lcn/paypalm/pppayment/BankcardPayAct;->a(Lcn/paypalm/pppayment/BankcardPayAct;)Lcn/paypalm/pppayment/global/Tools;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcn/paypalm/pppayment/global/Tools;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v6, p0, Lcn/paypalm/pppayment/as;->a:Lcn/paypalm/pppayment/BankcardPayAct;

    invoke-static {v6}, Lcn/paypalm/pppayment/BankcardPayAct;->d(Lcn/paypalm/pppayment/BankcardPayAct;)Lcn/paypalm/pppayment/global/a;

    move-result-object v6

    const-string v7, "570004"

    invoke-virtual {v6, v7}, Lcn/paypalm/pppayment/global/a;->a(Ljava/lang/String;)V

    iget-object v6, p0, Lcn/paypalm/pppayment/as;->a:Lcn/paypalm/pppayment/BankcardPayAct;

    invoke-static {v6}, Lcn/paypalm/pppayment/BankcardPayAct;->d(Lcn/paypalm/pppayment/BankcardPayAct;)Lcn/paypalm/pppayment/global/a;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcn/paypalm/pppayment/global/a;->a([B)V

    iget-object v2, p0, Lcn/paypalm/pppayment/as;->a:Lcn/paypalm/pppayment/BankcardPayAct;

    invoke-static {v2}, Lcn/paypalm/pppayment/BankcardPayAct;->d(Lcn/paypalm/pppayment/BankcardPayAct;)Lcn/paypalm/pppayment/global/a;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcn/paypalm/pppayment/global/a;->y(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/paypalm/pppayment/as;->a:Lcn/paypalm/pppayment/BankcardPayAct;

    invoke-static {v2}, Lcn/paypalm/pppayment/BankcardPayAct;->d(Lcn/paypalm/pppayment/BankcardPayAct;)Lcn/paypalm/pppayment/global/a;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcn/paypalm/pppayment/global/a;->s(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/paypalm/pppayment/as;->a:Lcn/paypalm/pppayment/BankcardPayAct;

    invoke-static {v0}, Lcn/paypalm/pppayment/BankcardPayAct;->d(Lcn/paypalm/pppayment/BankcardPayAct;)Lcn/paypalm/pppayment/global/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/paypalm/pppayment/global/a;->t(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/paypalm/pppayment/as;->a:Lcn/paypalm/pppayment/BankcardPayAct;

    invoke-static {v0}, Lcn/paypalm/pppayment/BankcardPayAct;->a(Lcn/paypalm/pppayment/BankcardPayAct;)Lcn/paypalm/pppayment/global/Tools;

    move-result-object v0

    iget-object v1, p0, Lcn/paypalm/pppayment/as;->a:Lcn/paypalm/pppayment/BankcardPayAct;

    iget-object v2, p0, Lcn/paypalm/pppayment/as;->a:Lcn/paypalm/pppayment/BankcardPayAct;

    invoke-static {v2}, Lcn/paypalm/pppayment/BankcardPayAct;->d(Lcn/paypalm/pppayment/BankcardPayAct;)Lcn/paypalm/pppayment/global/a;

    move-result-object v2

    iget-object v3, p0, Lcn/paypalm/pppayment/as;->a:Lcn/paypalm/pppayment/BankcardPayAct;

    invoke-static {v3}, Lcn/paypalm/pppayment/BankcardPayAct;->e(Lcn/paypalm/pppayment/BankcardPayAct;)Lcn/paypalm/pppayment/global/b;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcn/paypalm/pppayment/global/Tools;->d(Landroid/content/Context;Lcn/paypalm/pppayment/global/a;Lcn/paypalm/pppayment/global/b;)I

    move-result v0

    const-string v1, "iResult"

    invoke-virtual {v5, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v4, v5}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    const v0, 0x1adb6

    iput v0, v4, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcn/paypalm/pppayment/as;->a:Lcn/paypalm/pppayment/BankcardPayAct;

    invoke-static {v0}, Lcn/paypalm/pppayment/BankcardPayAct;->i(Lcn/paypalm/pppayment/BankcardPayAct;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcn/paypalm/pppayment/as;->a:Lcn/paypalm/pppayment/BankcardPayAct;

    invoke-static {v2}, Lcn/paypalm/pppayment/BankcardPayAct;->g(Lcn/paypalm/pppayment/BankcardPayAct;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcn/paypalm/pppayment/as;->a:Lcn/paypalm/pppayment/BankcardPayAct;

    const-string v1, "\u652f\u4ed8\u5bc6\u7801\u4e0d\u80fd\u4e3a\u7a7a"

    const-string v2, "\u8bf7\u8f93\u5165\u652f\u4ed8\u5bc6\u7801\uff01"

    invoke-static {v0, v5, v4, v1, v2}, Lcn/paypalm/pppayment/BankcardPayAct;->a(Lcn/paypalm/pppayment/BankcardPayAct;Landroid/os/Bundle;Landroid/os/Message;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    iget-object v2, p0, Lcn/paypalm/pppayment/as;->a:Lcn/paypalm/pppayment/BankcardPayAct;

    invoke-static {v2}, Lcn/paypalm/pppayment/BankcardPayAct;->h(Lcn/paypalm/pppayment/BankcardPayAct;)Lcn/paypalm/pppayment/a/d;

    move-result-object v2

    iget-object v2, v2, Lcn/paypalm/pppayment/a/d;->a:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    const/4 v3, 0x6

    if-ge v2, v3, :cond_3

    iget-object v0, p0, Lcn/paypalm/pppayment/as;->a:Lcn/paypalm/pppayment/BankcardPayAct;

    const-string v1, "\u652f\u4ed8\u5bc6\u7801\u4f4d\u6570\u4e0d\u6b63\u786e"

    const-string v2, "\u8bf7\u8f93\u51656\u4f4d\u652f\u4ed8\u5bc6\u7801\uff01"

    invoke-static {v0, v5, v4, v1, v2}, Lcn/paypalm/pppayment/BankcardPayAct;->a(Lcn/paypalm/pppayment/BankcardPayAct;Landroid/os/Bundle;Landroid/os/Message;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    iget-object v2, p0, Lcn/paypalm/pppayment/as;->a:Lcn/paypalm/pppayment/BankcardPayAct;

    invoke-static {v2}, Lcn/paypalm/pppayment/BankcardPayAct;->h(Lcn/paypalm/pppayment/BankcardPayAct;)Lcn/paypalm/pppayment/a/d;

    move-result-object v2

    invoke-virtual {v2}, Lcn/paypalm/pppayment/a/d;->a()[B

    move-result-object v2

    iget-object v3, p0, Lcn/paypalm/pppayment/as;->a:Lcn/paypalm/pppayment/BankcardPayAct;

    invoke-static {v3}, Lcn/paypalm/pppayment/BankcardPayAct;->l(Lcn/paypalm/pppayment/BankcardPayAct;)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "1"

    goto/16 :goto_1

    :cond_4
    const-string v3, "0"

    goto/16 :goto_1
.end method
