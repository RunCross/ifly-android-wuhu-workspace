.class Lmm/purchasesdk/c/c;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lmm/purchasesdk/c/a;


# direct methods
.method constructor <init>(Lmm/purchasesdk/c/a;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/c/c;->a:Lmm/purchasesdk/c/a;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/ccit/mmwlan/vo/SignView;

    iget-object v1, p0, Lmm/purchasesdk/c/c;->a:Lmm/purchasesdk/c/a;

    invoke-static {v1, v0}, Lmm/purchasesdk/c/a;->a(Lmm/purchasesdk/c/a;Lcom/ccit/mmwlan/vo/SignView;)V

    :cond_0
    return-void
.end method
