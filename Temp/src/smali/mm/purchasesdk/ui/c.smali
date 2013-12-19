.class Lmm/purchasesdk/ui/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lmm/purchasesdk/ui/b;


# direct methods
.method constructor <init>(Lmm/purchasesdk/ui/b;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/ui/c;->a:Lmm/purchasesdk/ui/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmm/purchasesdk/ui/c;->a:Lmm/purchasesdk/ui/b;

    iget-object v0, v0, Lmm/purchasesdk/ui/b;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lmm/purchasesdk/ui/c;->a:Lmm/purchasesdk/ui/b;

    iget-object v0, v0, Lmm/purchasesdk/ui/b;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
