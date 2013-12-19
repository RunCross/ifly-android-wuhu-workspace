.class public Lmm/purchasesdk/ui/v;
.super Lmm/purchasesdk/ui/b;


# instance fields
.field private E:I

.field private F:I

.field private final TAG:Ljava/lang/String;

.field private a:Landroid/graphics/drawable/Drawable;

.field private a:Landroid/os/Handler;

.field private a:Landroid/widget/ScrollView;

.field private a:Ljava/util/HashMap;

.field private ar:Ljava/lang/String;

.field private as:Ljava/lang/String;

.field private at:Ljava/lang/String;

.field private b:Landroid/os/Handler;

.field private b:Landroid/widget/ImageView;

.field private b:Lmm/purchasesdk/b;

.field private c:Landroid/view/View$OnClickListener;

.field private f:Landroid/view/View$OnClickListener;

.field private f:Landroid/widget/Button;

.field private f:Landroid/widget/TextView;

.field private g:Ljava/lang/Boolean;

.field private i:Landroid/graphics/Bitmap;

.field private v:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lmm/purchasesdk/b;Landroid/os/Handler;Landroid/os/Handler;ILjava/util/HashMap;)V
    .locals 2

    const/4 v1, 0x1

    const v0, 0x1030005

    invoke-direct {p0, p1, v0}, Lmm/purchasesdk/ui/b;-><init>(Landroid/content/Context;I)V

    const-string v0, "ResultDialog"

    iput-object v0, p0, Lmm/purchasesdk/ui/v;->TAG:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lmm/purchasesdk/ui/v;->ar:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lmm/purchasesdk/ui/v;->as:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lmm/purchasesdk/ui/v;->at:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lmm/purchasesdk/ui/v;->g:Ljava/lang/Boolean;

    new-instance v0, Lmm/purchasesdk/ui/w;

    invoke-direct {v0, p0}, Lmm/purchasesdk/ui/w;-><init>(Lmm/purchasesdk/ui/v;)V

    iput-object v0, p0, Lmm/purchasesdk/ui/v;->f:Landroid/view/View$OnClickListener;

    new-instance v0, Lmm/purchasesdk/ui/x;

    invoke-direct {v0, p0}, Lmm/purchasesdk/ui/x;-><init>(Lmm/purchasesdk/ui/v;)V

    iput-object v0, p0, Lmm/purchasesdk/ui/v;->c:Landroid/view/View$OnClickListener;

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lmm/purchasesdk/ui/v;->setOwnerActivity(Landroid/app/Activity;)V

    invoke-virtual {p0}, Lmm/purchasesdk/ui/v;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p0}, Lmm/purchasesdk/ui/v;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v1

    if-eq v0, v1, :cond_1

    :cond_0
    invoke-static {p1}, Lmm/purchasesdk/l/d;->setContext(Landroid/content/Context;)V

    :cond_1
    iput p5, p0, Lmm/purchasesdk/ui/v;->E:I

    iput-object p3, p0, Lmm/purchasesdk/ui/v;->a:Landroid/os/Handler;

    iput-object p4, p0, Lmm/purchasesdk/ui/v;->b:Landroid/os/Handler;

    iput-object p2, p0, Lmm/purchasesdk/ui/v;->b:Lmm/purchasesdk/b;

    iput-object p6, p0, Lmm/purchasesdk/ui/v;->a:Ljava/util/HashMap;

    new-instance v0, Landroid/widget/Button;

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmm/purchasesdk/ui/v;->f:Landroid/widget/Button;

    invoke-direct {p0, p5}, Lmm/purchasesdk/ui/v;->init(I)V

    invoke-direct {p0}, Lmm/purchasesdk/ui/v;->d()V

    return-void
.end method

.method private A()Landroid/view/View;
    .locals 10

    const/4 v9, 0x1

    const/4 v8, -0x1

    const/4 v7, -0x2

    const/16 v6, 0x11

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    sget v0, Lmm/purchasesdk/l/d;->ad:I

    int-to-double v2, v0

    const-wide v4, 0x3fee666666666666L

    mul-double/2addr v2, v4

    double-to-int v0, v2

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    sget v3, Lmm/purchasesdk/ui/aa;->M:I

    invoke-direct {v2, v0, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v9, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    sget v0, Lmm/purchasesdk/ui/aa;->R:I

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lmm/purchasesdk/ui/v;->v:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    sget v0, Lmm/purchasesdk/l/d;->k:F

    const/high16 v2, 0x3f80

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    sget v0, Lmm/purchasesdk/ui/aa;->M:I

    int-to-double v2, v0

    const-wide v4, 0x3fe4cccccccccccdL

    mul-double/2addr v2, v4

    double-to-int v0, v2

    :goto_0
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v8, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v3, Landroid/widget/ImageView;

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lmm/purchasesdk/ui/v;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/TextView;

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v4, 0x41f0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    iget v4, p0, Lmm/purchasesdk/ui/v;->F:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v4, p0, Lmm/purchasesdk/ui/v;->ar:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0xa

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    const/16 v5, 0x10

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, 0x2

    invoke-direct {v3, v8, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "mmiap/image/vertical/line.png"

    invoke-static {v4, v5}, Lmm/purchasesdk/ui/aa;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lmm/purchasesdk/ui/v;->f:Landroid/widget/TextView;

    sget v2, Lmm/purchasesdk/ui/aa;->M:I

    sub-int v0, v2, v0

    add-int/lit8 v0, v0, -0x2

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v7, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v6, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v0, p0, Lmm/purchasesdk/ui/v;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lmm/purchasesdk/ui/v;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lmm/purchasesdk/ui/v;->f:Landroid/widget/TextView;

    const v2, -0x7e7e7f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lmm/purchasesdk/ui/v;->f:Landroid/widget/TextView;

    iget-object v2, p0, Lmm/purchasesdk/ui/v;->as:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lmm/purchasesdk/ui/v;->as:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x19

    if-ge v0, v2, :cond_1

    iget-object v0, p0, Lmm/purchasesdk/ui/v;->f:Landroid/widget/TextView;

    const/high16 v2, 0x4170

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    :goto_1
    iget-object v0, p0, Lmm/purchasesdk/ui/v;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v1

    :cond_0
    sget v0, Lmm/purchasesdk/ui/aa;->M:I

    int-to-double v2, v0

    const-wide/high16 v4, 0x3fe8

    mul-double/2addr v2, v4

    double-to-int v0, v2

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lmm/purchasesdk/ui/v;->f:Landroid/widget/TextView;

    const/high16 v2, 0x4140

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_1
.end method

.method private B()Landroid/view/View;
    .locals 6

    const/4 v5, -0x1

    const/4 v4, 0x6

    const/16 v3, 0xa

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v0, v5, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {v5, v3, v3}, Lmm/purchasesdk/ui/a;->a(III)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v2, Landroid/widget/TextView;

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v0, -0x7e7e7f

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {}, Lmm/purchasesdk/l/d;->D()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "\u6b22\u8fce\u60a8\u4f7f\u7528\u4e2d\u56fd\u79fb\u52a8\u624b\u673a\u8bdd\u8d39\u652f\u4ed8\u529f\u80fd\uff0c\u60a8\u53ef\u767b\u9646a.10086.cn\u6216\u62e8\u625310086\u67e5\u8be2\u8d2d\u4e70\u8bb0\u5f55."

    :cond_0
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lmm/purchasesdk/ui/aa;->i:F

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    const/high16 v0, 0x3f80

    const v3, 0x3fa66666

    invoke-virtual {v2, v0, v3}, Landroid/widget/TextView;->setLineSpacing(FF)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v1
.end method

.method static synthetic a(Lmm/purchasesdk/ui/v;)I
    .locals 1

    iget v0, p0, Lmm/purchasesdk/ui/v;->E:I

    return v0
.end method

.method static synthetic a(Lmm/purchasesdk/ui/v;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/ui/v;->a:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic a(Lmm/purchasesdk/ui/v;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/ui/v;->f:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic a(Lmm/purchasesdk/ui/v;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/ui/v;->a:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic a(Lmm/purchasesdk/ui/v;)Lmm/purchasesdk/b;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/ui/v;->b:Lmm/purchasesdk/b;

    return-object v0
.end method

.method static synthetic b(Lmm/purchasesdk/ui/v;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/ui/v;->b:Landroid/os/Handler;

    return-object v0
.end method

.method private d()V
    .locals 2

    iget-object v0, p0, Lmm/purchasesdk/ui/v;->a:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "mmiap/image/vertical/bg.png"

    invoke-static {v0, v1}, Lmm/purchasesdk/ui/aa;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lmm/purchasesdk/ui/v;->a:Landroid/graphics/drawable/Drawable;

    :cond_0
    return-void
.end method

.method private init(I)V
    .locals 5

    const/16 v0, 0x66

    if-eq p1, v0, :cond_0

    const/16 v0, 0x68

    if-ne p1, v0, :cond_2

    :cond_0
    const-string v0, "\u652f \u4ed8 \u6210 \u529f"

    iput-object v0, p0, Lmm/purchasesdk/ui/v;->ar:Ljava/lang/String;

    const-string v0, "\u786e \u5b9a"

    iput-object v0, p0, Lmm/purchasesdk/ui/v;->at:Ljava/lang/String;

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "mmiap/image/vertical/icon_success.png"

    invoke-static {v0, v1}, Lmm/purchasesdk/ui/aa;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lmm/purchasesdk/ui/v;->i:Landroid/graphics/Bitmap;

    const v0, -0xa869b6

    iput v0, p0, Lmm/purchasesdk/ui/v;->F:I

    invoke-static {p1}, Lmm/purchasesdk/PurchaseCode;->getReason(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmm/purchasesdk/ui/v;->as:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lmm/purchasesdk/ui/v;->g:Ljava/lang/Boolean;

    :goto_0
    iget-object v0, p0, Lmm/purchasesdk/ui/v;->v:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "mmiap/image/vertical/infobg.9.png"

    invoke-static {v0, v1}, Lmm/purchasesdk/ui/aa;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/NinePatch;->isNinePatchChunk([B)Z

    new-instance v2, Landroid/graphics/drawable/NinePatchDrawable;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    const/4 v4, 0x0

    invoke-direct {v2, v0, v1, v3, v4}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V

    iput-object v2, p0, Lmm/purchasesdk/ui/v;->v:Landroid/graphics/drawable/Drawable;

    :cond_1
    return-void

    :cond_2
    const-string v0, "\u652f \u4ed8 \u5931 \u8d25"

    iput-object v0, p0, Lmm/purchasesdk/ui/v;->ar:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lmm/purchasesdk/ui/v;->g:Ljava/lang/Boolean;

    const v0, -0x47c4c5

    iput v0, p0, Lmm/purchasesdk/ui/v;->F:I

    iget-object v0, p0, Lmm/purchasesdk/ui/v;->a:Ljava/util/HashMap;

    if-nez v0, :cond_4

    const-string v0, "ResultDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mReturnObject null order fail ="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmm/purchasesdk/l/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "mmiap/image/vertical/icon_info.png"

    invoke-static {v0, v1}, Lmm/purchasesdk/ui/aa;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lmm/purchasesdk/ui/v;->i:Landroid/graphics/Bitmap;

    :goto_1
    invoke-static {p1}, Lmm/purchasesdk/PurchaseCode;->getReason(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmm/purchasesdk/ui/v;->as:Ljava/lang/String;

    const/16 v0, 0x193

    if-eq p1, v0, :cond_3

    const/16 v0, 0x194

    if-eq p1, v0, :cond_3

    const/16 v0, 0x73

    if-ne p1, v0, :cond_5

    :cond_3
    const-string v0, "\u91cd \u65b0 \u8d2d \u4e70"

    iput-object v0, p0, Lmm/purchasesdk/ui/v;->at:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const-string v0, "ResultDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mReturnObject order fail ="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmm/purchasesdk/l/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "mmiap/image/vertical/icon_false.png"

    invoke-static {v0, v1}, Lmm/purchasesdk/ui/aa;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lmm/purchasesdk/ui/v;->i:Landroid/graphics/Bitmap;

    goto :goto_1

    :cond_5
    const-string v0, "\u786e \u5b9a"

    iput-object v0, p0, Lmm/purchasesdk/ui/v;->at:Ljava/lang/String;

    goto/16 :goto_0
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    invoke-static {}, Lmm/purchasesdk/ui/u;->a()Lmm/purchasesdk/ui/u;

    move-result-object v0

    invoke-virtual {v0}, Lmm/purchasesdk/ui/u;->u()V

    invoke-super {p0}, Lmm/purchasesdk/ui/b;->dismiss()V

    return-void
.end method

.method public show()V
    .locals 1

    invoke-virtual {p0}, Lmm/purchasesdk/ui/v;->z()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmm/purchasesdk/ui/v;->setContentView(Landroid/view/View;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmm/purchasesdk/ui/v;->setCancelable(Z)V

    invoke-super {p0}, Lmm/purchasesdk/ui/b;->show()V

    return-void
.end method

.method public z()Landroid/view/View;
    .locals 6

    const/4 v5, 0x1

    const/4 v4, -0x1

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmm/purchasesdk/ui/v;->b(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lmm/purchasesdk/ui/v;->b:Landroid/widget/ImageView;

    iget-object v3, p0, Lmm/purchasesdk/ui/v;->c:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v1, v2, v3}, Lmm/purchasesdk/ui/v;->b(Landroid/content/Context;Landroid/widget/ImageView;Landroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lmm/purchasesdk/ui/v;->A()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lmm/purchasesdk/ui/v;->f:Landroid/widget/Button;

    iget-object v2, p0, Lmm/purchasesdk/ui/v;->f:Landroid/view/View$OnClickListener;

    iget-object v3, p0, Lmm/purchasesdk/ui/v;->at:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3}, Lmm/purchasesdk/ui/v;->a(Landroid/widget/Button;Landroid/view/View$OnClickListener;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lmm/purchasesdk/ui/v;->g:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lmm/purchasesdk/ui/v;->B()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmm/purchasesdk/ui/v;->c(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/ScrollView;

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lmm/purchasesdk/ui/v;->a:Landroid/widget/ScrollView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v2, Landroid/widget/ScrollView;

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lmm/purchasesdk/ui/v;->a:Landroid/widget/ScrollView;

    iget-object v2, p0, Lmm/purchasesdk/ui/v;->a:Landroid/widget/ScrollView;

    invoke-virtual {v2, v1}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lmm/purchasesdk/ui/v;->a:Landroid/widget/ScrollView;

    invoke-virtual {v1, v5}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    iget-object v1, p0, Lmm/purchasesdk/ui/v;->a:Landroid/widget/ScrollView;

    iget-object v2, p0, Lmm/purchasesdk/ui/v;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lmm/purchasesdk/ui/v;->a:Landroid/widget/ScrollView;

    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lmm/purchasesdk/ui/v;->a:Landroid/widget/ScrollView;

    return-object v0
.end method
