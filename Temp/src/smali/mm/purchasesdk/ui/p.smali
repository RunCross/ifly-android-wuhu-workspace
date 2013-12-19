.class Lmm/purchasesdk/ui/p;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lmm/purchasesdk/ui/l;


# direct methods
.method constructor <init>(Lmm/purchasesdk/ui/l;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/ui/p;->a:Lmm/purchasesdk/ui/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PurchaseDialog"

    const-string v1, "Activity is finished!"

    invoke-static {v0, v1}, Lmm/purchasesdk/l/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lmm/purchasesdk/ui/p;->a:Lmm/purchasesdk/ui/l;

    invoke-virtual {v0}, Lmm/purchasesdk/ui/l;->dismiss()V

    iget-object v0, p0, Lmm/purchasesdk/ui/p;->a:Lmm/purchasesdk/ui/l;

    invoke-static {v0}, Lmm/purchasesdk/ui/l;->a(Lmm/purchasesdk/ui/l;)Lmm/purchasesdk/b;

    move-result-object v0

    const/16 v1, 0x191

    invoke-virtual {v0, v1}, Lmm/purchasesdk/b;->a(I)V

    iget-object v0, p0, Lmm/purchasesdk/ui/p;->a:Lmm/purchasesdk/ui/l;

    invoke-static {v0}, Lmm/purchasesdk/ui/l;->a(Lmm/purchasesdk/ui/l;)Lmm/purchasesdk/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmm/purchasesdk/b;->a(Ljava/util/HashMap;)V

    iget-object v0, p0, Lmm/purchasesdk/ui/p;->a:Lmm/purchasesdk/ui/l;

    invoke-static {v0}, Lmm/purchasesdk/ui/l;->a(Lmm/purchasesdk/ui/l;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lmm/purchasesdk/ui/p;->a:Lmm/purchasesdk/ui/l;

    invoke-static {v1}, Lmm/purchasesdk/ui/l;->a(Lmm/purchasesdk/ui/l;)Lmm/purchasesdk/b;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
