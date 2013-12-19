.class Lmm/purchasesdk/ui/w;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic b:Lmm/purchasesdk/ui/v;


# direct methods
.method constructor <init>(Lmm/purchasesdk/ui/v;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/ui/w;->b:Lmm/purchasesdk/ui/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lmm/purchasesdk/ui/w;->b:Lmm/purchasesdk/ui/v;

    invoke-static {v0}, Lmm/purchasesdk/ui/v;->a(Lmm/purchasesdk/ui/v;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, "\u91cd \u65b0 \u8d2d \u4e70"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ResultDialog"

    const-string v1, "Activity is finished!"

    invoke-static {v0, v1}, Lmm/purchasesdk/l/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lmm/purchasesdk/ui/w;->b:Lmm/purchasesdk/ui/v;

    invoke-virtual {v0}, Lmm/purchasesdk/ui/v;->dismiss()V

    iget-object v0, p0, Lmm/purchasesdk/ui/w;->b:Lmm/purchasesdk/ui/v;

    invoke-static {v0}, Lmm/purchasesdk/ui/v;->a(Lmm/purchasesdk/ui/v;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput v2, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lmm/purchasesdk/ui/w;->b:Lmm/purchasesdk/ui/v;

    invoke-static {v1}, Lmm/purchasesdk/ui/v;->a(Lmm/purchasesdk/ui/v;)Lmm/purchasesdk/b;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput v2, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_1
    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "ResultDialog"

    const-string v1, "Activity is finished!"

    invoke-static {v0, v1}, Lmm/purchasesdk/l/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lmm/purchasesdk/ui/w;->b:Lmm/purchasesdk/ui/v;

    invoke-virtual {v0}, Lmm/purchasesdk/ui/v;->dismiss()V

    iget-object v0, p0, Lmm/purchasesdk/ui/w;->b:Lmm/purchasesdk/ui/v;

    invoke-static {v0}, Lmm/purchasesdk/ui/v;->a(Lmm/purchasesdk/ui/v;)Lmm/purchasesdk/b;

    move-result-object v0

    iget-object v1, p0, Lmm/purchasesdk/ui/w;->b:Lmm/purchasesdk/ui/v;

    invoke-static {v1}, Lmm/purchasesdk/ui/v;->a(Lmm/purchasesdk/ui/v;)I

    move-result v1

    invoke-virtual {v0, v1}, Lmm/purchasesdk/b;->a(I)V

    iget-object v0, p0, Lmm/purchasesdk/ui/w;->b:Lmm/purchasesdk/ui/v;

    invoke-static {v0}, Lmm/purchasesdk/ui/v;->a(Lmm/purchasesdk/ui/v;)Lmm/purchasesdk/b;

    move-result-object v0

    iget-object v1, p0, Lmm/purchasesdk/ui/w;->b:Lmm/purchasesdk/ui/v;

    invoke-static {v1}, Lmm/purchasesdk/ui/v;->a(Lmm/purchasesdk/ui/v;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmm/purchasesdk/b;->a(Ljava/util/HashMap;)V

    iget-object v0, p0, Lmm/purchasesdk/ui/w;->b:Lmm/purchasesdk/ui/v;

    invoke-static {v0}, Lmm/purchasesdk/ui/v;->b(Lmm/purchasesdk/ui/v;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lmm/purchasesdk/ui/w;->b:Lmm/purchasesdk/ui/v;

    invoke-static {v1}, Lmm/purchasesdk/ui/v;->a(Lmm/purchasesdk/ui/v;)Lmm/purchasesdk/b;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
