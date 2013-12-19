.class Lmm/purchasesdk/c/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lmm/purchasesdk/c/a;


# direct methods
.method constructor <init>(Lmm/purchasesdk/c/a;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/c/d;->a:Lmm/purchasesdk/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lmm/purchasesdk/c/d;->a:Lmm/purchasesdk/c/a;

    invoke-virtual {v0}, Lmm/purchasesdk/c/a;->d()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmm/purchasesdk/c/d;->a:Lmm/purchasesdk/c/a;

    invoke-virtual {v0}, Lmm/purchasesdk/c/a;->f()V

    new-instance v0, Lmm/purchasesdk/c/e;

    invoke-direct {v0, p0}, Lmm/purchasesdk/c/e;-><init>(Lmm/purchasesdk/c/d;)V

    invoke-virtual {v0}, Lmm/purchasesdk/c/e;->start()V

    iget-object v0, p0, Lmm/purchasesdk/c/d;->a:Lmm/purchasesdk/c/a;

    invoke-static {v0, p1}, Lmm/purchasesdk/c/a;->a(Lmm/purchasesdk/c/a;Landroid/view/View;)V

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x0

    sput v0, Lmm/purchasesdk/c/m;->y:I

    iget-object v0, p0, Lmm/purchasesdk/c/d;->a:Lmm/purchasesdk/c/a;

    invoke-virtual {v0}, Lmm/purchasesdk/c/a;->dismiss()V

    iget-object v0, p0, Lmm/purchasesdk/c/d;->a:Lmm/purchasesdk/c/a;

    invoke-static {v0}, Lmm/purchasesdk/c/a;->a(Lmm/purchasesdk/c/a;)Lmm/purchasesdk/b;

    move-result-object v0

    const/16 v1, 0xde

    invoke-virtual {v0, v1}, Lmm/purchasesdk/b;->a(I)V

    iget-object v0, p0, Lmm/purchasesdk/c/d;->a:Lmm/purchasesdk/c/a;

    invoke-static {v0}, Lmm/purchasesdk/c/a;->a(Lmm/purchasesdk/c/a;)Lmm/purchasesdk/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmm/purchasesdk/b;->a(Ljava/util/HashMap;)V

    iget-object v0, p0, Lmm/purchasesdk/c/d;->a:Lmm/purchasesdk/c/a;

    invoke-static {v0}, Lmm/purchasesdk/c/a;->b(Lmm/purchasesdk/c/a;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lmm/purchasesdk/c/d;->a:Lmm/purchasesdk/c/a;

    invoke-static {v1}, Lmm/purchasesdk/c/a;->a(Lmm/purchasesdk/c/a;)Lmm/purchasesdk/b;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lmm/purchasesdk/c/d;->a:Lmm/purchasesdk/c/a;

    invoke-static {v0}, Lmm/purchasesdk/c/a;->a(Lmm/purchasesdk/c/a;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmm/purchasesdk/c/d;->a:Lmm/purchasesdk/c/a;

    invoke-static {v0}, Lmm/purchasesdk/c/a;->a(Lmm/purchasesdk/c/a;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
