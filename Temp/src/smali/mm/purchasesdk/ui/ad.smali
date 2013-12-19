.class Lmm/purchasesdk/ui/ad;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic b:Lmm/purchasesdk/ui/ac;


# direct methods
.method constructor <init>(Lmm/purchasesdk/ui/ac;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/ui/ad;->b:Lmm/purchasesdk/ui/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x2

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WebViewLayout"

    const-string v1, "Activity is finished!"

    invoke-static {v0, v1}, Lmm/purchasesdk/l/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lmm/purchasesdk/ui/u;->a()Lmm/purchasesdk/ui/u;

    move-result-object v0

    invoke-virtual {v0}, Lmm/purchasesdk/ui/u;->s()V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lmm/purchasesdk/ui/ad;->b:Lmm/purchasesdk/ui/ac;

    invoke-static {v1}, Lmm/purchasesdk/ui/ac;->a(Lmm/purchasesdk/ui/ac;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    packed-switch v0, :pswitch_data_0

    :goto_1
    iget-object v0, p0, Lmm/purchasesdk/ui/ad;->b:Lmm/purchasesdk/ui/ac;

    invoke-static {v0}, Lmm/purchasesdk/ui/ac;->a(Lmm/purchasesdk/ui/ac;)Lmm/purchasesdk/b;

    move-result-object v0

    iget-object v2, p0, Lmm/purchasesdk/ui/ad;->b:Lmm/purchasesdk/ui/ac;

    invoke-static {v2}, Lmm/purchasesdk/ui/ac;->a(Lmm/purchasesdk/ui/ac;)I

    move-result v2

    invoke-virtual {v0, v2}, Lmm/purchasesdk/b;->a(I)V

    iget-object v0, p0, Lmm/purchasesdk/ui/ad;->b:Lmm/purchasesdk/ui/ac;

    invoke-static {v0}, Lmm/purchasesdk/ui/ac;->a(Lmm/purchasesdk/ui/ac;)Lmm/purchasesdk/b;

    move-result-object v0

    iget-object v2, p0, Lmm/purchasesdk/ui/ad;->b:Lmm/purchasesdk/ui/ac;

    invoke-static {v2}, Lmm/purchasesdk/ui/ac;->a(Lmm/purchasesdk/ui/ac;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmm/purchasesdk/b;->a(Ljava/util/HashMap;)V

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lmm/purchasesdk/l/d;->e(Ljava/lang/Boolean;)V

    iput v3, v1, Landroid/os/Message;->what:I

    iput v3, v1, Landroid/os/Message;->arg1:I

    iget-object v0, p0, Lmm/purchasesdk/ui/ad;->b:Lmm/purchasesdk/ui/ac;

    invoke-static {v0}, Lmm/purchasesdk/ui/ac;->a(Lmm/purchasesdk/ui/ac;)Lmm/purchasesdk/b;

    move-result-object v0

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :pswitch_0
    const-string v0, "WebViewLayout"

    const-string v2, "onClick KAlipayBackButtonType"

    invoke-static {v0, v2}, Lmm/purchasesdk/l/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lmm/purchasesdk/ui/ad;->b:Lmm/purchasesdk/ui/ac;

    invoke-static {v0}, Lmm/purchasesdk/ui/ac;->a(Lmm/purchasesdk/ui/ac;)Lmm/purchasesdk/b;

    move-result-object v0

    invoke-virtual {v0, v4}, Lmm/purchasesdk/b;->b(I)V

    goto :goto_1

    :pswitch_1
    const-string v0, "WebViewLayout"

    const-string v2, "onClick KAlipayFinishButtonType"

    invoke-static {v0, v2}, Lmm/purchasesdk/l/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lmm/purchasesdk/ui/ad;->b:Lmm/purchasesdk/ui/ac;

    invoke-static {v0}, Lmm/purchasesdk/ui/ac;->a(Lmm/purchasesdk/ui/ac;)Lmm/purchasesdk/b;

    move-result-object v0

    invoke-virtual {v0, v3}, Lmm/purchasesdk/b;->b(I)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
