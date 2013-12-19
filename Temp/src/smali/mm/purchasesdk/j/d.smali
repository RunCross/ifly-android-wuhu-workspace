.class Lmm/purchasesdk/j/d;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lmm/purchasesdk/j/c;


# direct methods
.method constructor <init>(Lmm/purchasesdk/j/c;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/j/d;->a:Lmm/purchasesdk/j/c;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lmm/purchasesdk/j/d;->a:Lmm/purchasesdk/j/c;

    invoke-static {}, Lmm/purchasesdk/l/d;->getErrMsg()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmm/purchasesdk/j/c;->a(Lmm/purchasesdk/j/c;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_0
    .end packed-switch
.end method
