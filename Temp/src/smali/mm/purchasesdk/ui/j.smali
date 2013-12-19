.class public Lmm/purchasesdk/ui/j;
.super Landroid/app/Dialog;


# instance fields
.field private D:I

.field private a:Lmm/purchasesdk/ui/k;

.field private b:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const v0, 0x1030005

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/16 v0, 0x3eb

    iput v0, p0, Lmm/purchasesdk/ui/j;->D:I

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p0, p1}, Lmm/purchasesdk/ui/j;->setOwnerActivity(Landroid/app/Activity;)V

    invoke-virtual {p0}, Lmm/purchasesdk/ui/j;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    invoke-virtual {p0}, Lmm/purchasesdk/ui/j;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const v1, 0x3f4ccccd

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    invoke-virtual {p0}, Lmm/purchasesdk/ui/j;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method private k()Landroid/view/View;
    .locals 3

    const/4 v2, -0x1

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmm/purchasesdk/ui/j;->b:Landroid/widget/LinearLayout;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lmm/purchasesdk/ui/j;->b:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v1, p0, Lmm/purchasesdk/ui/j;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lmm/purchasesdk/ui/k;

    invoke-direct {v0}, Lmm/purchasesdk/ui/k;-><init>()V

    iput-object v0, p0, Lmm/purchasesdk/ui/j;->a:Lmm/purchasesdk/ui/k;

    iget-object v0, p0, Lmm/purchasesdk/ui/j;->b:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lmm/purchasesdk/ui/j;->a:Lmm/purchasesdk/ui/k;

    invoke-virtual {v1}, Lmm/purchasesdk/ui/k;->l()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lmm/purchasesdk/ui/j;->b:Landroid/widget/LinearLayout;

    return-object v0
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    invoke-virtual {p0}, Lmm/purchasesdk/ui/j;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eq v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0
.end method

.method public show()V
    .locals 1

    invoke-direct {p0}, Lmm/purchasesdk/ui/j;->k()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmm/purchasesdk/ui/j;->setContentView(Landroid/view/View;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmm/purchasesdk/ui/j;->setCancelable(Z)V

    invoke-super {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method
