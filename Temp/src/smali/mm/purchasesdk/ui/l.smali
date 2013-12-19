.class public Lmm/purchasesdk/ui/l;
.super Lmm/purchasesdk/ui/b;


# instance fields
.field private A:Landroid/graphics/drawable/Drawable;

.field private final TAG:Ljava/lang/String;

.field private a:Landroid/graphics/drawable/Drawable;

.field private a:Landroid/os/Handler;

.field private a:Landroid/view/View$OnFocusChangeListener;

.field public a:Landroid/view/View$OnKeyListener;

.field private a:Landroid/view/View$OnTouchListener;

.field private a:Landroid/widget/ImageView;

.field private a:Landroid/widget/LinearLayout;

.field private a:Landroid/widget/ProgressBar;

.field private a:Landroid/widget/ScrollView;

.field private a:Ljava/lang/Boolean;

.field private a:Lmm/purchasesdk/b;

.field private b:Landroid/os/Handler;

.field private b:Landroid/widget/ImageView;

.field private b:Lmm/purchasesdk/b/a;

.field private b:Lmm/purchasesdk/ui/d;

.field private c:Landroid/view/View$OnClickListener;

.field private c:Landroid/widget/EditText;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/view/View$OnClickListener;

.field private d:Landroid/view/View;

.field private d:Landroid/widget/EditText;

.field private d:Landroid/widget/TextView;

.field private d:Ljava/lang/Boolean;

.field private e:Landroid/view/View$OnClickListener;

.field private e:Landroid/widget/Button;

.field private e:Landroid/widget/EditText;

.field private e:Landroid/widget/TextView;

.field private g:Landroid/graphics/Bitmap;

.field private h:Landroid/graphics/Bitmap;

.field private j:Z

.field private t:Landroid/graphics/drawable/Drawable;

.field private u:Landroid/graphics/drawable/Drawable;

.field private v:Landroid/graphics/drawable/Drawable;

.field private w:Landroid/graphics/drawable/Drawable;

.field private x:Landroid/graphics/drawable/Drawable;

.field private y:Landroid/graphics/drawable/Drawable;

.field private z:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;Lmm/purchasesdk/b;Lmm/purchasesdk/b/a;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    const v0, 0x1030005

    invoke-direct {p0, p1, v0}, Lmm/purchasesdk/ui/b;-><init>(Landroid/content/Context;I)V

    const-string v0, "PurchaseDialog"

    iput-object v0, p0, Lmm/purchasesdk/ui/l;->TAG:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lmm/purchasesdk/ui/l;->a:Ljava/lang/Boolean;

    iput-boolean v2, p0, Lmm/purchasesdk/ui/l;->j:Z

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lmm/purchasesdk/ui/l;->d:Ljava/lang/Boolean;

    iput-object v1, p0, Lmm/purchasesdk/ui/l;->b:Lmm/purchasesdk/ui/d;

    iput-object v1, p0, Lmm/purchasesdk/ui/l;->t:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lmm/purchasesdk/ui/l;->u:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lmm/purchasesdk/ui/l;->v:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lmm/purchasesdk/ui/l;->w:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lmm/purchasesdk/ui/l;->x:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lmm/purchasesdk/ui/l;->y:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lmm/purchasesdk/ui/l;->z:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lmm/purchasesdk/ui/l;->h:Landroid/graphics/Bitmap;

    new-instance v0, Lmm/purchasesdk/ui/m;

    invoke-direct {v0, p0}, Lmm/purchasesdk/ui/m;-><init>(Lmm/purchasesdk/ui/l;)V

    iput-object v0, p0, Lmm/purchasesdk/ui/l;->a:Landroid/view/View$OnFocusChangeListener;

    new-instance v0, Lmm/purchasesdk/ui/n;

    invoke-direct {v0, p0}, Lmm/purchasesdk/ui/n;-><init>(Lmm/purchasesdk/ui/l;)V

    iput-object v0, p0, Lmm/purchasesdk/ui/l;->a:Landroid/view/View$OnTouchListener;

    new-instance v0, Lmm/purchasesdk/ui/o;

    invoke-direct {v0, p0}, Lmm/purchasesdk/ui/o;-><init>(Lmm/purchasesdk/ui/l;)V

    iput-object v0, p0, Lmm/purchasesdk/ui/l;->a:Landroid/view/View$OnKeyListener;

    new-instance v0, Lmm/purchasesdk/ui/p;

    invoke-direct {v0, p0}, Lmm/purchasesdk/ui/p;-><init>(Lmm/purchasesdk/ui/l;)V

    iput-object v0, p0, Lmm/purchasesdk/ui/l;->c:Landroid/view/View$OnClickListener;

    new-instance v0, Lmm/purchasesdk/ui/q;

    invoke-direct {v0, p0}, Lmm/purchasesdk/ui/q;-><init>(Lmm/purchasesdk/ui/l;)V

    iput-object v0, p0, Lmm/purchasesdk/ui/l;->d:Landroid/view/View$OnClickListener;

    new-instance v0, Lmm/purchasesdk/ui/t;

    invoke-direct {v0, p0}, Lmm/purchasesdk/ui/t;-><init>(Lmm/purchasesdk/ui/l;)V

    iput-object v0, p0, Lmm/purchasesdk/ui/l;->e:Landroid/view/View$OnClickListener;

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lmm/purchasesdk/ui/l;->setOwnerActivity(Landroid/app/Activity;)V

    invoke-virtual {p0}, Lmm/purchasesdk/ui/l;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->requestFeature(I)Z

    iput-object p4, p0, Lmm/purchasesdk/ui/l;->a:Lmm/purchasesdk/b;

    iput-object p3, p0, Lmm/purchasesdk/ui/l;->b:Landroid/os/Handler;

    iput-object p2, p0, Lmm/purchasesdk/ui/l;->a:Landroid/os/Handler;

    if-eqz p1, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p0}, Lmm/purchasesdk/ui/l;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v1

    if-eq v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lmm/purchasesdk/ui/l;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lmm/purchasesdk/l/d;->setContext(Landroid/content/Context;)V

    :cond_1
    invoke-virtual {p0, p5}, Lmm/purchasesdk/ui/l;->a(Lmm/purchasesdk/b/a;)V

    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmm/purchasesdk/ui/l;->e:Landroid/widget/Button;

    return-void
.end method

.method static synthetic a(Lmm/purchasesdk/ui/l;)I
    .locals 1

    invoke-direct {p0}, Lmm/purchasesdk/ui/l;->h()I

    move-result v0

    return v0
.end method

.method static synthetic a(Lmm/purchasesdk/ui/l;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/ui/l;->u:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic a(Lmm/purchasesdk/ui/l;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/ui/l;->b:Landroid/os/Handler;

    return-object v0
.end method

.method private a(Ljava/lang/String;)Landroid/view/View;
    .locals 6

    const/4 v5, -0x1

    const/4 v4, 0x6

    const/16 v3, 0xa

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v5, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {v5, v3, v3}, Lmm/purchasesdk/ui/a;->a(III)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v1, Landroid/widget/TextView;

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lmm/purchasesdk/l/d;->D()Ljava/lang/String;

    move-result-object v2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    const/high16 v2, 0x3f80

    const v3, 0x3fa66666

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setLineSpacing(FF)V

    sget v2, Lmm/purchasesdk/ui/aa;->i:F

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    const v2, -0x7e7e7f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "<a href=\""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lmm/purchasesdk/ui/l;->b:Lmm/purchasesdk/b/a;

    invoke-virtual {v4}, Lmm/purchasesdk/b/a;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</a> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto :goto_0
.end method

.method private a(Lmm/purchasesdk/ui/ab;)Landroid/view/View;
    .locals 7

    const/16 v6, 0xa

    const/4 v3, 0x5

    const/4 v5, -0x1

    const/4 v4, -0x2

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v0, v6, v3, v6, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/TextView;

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v3, 0x3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p1, Lmm/purchasesdk/ui/ab;->au:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v2, p1, Lmm/purchasesdk/ui/ab;->W:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    sget v2, Lmm/purchasesdk/ui/aa;->i:F

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Lmm/purchasesdk/ui/ProductItemView;

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lmm/purchasesdk/ui/ProductItemView;-><init>(Landroid/content/Context;)V

    sget v2, Lmm/purchasesdk/ui/aa;->i:F

    invoke-virtual {v1, v2}, Lmm/purchasesdk/ui/ProductItemView;->setTextSize(F)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Lmm/purchasesdk/ui/ProductItemView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p1, Lmm/purchasesdk/ui/ab;->mValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lmm/purchasesdk/ui/ProductItemView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Lmm/purchasesdk/ui/ProductItemView;->setSingleLine()V

    const-string v2, "MARQUEE"

    invoke-static {v2}, Landroid/text/TextUtils$TruncateAt;->valueOf(Ljava/lang/String;)Landroid/text/TextUtils$TruncateAt;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmm/purchasesdk/ui/ProductItemView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {v1, v5}, Lmm/purchasesdk/ui/ProductItemView;->setMarqueeRepeatLimit(I)V

    iget v2, p1, Lmm/purchasesdk/ui/ab;->X:I

    invoke-virtual {v1, v2}, Lmm/purchasesdk/ui/ProductItemView;->setTextColor(I)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private a(Lmm/purchasesdk/ui/ab;Lmm/purchasesdk/ui/ab;)Landroid/view/View;
    .locals 9

    const/4 v4, 0x5

    const/high16 v8, 0x3f80

    const/4 v7, -0x1

    const/4 v6, 0x0

    const/4 v5, -0x2

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v7, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xa

    const/16 v3, 0xa

    invoke-virtual {v0, v2, v4, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v6, v5, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v3, p1, Lmm/purchasesdk/ui/ab;->au:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v4, 0x3

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v4, p1, Lmm/purchasesdk/ui/ab;->W:I

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    sget v4, Lmm/purchasesdk/ui/aa;->i:F

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Lmm/purchasesdk/ui/ProductItemView;

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Lmm/purchasesdk/ui/ProductItemView;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4}, Lmm/purchasesdk/ui/ProductItemView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget v4, Lmm/purchasesdk/ui/aa;->i:F

    invoke-virtual {v2, v4}, Lmm/purchasesdk/ui/ProductItemView;->setTextSize(F)V

    invoke-virtual {v2}, Lmm/purchasesdk/ui/ProductItemView;->setSingleLine()V

    const-string v4, "MARQUEE"

    invoke-static {v4}, Landroid/text/TextUtils$TruncateAt;->valueOf(Ljava/lang/String;)Landroid/text/TextUtils$TruncateAt;

    move-result-object v4

    invoke-virtual {v2, v4}, Lmm/purchasesdk/ui/ProductItemView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {v2, v7}, Lmm/purchasesdk/ui/ProductItemView;->setMarqueeRepeatLimit(I)V

    iget-object v4, p1, Lmm/purchasesdk/ui/ab;->mValue:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lmm/purchasesdk/ui/ProductItemView;->setText(Ljava/lang/CharSequence;)V

    iget v4, p1, Lmm/purchasesdk/ui/ab;->X:I

    invoke-virtual {v2, v4}, Lmm/purchasesdk/ui/ProductItemView;->setTextColor(I)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v6, v5, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p2, Lmm/purchasesdk/ui/ab;->au:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v3, p2, Lmm/purchasesdk/ui/ab;->W:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    sget v3, Lmm/purchasesdk/ui/aa;->i:F

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Lmm/purchasesdk/ui/ProductItemView;

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lmm/purchasesdk/ui/ProductItemView;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Lmm/purchasesdk/ui/ProductItemView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget v3, Lmm/purchasesdk/ui/aa;->i:F

    invoke-virtual {v2, v3}, Lmm/purchasesdk/ui/ProductItemView;->setTextSize(F)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lmm/purchasesdk/ui/ProductItemView;->setSingleLine(Z)V

    invoke-virtual {v2}, Lmm/purchasesdk/ui/ProductItemView;->setSingleLine()V

    const-string v3, "MARQUEE"

    invoke-static {v3}, Landroid/text/TextUtils$TruncateAt;->valueOf(Ljava/lang/String;)Landroid/text/TextUtils$TruncateAt;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmm/purchasesdk/ui/ProductItemView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {v2, v7}, Lmm/purchasesdk/ui/ProductItemView;->setMarqueeRepeatLimit(I)V

    iget-object v3, p2, Lmm/purchasesdk/ui/ab;->mValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lmm/purchasesdk/ui/ProductItemView;->setText(Ljava/lang/CharSequence;)V

    iget v3, p2, Lmm/purchasesdk/ui/ab;->X:I

    invoke-virtual {v2, v3}, Lmm/purchasesdk/ui/ProductItemView;->setTextColor(I)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private a(Lmm/purchasesdk/ui/ab;Lmm/purchasesdk/ui/ab;Lmm/purchasesdk/ui/ab;)Landroid/view/View;
    .locals 6

    const/16 v5, 0xa

    const/4 v4, 0x5

    const/4 v3, -0x2

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v5, v4, v5, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-direct {p0, p1, v1}, Lmm/purchasesdk/ui/l;->a(Lmm/purchasesdk/ui/ab;Landroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-direct {p0, p2, v1}, Lmm/purchasesdk/ui/l;->a(Lmm/purchasesdk/ui/ab;Landroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-direct {p0, p3, v1}, Lmm/purchasesdk/ui/l;->a(Lmm/purchasesdk/ui/ab;Landroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method static synthetic a(Lmm/purchasesdk/ui/l;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/ui/l;->d:Landroid/view/View;

    return-object v0
.end method

.method static synthetic a(Lmm/purchasesdk/ui/l;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/ui/l;->d:Landroid/widget/EditText;

    return-object v0
.end method

.method private a(Landroid/graphics/Bitmap;)Landroid/widget/ImageView;
    .locals 4

    new-instance v0, Landroid/widget/ImageView;

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p1, :cond_1

    iget-object v1, p0, Lmm/purchasesdk/ui/l;->A:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lmm/purchasesdk/ui/l;->A:Landroid/graphics/drawable/Drawable;

    :cond_0
    iget-object v1, p0, Lmm/purchasesdk/ui/l;->A:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-object v0
.end method

.method static synthetic a(Lmm/purchasesdk/ui/l;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/ui/l;->a:Landroid/widget/ImageView;

    return-object v0
.end method

.method private a(Lmm/purchasesdk/ui/ab;Landroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;
    .locals 5

    const/4 v4, 0x0

    const/4 v3, -0x2

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x3f80

    invoke-direct {v1, v4, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/TextView;

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v2, p1, Lmm/purchasesdk/ui/ab;->au:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v2, p1, Lmm/purchasesdk/ui/ab;->W:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    sget v2, Lmm/purchasesdk/ui/aa;->i:F

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Lmm/purchasesdk/ui/ProductItemView;

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lmm/purchasesdk/ui/ProductItemView;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Lmm/purchasesdk/ui/ProductItemView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget v2, Lmm/purchasesdk/ui/aa;->i:F

    invoke-virtual {v1, v2}, Lmm/purchasesdk/ui/ProductItemView;->setTextSize(F)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lmm/purchasesdk/ui/ProductItemView;->setSingleLine(Z)V

    iget-object v2, p1, Lmm/purchasesdk/ui/ab;->mValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lmm/purchasesdk/ui/ProductItemView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Lmm/purchasesdk/ui/ProductItemView;->setSingleLine()V

    const-string v2, "MARQUEE"

    invoke-static {v2}, Landroid/text/TextUtils$TruncateAt;->valueOf(Ljava/lang/String;)Landroid/text/TextUtils$TruncateAt;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmm/purchasesdk/ui/ProductItemView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lmm/purchasesdk/ui/ProductItemView;->setMarqueeRepeatLimit(I)V

    iget v2, p1, Lmm/purchasesdk/ui/ab;->X:I

    invoke-virtual {v1, v2}, Lmm/purchasesdk/ui/ProductItemView;->setTextColor(I)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method static synthetic a(Lmm/purchasesdk/ui/l;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/ui/l;->a:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic a(Lmm/purchasesdk/ui/l;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/ui/l;->a:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic a(Lmm/purchasesdk/ui/l;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/ui/l;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic a(Lmm/purchasesdk/ui/l;)Lmm/purchasesdk/b/a;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/ui/l;->b:Lmm/purchasesdk/b/a;

    return-object v0
.end method

.method static synthetic a(Lmm/purchasesdk/ui/l;)Lmm/purchasesdk/b;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/ui/l;->a:Lmm/purchasesdk/b;

    return-object v0
.end method

.method static synthetic a(Lmm/purchasesdk/ui/l;)Lmm/purchasesdk/ui/d;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/ui/l;->b:Lmm/purchasesdk/ui/d;

    return-object v0
.end method

.method static synthetic a(Lmm/purchasesdk/ui/l;Lmm/purchasesdk/ui/d;)Lmm/purchasesdk/ui/d;
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/ui/l;->b:Lmm/purchasesdk/ui/d;

    return-object p1
.end method

.method static synthetic b(Lmm/purchasesdk/ui/l;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/ui/l;->t:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic b(Lmm/purchasesdk/ui/l;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/ui/l;->a:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic b(Lmm/purchasesdk/ui/l;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/ui/l;->c:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic c(Lmm/purchasesdk/ui/l;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/ui/l;->e:Landroid/widget/EditText;

    return-object v0
.end method

.method private d()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lmm/purchasesdk/ui/l;->t:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "mmiap/image/vertical/editbg.9.png"

    invoke-static {v0, v1}, Lmm/purchasesdk/ui/aa;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/NinePatch;->isNinePatchChunk([B)Z

    new-instance v2, Landroid/graphics/drawable/NinePatchDrawable;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v2, v0, v1, v3, v4}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V

    iput-object v2, p0, Lmm/purchasesdk/ui/l;->t:Landroid/graphics/drawable/Drawable;

    :cond_0
    iget-object v0, p0, Lmm/purchasesdk/ui/l;->u:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "mmiap/image/vertical/editbg_a.9.png"

    invoke-static {v0, v1}, Lmm/purchasesdk/ui/aa;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/NinePatch;->isNinePatchChunk([B)Z

    new-instance v2, Landroid/graphics/drawable/NinePatchDrawable;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v2, v0, v1, v3, v4}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V

    iput-object v2, p0, Lmm/purchasesdk/ui/l;->u:Landroid/graphics/drawable/Drawable;

    :cond_1
    iget-object v0, p0, Lmm/purchasesdk/ui/l;->v:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "mmiap/image/vertical/infobg.9.png"

    invoke-static {v0, v1}, Lmm/purchasesdk/ui/aa;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/NinePatch;->isNinePatchChunk([B)Z

    new-instance v2, Landroid/graphics/drawable/NinePatchDrawable;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v2, v0, v1, v3, v4}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V

    iput-object v2, p0, Lmm/purchasesdk/ui/l;->v:Landroid/graphics/drawable/Drawable;

    :cond_2
    iget-object v0, p0, Lmm/purchasesdk/ui/l;->x:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_3

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "mmiap/image/vertical/infobg.9.png"

    invoke-static {v0, v1}, Lmm/purchasesdk/ui/aa;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/NinePatch;->isNinePatchChunk([B)Z

    new-instance v2, Landroid/graphics/drawable/NinePatchDrawable;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v2, v0, v1, v3, v4}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V

    iput-object v2, p0, Lmm/purchasesdk/ui/l;->x:Landroid/graphics/drawable/Drawable;

    :cond_3
    iget-object v0, p0, Lmm/purchasesdk/ui/l;->y:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_4

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "mmiap/image/vertical/infobg.9.png"

    invoke-static {v0, v1}, Lmm/purchasesdk/ui/aa;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/NinePatch;->isNinePatchChunk([B)Z

    new-instance v2, Landroid/graphics/drawable/NinePatchDrawable;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v2, v0, v1, v3, v4}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V

    iput-object v2, p0, Lmm/purchasesdk/ui/l;->y:Landroid/graphics/drawable/Drawable;

    :cond_4
    iget-object v0, p0, Lmm/purchasesdk/ui/l;->w:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_5

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "mmiap/image/vertical/infobg.9.png"

    invoke-static {v0, v1}, Lmm/purchasesdk/ui/aa;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/NinePatch;->isNinePatchChunk([B)Z

    new-instance v2, Landroid/graphics/drawable/NinePatchDrawable;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v2, v0, v1, v3, v4}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V

    iput-object v2, p0, Lmm/purchasesdk/ui/l;->w:Landroid/graphics/drawable/Drawable;

    :cond_5
    iget-object v0, p0, Lmm/purchasesdk/ui/l;->a:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_6

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "mmiap/image/vertical/bg.png"

    invoke-static {v0, v1}, Lmm/purchasesdk/ui/aa;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_6

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lmm/purchasesdk/ui/l;->a:Landroid/graphics/drawable/Drawable;

    :cond_6
    iget-object v0, p0, Lmm/purchasesdk/ui/l;->z:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_7

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "mmiap/image/vertical/infobg.9.png"

    invoke-static {v0, v1}, Lmm/purchasesdk/ui/aa;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/NinePatch;->isNinePatchChunk([B)Z

    new-instance v2, Landroid/graphics/drawable/NinePatchDrawable;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v2, v0, v1, v3, v4}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V

    iput-object v2, p0, Lmm/purchasesdk/ui/l;->z:Landroid/graphics/drawable/Drawable;

    :cond_7
    return-void
.end method

.method private h()I
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lmm/purchasesdk/l/d;->J()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    const/4 v2, 0x3

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "101"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v2, "110"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v0, "111"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private n()Landroid/view/View;
    .locals 1

    sget-object v0, Lmm/purchasesdk/ui/aa;->d:Ljava/lang/Boolean;

    iput-object v0, p0, Lmm/purchasesdk/ui/l;->d:Ljava/lang/Boolean;

    iget-object v0, p0, Lmm/purchasesdk/ui/l;->d:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmm/purchasesdk/ui/l;->p()Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lmm/purchasesdk/ui/l;->o()Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private o()Landroid/view/View;
    .locals 6

    const/4 v5, -0x1

    const/4 v4, 0x1

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmm/purchasesdk/ui/l;->a:Landroid/widget/LinearLayout;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lmm/purchasesdk/ui/l;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v1, p0, Lmm/purchasesdk/ui/l;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lmm/purchasesdk/ui/l;->h()I

    move-result v0

    if-eq v4, v0, :cond_6

    iget-object v0, p0, Lmm/purchasesdk/ui/l;->a:Landroid/widget/LinearLayout;

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmm/purchasesdk/ui/l;->b(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lmm/purchasesdk/ui/l;->a:Landroid/widget/LinearLayout;

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lmm/purchasesdk/ui/l;->b:Landroid/widget/ImageView;

    iget-object v3, p0, Lmm/purchasesdk/ui/l;->c:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v1, v2, v3}, Lmm/purchasesdk/ui/l;->b(Landroid/content/Context;Landroid/widget/ImageView;Landroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_0
    invoke-direct {p0}, Lmm/purchasesdk/ui/l;->q()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmm/purchasesdk/ui/l;->d:Landroid/view/View;

    iget-object v0, p0, Lmm/purchasesdk/ui/l;->a:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lmm/purchasesdk/ui/l;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lmm/purchasesdk/ui/l;->a:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lmm/purchasesdk/ui/l;->r()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-boolean v0, p0, Lmm/purchasesdk/ui/l;->j:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmm/purchasesdk/ui/l;->a:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lmm/purchasesdk/ui/l;->s()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lmm/purchasesdk/ui/l;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmm/purchasesdk/ui/l;->a:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lmm/purchasesdk/ui/l;->f()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_1
    invoke-direct {p0}, Lmm/purchasesdk/ui/l;->h()I

    move-result v0

    if-ne v4, v0, :cond_2

    iget-object v0, p0, Lmm/purchasesdk/ui/l;->a:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lmm/purchasesdk/ui/l;->w()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_2
    invoke-static {}, Lmm/purchasesdk/l/d;->c()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v4, v0, :cond_3

    iget-object v0, p0, Lmm/purchasesdk/ui/l;->a:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lmm/purchasesdk/ui/l;->t()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_3
    iget-object v0, p0, Lmm/purchasesdk/ui/l;->a:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lmm/purchasesdk/ui/l;->e:Landroid/widget/Button;

    iget-object v2, p0, Lmm/purchasesdk/ui/l;->d:Landroid/view/View$OnClickListener;

    const-string v3, "\u786e \u8ba4 \u652f \u4ed8"

    invoke-virtual {p0, v1, v2, v3}, Lmm/purchasesdk/ui/l;->a(Landroid/widget/Button;Landroid/view/View$OnClickListener;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v0, 0x2

    invoke-direct {p0}, Lmm/purchasesdk/ui/l;->h()I

    move-result v1

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lmm/purchasesdk/ui/l;->a:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lmm/purchasesdk/ui/l;->x()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_4
    iget-object v0, p0, Lmm/purchasesdk/ui/l;->b:Lmm/purchasesdk/b/a;

    invoke-virtual {v0}, Lmm/purchasesdk/b/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmm/purchasesdk/l/d;->K(Ljava/lang/String;)V

    iget-object v1, p0, Lmm/purchasesdk/ui/l;->b:Lmm/purchasesdk/b/a;

    invoke-virtual {v1}, Lmm/purchasesdk/b/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmm/purchasesdk/l/d;->L(Ljava/lang/String;)V

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lmm/purchasesdk/ui/l;->a:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lmm/purchasesdk/ui/l;->b:Lmm/purchasesdk/b/a;

    invoke-virtual {v1}, Lmm/purchasesdk/b/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lmm/purchasesdk/ui/l;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_5
    iget-object v0, p0, Lmm/purchasesdk/ui/l;->a:Landroid/widget/LinearLayout;

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmm/purchasesdk/ui/l;->c(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v1, Landroid/widget/ScrollView;

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lmm/purchasesdk/ui/l;->a:Landroid/widget/ScrollView;

    iget-object v1, p0, Lmm/purchasesdk/ui/l;->a:Landroid/widget/ScrollView;

    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lmm/purchasesdk/ui/l;->a:Landroid/widget/ScrollView;

    invoke-virtual {v0, v4}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    iget-object v0, p0, Lmm/purchasesdk/ui/l;->a:Landroid/widget/ScrollView;

    iget-object v1, p0, Lmm/purchasesdk/ui/l;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lmm/purchasesdk/ui/l;->a:Landroid/widget/ScrollView;

    iget-object v1, p0, Lmm/purchasesdk/ui/l;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lmm/purchasesdk/ui/l;->a:Landroid/widget/ScrollView;

    return-object v0

    :cond_6
    iget-object v0, p0, Lmm/purchasesdk/ui/l;->a:Landroid/widget/LinearLayout;

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lmm/purchasesdk/ui/l;->b:Landroid/widget/ImageView;

    iget-object v3, p0, Lmm/purchasesdk/ui/l;->c:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v1, v2, v3}, Lmm/purchasesdk/ui/l;->a(Landroid/content/Context;Landroid/widget/ImageView;Landroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0
.end method

.method private p()V
    .locals 2

    iget-object v0, p0, Lmm/purchasesdk/ui/l;->d:Landroid/widget/TextView;

    new-instance v1, Lmm/purchasesdk/ui/r;

    invoke-direct {v1, p0}, Lmm/purchasesdk/ui/r;-><init>(Lmm/purchasesdk/ui/l;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private q()Landroid/view/View;
    .locals 8

    const/4 v1, 0x0

    const/4 v5, 0x5

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v4, -0x2

    invoke-direct {v0, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget v2, Lmm/purchasesdk/ui/aa;->R:I

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v3, v5, v1, v5, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v0, p0, Lmm/purchasesdk/ui/l;->w:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "mmiap/image/vertical/infoline.png"

    invoke-static {v0, v2}, Lmm/purchasesdk/ui/aa;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    iget-object v0, p0, Lmm/purchasesdk/ui/l;->b:Lmm/purchasesdk/b/a;

    invoke-virtual {v0}, Lmm/purchasesdk/b/a;->b()Lmm/purchasesdk/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lmm/purchasesdk/b/e;->a()Ljava/util/HashMap;

    move-result-object v5

    iget-object v0, p0, Lmm/purchasesdk/ui/l;->b:Lmm/purchasesdk/b/a;

    invoke-virtual {v0}, Lmm/purchasesdk/b/a;->b()Lmm/purchasesdk/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lmm/purchasesdk/b/e;->a()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v7

    :goto_0
    if-ge v1, v7, :cond_4

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmm/purchasesdk/ui/ab;

    if-nez v1, :cond_1

    invoke-direct {p0, v0}, Lmm/purchasesdk/ui/l;->a(Lmm/purchasesdk/ui/ab;)Landroid/view/View;

    move-result-object v0

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v7, -0x1

    if-eq v1, v0, :cond_0

    invoke-direct {p0, v4}, Lmm/purchasesdk/ui/l;->a(Landroid/graphics/Bitmap;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v7, -0x1

    if-ne v1, v2, :cond_2

    invoke-direct {p0, v0}, Lmm/purchasesdk/ui/l;->a(Lmm/purchasesdk/ui/ab;)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v7, -0x2

    if-ne v1, v2, :cond_3

    invoke-direct {p0, v0}, Lmm/purchasesdk/ui/l;->a(Lmm/purchasesdk/ui/ab;)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmm/purchasesdk/ui/ab;

    invoke-direct {p0, v0, v1}, Lmm/purchasesdk/ui/l;->a(Lmm/purchasesdk/ui/ab;Lmm/purchasesdk/ui/ab;)Landroid/view/View;

    move-result-object v0

    move v1, v2

    goto :goto_1

    :cond_4
    return-object v3
.end method

.method private q()V
    .locals 2

    iget-object v0, p0, Lmm/purchasesdk/ui/l;->e:Landroid/widget/TextView;

    new-instance v1, Lmm/purchasesdk/ui/s;

    invoke-direct {v1, p0}, Lmm/purchasesdk/ui/s;-><init>(Lmm/purchasesdk/ui/l;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private r()Landroid/view/View;
    .locals 7

    const/4 v3, 0x5

    const/4 v6, -0x1

    const/16 v5, 0xa

    const/4 v4, -0x2

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v6, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget v2, Lmm/purchasesdk/ui/aa;->R:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v1, p0, Lmm/purchasesdk/ui/l;->x:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Landroid/widget/TextView;

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v3, 0x3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v1, v5, v5, v5, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v2, "\u624b\u673a\u53f7\u7801:"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, -0x7e7e7f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    sget v2, Lmm/purchasesdk/ui/aa;->i:F

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/TextView;

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sget v2, Lmm/purchasesdk/ui/aa;->i:F

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v6, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lmm/purchasesdk/ui/l;->b:Lmm/purchasesdk/b/a;

    invoke-virtual {v2}, Lmm/purchasesdk/b/a;->b()Lmm/purchasesdk/b/e;

    move-result-object v2

    invoke-virtual {v2}, Lmm/purchasesdk/b/e;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v2, -0x100

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private u()Landroid/view/View;
    .locals 9

    const/4 v2, 0x0

    const/4 v5, 0x5

    new-instance v4, Landroid/widget/LinearLayout;

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v4, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget v1, Lmm/purchasesdk/ui/aa;->R:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v4, v5, v2, v5, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v0, p0, Lmm/purchasesdk/ui/l;->w:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "mmiap/image/vertical/infoline.png"

    invoke-static {v0, v1}, Lmm/purchasesdk/ui/aa;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    iget-object v0, p0, Lmm/purchasesdk/ui/l;->b:Lmm/purchasesdk/b/a;

    invoke-virtual {v0}, Lmm/purchasesdk/b/a;->b()Lmm/purchasesdk/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lmm/purchasesdk/b/e;->a()Ljava/util/HashMap;

    move-result-object v6

    iget-object v0, p0, Lmm/purchasesdk/ui/l;->b:Lmm/purchasesdk/b/a;

    invoke-virtual {v0}, Lmm/purchasesdk/b/a;->b()Lmm/purchasesdk/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lmm/purchasesdk/b/e;->a()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v8

    :goto_0
    if-ge v2, v8, :cond_3

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmm/purchasesdk/ui/ab;

    const/4 v1, 0x0

    if-nez v2, :cond_1

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmm/purchasesdk/ui/ab;

    invoke-direct {p0, v0, v1}, Lmm/purchasesdk/ui/l;->a(Lmm/purchasesdk/ui/ab;Lmm/purchasesdk/ui/ab;)Landroid/view/View;

    move-result-object v0

    move v1, v2

    :goto_1
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v8, -0x1

    if-eq v1, v0, :cond_0

    invoke-direct {p0, v5}, Lmm/purchasesdk/ui/l;->a(Landroid/graphics/Bitmap;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_0
    add-int/lit8 v2, v1, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v3, v8, -0x1

    if-ne v2, v3, :cond_2

    invoke-direct {p0, v0}, Lmm/purchasesdk/ui/l;->a(Lmm/purchasesdk/ui/ab;)Landroid/view/View;

    move-result-object v0

    move v1, v2

    goto :goto_1

    :cond_2
    sub-int v3, v8, v2

    if-lez v3, :cond_4

    sub-int v1, v8, v2

    add-int/lit8 v1, v1, -0x1

    packed-switch v1, :pswitch_data_0

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmm/purchasesdk/ui/ab;

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmm/purchasesdk/ui/ab;

    invoke-direct {p0, v0, v1, v2}, Lmm/purchasesdk/ui/l;->a(Lmm/purchasesdk/ui/ab;Lmm/purchasesdk/ui/ab;Lmm/purchasesdk/ui/ab;)Landroid/view/View;

    move-result-object v0

    move v1, v3

    goto :goto_1

    :pswitch_0
    invoke-direct {p0, v0}, Lmm/purchasesdk/ui/l;->a(Lmm/purchasesdk/ui/ab;)Landroid/view/View;

    move-result-object v0

    move v1, v2

    goto :goto_1

    :pswitch_1
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmm/purchasesdk/ui/ab;

    invoke-direct {p0, v0, v1}, Lmm/purchasesdk/ui/l;->a(Lmm/purchasesdk/ui/ab;Lmm/purchasesdk/ui/ab;)Landroid/view/View;

    move-result-object v0

    move v1, v2

    goto :goto_1

    :cond_3
    return-object v4

    :cond_4
    move-object v0, v1

    move v1, v2

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private w()Landroid/view/View;
    .locals 8

    const/4 v7, 0x5

    const/4 v6, 0x0

    const/4 v5, -0x2

    const/16 v4, 0xa

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x1

    invoke-direct {p0}, Lmm/purchasesdk/ui/l;->h()I

    move-result v3

    if-ne v2, v3, :cond_0

    sget v2, Lmm/purchasesdk/ui/aa;->R:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v7, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v7, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v0, v4, v6, v4, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v2, p0, Lmm/purchasesdk/ui/l;->z:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v1, p0, Lmm/purchasesdk/ui/l;->h:Landroid/graphics/Bitmap;

    if-nez v1, :cond_1

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "mmiap/image/vertical/icon_chifubao.png"

    invoke-static {v1, v2}, Lmm/purchasesdk/ui/aa;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lmm/purchasesdk/ui/l;->h:Landroid/graphics/Bitmap;

    :cond_1
    iget-object v1, p0, Lmm/purchasesdk/ui/l;->h:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    new-instance v1, Landroid/widget/ImageView;

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v2, p0, Lmm/purchasesdk/ui/l;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 v2, 0x2

    invoke-direct {p0}, Lmm/purchasesdk/ui/l;->h()I

    move-result v3

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lmm/purchasesdk/ui/l;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_3
    invoke-direct {p0}, Lmm/purchasesdk/ui/l;->y()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private x()Landroid/view/View;
    .locals 8

    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v5, -0x2

    const/16 v4, 0xa

    const/4 v3, 0x5

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget v2, Lmm/purchasesdk/ui/aa;->R:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v0, v4, v7, v4, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v1, p0, Lmm/purchasesdk/ui/l;->z:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Landroid/widget/TextView;

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v2, "\u60a8\u8fd8\u53ef\u4ee5\u9009\u62e9\uff1a"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, -0x939394

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    sget v2, Lmm/purchasesdk/ui/aa;->i:F

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "mmiap/image/vertical/infoline.png"

    invoke-static {v1, v2}, Lmm/purchasesdk/ui/aa;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {p0, v1}, Lmm/purchasesdk/ui/l;->a(Landroid/graphics/Bitmap;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lmm/purchasesdk/ui/l;->w()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private y()Landroid/view/View;
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, -0x2

    const/4 v3, 0x5

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x10

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v0, v3, v6, v3, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v1, Landroid/widget/TextView;

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v7, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v2, "\u652f\u4ed8\u5b9d\u9875\u9762\u652f\u4ed8"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, -0xffa455

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    sget v2, Lmm/purchasesdk/ui/aa;->j:F

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v2, 0x2

    invoke-direct {p0}, Lmm/purchasesdk/ui/l;->h()I

    move-result v3

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lmm/purchasesdk/ui/l;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/TextView;

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v7, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v2, "\u652f\u6301\u94f6\u884c\u5361\u652f\u4ed8\uff0c\u65e0\u9700\u767b\u5f55"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, -0x939394

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    sget v2, Lmm/purchasesdk/ui/aa;->i:F

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method


# virtual methods
.method public a(Lmm/purchasesdk/b/a;)V
    .locals 1

    iput-object p1, p0, Lmm/purchasesdk/ui/l;->b:Lmm/purchasesdk/b/a;

    invoke-virtual {p1}, Lmm/purchasesdk/b/a;->b()Z

    move-result v0

    iput-boolean v0, p0, Lmm/purchasesdk/ui/l;->j:Z

    invoke-virtual {p1}, Lmm/purchasesdk/b/a;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lmm/purchasesdk/ui/l;->g:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Lmm/purchasesdk/b/a;->a()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lmm/purchasesdk/ui/l;->a:Ljava/lang/Boolean;

    return-void
.end method

.method public b(Lmm/purchasesdk/b/a;)V
    .locals 4

    const/4 v3, 0x0

    const/16 v2, 0x8

    iput-object p1, p0, Lmm/purchasesdk/ui/l;->b:Lmm/purchasesdk/b/a;

    iget-object v0, p0, Lmm/purchasesdk/ui/l;->b:Lmm/purchasesdk/b/a;

    invoke-virtual {v0}, Lmm/purchasesdk/b/a;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lmm/purchasesdk/ui/l;->g:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lmm/purchasesdk/ui/l;->b:Lmm/purchasesdk/b/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmm/purchasesdk/ui/l;->b:Lmm/purchasesdk/b/a;

    invoke-virtual {v0}, Lmm/purchasesdk/b/a;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmm/purchasesdk/ui/l;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lmm/purchasesdk/ui/l;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lmm/purchasesdk/ui/l;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lmm/purchasesdk/ui/l;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lmm/purchasesdk/ui/l;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lmm/purchasesdk/ui/l;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lmm/purchasesdk/ui/l;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lmm/purchasesdk/ui/l;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public dismiss()V
    .locals 0

    invoke-super {p0}, Lmm/purchasesdk/ui/b;->dismiss()V

    return-void
.end method

.method public f()Landroid/view/View;
    .locals 12

    const/16 v11, 0xa

    const/4 v10, 0x0

    const/4 v9, 0x5

    const/4 v8, 0x1

    const/4 v7, -0x2

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget v2, Lmm/purchasesdk/ui/aa;->R:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v9, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v9, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v0, v11, v9, v11, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v1, p0, Lmm/purchasesdk/ui/l;->v:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v11, v9, v11, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v3, "\u9a8c\u8bc1\u7801:"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v4, 0x6

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    const/16 v4, 0x10

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v4, -0x7e7e7f

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    sget v4, Lmm/purchasesdk/ui/aa;->i:F

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/ImageView;

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lmm/purchasesdk/ui/l;->a:Landroid/widget/ImageView;

    iget-object v2, p0, Lmm/purchasesdk/ui/l;->a:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lmm/purchasesdk/ui/l;->g:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lmm/purchasesdk/ui/l;->a:Landroid/widget/ImageView;

    iget-object v4, p0, Lmm/purchasesdk/ui/l;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    :goto_0
    iget-object v2, p0, Lmm/purchasesdk/ui/l;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/ProgressBar;

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    const v6, 0x1010079

    invoke-direct {v2, v4, v5, v6}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v2, p0, Lmm/purchasesdk/ui/l;->a:Landroid/widget/ProgressBar;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xd

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v4, p0, Lmm/purchasesdk/ui/l;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v2}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lmm/purchasesdk/ui/l;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v8}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    iget-object v2, p0, Lmm/purchasesdk/ui/l;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v10}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v2, p0, Lmm/purchasesdk/ui/l;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lmm/purchasesdk/ui/l;->c:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v4, p0, Lmm/purchasesdk/ui/l;->c:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lmm/purchasesdk/ui/l;->c:Landroid/widget/TextView;

    const/16 v4, 0x11

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v2, p0, Lmm/purchasesdk/ui/l;->c:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lmm/purchasesdk/ui/l;->c:Landroid/widget/TextView;

    const-string v4, "\u5237\u65b0\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5"

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lmm/purchasesdk/ui/l;->c:Landroid/widget/TextView;

    const/high16 v4, -0x1

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lmm/purchasesdk/ui/l;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lmm/purchasesdk/ui/l;->d:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0x10

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v4, p0, Lmm/purchasesdk/ui/l;->d:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lmm/purchasesdk/ui/l;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v8, v8, v8, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v2, p0, Lmm/purchasesdk/ui/l;->d:Landroid/widget/TextView;

    const-string v4, "<u>\u770b\u4e0d\u6e05</u>"

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lmm/purchasesdk/ui/l;->d:Landroid/widget/TextView;

    sget v4, Lmm/purchasesdk/ui/aa;->i:F

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v2, p0, Lmm/purchasesdk/ui/l;->d:Landroid/widget/TextView;

    const v4, -0xffff01

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-direct {p0}, Lmm/purchasesdk/ui/l;->p()V

    iget-object v2, p0, Lmm/purchasesdk/ui/l;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v2, v4, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v11, v9, v11, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v4, "\u8bf7\u8f93\u5165\u7b54\u6848:"

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x3f80

    invoke-direct {v4, v10, v7, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/4 v5, 0x6

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    const/16 v5, 0x10

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v3, -0x7e7e7f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    sget v3, Lmm/purchasesdk/ui/aa;->i:F

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/EditText;

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lmm/purchasesdk/ui/l;->c:Landroid/widget/EditText;

    sget v2, Lmm/purchasesdk/l/d;->k:F

    const/high16 v3, 0x3f80

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    iget-object v2, p0, Lmm/purchasesdk/ui/l;->c:Landroid/widget/EditText;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v4, 0x1e

    const/high16 v5, 0x3f80

    invoke-direct {v3, v10, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    iget-object v2, p0, Lmm/purchasesdk/ui/l;->c:Landroid/widget/EditText;

    iget-object v3, p0, Lmm/purchasesdk/ui/l;->a:Landroid/view/View$OnKeyListener;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v2, p0, Lmm/purchasesdk/ui/l;->c:Landroid/widget/EditText;

    iget-object v3, p0, Lmm/purchasesdk/ui/l;->a:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v2, p0, Lmm/purchasesdk/ui/l;->c:Landroid/widget/EditText;

    iget-object v3, p0, Lmm/purchasesdk/ui/l;->a:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v2, p0, Lmm/purchasesdk/ui/l;->c:Landroid/widget/EditText;

    invoke-virtual {v2, v8}, Landroid/widget/EditText;->setCursorVisible(Z)V

    iget-object v2, p0, Lmm/purchasesdk/ui/l;->c:Landroid/widget/EditText;

    invoke-virtual {v2, v8}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    iget-object v2, p0, Lmm/purchasesdk/ui/l;->c:Landroid/widget/EditText;

    iget-object v3, p0, Lmm/purchasesdk/ui/l;->u:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lmm/purchasesdk/ui/l;->c:Landroid/widget/EditText;

    invoke-virtual {v2, v10}, Landroid/widget/EditText;->setId(I)V

    iget-object v2, p0, Lmm/purchasesdk/ui/l;->c:Landroid/widget/EditText;

    const-string v3, "\u9a8c\u8bc1\u7801\u7b54\u6848"

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lmm/purchasesdk/ui/l;->c:Landroid/widget/EditText;

    invoke-virtual {v2, v10}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v2, p0, Lmm/purchasesdk/ui/l;->c:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x3f80

    invoke-direct {v3, v10, v7, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v0

    :cond_1
    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "mmiap/image/vertical/yanzhengma_bg.png"

    invoke-static {v2, v4}, Lmm/purchasesdk/ui/aa;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v4, p0, Lmm/purchasesdk/ui/l;->a:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    :cond_2
    iget-object v2, p0, Lmm/purchasesdk/ui/l;->c:Landroid/widget/EditText;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x3f80

    invoke-direct {v3, v10, v7, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/ui/l;->d:Landroid/widget/EditText;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmm/purchasesdk/ui/l;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/ui/l;->e:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmm/purchasesdk/ui/l;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method protected onStop()V
    .locals 0

    invoke-super {p0}, Lmm/purchasesdk/ui/b;->onStop()V

    return-void
.end method

.method public p()Landroid/view/View;
    .locals 6

    const/4 v5, -0x1

    const/4 v4, 0x1

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmm/purchasesdk/ui/l;->a:Landroid/widget/LinearLayout;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lmm/purchasesdk/ui/l;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v1, p0, Lmm/purchasesdk/ui/l;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lmm/purchasesdk/ui/l;->h()I

    move-result v0

    if-eq v4, v0, :cond_6

    iget-object v0, p0, Lmm/purchasesdk/ui/l;->a:Landroid/widget/LinearLayout;

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmm/purchasesdk/ui/l;->b(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lmm/purchasesdk/ui/l;->a:Landroid/widget/LinearLayout;

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lmm/purchasesdk/ui/l;->b:Landroid/widget/ImageView;

    iget-object v3, p0, Lmm/purchasesdk/ui/l;->c:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v1, v2, v3}, Lmm/purchasesdk/ui/l;->b(Landroid/content/Context;Landroid/widget/ImageView;Landroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_0
    invoke-direct {p0}, Lmm/purchasesdk/ui/l;->u()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmm/purchasesdk/ui/l;->d:Landroid/view/View;

    iget-object v0, p0, Lmm/purchasesdk/ui/l;->a:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lmm/purchasesdk/ui/l;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lmm/purchasesdk/ui/l;->a:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lmm/purchasesdk/ui/l;->r()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-boolean v0, p0, Lmm/purchasesdk/ui/l;->j:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmm/purchasesdk/ui/l;->a:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lmm/purchasesdk/ui/l;->s()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lmm/purchasesdk/ui/l;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmm/purchasesdk/ui/l;->a:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lmm/purchasesdk/ui/l;->v()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_1
    invoke-direct {p0}, Lmm/purchasesdk/ui/l;->h()I

    move-result v0

    if-ne v4, v0, :cond_2

    iget-object v0, p0, Lmm/purchasesdk/ui/l;->a:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lmm/purchasesdk/ui/l;->w()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_2
    invoke-static {}, Lmm/purchasesdk/l/d;->c()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v4, v0, :cond_3

    iget-object v0, p0, Lmm/purchasesdk/ui/l;->a:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lmm/purchasesdk/ui/l;->t()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_3
    iget-object v0, p0, Lmm/purchasesdk/ui/l;->a:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lmm/purchasesdk/ui/l;->e:Landroid/widget/Button;

    iget-object v2, p0, Lmm/purchasesdk/ui/l;->d:Landroid/view/View$OnClickListener;

    const-string v3, "\u786e \u8ba4 \u652f \u4ed8"

    invoke-virtual {p0, v1, v2, v3}, Lmm/purchasesdk/ui/l;->a(Landroid/widget/Button;Landroid/view/View$OnClickListener;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v0, 0x2

    invoke-direct {p0}, Lmm/purchasesdk/ui/l;->h()I

    move-result v1

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lmm/purchasesdk/ui/l;->a:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lmm/purchasesdk/ui/l;->x()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_4
    iget-object v0, p0, Lmm/purchasesdk/ui/l;->b:Lmm/purchasesdk/b/a;

    invoke-virtual {v0}, Lmm/purchasesdk/b/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmm/purchasesdk/l/d;->K(Ljava/lang/String;)V

    iget-object v1, p0, Lmm/purchasesdk/ui/l;->b:Lmm/purchasesdk/b/a;

    invoke-virtual {v1}, Lmm/purchasesdk/b/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmm/purchasesdk/l/d;->L(Ljava/lang/String;)V

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lmm/purchasesdk/ui/l;->a:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lmm/purchasesdk/ui/l;->b:Lmm/purchasesdk/b/a;

    invoke-virtual {v1}, Lmm/purchasesdk/b/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lmm/purchasesdk/ui/l;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_5
    iget-object v0, p0, Lmm/purchasesdk/ui/l;->a:Landroid/widget/LinearLayout;

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmm/purchasesdk/ui/l;->c(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/ScrollView;

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmm/purchasesdk/ui/l;->a:Landroid/widget/ScrollView;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lmm/purchasesdk/ui/l;->a:Landroid/widget/ScrollView;

    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lmm/purchasesdk/ui/l;->a:Landroid/widget/ScrollView;

    invoke-virtual {v0, v4}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    iget-object v0, p0, Lmm/purchasesdk/ui/l;->a:Landroid/widget/ScrollView;

    iget-object v1, p0, Lmm/purchasesdk/ui/l;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lmm/purchasesdk/ui/l;->a:Landroid/widget/ScrollView;

    iget-object v1, p0, Lmm/purchasesdk/ui/l;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lmm/purchasesdk/ui/l;->a:Landroid/widget/ScrollView;

    return-object v0

    :cond_6
    iget-object v0, p0, Lmm/purchasesdk/ui/l;->a:Landroid/widget/LinearLayout;

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lmm/purchasesdk/ui/l;->b:Landroid/widget/ImageView;

    iget-object v3, p0, Lmm/purchasesdk/ui/l;->c:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v1, v2, v3}, Lmm/purchasesdk/ui/l;->a(Landroid/content/Context;Landroid/widget/ImageView;Landroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0
.end method

.method public s()Landroid/view/View;
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, -0x1

    const/4 v6, 0x5

    const/4 v5, -0x2

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v7, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget v2, Lmm/purchasesdk/ui/aa;->R:I

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v6, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v6, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, p0, Lmm/purchasesdk/ui/l;->y:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v0, Landroid/widget/TextView;

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v3, 0x3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    const/16 v3, 0xa

    const/16 v4, 0xa

    invoke-virtual {v0, v3, v6, v4, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v2, "\u652f\u4ed8\u5bc6\u7801:"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, -0x7e7e7f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    sget v2, Lmm/purchasesdk/ui/aa;->i:F

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/EditText;

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmm/purchasesdk/ui/l;->d:Landroid/widget/EditText;

    iget-object v0, p0, Lmm/purchasesdk/ui/l;->d:Landroid/widget/EditText;

    invoke-virtual {v0, v8}, Landroid/widget/EditText;->setId(I)V

    sget v0, Lmm/purchasesdk/l/d;->k:F

    const/high16 v2, 0x3f80

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v2, 0x1e

    invoke-direct {v0, v7, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    :goto_0
    const/4 v2, 0x4

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iget-object v2, p0, Lmm/purchasesdk/ui/l;->d:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lmm/purchasesdk/ui/l;->d:Landroid/widget/EditText;

    iget-object v2, p0, Lmm/purchasesdk/ui/l;->a:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lmm/purchasesdk/ui/l;->d:Landroid/widget/EditText;

    iget-object v2, p0, Lmm/purchasesdk/ui/l;->a:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Lmm/purchasesdk/ui/l;->d:Landroid/widget/EditText;

    iget-object v2, p0, Lmm/purchasesdk/ui/l;->a:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lmm/purchasesdk/ui/l;->d:Landroid/widget/EditText;

    invoke-virtual {v0, v8}, Landroid/widget/EditText;->setCursorVisible(Z)V

    iget-object v0, p0, Lmm/purchasesdk/ui/l;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->setSingleLine()V

    iget-object v0, p0, Lmm/purchasesdk/ui/l;->d:Landroid/widget/EditText;

    invoke-virtual {v0, v8}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lmm/purchasesdk/ui/l;->d:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    iget-object v0, p0, Lmm/purchasesdk/ui/l;->d:Landroid/widget/EditText;

    iget-object v2, p0, Lmm/purchasesdk/ui/l;->u:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lmm/purchasesdk/ui/l;->d:Landroid/widget/EditText;

    const-string v2, "\u8bf7\u8f93\u5165\u652f\u4ed8\u5bc6\u7801"

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lmm/purchasesdk/ui/l;->d:Landroid/widget/EditText;

    invoke-virtual {v0, v9}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v0, p0, Lmm/purchasesdk/ui/l;->d:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v1

    :cond_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v7, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto :goto_0
.end method

.method public show()V
    .locals 1

    invoke-direct {p0}, Lmm/purchasesdk/ui/l;->d()V

    invoke-direct {p0}, Lmm/purchasesdk/ui/l;->n()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmm/purchasesdk/ui/l;->setContentView(Landroid/view/View;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmm/purchasesdk/ui/l;->setCancelable(Z)V

    invoke-super {p0}, Lmm/purchasesdk/ui/b;->show()V

    return-void
.end method

.method public t()Landroid/view/View;
    .locals 9

    const/16 v8, 0x10

    const/16 v7, 0xa

    const/4 v4, 0x5

    const/4 v6, 0x1

    const/4 v5, -0x2

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget v2, Lmm/purchasesdk/ui/aa;->R:I

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v1, v7, v4, v7, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v0, p0, Lmm/purchasesdk/ui/l;->v:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v0, v3, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v7, v4, v7, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v0, Landroid/widget/TextView;

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v3, "\u624b\u673a\u9a8c\u8bc1\u7801:"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v4, 0x6

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput v8, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v3, -0x7e7e7f

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    sget v3, Lmm/purchasesdk/ui/aa;->i:F

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/EditText;

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmm/purchasesdk/ui/l;->e:Landroid/widget/EditText;

    sget v0, Lmm/purchasesdk/l/d;->k:F

    const/high16 v3, 0x3f80

    cmpg-float v0, v0, v3

    if-gez v0, :cond_0

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v3, 0x1e

    invoke-direct {v0, v5, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    :goto_0
    iput v8, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v3, p0, Lmm/purchasesdk/ui/l;->e:Landroid/widget/EditText;

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lmm/purchasesdk/ui/l;->e:Landroid/widget/EditText;

    iget-object v3, p0, Lmm/purchasesdk/ui/l;->a:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Lmm/purchasesdk/ui/l;->e:Landroid/widget/EditText;

    iget-object v3, p0, Lmm/purchasesdk/ui/l;->a:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lmm/purchasesdk/ui/l;->e:Landroid/widget/EditText;

    iget-object v3, p0, Lmm/purchasesdk/ui/l;->a:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lmm/purchasesdk/ui/l;->e:Landroid/widget/EditText;

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setCursorVisible(Z)V

    iget-object v0, p0, Lmm/purchasesdk/ui/l;->e:Landroid/widget/EditText;

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lmm/purchasesdk/ui/l;->e:Landroid/widget/EditText;

    iget-object v3, p0, Lmm/purchasesdk/ui/l;->u:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lmm/purchasesdk/ui/l;->e:Landroid/widget/EditText;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setId(I)V

    iget-object v0, p0, Lmm/purchasesdk/ui/l;->e:Landroid/widget/EditText;

    const-string v3, "\u9a8c\u8bc1\u7801\u7b54\u6848"

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lmm/purchasesdk/ui/l;->e:Landroid/widget/EditText;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v0, p0, Lmm/purchasesdk/ui/l;->e:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmm/purchasesdk/ui/l;->e:Landroid/widget/TextView;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v8, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v3, p0, Lmm/purchasesdk/ui/l;->e:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lmm/purchasesdk/ui/l;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v6, v6, v6, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v0, p0, Lmm/purchasesdk/ui/l;->e:Landroid/widget/TextView;

    const-string v3, "<u>\u83b7\u53d6\u9a8c\u8bc1\u7801</u>"

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lmm/purchasesdk/ui/l;->e:Landroid/widget/TextView;

    sget v3, Lmm/purchasesdk/ui/aa;->i:F

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lmm/purchasesdk/ui/l;->e:Landroid/widget/TextView;

    const v3, -0xffff01

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-direct {p0}, Lmm/purchasesdk/ui/l;->q()V

    iget-object v0, p0, Lmm/purchasesdk/ui/l;->e:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v1

    :cond_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto/16 :goto_0
.end method

.method public v()Landroid/view/View;
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/16 v7, 0xa

    const/4 v6, 0x5

    const/4 v5, -0x2

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget v2, Lmm/purchasesdk/ui/aa;->R:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v6, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v6, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v0, v7, v6, v7, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v1, p0, Lmm/purchasesdk/ui/l;->v:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Landroid/widget/TextView;

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v2, "\u8bf7\u8f93\u5165\u7b54\u6848:"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v7, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    const/16 v3, 0x10

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v1, v7, v6, v8, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v3, -0x7e7e7f

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    sget v3, Lmm/purchasesdk/ui/aa;->i:F

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/ImageView;

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lmm/purchasesdk/ui/l;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lmm/purchasesdk/ui/l;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lmm/purchasesdk/ui/l;->g:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lmm/purchasesdk/ui/l;->a:Landroid/widget/ImageView;

    iget-object v3, p0, Lmm/purchasesdk/ui/l;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    :goto_0
    iget-object v1, p0, Lmm/purchasesdk/ui/l;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/ProgressBar;

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lmm/purchasesdk/ui/l;->a:Landroid/widget/ProgressBar;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xd

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v3, p0, Lmm/purchasesdk/ui/l;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v1}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lmm/purchasesdk/ui/l;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v9}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    iget-object v1, p0, Lmm/purchasesdk/ui/l;->a:Landroid/widget/ProgressBar;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v1, p0, Lmm/purchasesdk/ui/l;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/TextView;

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lmm/purchasesdk/ui/l;->c:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v3, p0, Lmm/purchasesdk/ui/l;->c:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lmm/purchasesdk/ui/l;->c:Landroid/widget/TextView;

    const/16 v3, 0x11

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v1, p0, Lmm/purchasesdk/ui/l;->c:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lmm/purchasesdk/ui/l;->c:Landroid/widget/TextView;

    const-string v3, "\u5237\u65b0\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5"

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lmm/purchasesdk/ui/l;->c:Landroid/widget/TextView;

    const/high16 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lmm/purchasesdk/ui/l;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/TextView;

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lmm/purchasesdk/ui/l;->d:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v7, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    const/16 v3, 0x10

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v3, p0, Lmm/purchasesdk/ui/l;->d:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lmm/purchasesdk/ui/l;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v9, v9, v9, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v1, p0, Lmm/purchasesdk/ui/l;->d:Landroid/widget/TextView;

    const-string v3, "<u>\u770b\u4e0d\u6e05</u>"

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lmm/purchasesdk/ui/l;->d:Landroid/widget/TextView;

    sget v3, Lmm/purchasesdk/ui/aa;->i:F

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v1, p0, Lmm/purchasesdk/ui/l;->d:Landroid/widget/TextView;

    const v3, -0xffff01

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-direct {p0}, Lmm/purchasesdk/ui/l;->p()V

    iget-object v1, p0, Lmm/purchasesdk/ui/l;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/TextView;

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v3, "\u8bf7\u8f93\u5165\u7b54\u6848:"

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x3f80

    invoke-direct {v3, v8, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iput v7, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    const/4 v4, 0x4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    const/16 v4, 0x10

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v2, -0x7e7e7f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    sget v2, Lmm/purchasesdk/ui/aa;->i:F

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/EditText;

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lmm/purchasesdk/ui/l;->c:Landroid/widget/EditText;

    iget-object v1, p0, Lmm/purchasesdk/ui/l;->c:Landroid/widget/EditText;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f80

    invoke-direct {v2, v8, v5, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lmm/purchasesdk/ui/l;->c:Landroid/widget/EditText;

    iget-object v2, p0, Lmm/purchasesdk/ui/l;->a:Landroid/view/View$OnKeyListener;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v1, p0, Lmm/purchasesdk/ui/l;->c:Landroid/widget/EditText;

    iget-object v2, p0, Lmm/purchasesdk/ui/l;->a:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v1, p0, Lmm/purchasesdk/ui/l;->c:Landroid/widget/EditText;

    iget-object v2, p0, Lmm/purchasesdk/ui/l;->a:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Lmm/purchasesdk/ui/l;->c:Landroid/widget/EditText;

    invoke-virtual {v1, v9}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    iget-object v1, p0, Lmm/purchasesdk/ui/l;->c:Landroid/widget/EditText;

    iget-object v2, p0, Lmm/purchasesdk/ui/l;->u:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lmm/purchasesdk/ui/l;->c:Landroid/widget/EditText;

    invoke-virtual {v1, v8}, Landroid/widget/EditText;->setId(I)V

    iget-object v1, p0, Lmm/purchasesdk/ui/l;->c:Landroid/widget/EditText;

    const-string v2, "\u9a8c\u8bc1\u7801\u7b54\u6848"

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lmm/purchasesdk/ui/l;->c:Landroid/widget/EditText;

    invoke-virtual {v1, v8}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v1, p0, Lmm/purchasesdk/ui/l;->c:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/TextView;

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f80

    invoke-direct {v2, v8, v5, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v7, v6, v7, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0

    :cond_1
    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "mmiap/image/vertical/yanzhengma_bg.png"

    invoke-static {v1, v3}, Lmm/purchasesdk/ui/aa;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lmm/purchasesdk/ui/l;->a:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0
.end method

.method public y()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/ui/l;->c:Landroid/widget/EditText;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmm/purchasesdk/ui/l;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
