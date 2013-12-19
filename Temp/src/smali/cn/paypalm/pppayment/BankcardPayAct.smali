.class public Lcn/paypalm/pppayment/BankcardPayAct;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public a:Landroid/widget/RelativeLayout;

.field private b:Landroid/widget/ScrollView;

.field private c:Landroid/widget/LinearLayout;

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/EditText;

.field private l:Landroid/widget/EditText;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/Button;

.field private p:Landroid/widget/CheckBox;

.field private q:Lcn/paypalm/pppayment/global/Tools;

.field private r:Lcn/paypalm/pppayment/a/d;

.field private s:Landroid/app/ProgressDialog;

.field private t:Landroid/app/Dialog;

.field private u:Lcn/paypalm/pppayment/global/a;

.field private v:Lcn/paypalm/pppayment/global/b;

.field private w:Ljava/util/ArrayList;

.field private x:Z

.field private y:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/paypalm/pppayment/BankcardPayAct;->x:Z

    new-instance v0, Lcn/paypalm/pppayment/ak;

    invoke-direct {v0, p0}, Lcn/paypalm/pppayment/ak;-><init>(Lcn/paypalm/pppayment/BankcardPayAct;)V

    iput-object v0, p0, Lcn/paypalm/pppayment/BankcardPayAct;->y:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcn/paypalm/pppayment/BankcardPayAct;)Lcn/paypalm/pppayment/global/Tools;
    .locals 1

    iget-object v0, p0, Lcn/paypalm/pppayment/BankcardPayAct;->q:Lcn/paypalm/pppayment/global/Tools;

    return-object v0
.end method

.method private a()V
    .locals 1

    iget-object v0, p0, Lcn/paypalm/pppayment/BankcardPayAct;->n:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/paypalm/pppayment/BankcardPayAct;->o:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/paypalm/pppayment/BankcardPayAct;->m:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private a(Landroid/os/Bundle;Landroid/os/Message;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "title"

    invoke-virtual {p1, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text"

    invoke-virtual {p1, v0, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcn/paypalm/pppayment/BankcardPayAct;->y:Landroid/os/Handler;

    invoke-virtual {v0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method static synthetic a(Lcn/paypalm/pppayment/BankcardPayAct;Landroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Lcn/paypalm/pppayment/BankcardPayAct;->t:Landroid/app/Dialog;

    return-void
.end method

.method static synthetic a(Lcn/paypalm/pppayment/BankcardPayAct;Landroid/os/Bundle;Landroid/os/Message;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcn/paypalm/pppayment/BankcardPayAct;->a(Landroid/os/Bundle;Landroid/os/Message;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcn/paypalm/pppayment/BankcardPayAct;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Message;)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcn/paypalm/pppayment/BankcardPayAct;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Message;)Z
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v0, 0x0

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "\u6709\u6548\u671f\u4e0d\u80fd\u4e3a\u7a7a"

    const-string v2, "\u8bf7\u8f93\u5165\u4fe1\u7528\u5361\u6709\u6548\u671f\uff01"

    invoke-direct {p0, p3, p4, v1, v2}, Lcn/paypalm/pppayment/BankcardPayAct;->a(Landroid/os/Bundle;Landroid/os/Message;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    const-string v1, ""

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "\u5b89\u5168\u7801\u4e0d\u80fd\u4e3a\u7a7a"

    const-string v2, "\u8bf7\u8f93\u5165\u4fe1\u7528\u5361\u5b89\u5168\u7801\uff01"

    invoke-direct {p0, p3, p4, v1, v2}, Lcn/paypalm/pppayment/BankcardPayAct;->a(Landroid/os/Bundle;Landroid/os/Message;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v6, :cond_2

    const-string v1, "\u6709\u6548\u671f\u4f4d\u6570\u4e0d\u6b63\u786e"

    const-string v2, "\u8bf7\u8f93\u51654\u4f4d\u6570\u5b57\u6709\u6548\u671f\uff0c\u598209/14\u5c31\u8f93\u51650914\uff01"

    invoke-direct {p0, p3, p4, v1, v2}, Lcn/paypalm/pppayment/BankcardPayAct;->a(Landroid/os/Bundle;Landroid/os/Message;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_3

    const-string v1, "\u5b89\u5168\u7801\u4f4d\u6570\u4e0d\u6b63\u786e"

    const-string v2, "\u8bf7\u8f93\u5165\u4fe1\u7528\u5361\u80cc\u97623\u4f4d\u6570\u5b57\u5b89\u5168\u7801\uff01"

    invoke-direct {p0, p3, p4, v1, v2}, Lcn/paypalm/pppayment/BankcardPayAct;->a(Landroid/os/Bundle;Landroid/os/Message;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-lez v1, :cond_4

    const/16 v3, 0xc

    if-le v1, v3, :cond_5

    :cond_4
    const-string v1, "\u6709\u6548\u671f\u9519\u8bef"

    const-string v2, "\u4fe1\u7528\u5361\u6709\u6548\u671f\u9519\u8bef,\u8bf7\u91cd\u65b0\u8f93\u5165"

    invoke-direct {p0, p3, p4, v1, v2}, Lcn/paypalm/pppayment/BankcardPayAct;->a(Landroid/os/Bundle;Landroid/os/Message;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyyMM"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ge v2, v4, :cond_6

    const-string v1, "\u6709\u6548\u671f\u5df2\u5931\u6548"

    const-string v2, "\u6709\u6548\u671f\u5df2\u5931\u6548\uff0c\u8bf7\u8f93\u5165\u5408\u7406\u6709\u6548\u671f\uff01"

    invoke-direct {p0, p3, p4, v1, v2}, Lcn/paypalm/pppayment/BankcardPayAct;->a(Landroid/os/Bundle;Landroid/os/Message;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    if-ne v2, v4, :cond_7

    if-ge v1, v3, :cond_7

    const-string v1, "\u6709\u6548\u671f\u5df2\u5931\u6548"

    const-string v2, "\u6709\u6548\u671f\u5df2\u5931\u6548\uff0c\u8bf7\u8f93\u5165\u5408\u7406\u6709\u6548\u671f\uff01"

    invoke-direct {p0, p3, p4, v1, v2}, Lcn/paypalm/pppayment/BankcardPayAct;->a(Landroid/os/Bundle;Landroid/os/Message;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method static synthetic b(Lcn/paypalm/pppayment/BankcardPayAct;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcn/paypalm/pppayment/BankcardPayAct;->t:Landroid/app/Dialog;

    return-object v0
.end method

.method private b()V
    .locals 10

    const/16 v9, 0x8

    const/4 v8, 0x0

    const/4 v7, 0x1

    new-instance v0, Lcn/paypalm/pppayment/global/Tools;

    invoke-direct {v0}, Lcn/paypalm/pppayment/global/Tools;-><init>()V

    iput-object v0, p0, Lcn/paypalm/pppayment/BankcardPayAct;->q:Lcn/paypalm/pppayment/global/Tools;

    new-instance v0, Lcn/paypalm/pppayment/a/d;

    iget-object v1, p0, Lcn/paypalm/pppayment/BankcardPayAct;->q:Lcn/paypalm/pppayment/global/Tools;

    invoke-direct {v0, p0, v1}, Lcn/paypalm/pppayment/a/d;-><init>(Lcn/paypalm/pppayment/BankcardPayAct;Lcn/paypalm/pppayment/global/Tools;)V

    iput-object v0, p0, Lcn/paypalm/pppayment/BankcardPayAct;->r:Lcn/paypalm/pppayment/a/d;

    const-string v0, "zsht_scrollViewLayout"

    invoke-static {p0, v0, v7}, Lcn/paypalm/pppayment/global/Tools;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcn/paypalm/pppayment/BankcardPayAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcn/paypalm/pppayment/BankcardPayAct;->b:Landroid/widget/ScrollView;

    const-string v0, "zsht_linearLayout"

    invoke-static {p0, v0, v7}, Lcn/paypalm/pppayment/global/Tools;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcn/paypalm/pppayment/BankcardPayAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/paypalm/pppayment/BankcardPayAct;->c:Landroid/widget/LinearLayout;

    const-string v0, "zsht_bt_checkout_counter_pay_confirm"

    invoke-static {p0, v0, v7}, Lcn/paypalm/pppayment/global/Tools;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/paypalm/pppayment/BankcardPayAct;->d:I

    const-string v0, "zsht_tv_checkout_counter_bankcard_validity"

    invoke-static {p0, v0, v7}, Lcn/paypalm/pppayment/global/Tools;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/paypalm/pppayment/BankcardPayAct;->e:I

    const-string v0, "zsht_tv_checkout_counter_bankcard_security_code"

    invoke-static {p0, v0, v7}, Lcn/paypalm/pppayment/global/Tools;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/paypalm/pppayment/BankcardPayAct;->f:I

    const-string v0, "zsht_ed_checkout_counter_bankcard_password"

    invoke-static {p0, v0, v7}, Lcn/paypalm/pppayment/global/Tools;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/paypalm/pppayment/BankcardPayAct;->g:I

    const-string v0, "zsht_tv_checkout_counter_bankcard_orderInfo"

    invoke-static {p0, v0, v7}, Lcn/paypalm/pppayment/global/Tools;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcn/paypalm/pppayment/BankcardPayAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "zsht_tv_checkout_counter_bankcard_orderAmt"

    invoke-static {p0, v1, v7}, Lcn/paypalm/pppayment/global/Tools;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcn/paypalm/pppayment/BankcardPayAct;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "zsht_tv_checkout_counter_bankcard_name"

    invoke-static {p0, v2, v7}, Lcn/paypalm/pppayment/global/Tools;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcn/paypalm/pppayment/BankcardPayAct;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcn/paypalm/pppayment/BankcardPayAct;->i:Landroid/widget/TextView;

    const-string v2, "zsht_tv_checkout_counter_bankcard_number"

    invoke-static {p0, v2, v7}, Lcn/paypalm/pppayment/global/Tools;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcn/paypalm/pppayment/BankcardPayAct;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcn/paypalm/pppayment/BankcardPayAct;->j:Landroid/widget/TextView;

    iget v2, p0, Lcn/paypalm/pppayment/BankcardPayAct;->e:I

    invoke-virtual {p0, v2}, Lcn/paypalm/pppayment/BankcardPayAct;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcn/paypalm/pppayment/BankcardPayAct;->k:Landroid/widget/EditText;

    iget v2, p0, Lcn/paypalm/pppayment/BankcardPayAct;->f:I

    invoke-virtual {p0, v2}, Lcn/paypalm/pppayment/BankcardPayAct;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcn/paypalm/pppayment/BankcardPayAct;->l:Landroid/widget/EditText;

    iget v2, p0, Lcn/paypalm/pppayment/BankcardPayAct;->g:I

    invoke-virtual {p0, v2}, Lcn/paypalm/pppayment/BankcardPayAct;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcn/paypalm/pppayment/BankcardPayAct;->m:Landroid/widget/TextView;

    const-string v2, "zsht_tv_checkout_counter_bankcard_back"

    invoke-static {p0, v2, v7}, Lcn/paypalm/pppayment/global/Tools;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcn/paypalm/pppayment/BankcardPayAct;->h:I

    iget v2, p0, Lcn/paypalm/pppayment/BankcardPayAct;->h:I

    invoke-virtual {p0, v2}, Lcn/paypalm/pppayment/BankcardPayAct;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcn/paypalm/pppayment/BankcardPayAct;->n:Landroid/widget/TextView;

    iget v2, p0, Lcn/paypalm/pppayment/BankcardPayAct;->d:I

    invoke-virtual {p0, v2}, Lcn/paypalm/pppayment/BankcardPayAct;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcn/paypalm/pppayment/BankcardPayAct;->o:Landroid/widget/Button;

    const-string v2, "zsht_keyboardLayout"

    invoke-static {p0, v2, v7}, Lcn/paypalm/pppayment/global/Tools;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcn/paypalm/pppayment/BankcardPayAct;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcn/paypalm/pppayment/BankcardPayAct;->a:Landroid/widget/RelativeLayout;

    const-string v2, "zsht_cb_nextAuth"

    invoke-static {p0, v2, v7}, Lcn/paypalm/pppayment/global/Tools;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcn/paypalm/pppayment/BankcardPayAct;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcn/paypalm/pppayment/BankcardPayAct;->p:Landroid/widget/CheckBox;

    const-string v2, "zsht_bankcard_name_Layout"

    invoke-static {p0, v2, v7}, Lcn/paypalm/pppayment/global/Tools;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcn/paypalm/pppayment/BankcardPayAct;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const-string v3, "zsht_bankcard_validity_Layout"

    invoke-static {p0, v3, v7}, Lcn/paypalm/pppayment/global/Tools;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcn/paypalm/pppayment/BankcardPayAct;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    const-string v4, "zsht_bankcard_security_code_Layout"

    invoke-static {p0, v4, v7}, Lcn/paypalm/pppayment/global/Tools;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {p0, v4}, Lcn/paypalm/pppayment/BankcardPayAct;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    const-string v5, "zsht_bankcard_password_Layout"

    invoke-static {p0, v5, v7}, Lcn/paypalm/pppayment/global/Tools;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {p0, v5}, Lcn/paypalm/pppayment/BankcardPayAct;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    const-string v6, "zsht_credit_pointout_Layout"

    invoke-static {p0, v6, v7}, Lcn/paypalm/pppayment/global/Tools;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {p0, v6}, Lcn/paypalm/pppayment/BankcardPayAct;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcn/paypalm/pppayment/BankcardPayAct;->v:Lcn/paypalm/pppayment/global/b;

    invoke-virtual {v7}, Lcn/paypalm/pppayment/global/b;->o()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v7, "\u91d1\u989d: "

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcn/paypalm/pppayment/BankcardPayAct;->v:Lcn/paypalm/pppayment/global/b;

    invoke-virtual {v7}, Lcn/paypalm/pppayment/global/b;->n()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " \u5143"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/paypalm/pppayment/BankcardPayAct;->v:Lcn/paypalm/pppayment/global/b;

    invoke-virtual {v0}, Lcn/paypalm/pppayment/global/b;->i()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcn/paypalm/pppayment/BankcardPayAct;->p:Landroid/widget/CheckBox;

    invoke-virtual {v0, v9}, Landroid/widget/CheckBox;->setVisibility(I)V

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/paypalm/pppayment/BankcardPayAct;->s:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcn/paypalm/pppayment/BankcardPayAct;->s:Landroid/app/ProgressDialog;

    const-string v1, "\u6b63\u5728\u652f\u4ed8\uff0c\u8bf7\u7a0d\u540e..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/paypalm/pppayment/BankcardPayAct;->s:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v8}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcn/paypalm/pppayment/BankcardPayAct;->s:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v8}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcn/paypalm/pppayment/BankcardPayAct;->s:Landroid/app/ProgressDialog;

    new-instance v1, Lcn/paypalm/pppayment/ad;

    invoke-direct {v1, p0}, Lcn/paypalm/pppayment/ad;-><init>(Lcn/paypalm/pppayment/BankcardPayAct;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void

    :cond_0
    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcn/paypalm/pppayment/BankcardPayAct;->p:Landroid/widget/CheckBox;

    invoke-virtual {v0, v8}, Landroid/widget/CheckBox;->setVisibility(I)V

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic c(Lcn/paypalm/pppayment/BankcardPayAct;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcn/paypalm/pppayment/BankcardPayAct;->s:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Lcn/paypalm/pppayment/BankcardPayAct;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/paypalm/pppayment/BankcardPayAct;->a:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcn/paypalm/pppayment/BankcardPayAct;->r:Lcn/paypalm/pppayment/a/d;

    iget-object v1, p0, Lcn/paypalm/pppayment/BankcardPayAct;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcn/paypalm/pppayment/a/d;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcn/paypalm/pppayment/BankcardPayAct;->b:Landroid/widget/ScrollView;

    iget-object v1, p0, Lcn/paypalm/pppayment/BankcardPayAct;->c:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, v1}, Lcn/paypalm/pppayment/BankcardPayAct;->a(Landroid/view/View;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method static synthetic d(Lcn/paypalm/pppayment/BankcardPayAct;)Lcn/paypalm/pppayment/global/a;
    .locals 1

    iget-object v0, p0, Lcn/paypalm/pppayment/BankcardPayAct;->u:Lcn/paypalm/pppayment/global/a;

    return-object v0
.end method

.method static synthetic e(Lcn/paypalm/pppayment/BankcardPayAct;)Lcn/paypalm/pppayment/global/b;
    .locals 1

    iget-object v0, p0, Lcn/paypalm/pppayment/BankcardPayAct;->v:Lcn/paypalm/pppayment/global/b;

    return-object v0
.end method

.method static synthetic f(Lcn/paypalm/pppayment/BankcardPayAct;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcn/paypalm/pppayment/BankcardPayAct;->w:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic g(Lcn/paypalm/pppayment/BankcardPayAct;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcn/paypalm/pppayment/BankcardPayAct;->m:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic h(Lcn/paypalm/pppayment/BankcardPayAct;)Lcn/paypalm/pppayment/a/d;
    .locals 1

    iget-object v0, p0, Lcn/paypalm/pppayment/BankcardPayAct;->r:Lcn/paypalm/pppayment/a/d;

    return-object v0
.end method

.method static synthetic i(Lcn/paypalm/pppayment/BankcardPayAct;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcn/paypalm/pppayment/BankcardPayAct;->y:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic j(Lcn/paypalm/pppayment/BankcardPayAct;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcn/paypalm/pppayment/BankcardPayAct;->k:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic k(Lcn/paypalm/pppayment/BankcardPayAct;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcn/paypalm/pppayment/BankcardPayAct;->l:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic l(Lcn/paypalm/pppayment/BankcardPayAct;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcn/paypalm/pppayment/BankcardPayAct;->p:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic m(Lcn/paypalm/pppayment/BankcardPayAct;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcn/paypalm/pppayment/BankcardPayAct;->o:Landroid/widget/Button;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcn/paypalm/pppayment/ag;

    invoke-direct {v1, p0, p1, p2}, Lcn/paypalm/pppayment/ag;-><init>(Lcn/paypalm/pppayment/BankcardPayAct;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget v1, p0, Lcn/paypalm/pppayment/BankcardPayAct;->h:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcn/paypalm/pppayment/BankcardPayAct;->q:Lcn/paypalm/pppayment/global/Tools;

    iget-object v1, p0, Lcn/paypalm/pppayment/BankcardPayAct;->t:Landroid/app/Dialog;

    const/4 v2, 0x2

    invoke-virtual {v0, p0, v1, v3, v2}, Lcn/paypalm/pppayment/global/Tools;->a(Landroid/content/Context;Landroid/app/Dialog;ZI)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget v1, p0, Lcn/paypalm/pppayment/BankcardPayAct;->d:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcn/paypalm/pppayment/BankcardPayAct;->o:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setClickable(Z)V

    iget-object v0, p0, Lcn/paypalm/pppayment/BankcardPayAct;->s:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/paypalm/pppayment/BankcardPayAct;->s:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/paypalm/pppayment/BankcardPayAct;->s:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_2
    iget-object v0, p0, Lcn/paypalm/pppayment/BankcardPayAct;->s:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    new-instance v0, Lcn/paypalm/pppayment/as;

    invoke-direct {v0, p0}, Lcn/paypalm/pppayment/as;-><init>(Lcn/paypalm/pppayment/BankcardPayAct;)V

    invoke-virtual {v0}, Lcn/paypalm/pppayment/as;->start()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v2, -0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "zsht_bankcard_pay"

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Lcn/paypalm/pppayment/global/Tools;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcn/paypalm/pppayment/BankcardPayAct;->setContentView(I)V

    invoke-virtual {p0}, Lcn/paypalm/pppayment/BankcardPayAct;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setLayout(II)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Lcn/paypalm/pppayment/BankcardPayAct;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v0, "bundle_check_phone_requestMessage"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcn/paypalm/pppayment/global/a;

    iput-object v0, p0, Lcn/paypalm/pppayment/BankcardPayAct;->u:Lcn/paypalm/pppayment/global/a;

    const-string v0, "bundle_check_phone_responseMessage"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcn/paypalm/pppayment/global/b;

    iput-object v0, p0, Lcn/paypalm/pppayment/BankcardPayAct;->v:Lcn/paypalm/pppayment/global/b;

    const-string v0, "bundle_myPaypalm_errorMessageList"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcn/paypalm/pppayment/BankcardPayAct;->w:Ljava/util/ArrayList;

    const-string v0, "show_pay_card"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "show_cardholedr_name"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcn/paypalm/pppayment/BankcardPayAct;->b()V

    invoke-direct {p0}, Lcn/paypalm/pppayment/BankcardPayAct;->a()V

    if-eqz v0, :cond_0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcn/paypalm/pppayment/BankcardPayAct;->j:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    aget-object v4, v0, v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v0, v0, v5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    if-eqz v1, :cond_1

    iget-object v0, p0, Lcn/paypalm/pppayment/BankcardPayAct;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcn/paypalm/pppayment/BankcardPayAct;->q:Lcn/paypalm/pppayment/global/Tools;

    iget-object v2, p0, Lcn/paypalm/pppayment/BankcardPayAct;->t:Landroid/app/Dialog;

    const-string v3, "\u8ba2\u5355\u672a\u5b8c\u6210"

    const-string v4, "\u8bf7\u91cd\u65b0\u652f\u4ed8\uff01"

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcn/paypalm/pppayment/global/Tools;->a(Landroid/content/Context;Landroid/app/Dialog;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_2
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    iget-object v0, p0, Lcn/paypalm/pppayment/BankcardPayAct;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/paypalm/pppayment/BankcardPayAct;->a:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcn/paypalm/pppayment/BankcardPayAct;->q:Lcn/paypalm/pppayment/global/Tools;

    iget-object v1, p0, Lcn/paypalm/pppayment/BankcardPayAct;->t:Landroid/app/Dialog;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {v0, p0, v1, v2, v3}, Lcn/paypalm/pppayment/global/Tools;->a(Landroid/content/Context;Landroid/app/Dialog;ZI)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "isDestroy"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget v1, p0, Lcn/paypalm/pppayment/BankcardPayAct;->g:I

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcn/paypalm/pppayment/BankcardPayAct;->c()V

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcn/paypalm/pppayment/BankcardPayAct;->a:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcn/paypalm/pppayment/BankcardPayAct;->v:Lcn/paypalm/pppayment/global/b;

    invoke-virtual {v0}, Lcn/paypalm/pppayment/global/b;->i()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/paypalm/pppayment/BankcardPayAct;->x:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcn/paypalm/pppayment/BankcardPayAct;->c()V

    :cond_0
    return-void
.end method
