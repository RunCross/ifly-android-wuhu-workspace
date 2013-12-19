.class public Lcn/paypalm/pppayment/BankcardAgreement;
.super Landroid/app/Activity;


# instance fields
.field a:Landroid/widget/TextView;

.field b:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcn/paypalm/pppayment/BankcardAgreement;->b:Landroid/os/Handler;

    return-void
.end method

.method private a()V
    .locals 1

    new-instance v0, Lcn/paypalm/pppayment/j;

    invoke-direct {v0, p0}, Lcn/paypalm/pppayment/j;-><init>(Lcn/paypalm/pppayment/BankcardAgreement;)V

    invoke-virtual {v0}, Lcn/paypalm/pppayment/j;->start()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, -0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "zsht_bankcard_agreement"

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Lcn/paypalm/pppayment/global/Tools;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcn/paypalm/pppayment/BankcardAgreement;->setContentView(I)V

    invoke-virtual {p0}, Lcn/paypalm/pppayment/BankcardAgreement;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setLayout(II)V

    const-string v0, "zsht_tv_bankcard_agreement_back"

    invoke-static {p0, v0, v3}, Lcn/paypalm/pppayment/global/Tools;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcn/paypalm/pppayment/BankcardAgreement;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "zsht_tv_bankcard_agreement_text"

    invoke-static {p0, v1, v3}, Lcn/paypalm/pppayment/global/Tools;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcn/paypalm/pppayment/BankcardAgreement;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcn/paypalm/pppayment/BankcardAgreement;->a:Landroid/widget/TextView;

    invoke-direct {p0}, Lcn/paypalm/pppayment/BankcardAgreement;->a()V

    new-instance v1, Lcn/paypalm/pppayment/l;

    invoke-direct {v1, p0}, Lcn/paypalm/pppayment/l;-><init>(Lcn/paypalm/pppayment/BankcardAgreement;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
