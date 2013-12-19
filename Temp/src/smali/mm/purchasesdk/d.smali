.class Lmm/purchasesdk/d;
.super Landroid/os/Handler;


# instance fields
.field final synthetic b:Lmm/purchasesdk/Purchase;


# direct methods
.method constructor <init>(Lmm/purchasesdk/Purchase;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/d;->b:Lmm/purchasesdk/Purchase;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lmm/purchasesdk/b;

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :pswitch_0
    iget-object v2, p0, Lmm/purchasesdk/d;->b:Lmm/purchasesdk/Purchase;

    invoke-static {v2}, Lmm/purchasesdk/Purchase;->a(Lmm/purchasesdk/Purchase;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lmm/purchasesdk/d;->b:Lmm/purchasesdk/Purchase;

    invoke-static {v3}, Lmm/purchasesdk/Purchase;->b(Lmm/purchasesdk/Purchase;)Landroid/os/Handler;

    move-result-object v3

    invoke-static {v2, v3, v0, v1}, Lmm/purchasesdk/f;->a(Landroid/os/Handler;Landroid/os/Handler;Lmm/purchasesdk/b;I)V

    goto :goto_0

    :pswitch_1
    invoke-static {v0, v1}, Lmm/purchasesdk/f;->a(Lmm/purchasesdk/b;I)V

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lmm/purchasesdk/d;->b:Lmm/purchasesdk/Purchase;

    invoke-static {v2}, Lmm/purchasesdk/Purchase;->a(Lmm/purchasesdk/Purchase;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lmm/purchasesdk/d;->b:Lmm/purchasesdk/Purchase;

    invoke-static {v3}, Lmm/purchasesdk/Purchase;->b(Lmm/purchasesdk/Purchase;)Landroid/os/Handler;

    move-result-object v3

    invoke-static {v2, v3, v0, v1}, Lmm/purchasesdk/f;->b(Landroid/os/Handler;Landroid/os/Handler;Lmm/purchasesdk/b;I)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {v0, v1}, Lmm/purchasesdk/b;->onUnsubscribeFinish(I)V

    goto :goto_0

    :pswitch_4
    invoke-static {}, Lmm/purchasesdk/f;->b()V

    goto :goto_0

    :pswitch_5
    invoke-virtual {v0}, Lmm/purchasesdk/b;->a()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
