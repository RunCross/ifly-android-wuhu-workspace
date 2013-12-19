.class Lmm/purchasesdk/ui/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lmm/purchasesdk/ui/d;


# direct methods
.method constructor <init>(Lmm/purchasesdk/ui/d;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/ui/f;->a:Lmm/purchasesdk/ui/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_2

    check-cast p1, Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lmm/purchasesdk/ui/f;->a:Lmm/purchasesdk/ui/d;

    invoke-static {v1, v0}, Lmm/purchasesdk/ui/d;->a(Lmm/purchasesdk/ui/d;Ljava/lang/String;)I

    move-result v0

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lmm/purchasesdk/ui/g;

    invoke-direct {v2, p0, v0}, Lmm/purchasesdk/ui/g;-><init>(Lmm/purchasesdk/ui/f;I)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const-string v0, "delete"

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lmm/purchasesdk/ui/f;->a:Lmm/purchasesdk/ui/d;

    invoke-static {v0}, Lmm/purchasesdk/ui/d;->a(Lmm/purchasesdk/ui/d;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    iget-object v0, p0, Lmm/purchasesdk/ui/f;->a:Lmm/purchasesdk/ui/d;

    invoke-static {v0}, Lmm/purchasesdk/ui/d;->a(Lmm/purchasesdk/ui/d;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lmm/purchasesdk/ui/f;->a:Lmm/purchasesdk/ui/d;

    invoke-static {v0}, Lmm/purchasesdk/ui/d;->a(Lmm/purchasesdk/ui/d;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    iget-object v0, p0, Lmm/purchasesdk/ui/f;->a:Lmm/purchasesdk/ui/d;

    invoke-static {v0}, Lmm/purchasesdk/ui/d;->b(Lmm/purchasesdk/ui/d;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/view/View;->scrollTo(II)V

    goto :goto_1
.end method
