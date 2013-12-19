.class Lmm/purchasesdk/ui/n;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lmm/purchasesdk/ui/l;


# direct methods
.method constructor <init>(Lmm/purchasesdk/ui/l;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/ui/n;->a:Lmm/purchasesdk/ui/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lmm/purchasesdk/ui/n;->a:Lmm/purchasesdk/ui/l;

    invoke-static {v0}, Lmm/purchasesdk/ui/l;->a(Lmm/purchasesdk/ui/l;)Lmm/purchasesdk/ui/d;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmm/purchasesdk/ui/n;->a:Lmm/purchasesdk/ui/l;

    new-instance v1, Lmm/purchasesdk/ui/d;

    iget-object v2, p0, Lmm/purchasesdk/ui/n;->a:Lmm/purchasesdk/ui/l;

    invoke-static {v2}, Lmm/purchasesdk/ui/l;->a(Lmm/purchasesdk/ui/l;)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lmm/purchasesdk/ui/d;-><init>(Landroid/view/View;Ljava/lang/Boolean;)V

    invoke-static {v0, v1}, Lmm/purchasesdk/ui/l;->a(Lmm/purchasesdk/ui/l;Lmm/purchasesdk/ui/d;)Lmm/purchasesdk/ui/d;

    :cond_0
    :try_start_0
    iget-object v0, p0, Lmm/purchasesdk/ui/n;->a:Lmm/purchasesdk/ui/l;

    invoke-static {v0}, Lmm/purchasesdk/ui/l;->a(Lmm/purchasesdk/ui/l;)Lmm/purchasesdk/ui/d;

    move-result-object v0

    iget-object v1, p0, Lmm/purchasesdk/ui/n;->a:Lmm/purchasesdk/ui/l;

    invoke-static {v1}, Lmm/purchasesdk/ui/l;->a(Lmm/purchasesdk/ui/l;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmm/purchasesdk/ui/d;->b(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lmm/purchasesdk/ui/n;->a:Lmm/purchasesdk/ui/l;

    invoke-static {v0}, Lmm/purchasesdk/ui/l;->a(Lmm/purchasesdk/ui/l;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_1
    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lmm/purchasesdk/ui/n;->a:Lmm/purchasesdk/ui/l;

    invoke-static {v0}, Lmm/purchasesdk/ui/l;->a(Lmm/purchasesdk/ui/l;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmm/purchasesdk/ui/n;->a:Lmm/purchasesdk/ui/l;

    invoke-static {v0}, Lmm/purchasesdk/ui/l;->a(Lmm/purchasesdk/ui/l;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    :cond_2
    iget-object v0, p0, Lmm/purchasesdk/ui/n;->a:Lmm/purchasesdk/ui/l;

    invoke-static {v0}, Lmm/purchasesdk/ui/l;->b(Lmm/purchasesdk/ui/l;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmm/purchasesdk/ui/n;->a:Lmm/purchasesdk/ui/l;

    invoke-static {v0}, Lmm/purchasesdk/ui/l;->b(Lmm/purchasesdk/ui/l;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lmm/purchasesdk/ui/n;->a:Lmm/purchasesdk/ui/l;

    invoke-static {v0}, Lmm/purchasesdk/ui/l;->a(Lmm/purchasesdk/ui/l;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lmm/purchasesdk/ui/n;->a:Lmm/purchasesdk/ui/l;

    invoke-static {v0}, Lmm/purchasesdk/ui/l;->a(Lmm/purchasesdk/ui/l;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    :cond_3
    iget-object v0, p0, Lmm/purchasesdk/ui/n;->a:Lmm/purchasesdk/ui/l;

    invoke-static {v0}, Lmm/purchasesdk/ui/l;->b(Lmm/purchasesdk/ui/l;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmm/purchasesdk/ui/n;->a:Lmm/purchasesdk/ui/l;

    invoke-static {v0}, Lmm/purchasesdk/ui/l;->b(Lmm/purchasesdk/ui/l;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lmm/purchasesdk/ui/n;->a:Lmm/purchasesdk/ui/l;

    invoke-static {v0}, Lmm/purchasesdk/ui/l;->c(Lmm/purchasesdk/ui/l;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lmm/purchasesdk/ui/n;->a:Lmm/purchasesdk/ui/l;

    invoke-static {v0}, Lmm/purchasesdk/ui/l;->c(Lmm/purchasesdk/ui/l;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    :cond_4
    iget-object v0, p0, Lmm/purchasesdk/ui/n;->a:Lmm/purchasesdk/ui/l;

    invoke-static {v0}, Lmm/purchasesdk/ui/l;->a(Lmm/purchasesdk/ui/l;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lmm/purchasesdk/ui/n;->a:Lmm/purchasesdk/ui/l;

    invoke-static {v0}, Lmm/purchasesdk/ui/l;->a(Lmm/purchasesdk/ui/l;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    :cond_5
    iget-object v0, p0, Lmm/purchasesdk/ui/n;->a:Lmm/purchasesdk/ui/l;

    invoke-static {v0}, Lmm/purchasesdk/ui/l;->b(Lmm/purchasesdk/ui/l;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmm/purchasesdk/ui/n;->a:Lmm/purchasesdk/ui/l;

    invoke-static {v0}, Lmm/purchasesdk/ui/l;->b(Lmm/purchasesdk/ui/l;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
