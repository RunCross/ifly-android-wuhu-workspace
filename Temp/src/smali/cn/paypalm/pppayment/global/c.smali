.class Lcn/paypalm/pppayment/global/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcn/paypalm/pppayment/global/Tools;

.field private final synthetic b:Landroid/content/Context;

.field private final synthetic c:I


# direct methods
.method constructor <init>(Lcn/paypalm/pppayment/global/Tools;Landroid/content/Context;I)V
    .locals 0

    iput-object p1, p0, Lcn/paypalm/pppayment/global/c;->a:Lcn/paypalm/pppayment/global/Tools;

    iput-object p2, p0, Lcn/paypalm/pppayment/global/c;->b:Landroid/content/Context;

    iput p3, p0, Lcn/paypalm/pppayment/global/c;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    new-instance v1, Landroid/content/Intent;

    const-string v0, "intent.action.result.failed"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "zsht_failed"

    const-string v3, "\u53d6\u6d88PP\u652f\u4ed8\uff01"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v0, p0, Lcn/paypalm/pppayment/global/c;->b:Landroid/content/Context;

    const-class v2, Lcn/paypalm/pppayment/InitialAct;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v0, p0, Lcn/paypalm/pppayment/global/c;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget v2, p0, Lcn/paypalm/pppayment/global/c;->c:I

    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    const/high16 v0, 0x2400

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcn/paypalm/pppayment/global/c;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
