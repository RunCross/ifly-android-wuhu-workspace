.class Lcn/paypalm/pppayment/a;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcn/paypalm/pppayment/UserMessageAct;


# direct methods
.method constructor <init>(Lcn/paypalm/pppayment/UserMessageAct;)V
    .locals 0

    iput-object p1, p0, Lcn/paypalm/pppayment/a;->a:Lcn/paypalm/pppayment/UserMessageAct;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const v6, 0x1adb2

    const/4 v5, 0x4

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    iget-object v0, p0, Lcn/paypalm/pppayment/a;->a:Lcn/paypalm/pppayment/UserMessageAct;

    invoke-static {v0}, Lcn/paypalm/pppayment/UserMessageAct;->b(Lcn/paypalm/pppayment/UserMessageAct;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const v0, 0x1adb4

    iput v0, v2, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcn/paypalm/pppayment/a;->a:Lcn/paypalm/pppayment/UserMessageAct;

    iget-object v3, p0, Lcn/paypalm/pppayment/a;->a:Lcn/paypalm/pppayment/UserMessageAct;

    invoke-static {v3}, Lcn/paypalm/pppayment/UserMessageAct;->e(Lcn/paypalm/pppayment/UserMessageAct;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcn/paypalm/pppayment/UserMessageAct;->d(Lcn/paypalm/pppayment/UserMessageAct;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/paypalm/pppayment/a;->a:Lcn/paypalm/pppayment/UserMessageAct;

    invoke-static {v0}, Lcn/paypalm/pppayment/UserMessageAct;->p(Lcn/paypalm/pppayment/UserMessageAct;)Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/paypalm/pppayment/a;->a:Lcn/paypalm/pppayment/UserMessageAct;

    const-string v3, "\u624b\u673a\u53f7\u4e0d\u80fd\u4e3a\u7a7a"

    const-string v4, "\u8bf7\u8f93\u5165\u624b\u673a\u53f7\u7801\uff01"

    invoke-static/range {v0 .. v5}, Lcn/paypalm/pppayment/UserMessageAct;->a(Lcn/paypalm/pppayment/UserMessageAct;Landroid/os/Bundle;Landroid/os/Message;Ljava/lang/String;Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcn/paypalm/pppayment/a;->a:Lcn/paypalm/pppayment/UserMessageAct;

    invoke-static {v0}, Lcn/paypalm/pppayment/UserMessageAct;->d(Lcn/paypalm/pppayment/UserMessageAct;)Lcn/paypalm/pppayment/global/Tools;

    move-result-object v0

    iget-object v3, p0, Lcn/paypalm/pppayment/a;->a:Lcn/paypalm/pppayment/UserMessageAct;

    invoke-static {v3}, Lcn/paypalm/pppayment/UserMessageAct;->p(Lcn/paypalm/pppayment/UserMessageAct;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Lcn/paypalm/pppayment/global/Tools;->a(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/paypalm/pppayment/a;->a:Lcn/paypalm/pppayment/UserMessageAct;

    const-string v3, "\u65e0\u6548\u624b\u673a\u53f7\u7801"

    const-string v4, "\u624b\u673a\u53f7\u7801\u4e0d\u6b63\u786e\uff0c\u8bf7\u68c0\u67e5\uff01"

    invoke-static/range {v0 .. v5}, Lcn/paypalm/pppayment/UserMessageAct;->a(Lcn/paypalm/pppayment/UserMessageAct;Landroid/os/Bundle;Landroid/os/Message;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcn/paypalm/pppayment/a;->a:Lcn/paypalm/pppayment/UserMessageAct;

    invoke-static {v0}, Lcn/paypalm/pppayment/UserMessageAct;->n(Lcn/paypalm/pppayment/UserMessageAct;)Lcn/paypalm/pppayment/global/a;

    move-result-object v0

    iget-object v1, p0, Lcn/paypalm/pppayment/a;->a:Lcn/paypalm/pppayment/UserMessageAct;

    invoke-static {v1}, Lcn/paypalm/pppayment/UserMessageAct;->p(Lcn/paypalm/pppayment/UserMessageAct;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/paypalm/pppayment/global/a;->k(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/paypalm/pppayment/a;->a:Lcn/paypalm/pppayment/UserMessageAct;

    invoke-static {v0}, Lcn/paypalm/pppayment/UserMessageAct;->m(Lcn/paypalm/pppayment/UserMessageAct;)Lcn/paypalm/pppayment/global/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/paypalm/pppayment/global/b;->x()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/paypalm/pppayment/a;->a:Lcn/paypalm/pppayment/UserMessageAct;

    invoke-static {v0}, Lcn/paypalm/pppayment/UserMessageAct;->n(Lcn/paypalm/pppayment/UserMessageAct;)Lcn/paypalm/pppayment/global/a;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcn/paypalm/pppayment/global/a;->l(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/paypalm/pppayment/a;->a:Lcn/paypalm/pppayment/UserMessageAct;

    const-string v1, "1"

    invoke-static {v0, v1}, Lcn/paypalm/pppayment/UserMessageAct;->e(Lcn/paypalm/pppayment/UserMessageAct;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcn/paypalm/pppayment/a;->a:Lcn/paypalm/pppayment/UserMessageAct;

    invoke-static {v0}, Lcn/paypalm/pppayment/UserMessageAct;->b(Lcn/paypalm/pppayment/UserMessageAct;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcn/paypalm/pppayment/a;->a:Lcn/paypalm/pppayment/UserMessageAct;

    invoke-static {v1, v0}, Lcn/paypalm/pppayment/UserMessageAct;->b(Lcn/paypalm/pppayment/UserMessageAct;I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcn/paypalm/pppayment/a;->a:Lcn/paypalm/pppayment/UserMessageAct;

    invoke-static {v0}, Lcn/paypalm/pppayment/UserMessageAct;->n(Lcn/paypalm/pppayment/UserMessageAct;)Lcn/paypalm/pppayment/global/a;

    move-result-object v0

    iget-object v1, p0, Lcn/paypalm/pppayment/a;->a:Lcn/paypalm/pppayment/UserMessageAct;

    invoke-static {v1}, Lcn/paypalm/pppayment/UserMessageAct;->m(Lcn/paypalm/pppayment/UserMessageAct;)Lcn/paypalm/pppayment/global/b;

    move-result-object v1

    invoke-virtual {v1}, Lcn/paypalm/pppayment/global/b;->y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/paypalm/pppayment/global/a;->z(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/paypalm/pppayment/a;->a:Lcn/paypalm/pppayment/UserMessageAct;

    invoke-static {v0}, Lcn/paypalm/pppayment/UserMessageAct;->d(Lcn/paypalm/pppayment/UserMessageAct;)Lcn/paypalm/pppayment/global/Tools;

    move-result-object v0

    iget-object v1, p0, Lcn/paypalm/pppayment/a;->a:Lcn/paypalm/pppayment/UserMessageAct;

    iget-object v2, p0, Lcn/paypalm/pppayment/a;->a:Lcn/paypalm/pppayment/UserMessageAct;

    invoke-static {v2}, Lcn/paypalm/pppayment/UserMessageAct;->n(Lcn/paypalm/pppayment/UserMessageAct;)Lcn/paypalm/pppayment/global/a;

    move-result-object v2

    iget-object v3, p0, Lcn/paypalm/pppayment/a;->a:Lcn/paypalm/pppayment/UserMessageAct;

    invoke-static {v3}, Lcn/paypalm/pppayment/UserMessageAct;->m(Lcn/paypalm/pppayment/UserMessageAct;)Lcn/paypalm/pppayment/global/b;

    move-result-object v3

    iget-object v4, p0, Lcn/paypalm/pppayment/a;->a:Lcn/paypalm/pppayment/UserMessageAct;

    invoke-static {v4}, Lcn/paypalm/pppayment/UserMessageAct;->k(Lcn/paypalm/pppayment/UserMessageAct;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcn/paypalm/pppayment/global/Tools;->a(Landroid/content/Context;Lcn/paypalm/pppayment/global/a;Lcn/paypalm/pppayment/global/b;Landroid/widget/EditText;)I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcn/paypalm/pppayment/a;->a:Lcn/paypalm/pppayment/UserMessageAct;

    invoke-static {v0}, Lcn/paypalm/pppayment/UserMessageAct;->b(Lcn/paypalm/pppayment/UserMessageAct;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_4
    iget-object v1, p0, Lcn/paypalm/pppayment/a;->a:Lcn/paypalm/pppayment/UserMessageAct;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcn/paypalm/pppayment/UserMessageAct;->b(Lcn/paypalm/pppayment/UserMessageAct;IZ)V

    goto/16 :goto_0
.end method
