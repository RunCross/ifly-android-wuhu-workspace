.class Lmm/purchasesdk/c/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lmm/purchasesdk/c/a;


# direct methods
.method constructor <init>(Lmm/purchasesdk/c/a;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/c/j;->a:Lmm/purchasesdk/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :goto_0
    sget v0, Lmm/purchasesdk/c/m;->y:I

    if-lez v0, :cond_0

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x7531

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lmm/purchasesdk/c/j;->a:Lmm/purchasesdk/c/a;

    invoke-static {v1}, Lmm/purchasesdk/c/a;->a(Lmm/purchasesdk/c/a;)Lmm/purchasesdk/c/m;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmm/purchasesdk/c/m;->sendMessage(Landroid/os/Message;)Z

    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmm/purchasesdk/c/j;->a:Lmm/purchasesdk/c/a;

    invoke-static {v0}, Lmm/purchasesdk/c/a;->a(Lmm/purchasesdk/c/a;)Lmm/purchasesdk/c/m;

    move-result-object v0

    invoke-virtual {v0}, Lmm/purchasesdk/c/m;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x7532

    iput v1, v0, Landroid/os/Message;->what:I

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
