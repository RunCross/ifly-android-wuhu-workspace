.class public Lmm/purchasesdk/j/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Landroid/os/Message;

.field private a:Lmm/purchasesdk/h/g;


# direct methods
.method public constructor <init>(Landroid/os/Message;Lmm/purchasesdk/h/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmm/purchasesdk/j/f;->a:Landroid/os/Message;

    iput-object p2, p0, Lmm/purchasesdk/j/f;->a:Lmm/purchasesdk/h/g;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v1, Lmm/purchasesdk/h/h;

    invoke-direct {v1}, Lmm/purchasesdk/h/h;-><init>()V

    new-instance v0, Lmm/purchasesdk/g/e;

    invoke-direct {v0}, Lmm/purchasesdk/g/e;-><init>()V

    :try_start_0
    iget-object v2, p0, Lmm/purchasesdk/j/f;->a:Lmm/purchasesdk/h/g;

    invoke-virtual {v0, v2, v1}, Lmm/purchasesdk/g/e;->d(Lmm/purchasesdk/h/e;Lmm/purchasesdk/h/f;)Ljava/lang/String;
    :try_end_0
    .catch Lmm/purchasesdk/e; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lmm/purchasesdk/j/f;->a:Landroid/os/Message;

    invoke-virtual {v1}, Lmm/purchasesdk/h/h;->f()I

    move-result v2

    iput v2, v0, Landroid/os/Message;->arg1:I

    iget-object v0, p0, Lmm/purchasesdk/j/f;->a:Landroid/os/Message;

    invoke-virtual {v1}, Lmm/purchasesdk/h/h;->getErrMsg()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lmm/purchasesdk/j/f;->a:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lmm/purchasesdk/e;->printStackTrace()V

    goto :goto_0
.end method
