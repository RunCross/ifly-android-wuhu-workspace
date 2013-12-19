.class public Lmm/purchasesdk/c/a;
.super Lmm/purchasesdk/ui/b;


# static fields
.field public static m:I

.field public static n:I


# instance fields
.field private final S:Ljava/lang/String;

.field private T:Ljava/lang/String;

.field private a:Landroid/graphics/drawable/Drawable;

.field private a:Landroid/view/View$OnClickListener;

.field private a:Landroid/view/View$OnTouchListener;

.field private a:Landroid/widget/Button;

.field private a:Landroid/widget/EditText;

.field private a:Landroid/widget/LinearLayout;

.field private a:Landroid/widget/ScrollView;

.field private a:Landroid/widget/TextView;

.field private a:Lmm/purchasesdk/b;

.field private a:Lmm/purchasesdk/c/m;

.field private b:Landroid/graphics/drawable/Drawable;

.field private b:Landroid/os/Handler;

.field private b:Landroid/widget/Button;

.field private b:Landroid/widget/EditText;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/graphics/drawable/Drawable;

.field private c:Landroid/os/Handler;

.field private c:Landroid/widget/Button;

.field private d:Landroid/graphics/drawable/Drawable;

.field private d:Landroid/os/Handler;

.field private d:Ljava/lang/Boolean;

.field private e:Landroid/graphics/drawable/Drawable;

.field private e:Landroid/os/Handler;

.field private f:I

.field private f:Landroid/graphics/drawable/Drawable;

.field private g:I

.field private g:Landroid/graphics/drawable/Drawable;

.field private h:I

.field private h:Landroid/graphics/drawable/Drawable;

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x3c

    sput v0, Lmm/purchasesdk/c/a;->m:I

    const/16 v0, 0xf

    sput v0, Lmm/purchasesdk/c/a;->n:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lmm/purchasesdk/b;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 6

    const/16 v5, 0x14

    const/16 v4, 0xa

    const/16 v3, 0xf

    const/4 v2, 0x5

    const/4 v1, 0x0

    const v0, 0x1030005

    invoke-direct {p0, p1, v0}, Lmm/purchasesdk/ui/b;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lmm/purchasesdk/c/a;->d:Ljava/lang/Boolean;

    iput-object v1, p0, Lmm/purchasesdk/c/a;->b:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lmm/purchasesdk/c/a;->c:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lmm/purchasesdk/c/a;->d:Landroid/graphics/drawable/Drawable;

    const-string v0, "\u6211\u7684\u8bbe\u5907"

    iput-object v0, p0, Lmm/purchasesdk/c/a;->S:Ljava/lang/String;

    iput-object v1, p0, Lmm/purchasesdk/c/a;->e:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lmm/purchasesdk/c/a;->f:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lmm/purchasesdk/c/a;->g:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lmm/purchasesdk/c/a;->h:Landroid/graphics/drawable/Drawable;

    iput v2, p0, Lmm/purchasesdk/c/a;->f:I

    iput v5, p0, Lmm/purchasesdk/c/a;->g:I

    const/16 v0, 0x19

    iput v0, p0, Lmm/purchasesdk/c/a;->h:I

    iput v3, p0, Lmm/purchasesdk/c/a;->i:I

    iput v5, p0, Lmm/purchasesdk/c/a;->j:I

    iput v3, p0, Lmm/purchasesdk/c/a;->k:I

    iput v2, p0, Lmm/purchasesdk/c/a;->l:I

    iput v2, p0, Lmm/purchasesdk/c/a;->o:I

    iput v4, p0, Lmm/purchasesdk/c/a;->p:I

    iput v3, p0, Lmm/purchasesdk/c/a;->q:I

    iput v4, p0, Lmm/purchasesdk/c/a;->r:I

    iput v2, p0, Lmm/purchasesdk/c/a;->s:I

    const/16 v0, 0x10

    iput v0, p0, Lmm/purchasesdk/c/a;->t:I

    const/4 v0, 0x3

    iput v0, p0, Lmm/purchasesdk/c/a;->u:I

    iput v5, p0, Lmm/purchasesdk/c/a;->v:I

    iput v4, p0, Lmm/purchasesdk/c/a;->w:I

    iput v3, p0, Lmm/purchasesdk/c/a;->x:I

    new-instance v0, Lmm/purchasesdk/c/b;

    invoke-direct {v0, p0}, Lmm/purchasesdk/c/b;-><init>(Lmm/purchasesdk/c/a;)V

    iput-object v0, p0, Lmm/purchasesdk/c/a;->a:Landroid/view/View$OnTouchListener;

    new-instance v0, Lmm/purchasesdk/c/c;

    invoke-direct {v0, p0}, Lmm/purchasesdk/c/c;-><init>(Lmm/purchasesdk/c/a;)V

    iput-object v0, p0, Lmm/purchasesdk/c/a;->e:Landroid/os/Handler;

    new-instance v0, Lmm/purchasesdk/c/d;

    invoke-direct {v0, p0}, Lmm/purchasesdk/c/d;-><init>(Lmm/purchasesdk/c/a;)V

    iput-object v0, p0, Lmm/purchasesdk/c/a;->a:Landroid/view/View$OnClickListener;

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lmm/purchasesdk/c/a;->setOwnerActivity(Landroid/app/Activity;)V

    invoke-virtual {p0}, Lmm/purchasesdk/c/a;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p0}, Lmm/purchasesdk/c/a;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v1

    if-eq v0, v1, :cond_1

    :cond_0
    invoke-static {p1}, Lmm/purchasesdk/l/d;->setContext(Landroid/content/Context;)V

    :cond_1
    iput-object p3, p0, Lmm/purchasesdk/c/a;->c:Landroid/os/Handler;

    iput-object p4, p0, Lmm/purchasesdk/c/a;->b:Landroid/os/Handler;

    iput-object p2, p0, Lmm/purchasesdk/c/a;->a:Lmm/purchasesdk/b;

    new-instance v0, Lmm/purchasesdk/c/m;

    const/16 v1, 0x3c

    invoke-direct {v0, v1, p0}, Lmm/purchasesdk/c/m;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lmm/purchasesdk/c/a;->a:Lmm/purchasesdk/c/m;

    new-instance v0, Lmm/purchasesdk/c/f;

    invoke-direct {v0, p0}, Lmm/purchasesdk/c/f;-><init>(Lmm/purchasesdk/c/a;)V

    iput-object v0, p0, Lmm/purchasesdk/c/a;->d:Landroid/os/Handler;

    new-instance v1, Lmm/purchasesdk/j/e;

    iget-object v2, p0, Lmm/purchasesdk/c/a;->d:Landroid/os/Handler;

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-direct {v1, v2, v0}, Lmm/purchasesdk/j/e;-><init>(Landroid/os/Handler;Landroid/app/Activity;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "content://sms/"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method static synthetic a(Lmm/purchasesdk/c/a;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/c/a;->f:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic a(Lmm/purchasesdk/c/a;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/c/a;->e:Landroid/os/Handler;

    return-object v0
.end method

.method private a()Landroid/view/View;
    .locals 1

    sget-object v0, Lmm/purchasesdk/ui/aa;->d:Ljava/lang/Boolean;

    iput-object v0, p0, Lmm/purchasesdk/c/a;->d:Ljava/lang/Boolean;

    iget-object v0, p0, Lmm/purchasesdk/c/a;->d:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lmm/purchasesdk/c/a;->b()Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lmm/purchasesdk/c/a;->c()Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private a(ILandroid/graphics/drawable/Drawable;)Landroid/view/View;
    .locals 5

    const/4 v4, 0x1

    const/4 v3, -0x1

    new-instance v1, Landroid/widget/EditText;

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setId(I)V

    sget v0, Lmm/purchasesdk/l/d;->k:F

    const/high16 v2, 0x3f80

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v2, 0x1e

    invoke-direct {v0, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lmm/purchasesdk/c/a;->a:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setInputType(I)V

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setCursorVisible(Z)V

    invoke-virtual {v1}, Landroid/widget/EditText;->setSingleLine()V

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    iget v0, p0, Lmm/purchasesdk/c/a;->f:I

    iget v2, p0, Lmm/purchasesdk/c/a;->f:I

    iget v3, p0, Lmm/purchasesdk/c/a;->f:I

    iget v4, p0, Lmm/purchasesdk/c/a;->f:I

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/widget/EditText;->setPadding(IIII)V

    iget v0, p0, Lmm/purchasesdk/c/a;->g:I

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setTextSize(F)V

    invoke-virtual {v1, p2}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object v1

    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v0, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    goto :goto_0
.end method

.method private a(Landroid/content/Context;)Landroid/view/View;
    .locals 5

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget v1, p0, Lmm/purchasesdk/c/a;->l:I

    iget v2, p0, Lmm/purchasesdk/c/a;->l:I

    iget v3, p0, Lmm/purchasesdk/c/a;->l:I

    iget v4, p0, Lmm/purchasesdk/c/a;->l:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lmm/purchasesdk/c/a;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lmm/purchasesdk/c/a;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    iget-object v1, p0, Lmm/purchasesdk/c/a;->b:Landroid/widget/TextView;

    const v2, -0xae9f94

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lmm/purchasesdk/c/a;->b:Landroid/widget/TextView;

    iget v2, p0, Lmm/purchasesdk/c/a;->x:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v1, p0, Lmm/purchasesdk/c/a;->b:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lmm/purchasesdk/c/a;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private a()Landroid/view/animation/Animation;
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v1, 0x4120

    invoke-direct {v0, v2, v1, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    new-instance v1, Landroid/view/animation/CycleInterpolator;

    const/high16 v2, 0x40a0

    invoke-direct {v1, v2}, Landroid/view/animation/CycleInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-object v0
.end method

.method static synthetic a(Lmm/purchasesdk/c/a;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/c/a;->b:Landroid/widget/EditText;

    return-object v0
.end method

.method private a()Landroid/widget/TextView;
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Landroid/widget/TextView;

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget v2, p0, Lmm/purchasesdk/c/a;->v:I

    iget v3, p0, Lmm/purchasesdk/c/a;->w:I

    invoke-virtual {v1, v4, v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "mmiap/image/vertical/line.png"

    invoke-static {v2, v3}, Lmm/purchasesdk/ui/aa;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method private a(Ljava/lang/String;)Landroid/widget/TextView;
    .locals 6

    const/4 v3, -0x2

    new-instance v1, Landroid/widget/TextView;

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sget v0, Lmm/purchasesdk/l/d;->k:F

    const/high16 v2, 0x3f80

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    :goto_0
    iget v2, p0, Lmm/purchasesdk/c/a;->u:I

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget v2, p0, Lmm/purchasesdk/c/a;->r:I

    iget v3, p0, Lmm/purchasesdk/c/a;->s:I

    iget v4, p0, Lmm/purchasesdk/c/a;->r:I

    iget v5, p0, Lmm/purchasesdk/c/a;->s:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, -0x7e7e7f

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget v0, p0, Lmm/purchasesdk/c/a;->t:I

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    return-object v1

    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    goto :goto_0
.end method

.method static synthetic a(Lmm/purchasesdk/c/a;)Ljava/lang/Boolean;
    .locals 1

    invoke-direct {p0}, Lmm/purchasesdk/c/a;->e()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lmm/purchasesdk/c/a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/c/a;->T:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lmm/purchasesdk/c/a;)Lmm/purchasesdk/b;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/c/a;->a:Lmm/purchasesdk/b;

    return-object v0
.end method

.method static synthetic a(Lmm/purchasesdk/c/a;)Lmm/purchasesdk/c/m;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/c/a;->a:Lmm/purchasesdk/c/m;

    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lmm/purchasesdk/c/a;->a:Lmm/purchasesdk/c/m;

    check-cast p1, Landroid/widget/Button;

    invoke-virtual {v0, p1}, Lmm/purchasesdk/c/m;->a(Landroid/widget/Button;)V

    const/16 v0, 0x2d

    sput v0, Lmm/purchasesdk/c/m;->y:I

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lmm/purchasesdk/c/j;

    invoke-direct {v1, p0}, Lmm/purchasesdk/c/j;-><init>(Lmm/purchasesdk/c/a;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private a(Lcom/ccit/mmwlan/vo/SignView;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/high16 v2, -0x1

    invoke-virtual {p1}, Lcom/ccit/mmwlan/vo/SignView;->getResult()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lmm/purchasesdk/c/a;->e()V

    invoke-virtual {p1}, Lcom/ccit/mmwlan/vo/SignView;->getErrMsg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lmm/purchasesdk/c/a;->a(Ljava/lang/String;I)V

    const/4 v0, 0x5

    sput v0, Lmm/purchasesdk/c/m;->y:I

    invoke-direct {p0}, Lmm/purchasesdk/c/a;->g()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const-string v0, "\u751f\u6210SID\u5931\u8d25,\u8bf7\u91cd\u65b0\u7533\u8bf7\u624b\u673a\u6388\u6743\u7801"

    invoke-virtual {p0, v0, v2}, Lmm/purchasesdk/c/a;->a(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lmm/purchasesdk/c/a;->i()V

    sput v3, Lmm/purchasesdk/c/m;->y:I

    invoke-static {v4}, Lcom/ccit/mmwlan/MMClientSDK_ForPad;->DestorySecCert(Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    const-string v0, "\u51c6\u5907PKI\u5bc6\u94a5\u5bf9\u5931\u8d25,\u8bf7\u91cd\u65b0\u7533\u8bf7\u624b\u673a\u6388\u6743\u7801"

    invoke-virtual {p0, v0, v2}, Lmm/purchasesdk/c/a;->a(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lmm/purchasesdk/c/a;->i()V

    sput v3, Lmm/purchasesdk/c/m;->y:I

    invoke-static {v4}, Lcom/ccit/mmwlan/MMClientSDK_ForPad;->DestorySecCert(Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const/4 v1, 0x6

    if-ne v0, v1, :cond_4

    const-string v0, "\u7533\u8bf7\u53c2\u6570\u9519\u8bef\uff0c\u8bf7\u6838\u5bf9\u624b\u673a\u53f7\u7801\u662f\u5426\u6b63\u786e"

    invoke-virtual {p0, v0, v2}, Lmm/purchasesdk/c/a;->a(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lmm/purchasesdk/c/a;->i()V

    sput v3, Lmm/purchasesdk/c/m;->y:I

    invoke-static {v4}, Lcom/ccit/mmwlan/MMClientSDK_ForPad;->DestorySecCert(Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const/4 v1, 0x7

    if-ne v0, v1, :cond_5

    const-string v0, "\u7533\u8bf7\u53c2\u6570\u9519\u8bef\uff0c\u8bf7\u6838\u5bf9\u624b\u673a\u53f7\u7801\u662f\u5426\u6b63\u786e"

    invoke-virtual {p0, v0, v2}, Lmm/purchasesdk/c/a;->a(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lmm/purchasesdk/c/a;->i()V

    sput v3, Lmm/purchasesdk/c/m;->y:I

    invoke-static {v4}, Lcom/ccit/mmwlan/MMClientSDK_ForPad;->DestorySecCert(Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    if-nez v0, :cond_0

    const-string v0, "\u77ed\u4fe1\u5df2\u7ecf\u4e0b\u53d1\uff0c\u6536\u5230\u77ed\u4fe1\u540e\u540e\u8bf7\u60a8\u8f93\u5165\u9a8c\u8bc1\u7801\u3002"

    const v1, -0xffff01

    invoke-virtual {p0, v0, v1}, Lmm/purchasesdk/c/a;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method static synthetic a(Lmm/purchasesdk/c/a;)V
    .locals 0

    invoke-direct {p0}, Lmm/purchasesdk/c/a;->h()V

    return-void
.end method

.method static synthetic a(Lmm/purchasesdk/c/a;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lmm/purchasesdk/c/a;->a(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lmm/purchasesdk/c/a;Lcom/ccit/mmwlan/vo/SignView;)V
    .locals 0

    invoke-direct {p0, p1}, Lmm/purchasesdk/c/a;->a(Lcom/ccit/mmwlan/vo/SignView;)V

    return-void
.end method

.method static synthetic b(Lmm/purchasesdk/c/a;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/c/a;->e:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic b(Lmm/purchasesdk/c/a;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/c/a;->b:Landroid/os/Handler;

    return-object v0
.end method

.method private b()Landroid/view/View;
    .locals 4

    const/4 v3, 0x1

    const/4 v2, -0x1

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmm/purchasesdk/c/a;->a:Landroid/widget/LinearLayout;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lmm/purchasesdk/c/a;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v1, p0, Lmm/purchasesdk/c/a;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lmm/purchasesdk/c/a;->a:Landroid/widget/LinearLayout;

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmm/purchasesdk/c/a;->b(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lmm/purchasesdk/c/a;->b()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lmm/purchasesdk/c/a;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lmm/purchasesdk/c/a;->a:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lmm/purchasesdk/c/a;->d()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lmm/purchasesdk/c/a;->a:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lmm/purchasesdk/c/a;->e()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lmm/purchasesdk/c/a;->a:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lmm/purchasesdk/c/a;->f()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lmm/purchasesdk/c/a;->a()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lmm/purchasesdk/c/a;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lmm/purchasesdk/c/a;->a:Landroid/widget/LinearLayout;

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lmm/purchasesdk/c/a;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lmm/purchasesdk/c/a;->a:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lmm/purchasesdk/c/a;->h()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lmm/purchasesdk/c/a;->a:Landroid/widget/LinearLayout;

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmm/purchasesdk/c/a;->c(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/ScrollView;

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmm/purchasesdk/c/a;->a:Landroid/widget/ScrollView;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v1, Landroid/widget/ScrollView;

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lmm/purchasesdk/c/a;->a:Landroid/widget/ScrollView;

    iget-object v1, p0, Lmm/purchasesdk/c/a;->a:Landroid/widget/ScrollView;

    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lmm/purchasesdk/c/a;->a:Landroid/widget/ScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    iget-object v0, p0, Lmm/purchasesdk/c/a;->a:Landroid/widget/ScrollView;

    iget-object v1, p0, Lmm/purchasesdk/c/a;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lmm/purchasesdk/c/a;->a:Landroid/widget/ScrollView;

    iget-object v1, p0, Lmm/purchasesdk/c/a;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lmm/purchasesdk/c/a;->a:Landroid/widget/ScrollView;

    return-object v0
.end method

.method static synthetic b(Lmm/purchasesdk/c/a;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/c/a;->a:Landroid/widget/EditText;

    return-object v0
.end method

.method private b()Landroid/widget/TextView;
    .locals 5

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v1, Landroid/widget/TextView;

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v0, "\u8bf7\u8f93\u5165\u60a8\u7684\u624b\u673a\u53f7,\u77ed\u4fe1\u9a8c\u8bc1\u7801,\u7528\u4ee5\u53d6\u5f97\u8bbe\u5907\u6388\u6743"

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lmm/purchasesdk/ui/aa;->g:F

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    const v0, -0x7e7e7f

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget v0, p0, Lmm/purchasesdk/c/a;->i:I

    iget v2, p0, Lmm/purchasesdk/c/a;->h:I

    iget v3, p0, Lmm/purchasesdk/c/a;->k:I

    iget v4, p0, Lmm/purchasesdk/c/a;->j:I

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    return-object v1
.end method

.method static synthetic c(Lmm/purchasesdk/c/a;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/c/a;->k:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private c()Landroid/view/View;
    .locals 4

    const/4 v3, 0x1

    const/4 v2, -0x1

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmm/purchasesdk/c/a;->a:Landroid/widget/LinearLayout;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lmm/purchasesdk/c/a;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v1, p0, Lmm/purchasesdk/c/a;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lmm/purchasesdk/c/a;->a:Landroid/widget/LinearLayout;

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmm/purchasesdk/c/a;->b(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lmm/purchasesdk/c/a;->b()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lmm/purchasesdk/c/a;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lmm/purchasesdk/c/a;->a:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lmm/purchasesdk/c/a;->d()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lmm/purchasesdk/c/a;->a:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lmm/purchasesdk/c/a;->e()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lmm/purchasesdk/c/a;->a:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lmm/purchasesdk/c/a;->f()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lmm/purchasesdk/c/a;->a()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lmm/purchasesdk/c/a;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lmm/purchasesdk/c/a;->a:Landroid/widget/LinearLayout;

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lmm/purchasesdk/c/a;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lmm/purchasesdk/c/a;->a:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lmm/purchasesdk/c/a;->h()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lmm/purchasesdk/c/a;->a:Landroid/widget/LinearLayout;

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmm/purchasesdk/c/a;->c(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/ScrollView;

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmm/purchasesdk/c/a;->a:Landroid/widget/ScrollView;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v1, Landroid/widget/ScrollView;

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lmm/purchasesdk/c/a;->a:Landroid/widget/ScrollView;

    iget-object v1, p0, Lmm/purchasesdk/c/a;->a:Landroid/widget/ScrollView;

    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lmm/purchasesdk/c/a;->a:Landroid/widget/ScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    iget-object v0, p0, Lmm/purchasesdk/c/a;->a:Landroid/widget/ScrollView;

    iget-object v1, p0, Lmm/purchasesdk/c/a;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lmm/purchasesdk/c/a;->a:Landroid/widget/ScrollView;

    iget-object v1, p0, Lmm/purchasesdk/c/a;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lmm/purchasesdk/c/a;->a:Landroid/widget/ScrollView;

    return-object v0
.end method

.method private c()V
    .locals 1

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "\u6211\u7684\u8bbe\u5907"

    iput-object v0, p0, Lmm/purchasesdk/c/a;->T:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    iput-object v0, p0, Lmm/purchasesdk/c/a;->T:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic d(Lmm/purchasesdk/c/a;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/c/a;->j:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private d()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lmm/purchasesdk/c/a;->a:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "mmiap/image/vertical/bg.png"

    invoke-static {v0, v1}, Lmm/purchasesdk/ui/aa;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lmm/purchasesdk/c/a;->a:Landroid/graphics/drawable/Drawable;

    :cond_0
    iget-object v0, p0, Lmm/purchasesdk/c/a;->c:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "mmiap/image/vertical/editbg.9.png"

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

    iput-object v2, p0, Lmm/purchasesdk/c/a;->c:Landroid/graphics/drawable/Drawable;

    :cond_1
    iget-object v0, p0, Lmm/purchasesdk/c/a;->h:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "mmiap/image/vertical/editbg.9.png"

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

    iput-object v2, p0, Lmm/purchasesdk/c/a;->h:Landroid/graphics/drawable/Drawable;

    :cond_2
    iget-object v0, p0, Lmm/purchasesdk/c/a;->b:Landroid/graphics/drawable/Drawable;

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

    iput-object v2, p0, Lmm/purchasesdk/c/a;->b:Landroid/graphics/drawable/Drawable;

    :cond_3
    iget-object v0, p0, Lmm/purchasesdk/c/a;->g:Landroid/graphics/drawable/Drawable;

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

    iput-object v2, p0, Lmm/purchasesdk/c/a;->g:Landroid/graphics/drawable/Drawable;

    :cond_4
    iget-object v0, p0, Lmm/purchasesdk/c/a;->d:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_5

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "mmiap/image/vertical/editbg.9.png"

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

    iput-object v2, p0, Lmm/purchasesdk/c/a;->d:Landroid/graphics/drawable/Drawable;

    :cond_5
    iget-object v0, p0, Lmm/purchasesdk/c/a;->e:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_6

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "mmiap/image/vertical/get_verificationcode.9.png"

    invoke-static {v0, v1}, Lmm/purchasesdk/ui/aa;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/NinePatch;->isNinePatchChunk([B)Z

    new-instance v2, Landroid/graphics/drawable/NinePatchDrawable;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v2, v0, v1, v3, v4}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V

    iput-object v2, p0, Lmm/purchasesdk/c/a;->e:Landroid/graphics/drawable/Drawable;

    :cond_6
    iget-object v0, p0, Lmm/purchasesdk/c/a;->f:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_7

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "mmiap/image/vertical/get_verificationcode_press.9.png"

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

    iput-object v2, p0, Lmm/purchasesdk/c/a;->f:Landroid/graphics/drawable/Drawable;

    :cond_7
    return-void
.end method

.method static synthetic e(Lmm/purchasesdk/c/a;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/c/a;->j:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private e()Ljava/lang/Boolean;
    .locals 1

    invoke-virtual {p0}, Lmm/purchasesdk/c/a;->f()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmm/purchasesdk/c/a;->d()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic f(Lmm/purchasesdk/c/a;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/c/a;->k:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private g()Landroid/view/View;
    .locals 10

    const/4 v9, 0x5

    const/4 v3, -0x2

    const/4 v8, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v8, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v0, Landroid/widget/EditText;

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmm/purchasesdk/c/a;->b:Landroid/widget/EditText;

    iget-object v0, p0, Lmm/purchasesdk/c/a;->b:Landroid/widget/EditText;

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setId(I)V

    sget v0, Lmm/purchasesdk/l/d;->k:F

    const/high16 v2, 0x3f80

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v2, 0x1e

    const/high16 v3, 0x4000

    invoke-direct {v0, v6, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    :goto_0
    iget-object v2, p0, Lmm/purchasesdk/c/a;->b:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lmm/purchasesdk/c/a;->b:Landroid/widget/EditText;

    iget-object v2, p0, Lmm/purchasesdk/c/a;->a:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lmm/purchasesdk/c/a;->b:Landroid/widget/EditText;

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setCursorVisible(Z)V

    iget-object v0, p0, Lmm/purchasesdk/c/a;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->setSingleLine()V

    iget-object v0, p0, Lmm/purchasesdk/c/a;->b:Landroid/widget/EditText;

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lmm/purchasesdk/c/a;->b:Landroid/widget/EditText;

    iget v2, p0, Lmm/purchasesdk/c/a;->f:I

    iget v3, p0, Lmm/purchasesdk/c/a;->f:I

    iget v4, p0, Lmm/purchasesdk/c/a;->f:I

    iget v5, p0, Lmm/purchasesdk/c/a;->f:I

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/EditText;->setPadding(IIII)V

    iget-object v0, p0, Lmm/purchasesdk/c/a;->b:Landroid/widget/EditText;

    iget v2, p0, Lmm/purchasesdk/c/a;->g:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTextSize(F)V

    iget-object v0, p0, Lmm/purchasesdk/c/a;->b:Landroid/widget/EditText;

    iget-object v2, p0, Lmm/purchasesdk/c/a;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lmm/purchasesdk/c/a;->b:Landroid/widget/EditText;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v0, p0, Lmm/purchasesdk/c/a;->b:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/Button;

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmm/purchasesdk/c/a;->c:Landroid/widget/Button;

    iget-object v0, p0, Lmm/purchasesdk/c/a;->c:Landroid/widget/Button;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setId(I)V

    iget-object v0, p0, Lmm/purchasesdk/c/a;->c:Landroid/widget/Button;

    new-instance v2, Lmm/purchasesdk/c/g;

    invoke-direct {v2, p0}, Lmm/purchasesdk/c/g;-><init>(Lmm/purchasesdk/c/a;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x3fc0

    invoke-direct {v0, v6, v8, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iget v2, p0, Lmm/purchasesdk/c/a;->o:I

    invoke-virtual {v0, v2, v6, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v2, p0, Lmm/purchasesdk/c/a;->c:Landroid/widget/Button;

    iget v3, p0, Lmm/purchasesdk/c/a;->p:I

    iget v4, p0, Lmm/purchasesdk/c/a;->p:I

    invoke-virtual {v2, v6, v3, v6, v4}, Landroid/widget/Button;->setPadding(IIII)V

    iget-object v2, p0, Lmm/purchasesdk/c/a;->c:Landroid/widget/Button;

    const-string v3, "\u83b7\u53d6\u6388\u6743\u7801"

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lmm/purchasesdk/c/a;->c:Landroid/widget/Button;

    iget v3, p0, Lmm/purchasesdk/c/a;->q:I

    int-to-float v3, v3

    invoke-virtual {v2, v7, v3}, Landroid/widget/Button;->setTextSize(IF)V

    iget-object v2, p0, Lmm/purchasesdk/c/a;->c:Landroid/widget/Button;

    invoke-virtual {v2, v8}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v2, p0, Lmm/purchasesdk/c/a;->c:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lmm/purchasesdk/c/a;->c:Landroid/widget/Button;

    iget-object v2, p0, Lmm/purchasesdk/c/a;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lmm/purchasesdk/c/a;->c:Landroid/widget/Button;

    iget-object v2, p0, Lmm/purchasesdk/c/a;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lmm/purchasesdk/c/a;->c:Landroid/widget/Button;

    invoke-virtual {v0, v6, v9, v6, v9}, Landroid/widget/Button;->setPadding(IIII)V

    iget-object v0, p0, Lmm/purchasesdk/c/a;->c:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v1

    :cond_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x4020

    invoke-direct {v0, v6, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    goto/16 :goto_0
.end method

.method private g()V
    .locals 3

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    return-void
.end method

.method private h()Landroid/view/View;
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x5

    const/4 v8, -0x1

    const/high16 v7, 0x3f80

    const/4 v6, 0x0

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v0, v8, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    sget v2, Lmm/purchasesdk/ui/aa;->R:I

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iput v9, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iput v9, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget v2, p0, Lmm/purchasesdk/c/a;->l:I

    iget v3, p0, Lmm/purchasesdk/c/a;->l:I

    iget v4, p0, Lmm/purchasesdk/c/a;->l:I

    iget v5, p0, Lmm/purchasesdk/c/a;->l:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v0, Landroid/widget/Button;

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmm/purchasesdk/c/a;->a:Landroid/widget/Button;

    iget-object v0, p0, Lmm/purchasesdk/c/a;->a:Landroid/widget/Button;

    new-instance v2, Lmm/purchasesdk/c/h;

    invoke-direct {v2, p0}, Lmm/purchasesdk/c/h;-><init>(Lmm/purchasesdk/c/a;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    sget v0, Lmm/purchasesdk/l/d;->k:F

    cmpg-float v0, v0, v7

    if-gez v0, :cond_0

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v2, 0x32

    invoke-direct {v0, v6, v2, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    :goto_0
    iget v2, p0, Lmm/purchasesdk/c/a;->o:I

    iget v3, p0, Lmm/purchasesdk/c/a;->o:I

    invoke-virtual {v0, v2, v6, v3, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v2, p0, Lmm/purchasesdk/c/a;->a:Landroid/widget/Button;

    sget v3, Lmm/purchasesdk/c/a;->n:I

    sget v4, Lmm/purchasesdk/c/a;->n:I

    invoke-virtual {v2, v6, v3, v6, v4}, Landroid/widget/Button;->setPadding(IIII)V

    iget-object v2, p0, Lmm/purchasesdk/c/a;->a:Landroid/widget/Button;

    const-string v3, "\u786e \u8ba4"

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lmm/purchasesdk/c/a;->a:Landroid/widget/Button;

    sget v3, Lmm/purchasesdk/ui/aa;->N:I

    int-to-float v3, v3

    invoke-virtual {v2, v10, v3}, Landroid/widget/Button;->setTextSize(IF)V

    iget-object v2, p0, Lmm/purchasesdk/c/a;->a:Landroid/widget/Button;

    invoke-virtual {v2, v8}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v2, p0, Lmm/purchasesdk/c/a;->a:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lmm/purchasesdk/c/a;->a:Landroid/widget/Button;

    iget-object v3, p0, Lmm/purchasesdk/c/a;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lmm/purchasesdk/c/a;->a:Landroid/widget/Button;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setId(I)V

    iget-object v2, p0, Lmm/purchasesdk/c/a;->a:Landroid/widget/Button;

    iget-object v3, p0, Lmm/purchasesdk/c/a;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lmm/purchasesdk/c/a;->a:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/Button;

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lmm/purchasesdk/c/a;->b:Landroid/widget/Button;

    iget-object v2, p0, Lmm/purchasesdk/c/a;->b:Landroid/widget/Button;

    invoke-virtual {v2, v9}, Landroid/widget/Button;->setId(I)V

    iget-object v2, p0, Lmm/purchasesdk/c/a;->b:Landroid/widget/Button;

    new-instance v3, Lmm/purchasesdk/c/i;

    invoke-direct {v3, p0}, Lmm/purchasesdk/c/i;-><init>(Lmm/purchasesdk/c/a;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v2, p0, Lmm/purchasesdk/c/a;->b:Landroid/widget/Button;

    sget v3, Lmm/purchasesdk/c/a;->n:I

    sget v4, Lmm/purchasesdk/c/a;->n:I

    invoke-virtual {v2, v6, v3, v6, v4}, Landroid/widget/Button;->setPadding(IIII)V

    iget-object v2, p0, Lmm/purchasesdk/c/a;->b:Landroid/widget/Button;

    const-string v3, "\u53d6 \u6d88"

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lmm/purchasesdk/c/a;->b:Landroid/widget/Button;

    sget v3, Lmm/purchasesdk/ui/aa;->N:I

    int-to-float v3, v3

    invoke-virtual {v2, v10, v3}, Landroid/widget/Button;->setTextSize(IF)V

    iget-object v2, p0, Lmm/purchasesdk/c/a;->b:Landroid/widget/Button;

    invoke-virtual {v2, v8}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v2, p0, Lmm/purchasesdk/c/a;->b:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lmm/purchasesdk/c/a;->b:Landroid/widget/Button;

    iget-object v2, p0, Lmm/purchasesdk/c/a;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lmm/purchasesdk/c/a;->b:Landroid/widget/Button;

    iget-object v2, p0, Lmm/purchasesdk/c/a;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lmm/purchasesdk/c/a;->b:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v1

    :cond_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    sget v2, Lmm/purchasesdk/c/a;->m:I

    invoke-direct {v0, v6, v2, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    goto/16 :goto_0
.end method

.method private h()V
    .locals 6

    const/high16 v5, -0x1

    const/4 v4, 0x0

    invoke-static {}, Lmm/purchasesdk/l/d;->F()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lmm/purchasesdk/c/a;->o()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lmm/purchasesdk/c/a;->p()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/ccit/mmwlan/MMClientSDK_ForPad;->sidSign_PAD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ccit/mmwlan/vo/SignView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ccit/mmwlan/vo/SignView;->getResult()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lmm/purchasesdk/c/a;->c:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    sget v1, Lmm/purchasesdk/l/d;->ab:I

    iput v1, v0, Landroid/os/Message;->what:I

    iput v4, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lmm/purchasesdk/c/a;->a:Lmm/purchasesdk/b;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    sput v4, Lmm/purchasesdk/c/m;->y:I

    invoke-virtual {p0}, Lmm/purchasesdk/c/a;->dismiss()V

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    const-string v0, "\u7533\u8bf7\u5931\u8d25\uff0c\u8bf7\u91cd\u65b0\u7533\u8bf7"

    invoke-virtual {p0, v0, v5}, Lmm/purchasesdk/c/a;->a(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lmm/purchasesdk/c/a;->i()V

    sput v4, Lmm/purchasesdk/c/m;->y:I

    goto :goto_0

    :cond_1
    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    const-string v0, "\u5b89\u5168\u51ed\u8bc1\u4fdd\u5b58\u5931\u8d25\uff0c\u8bf7\u91cd\u7533\u5b89\u5168\u51ed\u8bc1"

    invoke-virtual {p0, v0, v5}, Lmm/purchasesdk/c/a;->a(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lmm/purchasesdk/c/a;->i()V

    sput v4, Lmm/purchasesdk/c/m;->y:I

    goto :goto_0

    :cond_2
    const/4 v2, 0x6

    if-ne v1, v2, :cond_3

    const-string v0, "\u7533\u8bf7\u53c2\u6570\u9519\u8bef\uff0c\u8bf7\u6838\u5bf9\u624b\u673a\u53f7\u7801\u662f\u5426\u6b63\u786e"

    invoke-virtual {p0, v0, v5}, Lmm/purchasesdk/c/a;->a(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lmm/purchasesdk/c/a;->i()V

    sput v4, Lmm/purchasesdk/c/m;->y:I

    goto :goto_0

    :cond_3
    const/4 v2, 0x7

    if-ne v1, v2, :cond_4

    const-string v0, "\u7533\u8bf7\u53c2\u6570\u9519\u8bef\uff0c\u8bf7\u6838\u5bf9\u624b\u673a\u53f7\u7801\u662f\u5426\u6b63\u786e"

    invoke-virtual {p0, v0, v5}, Lmm/purchasesdk/c/a;->a(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lmm/purchasesdk/c/a;->i()V

    sput v4, Lmm/purchasesdk/c/m;->y:I

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Lcom/ccit/mmwlan/vo/SignView;->getErrMsg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v5}, Lmm/purchasesdk/c/a;->a(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lmm/purchasesdk/c/a;->i()V

    sput v4, Lmm/purchasesdk/c/m;->y:I

    goto :goto_0
.end method

.method private j()V
    .locals 0

    return-void
.end method

.method private p()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/c/a;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lmm/purchasesdk/c/a;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lmm/purchasesdk/c/a;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lmm/purchasesdk/c/a;->b:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public b()I
    .locals 4

    const/4 v3, 0x0

    const/high16 v2, -0x1

    iget-object v0, p0, Lmm/purchasesdk/c/a;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    :cond_0
    iget-object v0, p0, Lmm/purchasesdk/c/a;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Lmm/purchasesdk/c/a;->a()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lmm/purchasesdk/c/a;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lmm/purchasesdk/c/a;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lmm/purchasesdk/c/a;->b:Landroid/widget/TextView;

    const-string v1, "\u624b\u673a\u53f7\u7801\u4e0d\u80fd\u4e3a\u7a7a\uff0c\u8bf7\u8f93\u5165\u624b\u673a\u53f7\u7801\uff01"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lmm/purchasesdk/c/a;->b:Landroid/widget/TextView;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lmm/purchasesdk/c/a;->e()V

    const/16 v0, 0x1f7

    :goto_0
    return v0

    :cond_1
    invoke-static {v0}, Lmm/purchasesdk/c/k;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmm/purchasesdk/c/a;->b:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lmm/purchasesdk/c/a;->a:Landroid/widget/EditText;

    const v1, -0xae9f94

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    const/16 v0, 0x1f8

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lmm/purchasesdk/c/a;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lmm/purchasesdk/c/a;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lmm/purchasesdk/c/a;->b:Landroid/widget/TextView;

    const-string v1, "\u60a8\u8f93\u5165\u7684\u624b\u673a\u53f7\u7801\u9519\u8bef\uff0c\u8bf7\u6838\u5bf9\u540e\u518d\u6b21\u8f93\u5165!"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lmm/purchasesdk/c/a;->b:Landroid/widget/TextView;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lmm/purchasesdk/c/a;->a:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTextColor(I)V

    iget-object v0, p0, Lmm/purchasesdk/c/a;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Lmm/purchasesdk/c/a;->a()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->startAnimation(Landroid/view/animation/Animation;)V

    const/16 v0, 0x1f6

    goto :goto_0
.end method

.method public d()Landroid/view/View;
    .locals 7

    const/4 v4, 0x5

    const/4 v6, 0x0

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    sget v2, Lmm/purchasesdk/ui/aa;->R:I

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget v2, p0, Lmm/purchasesdk/c/a;->l:I

    iget v3, p0, Lmm/purchasesdk/c/a;->l:I

    iget v4, p0, Lmm/purchasesdk/c/a;->l:I

    iget v5, p0, Lmm/purchasesdk/c/a;->l:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const-string v0, "\u624b \u673a \u53f7 \u7801 :"

    invoke-direct {p0, v0}, Lmm/purchasesdk/c/a;->a(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lmm/purchasesdk/c/a;->b:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v6, v0}, Lmm/purchasesdk/c/a;->a(ILandroid/graphics/drawable/Drawable;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lmm/purchasesdk/c/a;->a:Landroid/widget/EditText;

    iget-object v0, p0, Lmm/purchasesdk/c/a;->a:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v1
.end method

.method protected d()Ljava/lang/Boolean;
    .locals 2

    invoke-virtual {p0}, Lmm/purchasesdk/c/a;->b()I

    move-result v0

    const/16 v1, 0x1f8

    if-eq v1, v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmm/purchasesdk/c/a;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v0, p0, Lmm/purchasesdk/c/a;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public e()Landroid/view/View;
    .locals 10

    const/16 v9, 0x10

    const/4 v3, 0x5

    const/4 v8, 0x1

    const/4 v7, -0x2

    const/4 v6, -0x1

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    sget v2, Lmm/purchasesdk/ui/aa;->R:I

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget v2, p0, Lmm/purchasesdk/c/a;->l:I

    iget v3, p0, Lmm/purchasesdk/c/a;->l:I

    iget v4, p0, Lmm/purchasesdk/c/a;->l:I

    iget v5, p0, Lmm/purchasesdk/c/a;->l:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    const-string v0, "\u8bbe \u5907 \u540d \u79f0 :"

    invoke-direct {p0, v0}, Lmm/purchasesdk/c/a;->a(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmm/purchasesdk/c/a;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lmm/purchasesdk/c/a;->a:Landroid/widget/TextView;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setId(I)V

    sget v0, Lmm/purchasesdk/l/d;->k:F

    const/high16 v2, 0x3f80

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v2, 0x1e

    invoke-direct {v0, v6, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    :goto_0
    iget-object v2, p0, Lmm/purchasesdk/c/a;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lmm/purchasesdk/c/a;->a:Landroid/widget/TextView;

    iget-object v2, p0, Lmm/purchasesdk/c/a;->T:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lmm/purchasesdk/c/a;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setCursorVisible(Z)V

    iget-object v0, p0, Lmm/purchasesdk/c/a;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    iget-object v0, p0, Lmm/purchasesdk/c/a;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lmm/purchasesdk/c/a;->a:Landroid/widget/TextView;

    iget v2, p0, Lmm/purchasesdk/c/a;->g:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lmm/purchasesdk/c/a;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lmm/purchasesdk/c/a;->a:Landroid/widget/TextView;

    iget-object v2, p0, Lmm/purchasesdk/c/a;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lmm/purchasesdk/c/a;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v1

    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    goto :goto_0
.end method

.method public e()V
    .locals 2

    iget-object v0, p0, Lmm/purchasesdk/c/a;->c:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    iget-object v0, p0, Lmm/purchasesdk/c/a;->c:Landroid/widget/Button;

    iget-object v1, p0, Lmm/purchasesdk/c/a;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public f()Landroid/view/View;
    .locals 6

    const/4 v4, 0x5

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    sget v2, Lmm/purchasesdk/ui/aa;->R:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget v2, p0, Lmm/purchasesdk/c/a;->l:I

    iget v3, p0, Lmm/purchasesdk/c/a;->l:I

    iget v4, p0, Lmm/purchasesdk/c/a;->l:I

    iget v5, p0, Lmm/purchasesdk/c/a;->l:I

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const-string v1, "\u624b\u673a\u6388\u6743\u7801:"

    invoke-direct {p0, v1}, Lmm/purchasesdk/c/a;->a(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-direct {p0}, Lmm/purchasesdk/c/a;->g()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method protected f()Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p0, Lmm/purchasesdk/c/a;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u6388\u6743\u7801\u4e0d\u80fd\u4e3a\u7a7a\uff0c\u8bf7\u8f93\u5165\u77ed\u4fe1\u6388\u6743\u7801\uff0c\u6216\u8005\u91cd\u65b0\u7533\u8bf7\u77ed\u4fe1\u6388\u6743\u7801"

    const/high16 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lmm/purchasesdk/c/a;->a(Ljava/lang/String;I)V

    iget-object v0, p0, Lmm/purchasesdk/c/a;->b:Landroid/widget/EditText;

    invoke-direct {p0}, Lmm/purchasesdk/c/a;->a()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "\u6b63\u5728\u53d1\u9001\u6388\u6743\u8bf7\u6c42\uff0c\u8bf7\u7a0d\u540e....."

    const v1, -0xff0100

    invoke-virtual {p0, v0, v1}, Lmm/purchasesdk/c/a;->a(Ljava/lang/String;I)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public f()V
    .locals 2

    iget-object v0, p0, Lmm/purchasesdk/c/a;->c:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    iget-object v0, p0, Lmm/purchasesdk/c/a;->c:Landroid/widget/Button;

    iget-object v1, p0, Lmm/purchasesdk/c/a;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public i()V
    .locals 2

    iget-object v0, p0, Lmm/purchasesdk/c/a;->c:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    iget-object v0, p0, Lmm/purchasesdk/c/a;->c:Landroid/widget/Button;

    iget-object v1, p0, Lmm/purchasesdk/c/a;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public o()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/c/a;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public show()V
    .locals 1

    invoke-direct {p0}, Lmm/purchasesdk/c/a;->j()V

    invoke-direct {p0}, Lmm/purchasesdk/c/a;->d()V

    invoke-direct {p0}, Lmm/purchasesdk/c/a;->c()V

    invoke-direct {p0}, Lmm/purchasesdk/c/a;->a()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmm/purchasesdk/c/a;->setContentView(Landroid/view/View;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmm/purchasesdk/c/a;->setCancelable(Z)V

    invoke-super {p0}, Lmm/purchasesdk/ui/b;->show()V

    return-void
.end method
