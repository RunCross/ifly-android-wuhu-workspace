.class Lcn/paypalm/pppayment/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcn/paypalm/pppayment/InitialAct;

.field private final synthetic b:Z

.field private final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/paypalm/pppayment/InitialAct;ZLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/paypalm/pppayment/h;->a:Lcn/paypalm/pppayment/InitialAct;

    iput-boolean p2, p0, Lcn/paypalm/pppayment/h;->b:Z

    iput-object p3, p0, Lcn/paypalm/pppayment/h;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcn/paypalm/pppayment/h;->a:Lcn/paypalm/pppayment/InitialAct;

    invoke-static {v0}, Lcn/paypalm/pppayment/InitialAct;->h(Lcn/paypalm/pppayment/InitialAct;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    iget-boolean v0, p0, Lcn/paypalm/pppayment/h;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/paypalm/pppayment/h;->a:Lcn/paypalm/pppayment/InitialAct;

    invoke-virtual {v0}, Lcn/paypalm/pppayment/InitialAct;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcn/paypalm/pppayment/h;->c:Ljava/lang/String;

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v1, p0, Lcn/paypalm/pppayment/h;->a:Lcn/paypalm/pppayment/InitialAct;

    iget-object v2, p0, Lcn/paypalm/pppayment/h;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcn/paypalm/pppayment/InitialAct;->a(Ljava/lang/String;Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/paypalm/pppayment/h;->a:Lcn/paypalm/pppayment/InitialAct;

    iget-object v1, p0, Lcn/paypalm/pppayment/h;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/paypalm/pppayment/InitialAct;->a(Lcn/paypalm/pppayment/InitialAct;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcn/paypalm/pppayment/h;->a:Lcn/paypalm/pppayment/InitialAct;

    iget-object v1, p0, Lcn/paypalm/pppayment/h;->c:Ljava/lang/String;

    const-string v2, "\u4e0b\u8f7d\u5931\u8d25"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u7531\u4e8e\u672c\u6b21\u4e0b\u8f7d\u65b0\u7248\u672c\u5931\u8d25\uff0c\u60a8\u5c06\u4f7f\u7528"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcn/paypalm/pppayment/h;->a:Lcn/paypalm/pppayment/InitialAct;

    invoke-static {v4}, Lcn/paypalm/pppayment/InitialAct;->d(Lcn/paypalm/pppayment/InitialAct;)Lcn/paypalm/pppayment/global/a;

    move-result-object v4

    invoke-virtual {v4}, Lcn/paypalm/pppayment/global/a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u7248\u672c\u7ee7\u7eed\u652f\u4ed8\uff01"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcn/paypalm/pppayment/InitialAct;->a(Lcn/paypalm/pppayment/InitialAct;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
