.class Lmm/purchasesdk/c/e;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lmm/purchasesdk/c/d;


# direct methods
.method constructor <init>(Lmm/purchasesdk/c/d;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/c/e;->a:Lmm/purchasesdk/c/d;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lmm/purchasesdk/l/d;->F()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmm/purchasesdk/c/e;->a:Lmm/purchasesdk/c/d;

    iget-object v1, v1, Lmm/purchasesdk/c/d;->a:Lmm/purchasesdk/c/a;

    invoke-static {v1}, Lmm/purchasesdk/c/a;->a(Lmm/purchasesdk/c/a;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lmm/purchasesdk/c/e;->a:Lmm/purchasesdk/c/d;

    iget-object v2, v2, Lmm/purchasesdk/c/d;->a:Lmm/purchasesdk/c/a;

    invoke-virtual {v2}, Lmm/purchasesdk/c/a;->o()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/ccit/mmwlan/MMClientSDK_ForPad;->sidSign_PAD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ccit/mmwlan/vo/SignView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ccit/mmwlan/vo/SignView;->getResult()I

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/16 v2, 0x64

    iput v2, v1, Landroid/os/Message;->what:I

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lmm/purchasesdk/c/e;->a:Lmm/purchasesdk/c/d;

    iget-object v0, v0, Lmm/purchasesdk/c/d;->a:Lmm/purchasesdk/c/a;

    invoke-static {v0}, Lmm/purchasesdk/c/a;->a(Lmm/purchasesdk/c/a;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
