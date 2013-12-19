.class public Lcom/unionpay/upomp/bypay/other/aY;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v0, 0x0

    sput-boolean v0, Lcom/unionpay/upomp/bypay/other/aC;->b:Z

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/unionpay/upomp/bypay/other/aC;->o:Z

    invoke-static {}, Lcom/unionpay/upomp/bypay/util/Utils;->d()V

    sget-object v0, Lcom/unionpay/upomp/bypay/other/aC;->aI:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/unionpay/upomp/bypay/other/aC;->aI:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/unionpay/upomp/bypay/other/aC;->aI:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "xml"

    sget-object v3, Lcom/unionpay/upomp/bypay/other/aC;->F:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    sget-object v1, Lcom/unionpay/upomp/bypay/other/aC;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    sget-object v0, Lcom/unionpay/upomp/bypay/other/aC;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
