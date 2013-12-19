.class Lmm/purchasesdk/ui/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lmm/purchasesdk/ui/d;


# direct methods
.method constructor <init>(Lmm/purchasesdk/ui/d;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/ui/e;->a:Lmm/purchasesdk/ui/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lmm/purchasesdk/ui/e;->a:Lmm/purchasesdk/ui/d;

    invoke-static {v0}, Lmm/purchasesdk/ui/d;->a(Lmm/purchasesdk/ui/d;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    check-cast p1, Landroid/widget/Button;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lmm/purchasesdk/ui/e;->a:Lmm/purchasesdk/ui/d;

    invoke-static {v0}, Lmm/purchasesdk/ui/d;->b(Lmm/purchasesdk/ui/d;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lmm/purchasesdk/ui/e;->a:Lmm/purchasesdk/ui/d;

    invoke-static {v0}, Lmm/purchasesdk/ui/d;->c(Lmm/purchasesdk/ui/d;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v3, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_4

    iget-object v0, p0, Lmm/purchasesdk/ui/e;->a:Lmm/purchasesdk/ui/d;

    invoke-static {v0}, Lmm/purchasesdk/ui/d;->d(Lmm/purchasesdk/ui/d;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    check-cast p1, Landroid/widget/Button;

    const/high16 v0, -0x100

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_5

    iget-object v0, p0, Lmm/purchasesdk/ui/e;->a:Lmm/purchasesdk/ui/d;

    invoke-static {v0}, Lmm/purchasesdk/ui/d;->e(Lmm/purchasesdk/ui/d;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lmm/purchasesdk/ui/e;->a:Lmm/purchasesdk/ui/d;

    invoke-static {v0}, Lmm/purchasesdk/ui/d;->f(Lmm/purchasesdk/ui/d;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
