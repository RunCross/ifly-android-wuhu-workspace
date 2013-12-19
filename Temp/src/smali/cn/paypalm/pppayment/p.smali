.class Lcn/paypalm/pppayment/p;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcn/paypalm/pppayment/ak;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/paypalm/pppayment/ak;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/paypalm/pppayment/p;->a:Lcn/paypalm/pppayment/ak;

    iput-object p2, p0, Lcn/paypalm/pppayment/p;->b:Ljava/lang/String;

    iput-object p3, p0, Lcn/paypalm/pppayment/p;->c:Ljava/lang/String;

    iput-object p4, p0, Lcn/paypalm/pppayment/p;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    const/4 v1, 0x2

    const/4 v0, 0x1

    iget-object v2, p0, Lcn/paypalm/pppayment/p;->a:Lcn/paypalm/pppayment/ak;

    invoke-static {v2}, Lcn/paypalm/pppayment/ak;->a(Lcn/paypalm/pppayment/ak;)Lcn/paypalm/pppayment/BankcardPayAct;

    move-result-object v2

    invoke-static {v2}, Lcn/paypalm/pppayment/BankcardPayAct;->e(Lcn/paypalm/pppayment/BankcardPayAct;)Lcn/paypalm/pppayment/global/b;

    move-result-object v2

    invoke-virtual {v2}, Lcn/paypalm/pppayment/global/b;->i()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcn/paypalm/pppayment/p;->a:Lcn/paypalm/pppayment/ak;

    invoke-static {v2}, Lcn/paypalm/pppayment/ak;->a(Lcn/paypalm/pppayment/ak;)Lcn/paypalm/pppayment/BankcardPayAct;

    move-result-object v2

    invoke-static {v2}, Lcn/paypalm/pppayment/BankcardPayAct;->g(Lcn/paypalm/pppayment/BankcardPayAct;)Landroid/widget/TextView;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcn/paypalm/pppayment/p;->a:Lcn/paypalm/pppayment/ak;

    invoke-static {v2}, Lcn/paypalm/pppayment/ak;->a(Lcn/paypalm/pppayment/ak;)Lcn/paypalm/pppayment/BankcardPayAct;

    move-result-object v2

    invoke-static {v2}, Lcn/paypalm/pppayment/BankcardPayAct;->h(Lcn/paypalm/pppayment/BankcardPayAct;)Lcn/paypalm/pppayment/a/d;

    move-result-object v2

    iget-object v2, v2, Lcn/paypalm/pppayment/a/d;->a:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->clear()V

    :cond_0
    iget-object v2, p0, Lcn/paypalm/pppayment/p;->b:Ljava/lang/String;

    const-string v3, "-1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "intent.action.result.failed"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "zsht_failed"

    iget-object v3, p0, Lcn/paypalm/pppayment/p;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v1, p0, Lcn/paypalm/pppayment/p;->a:Lcn/paypalm/pppayment/ak;

    invoke-static {v1}, Lcn/paypalm/pppayment/ak;->a(Lcn/paypalm/pppayment/ak;)Lcn/paypalm/pppayment/BankcardPayAct;

    move-result-object v1

    const-class v2, Lcn/paypalm/pppayment/InitialAct;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v1, p0, Lcn/paypalm/pppayment/p;->a:Lcn/paypalm/pppayment/ak;

    invoke-static {v1}, Lcn/paypalm/pppayment/ak;->a(Lcn/paypalm/pppayment/ak;)Lcn/paypalm/pppayment/BankcardPayAct;

    move-result-object v1

    const/4 v2, -0x2

    invoke-virtual {v1, v2, v0}, Lcn/paypalm/pppayment/BankcardPayAct;->setResult(ILandroid/content/Intent;)V

    const/high16 v1, 0x2400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v1, p0, Lcn/paypalm/pppayment/p;->a:Lcn/paypalm/pppayment/ak;

    invoke-static {v1}, Lcn/paypalm/pppayment/ak;->a(Lcn/paypalm/pppayment/ak;)Lcn/paypalm/pppayment/BankcardPayAct;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/paypalm/pppayment/BankcardPayAct;->startActivity(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v2, p0, Lcn/paypalm/pppayment/p;->b:Ljava/lang/String;

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcn/paypalm/pppayment/p;->a:Lcn/paypalm/pppayment/ak;

    invoke-static {v2}, Lcn/paypalm/pppayment/ak;->a(Lcn/paypalm/pppayment/ak;)Lcn/paypalm/pppayment/BankcardPayAct;

    move-result-object v2

    invoke-static {v2}, Lcn/paypalm/pppayment/BankcardPayAct;->e(Lcn/paypalm/pppayment/BankcardPayAct;)Lcn/paypalm/pppayment/global/b;

    move-result-object v2

    invoke-virtual {v2}, Lcn/paypalm/pppayment/global/b;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0P2016"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "0P1022"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    :goto_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "back"

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "authcode"

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "title"

    iget-object v4, p0, Lcn/paypalm/pppayment/p;->d:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "message"

    iget-object v4, p0, Lcn/paypalm/pppayment/p;->c:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v0, p0, Lcn/paypalm/pppayment/p;->a:Lcn/paypalm/pppayment/ak;

    invoke-static {v0}, Lcn/paypalm/pppayment/ak;->a(Lcn/paypalm/pppayment/ak;)Lcn/paypalm/pppayment/BankcardPayAct;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcn/paypalm/pppayment/BankcardPayAct;->setResult(ILandroid/content/Intent;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcn/paypalm/pppayment/p;->a:Lcn/paypalm/pppayment/ak;

    invoke-static {v0}, Lcn/paypalm/pppayment/ak;->a(Lcn/paypalm/pppayment/ak;)Lcn/paypalm/pppayment/BankcardPayAct;

    move-result-object v0

    invoke-virtual {v0}, Lcn/paypalm/pppayment/BankcardPayAct;->finish()V

    goto :goto_0

    :cond_4
    const-string v3, "4B0064"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v0, 0x3

    goto :goto_1

    :cond_5
    const-string v3, "4B0063"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    move v0, v1

    goto :goto_1

    :cond_6
    const-string v3, "0P1017"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "0P1034"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_7
    const/4 v0, 0x4

    goto :goto_1
.end method
