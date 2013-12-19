.class Lcn/paypalm/pppayment/r;
.super Ljava/lang/Thread;


# instance fields
.field a:I

.field final synthetic b:Lcn/paypalm/pppayment/InitialAct;


# direct methods
.method public constructor <init>(Lcn/paypalm/pppayment/InitialAct;I)V
    .locals 0

    iput-object p1, p0, Lcn/paypalm/pppayment/r;->b:Lcn/paypalm/pppayment/InitialAct;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput p2, p0, Lcn/paypalm/pppayment/r;->a:I

    return-void
.end method

.method static synthetic a(Lcn/paypalm/pppayment/r;)Lcn/paypalm/pppayment/InitialAct;
    .locals 1

    iget-object v0, p0, Lcn/paypalm/pppayment/r;->b:Lcn/paypalm/pppayment/InitialAct;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 5

    const/16 v4, 0xa

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    const/4 v0, 0x0

    iget-object v1, p0, Lcn/paypalm/pppayment/r;->b:Lcn/paypalm/pppayment/InitialAct;

    invoke-static {v1}, Lcn/paypalm/pppayment/InitialAct;->c(Lcn/paypalm/pppayment/InitialAct;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/16 v0, 0xc8

    :try_start_0
    invoke-static {v0, v1}, Lcn/paypalm/pppayment/r;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcn/paypalm/pppayment/r;->b:Lcn/paypalm/pppayment/InitialAct;

    invoke-static {v0}, Lcn/paypalm/pppayment/InitialAct;->j(Lcn/paypalm/pppayment/InitialAct;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcn/paypalm/pppayment/u;

    invoke-direct {v1, p0}, Lcn/paypalm/pppayment/u;-><init>(Lcn/paypalm/pppayment/r;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcn/paypalm/pppayment/r;->b:Lcn/paypalm/pppayment/InitialAct;

    invoke-static {v0}, Lcn/paypalm/pppayment/InitialAct;->k(Lcn/paypalm/pppayment/InitialAct;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    const/4 v0, -0x6

    :cond_0
    :goto_1
    iget-object v1, p0, Lcn/paypalm/pppayment/r;->b:Lcn/paypalm/pppayment/InitialAct;

    invoke-static {v1}, Lcn/paypalm/pppayment/InitialAct;->j(Lcn/paypalm/pppayment/InitialAct;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    :goto_2
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/data/data/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/paypalm/pppayment/r;->b:Lcn/paypalm/pppayment/InitialAct;

    invoke-virtual {v1}, Lcn/paypalm/pppayment/InitialAct;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/files/libpaypalm_pp_payment.so"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcn/paypalm/pppayment/r;->b:Lcn/paypalm/pppayment/InitialAct;

    invoke-static {v0, v1}, Lcn/paypalm/pppayment/InitialAct;->b(Lcn/paypalm/pppayment/InitialAct;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/paypalm/pppayment/r;->b:Lcn/paypalm/pppayment/InitialAct;

    invoke-static {v0, v1}, Lcn/paypalm/pppayment/global/Tools;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/paypalm/pppayment/r;->b:Lcn/paypalm/pppayment/InitialAct;

    invoke-static {v0}, Lcn/paypalm/pppayment/InitialAct;->l(Lcn/paypalm/pppayment/InitialAct;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/paypalm/pppayment/r;->b:Lcn/paypalm/pppayment/InitialAct;

    invoke-static {v0}, Lcn/paypalm/pppayment/InitialAct;->m(Lcn/paypalm/pppayment/InitialAct;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/paypalm/pppayment/r;->b:Lcn/paypalm/pppayment/InitialAct;

    invoke-static {v0}, Lcn/paypalm/pppayment/InitialAct;->n(Lcn/paypalm/pppayment/InitialAct;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/paypalm/pppayment/r;->b:Lcn/paypalm/pppayment/InitialAct;

    invoke-static {v0}, Lcn/paypalm/pppayment/InitialAct;->o(Lcn/paypalm/pppayment/InitialAct;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/paypalm/pppayment/r;->b:Lcn/paypalm/pppayment/InitialAct;

    invoke-static {v0}, Lcn/paypalm/pppayment/InitialAct;->k(Lcn/paypalm/pppayment/InitialAct;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcn/paypalm/pppayment/r;->b:Lcn/paypalm/pppayment/InitialAct;

    invoke-static {v0}, Lcn/paypalm/pppayment/InitialAct;->p(Lcn/paypalm/pppayment/InitialAct;)I

    move-result v0

    if-eqz v0, :cond_6

    const/4 v1, -0x7

    if-ne v0, v1, :cond_3

    iget-object v1, p0, Lcn/paypalm/pppayment/r;->b:Lcn/paypalm/pppayment/InitialAct;

    invoke-static {v1}, Lcn/paypalm/pppayment/InitialAct;->q(Lcn/paypalm/pppayment/InitialAct;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2

    :cond_3
    if-ne v0, v4, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "temp_pp_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/paypalm/pppayment/r;->b:Lcn/paypalm/pppayment/InitialAct;

    invoke-static {v1}, Lcn/paypalm/pppayment/InitialAct;->a(Lcn/paypalm/pppayment/InitialAct;)Lcn/paypalm/pppayment/global/b;

    move-result-object v1

    invoke-virtual {v1}, Lcn/paypalm/pppayment/global/b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/paypalm/pppayment/r;->b:Lcn/paypalm/pppayment/InitialAct;

    invoke-virtual {v1}, Lcn/paypalm/pppayment/InitialAct;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, p0, Lcn/paypalm/pppayment/r;->b:Lcn/paypalm/pppayment/InitialAct;

    invoke-static {v2}, Lcn/paypalm/pppayment/InitialAct;->q(Lcn/paypalm/pppayment/InitialAct;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    const-string v3, "path"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcn/paypalm/pppayment/r;->b:Lcn/paypalm/pppayment/InitialAct;

    invoke-virtual {v1}, Lcn/paypalm/pppayment/InitialAct;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v3, 0x80

    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v3, p0, Lcn/paypalm/pppayment/r;->b:Lcn/paypalm/pppayment/InitialAct;

    invoke-virtual {v3, v0, v1}, Lcn/paypalm/pppayment/InitialAct;->a(Ljava/lang/String;Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/paypalm/pppayment/r;->b:Lcn/paypalm/pppayment/InitialAct;

    invoke-static {v0}, Lcn/paypalm/pppayment/InitialAct;->a(Lcn/paypalm/pppayment/InitialAct;)Lcn/paypalm/pppayment/global/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/paypalm/pppayment/global/b;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    if-le v0, v1, :cond_4

    iput v4, v2, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcn/paypalm/pppayment/r;->b:Lcn/paypalm/pppayment/InitialAct;

    invoke-static {v0}, Lcn/paypalm/pppayment/InitialAct;->q(Lcn/paypalm/pppayment/InitialAct;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    :cond_4
    const/16 v0, 0xb

    iput v0, v2, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcn/paypalm/pppayment/r;->b:Lcn/paypalm/pppayment/InitialAct;

    invoke-static {v0}, Lcn/paypalm/pppayment/InitialAct;->q(Lcn/paypalm/pppayment/InitialAct;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    :cond_5
    iput v4, v2, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcn/paypalm/pppayment/r;->b:Lcn/paypalm/pppayment/InitialAct;

    invoke-static {v0}, Lcn/paypalm/pppayment/InitialAct;->q(Lcn/paypalm/pppayment/InitialAct;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    :cond_6
    iget-object v0, p0, Lcn/paypalm/pppayment/r;->b:Lcn/paypalm/pppayment/InitialAct;

    invoke-static {v0}, Lcn/paypalm/pppayment/InitialAct;->r(Lcn/paypalm/pppayment/InitialAct;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/paypalm/pppayment/r;->b:Lcn/paypalm/pppayment/InitialAct;

    invoke-static {v0}, Lcn/paypalm/pppayment/InitialAct;->s(Lcn/paypalm/pppayment/InitialAct;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcn/paypalm/pppayment/r;->b:Lcn/paypalm/pppayment/InitialAct;

    invoke-static {v1}, Lcn/paypalm/pppayment/InitialAct;->t(Lcn/paypalm/pppayment/InitialAct;)V

    iget-object v1, p0, Lcn/paypalm/pppayment/r;->b:Lcn/paypalm/pppayment/InitialAct;

    invoke-static {v1}, Lcn/paypalm/pppayment/InitialAct;->c(Lcn/paypalm/pppayment/InitialAct;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "zsht_failed"

    const-string v4, "\u8bf7\u91cd\u65b0\u652f\u4ed8\uff01"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v2, p0, Lcn/paypalm/pppayment/r;->b:Lcn/paypalm/pppayment/InitialAct;

    const/4 v3, -0x2

    invoke-virtual {v2, v3, v1}, Lcn/paypalm/pppayment/InitialAct;->setResult(ILandroid/content/Intent;)V

    iget-object v1, p0, Lcn/paypalm/pppayment/r;->b:Lcn/paypalm/pppayment/InitialAct;

    invoke-virtual {v1}, Lcn/paypalm/pppayment/InitialAct;->finish()V

    goto/16 :goto_1
.end method
