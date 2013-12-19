.class Lmm/purchasesdk/c/f;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lmm/purchasesdk/c/a;


# direct methods
.method constructor <init>(Lmm/purchasesdk/c/a;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/c/f;->a:Lmm/purchasesdk/c/a;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
