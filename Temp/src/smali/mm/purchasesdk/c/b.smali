.class Lmm/purchasesdk/c/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lmm/purchasesdk/c/a;


# direct methods
.method constructor <init>(Lmm/purchasesdk/c/a;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/c/b;->a:Lmm/purchasesdk/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    :pswitch_0
    iget-object v0, p0, Lmm/purchasesdk/c/b;->a:Lmm/purchasesdk/c/a;

    invoke-static {v0}, Lmm/purchasesdk/c/a;->a(Lmm/purchasesdk/c/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    iget-object v0, p0, Lmm/purchasesdk/c/b;->a:Lmm/purchasesdk/c/a;

    invoke-static {v0}, Lmm/purchasesdk/c/a;->b(Lmm/purchasesdk/c/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lmm/purchasesdk/c/b;->a:Lmm/purchasesdk/c/a;

    invoke-static {v0}, Lmm/purchasesdk/c/a;->a(Lmm/purchasesdk/c/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v0, p0, Lmm/purchasesdk/c/b;->a:Lmm/purchasesdk/c/a;

    invoke-static {v0}, Lmm/purchasesdk/c/a;->b(Lmm/purchasesdk/c/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
