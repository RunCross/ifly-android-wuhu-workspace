.class Lmm/purchasesdk/ui/r;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lmm/purchasesdk/ui/l;


# direct methods
.method constructor <init>(Lmm/purchasesdk/ui/l;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/ui/r;->a:Lmm/purchasesdk/ui/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/16 v2, 0x8

    iget-object v0, p0, Lmm/purchasesdk/ui/r;->a:Lmm/purchasesdk/ui/l;

    invoke-static {v0}, Lmm/purchasesdk/ui/l;->a(Lmm/purchasesdk/ui/l;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lmm/purchasesdk/ui/r;->a:Lmm/purchasesdk/ui/l;

    invoke-static {v0}, Lmm/purchasesdk/ui/l;->a(Lmm/purchasesdk/ui/l;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lmm/purchasesdk/ui/r;->a:Lmm/purchasesdk/ui/l;

    invoke-static {v0}, Lmm/purchasesdk/ui/l;->a(Lmm/purchasesdk/ui/l;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lmm/purchasesdk/ui/r;->a:Lmm/purchasesdk/ui/l;

    invoke-static {v0}, Lmm/purchasesdk/ui/l;->b(Lmm/purchasesdk/ui/l;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lmm/purchasesdk/ui/r;->a:Lmm/purchasesdk/ui/l;

    invoke-static {v1}, Lmm/purchasesdk/ui/l;->a(Lmm/purchasesdk/ui/l;)Lmm/purchasesdk/b;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
