.class public Lcom/unionpay/upomp/bypay/other/av;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lcom/unionpay/upomp/bypay/activity/PayMainActivity;


# direct methods
.method public constructor <init>(Lcom/unionpay/upomp/bypay/activity/PayMainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/unionpay/upomp/bypay/other/av;->a:Lcom/unionpay/upomp/bypay/activity/PayMainActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Integer;)Lcom/unionpay/upomp/bypay/other/bx;
    .locals 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/av;->a:Lcom/unionpay/upomp/bypay/activity/PayMainActivity;

    invoke-static {v0}, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->e(Lcom/unionpay/upomp/bypay/activity/PayMainActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Lcom/unionpay/upomp/bypay/other/aC;->L:Ljava/lang/String;

    :goto_0
    const-string v1, "3"

    sget-object v3, Lcom/unionpay/upomp/bypay/other/aC;->b:Ljava/lang/String;

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v1, "8"

    :cond_0
    const-string v3, "1"

    invoke-static {v0, v3, v1}, Lcom/unionpay/upomp/bypay/util/Utils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Lcom/unionpay/upomp/bypay/util/Utils;->e(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    const-string v1, "aIFpfWl9aXllg2SIZIhohmiIaHtogmiFaH5peWh6aYJkh2l+aIdogmiIaIdpeWh6aYJpfGh+aHxpfml7aH5kh2h8aIhohmSIaXppg2iDaYJkiGaAaHppfWh+Z4BoemmCZIhofWh+aHpohWSHaHpofGl9aIJoiGiH"

    invoke-static {v1, v0}, Lcom/unionpay/upomp/bypay/util/Utils;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/unionpay/upomp/bypay/other/at;

    move-result-object v0

    sput-object v0, Lcom/unionpay/upomp/bypay/other/aC;->a:Lcom/unionpay/upomp/bypay/other/at;

    new-instance v1, Lcom/unionpay/upomp/bypay/other/bG;

    sget-object v3, Lcom/unionpay/upomp/bypay/other/aC;->a:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/unionpay/upomp/bypay/other/bG;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/unionpay/upomp/bypay/other/aC;->a:Lcom/unionpay/upomp/bypay/other/bG;

    invoke-virtual {v1, v0}, Lcom/unionpay/upomp/bypay/other/bG;->a(Lcom/unionpay/upomp/bypay/other/bh;)V

    const/4 v0, 0x0

    :goto_2
    sget-object v1, Lcom/unionpay/upomp/bypay/other/aC;->bj:Ljava/lang/String;

    if-eqz v1, :cond_2

    sget-object v0, Lcom/unionpay/upomp/bypay/other/aC;->bj:Ljava/lang/String;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/unionpay/upomp/bypay/other/aC;->bj:Ljava/lang/String;

    invoke-static {v0}, Lcom/unionpay/upomp/bypay/util/Utils;->y(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    sput-object v2, Lcom/unionpay/upomp/bypay/other/aC;->bj:Ljava/lang/String;

    move-object v0, v2

    :goto_3
    return-object v0

    :cond_1
    sput-object v0, Lcom/unionpay/upomp/bypay/other/aC;->j:Ljava/lang/String;

    sput-object v0, Lcom/unionpay/upomp/bypay/other/aC;->L:Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_2
    sget-object v1, Lcom/unionpay/upomp/bypay/other/aC;->a:Lcom/unionpay/upomp/bypay/other/at;

    if-eqz v1, :cond_3

    const/16 v1, 0xf0

    if-le v0, v1, :cond_4

    :cond_3
    sput-object v2, Lcom/unionpay/upomp/bypay/other/aC;->a:Lcom/unionpay/upomp/bypay/other/at;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "mmssSSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unionpay/upomp/bypay/other/aC;->l:Ljava/lang/String;

    move-object v0, v2

    goto :goto_3

    :cond_4
    add-int/lit8 v0, v0, 0x1

    const-wide/16 v3, 0x1f4

    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    :cond_5
    const-string v0, "mobilevalid_tag"

    sput-object v0, Lcom/unionpay/upomp/bypay/other/as;->a:Ljava/lang/String;

    sget-object v0, Lcom/unionpay/upomp/bypay/other/aC;->bj:Ljava/lang/String;

    new-instance v1, Lcom/unionpay/upomp/bypay/other/U;

    invoke-direct {v1}, Lcom/unionpay/upomp/bypay/other/U;-><init>()V

    invoke-static {v0, v1}, Lcom/unionpay/upomp/bypay/other/as;->a(Ljava/lang/String;Lorg/xml/sax/helpers/DefaultHandler;)Lorg/xml/sax/helpers/DefaultHandler;

    move-result-object v0

    check-cast v0, Lcom/unionpay/upomp/bypay/other/U;

    invoke-virtual {v0}, Lcom/unionpay/upomp/bypay/other/U;->a()Lcom/unionpay/upomp/bypay/other/bx;

    move-result-object v0

    sput-object v2, Lcom/unionpay/upomp/bypay/other/aC;->bj:Ljava/lang/String;

    goto :goto_3
.end method

.method protected a(Lcom/unionpay/upomp/bypay/other/bx;)V
    .locals 5

    const/4 v4, 0x0

    sget-boolean v0, Lcom/unionpay/upomp/bypay/other/aC;->o:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/unionpay/upomp/bypay/other/aC;->a:Landroid/app/Activity;

    if-eqz v0, :cond_0

    if-nez p1, :cond_2

    sget-object v0, Lcom/unionpay/upomp/bypay/other/aC;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v2, "string"

    const-string v3, "upomp_bypay_linkerror"

    invoke-static {v1, v2, v3}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/unionpay/upomp/bypay/util/Utils;->a(ILjava/lang/String;)V

    invoke-static {}, Lcom/unionpay/upomp/bypay/util/Utils;->e()V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/unionpay/upomp/bypay/other/bx;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/unionpay/upomp/bypay/other/bx;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unionpay/upomp/bypay/other/aC;->bn:Ljava/lang/String;

    sget-object v0, Lcom/unionpay/upomp/bypay/other/aC;->N:Ljava/lang/String;

    const-string v1, "\u4fe1\u7528\u5361"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/unionpay/upomp/bypay/other/aC;->a:Landroid/content/Context;

    const-class v2, Lcom/unionpay/upomp/bypay/activity/PayUserCreditActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v1, Lcom/unionpay/upomp/bypay/other/aC;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/other/aC;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_3
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/unionpay/upomp/bypay/other/aC;->a:Landroid/content/Context;

    const-class v2, Lcom/unionpay/upomp/bypay/activity/PayUserDebitActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v1, Lcom/unionpay/upomp/bypay/other/aC;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/other/aC;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/unionpay/upomp/bypay/other/bx;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3022"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/unionpay/upomp/bypay/other/aC;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v2, "string"

    const-string v3, "upomp_bypay_error"

    invoke-static {v1, v2, v3}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/unionpay/upomp/bypay/other/aC;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v3, "string"

    const-string v4, "upomp_bypay_sessionhint"

    invoke-static {v2, v3, v4}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unionpay/upomp/bypay/util/Utils;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/unionpay/upomp/bypay/other/bx;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/unionpay/upomp/bypay/util/Utils;->a(ILjava/lang/String;)V

    invoke-static {}, Lcom/unionpay/upomp/bypay/util/Utils;->e()V

    goto/16 :goto_0
.end method

.method protected varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/unionpay/upomp/bypay/other/av;->a([Ljava/lang/Integer;)Lcom/unionpay/upomp/bypay/other/bx;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/unionpay/upomp/bypay/other/bx;

    invoke-virtual {p0, p1}, Lcom/unionpay/upomp/bypay/other/av;->a(Lcom/unionpay/upomp/bypay/other/bx;)V

    return-void
.end method
