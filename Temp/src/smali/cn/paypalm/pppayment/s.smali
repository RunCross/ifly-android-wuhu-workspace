.class Lcn/paypalm/pppayment/s;
.super Ljava/lang/Thread;


# instance fields
.field a:Landroid/content/Intent;

.field final synthetic b:Lcn/paypalm/pppayment/UserMessageAct;


# direct methods
.method constructor <init>(Lcn/paypalm/pppayment/UserMessageAct;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcn/paypalm/pppayment/s;->b:Lcn/paypalm/pppayment/UserMessageAct;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p2, p0, Lcn/paypalm/pppayment/s;->a:Landroid/content/Intent;

    return-void
.end method

.method static synthetic a(Lcn/paypalm/pppayment/s;)Lcn/paypalm/pppayment/UserMessageAct;
    .locals 1

    iget-object v0, p0, Lcn/paypalm/pppayment/s;->b:Lcn/paypalm/pppayment/UserMessageAct;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    iget-object v0, p0, Lcn/paypalm/pppayment/s;->b:Lcn/paypalm/pppayment/UserMessageAct;

    invoke-static {v0}, Lcn/paypalm/pppayment/UserMessageAct;->x(Lcn/paypalm/pppayment/UserMessageAct;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/paypalm/pppayment/s;->b:Lcn/paypalm/pppayment/UserMessageAct;

    invoke-static {v0}, Lcn/paypalm/pppayment/UserMessageAct;->b(Lcn/paypalm/pppayment/UserMessageAct;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcn/paypalm/pppayment/ar;

    invoke-direct {v1, p0}, Lcn/paypalm/pppayment/ar;-><init>(Lcn/paypalm/pppayment/s;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcn/paypalm/pppayment/s;->b:Lcn/paypalm/pppayment/UserMessageAct;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcn/paypalm/pppayment/UserMessageAct;->b(Lcn/paypalm/pppayment/UserMessageAct;IZ)V

    goto :goto_0
.end method
