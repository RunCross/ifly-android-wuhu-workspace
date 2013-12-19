.class public Lcn/paypalm/pppayment/SuccessAct;
.super Landroid/app/Activity;


# instance fields
.field a:Lcn/paypalm/pppayment/global/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private a()V
    .locals 5

    new-instance v0, Landroid/content/Intent;

    const-string v1, "intent.action.result.success"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "zsht_success"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "PP\u5feb\u6377\u652f\u4ed8\u4ed8\u6b3e\u6210\u529f\uff01\u652f\u4ed8\u91d1\u989d\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcn/paypalm/pppayment/SuccessAct;->a:Lcn/paypalm/pppayment/global/b;

    invoke-virtual {v4}, Lcn/paypalm/pppayment/global/b;->n()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \u5143"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-class v1, Lcn/paypalm/pppayment/InitialAct;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcn/paypalm/pppayment/SuccessAct;->setResult(ILandroid/content/Intent;)V

    const/high16 v1, 0x2400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcn/paypalm/pppayment/SuccessAct;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic a(Lcn/paypalm/pppayment/SuccessAct;)V
    .locals 0

    invoke-direct {p0}, Lcn/paypalm/pppayment/SuccessAct;->a()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, -0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "zsht_success_page"

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Lcn/paypalm/pppayment/global/Tools;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcn/paypalm/pppayment/SuccessAct;->setContentView(I)V

    invoke-virtual {p0}, Lcn/paypalm/pppayment/SuccessAct;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setLayout(II)V

    invoke-virtual {p0}, Lcn/paypalm/pppayment/SuccessAct;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "bundle_check_phone_responseMessage"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcn/paypalm/pppayment/global/b;

    iput-object v0, p0, Lcn/paypalm/pppayment/SuccessAct;->a:Lcn/paypalm/pppayment/global/b;

    const-string v0, "zsht_bt_success"

    invoke-static {p0, v0, v3}, Lcn/paypalm/pppayment/global/Tools;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcn/paypalm/pppayment/SuccessAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const-string v1, "zsht_tv_success_pointout"

    invoke-static {p0, v1, v3}, Lcn/paypalm/pppayment/global/Tools;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcn/paypalm/pppayment/SuccessAct;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u652f\u4ed8\u6210\u529f!\n\u60a8\u5df2\u8d2d\u4e70\u5546\u54c1"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcn/paypalm/pppayment/SuccessAct;->a:Lcn/paypalm/pppayment/global/b;

    invoke-virtual {v3}, Lcn/paypalm/pppayment/global/b;->o()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\uff0c\n\u652f\u4ed8\u603b\u989d"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/paypalm/pppayment/SuccessAct;->a:Lcn/paypalm/pppayment/global/b;

    invoke-virtual {v3}, Lcn/paypalm/pppayment/global/b;->n()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \u5143"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lcn/paypalm/pppayment/v;

    invoke-direct {v1, p0}, Lcn/paypalm/pppayment/v;-><init>(Lcn/paypalm/pppayment/SuccessAct;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcn/paypalm/pppayment/SuccessAct;->a()V

    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    invoke-direct {p0}, Lcn/paypalm/pppayment/SuccessAct;->a()V

    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "isDestroy"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
