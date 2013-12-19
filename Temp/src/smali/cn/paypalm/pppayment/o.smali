.class Lcn/paypalm/pppayment/o;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcn/paypalm/pppayment/ap;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/paypalm/pppayment/ap;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/paypalm/pppayment/o;->a:Lcn/paypalm/pppayment/ap;

    iput-object p2, p0, Lcn/paypalm/pppayment/o;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcn/paypalm/pppayment/o;->a:Lcn/paypalm/pppayment/ap;

    invoke-static {v0}, Lcn/paypalm/pppayment/ap;->a(Lcn/paypalm/pppayment/ap;)Lcn/paypalm/pppayment/InitialAct;

    move-result-object v0

    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcn/paypalm/pppayment/o;->a:Lcn/paypalm/pppayment/ap;

    invoke-static {v2}, Lcn/paypalm/pppayment/ap;->a(Lcn/paypalm/pppayment/ap;)Lcn/paypalm/pppayment/InitialAct;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcn/paypalm/pppayment/InitialAct;->a(Lcn/paypalm/pppayment/InitialAct;Landroid/app/ProgressDialog;)V

    iget-object v0, p0, Lcn/paypalm/pppayment/o;->a:Lcn/paypalm/pppayment/ap;

    invoke-static {v0}, Lcn/paypalm/pppayment/ap;->a(Lcn/paypalm/pppayment/ap;)Lcn/paypalm/pppayment/InitialAct;

    move-result-object v0

    invoke-static {v0}, Lcn/paypalm/pppayment/InitialAct;->h(Lcn/paypalm/pppayment/InitialAct;)Landroid/app/ProgressDialog;

    move-result-object v0

    const-string v1, "\u6b63\u5728\u4e0b\u8f7d"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/paypalm/pppayment/o;->a:Lcn/paypalm/pppayment/ap;

    invoke-static {v0}, Lcn/paypalm/pppayment/ap;->a(Lcn/paypalm/pppayment/ap;)Lcn/paypalm/pppayment/InitialAct;

    move-result-object v0

    invoke-static {v0}, Lcn/paypalm/pppayment/InitialAct;->h(Lcn/paypalm/pppayment/InitialAct;)Landroid/app/ProgressDialog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u6b63\u5728\u4e0b\u8f7d"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/paypalm/pppayment/o;->a:Lcn/paypalm/pppayment/ap;

    invoke-static {v2}, Lcn/paypalm/pppayment/ap;->a(Lcn/paypalm/pppayment/ap;)Lcn/paypalm/pppayment/InitialAct;

    move-result-object v2

    invoke-static {v2}, Lcn/paypalm/pppayment/InitialAct;->a(Lcn/paypalm/pppayment/InitialAct;)Lcn/paypalm/pppayment/global/b;

    move-result-object v2

    invoke-virtual {v2}, Lcn/paypalm/pppayment/global/b;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u7248\u672c\uff0c\u8bf7\u7a0d\u5019..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/paypalm/pppayment/o;->a:Lcn/paypalm/pppayment/ap;

    invoke-static {v0}, Lcn/paypalm/pppayment/ap;->a(Lcn/paypalm/pppayment/ap;)Lcn/paypalm/pppayment/InitialAct;

    move-result-object v0

    invoke-static {v0}, Lcn/paypalm/pppayment/InitialAct;->h(Lcn/paypalm/pppayment/InitialAct;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    iget-object v0, p0, Lcn/paypalm/pppayment/o;->a:Lcn/paypalm/pppayment/ap;

    invoke-static {v0}, Lcn/paypalm/pppayment/ap;->a(Lcn/paypalm/pppayment/ap;)Lcn/paypalm/pppayment/InitialAct;

    move-result-object v0

    iget-object v1, p0, Lcn/paypalm/pppayment/o;->a:Lcn/paypalm/pppayment/ap;

    invoke-static {v1}, Lcn/paypalm/pppayment/ap;->a(Lcn/paypalm/pppayment/ap;)Lcn/paypalm/pppayment/InitialAct;

    move-result-object v1

    invoke-static {v1}, Lcn/paypalm/pppayment/InitialAct;->a(Lcn/paypalm/pppayment/InitialAct;)Lcn/paypalm/pppayment/global/b;

    move-result-object v1

    invoke-virtual {v1}, Lcn/paypalm/pppayment/global/b;->f()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/paypalm/pppayment/o;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcn/paypalm/pppayment/InitialAct;->b(Lcn/paypalm/pppayment/InitialAct;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
