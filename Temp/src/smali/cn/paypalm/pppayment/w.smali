.class Lcn/paypalm/pppayment/w;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcn/paypalm/pppayment/UserMessageAct;


# direct methods
.method constructor <init>(Lcn/paypalm/pppayment/UserMessageAct;)V
    .locals 0

    iput-object p1, p0, Lcn/paypalm/pppayment/w;->a:Lcn/paypalm/pppayment/UserMessageAct;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    iget-object v0, p0, Lcn/paypalm/pppayment/w;->a:Lcn/paypalm/pppayment/UserMessageAct;

    invoke-static {v0}, Lcn/paypalm/pppayment/UserMessageAct;->q(Lcn/paypalm/pppayment/UserMessageAct;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcn/paypalm/pppayment/w;->a:Lcn/paypalm/pppayment/UserMessageAct;

    invoke-static {v0}, Lcn/paypalm/pppayment/UserMessageAct;->r(Lcn/paypalm/pppayment/UserMessageAct;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcn/paypalm/pppayment/w;->a:Lcn/paypalm/pppayment/UserMessageAct;

    invoke-static {v0}, Lcn/paypalm/pppayment/UserMessageAct;->n(Lcn/paypalm/pppayment/UserMessageAct;)Lcn/paypalm/pppayment/global/a;

    move-result-object v0

    iget-object v1, p0, Lcn/paypalm/pppayment/w;->a:Lcn/paypalm/pppayment/UserMessageAct;

    invoke-static {v1}, Lcn/paypalm/pppayment/UserMessageAct;->p(Lcn/paypalm/pppayment/UserMessageAct;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/paypalm/pppayment/global/a;->k(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/paypalm/pppayment/w;->a:Lcn/paypalm/pppayment/UserMessageAct;

    invoke-static {v0}, Lcn/paypalm/pppayment/UserMessageAct;->s(Lcn/paypalm/pppayment/UserMessageAct;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcn/paypalm/pppayment/w;->a:Lcn/paypalm/pppayment/UserMessageAct;

    invoke-static {v0}, Lcn/paypalm/pppayment/UserMessageAct;->t(Lcn/paypalm/pppayment/UserMessageAct;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    iget-object v0, p0, Lcn/paypalm/pppayment/w;->a:Lcn/paypalm/pppayment/UserMessageAct;

    invoke-static {v0}, Lcn/paypalm/pppayment/UserMessageAct;->u(Lcn/paypalm/pppayment/UserMessageAct;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcn/paypalm/pppayment/w;->a:Lcn/paypalm/pppayment/UserMessageAct;

    invoke-static {v0}, Lcn/paypalm/pppayment/UserMessageAct;->v(Lcn/paypalm/pppayment/UserMessageAct;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/paypalm/pppayment/w;->a:Lcn/paypalm/pppayment/UserMessageAct;

    invoke-static {v0}, Lcn/paypalm/pppayment/UserMessageAct;->w(Lcn/paypalm/pppayment/UserMessageAct;)V

    goto :goto_0
.end method
