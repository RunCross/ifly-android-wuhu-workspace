.class Lmm/purchasesdk/h;
.super Landroid/os/Handler;


# instance fields
.field final synthetic b:Lmm/purchasesdk/g;


# direct methods
.method constructor <init>(Lmm/purchasesdk/g;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/h;->b:Lmm/purchasesdk/g;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lmm/purchasesdk/b;

    const-string v1, "TaskThread"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ReqHandler Handler id:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmm/purchasesdk/l/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "TaskThread"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ReqHandler Handler name:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmm/purchasesdk/l/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v1}, Lmm/purchasesdk/g;->a(Z)Z

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :pswitch_0
    iget-object v1, p0, Lmm/purchasesdk/h;->b:Lmm/purchasesdk/g;

    invoke-static {v1, v0}, Lmm/purchasesdk/g;->a(Lmm/purchasesdk/g;Lmm/purchasesdk/b;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lmm/purchasesdk/h;->b:Lmm/purchasesdk/g;

    invoke-static {v1, v0}, Lmm/purchasesdk/g;->b(Lmm/purchasesdk/g;Lmm/purchasesdk/b;)V

    goto :goto_0

    :pswitch_2
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    if-nez v1, :cond_0

    iget-object v1, p0, Lmm/purchasesdk/h;->b:Lmm/purchasesdk/g;

    invoke-static {v1, v0}, Lmm/purchasesdk/g;->c(Lmm/purchasesdk/g;Lmm/purchasesdk/b;)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lmm/purchasesdk/h;->b:Lmm/purchasesdk/g;

    invoke-static {v1, v0}, Lmm/purchasesdk/g;->b(Lmm/purchasesdk/g;Lmm/purchasesdk/b;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    invoke-static {v1}, Lmm/purchasesdk/g;->a(Z)Z

    iget-object v1, p0, Lmm/purchasesdk/h;->b:Lmm/purchasesdk/g;

    invoke-static {v1, v0, v2}, Lmm/purchasesdk/g;->a(Lmm/purchasesdk/g;Lmm/purchasesdk/b;Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lmm/purchasesdk/h;->b:Lmm/purchasesdk/g;

    invoke-static {v1, v0}, Lmm/purchasesdk/g;->d(Lmm/purchasesdk/g;Lmm/purchasesdk/b;)V

    goto :goto_0

    :pswitch_4
    iget-object v1, p0, Lmm/purchasesdk/h;->b:Lmm/purchasesdk/g;

    invoke-static {v1, v0}, Lmm/purchasesdk/g;->e(Lmm/purchasesdk/g;Lmm/purchasesdk/b;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
