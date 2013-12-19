.class public Lmm/purchasesdk/ui/d;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/view/View$OnLongClickListener;

.field private a:Landroid/view/View;

.field private a:Landroid/widget/PopupWindow;

.field private b:Landroid/view/View$OnClickListener;

.field private b:Landroid/view/View$OnTouchListener;

.field private b:Landroid/view/View;

.field private c:Ljava/util/HashMap;

.field private f:Ljava/lang/Boolean;

.field private m:Landroid/graphics/drawable/Drawable;

.field private n:Landroid/graphics/drawable/Drawable;

.field private o:Landroid/graphics/drawable/Drawable;

.field private p:Landroid/graphics/drawable/Drawable;

.field private q:Landroid/graphics/drawable/Drawable;

.field private r:Landroid/graphics/drawable/Drawable;

.field private s:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/lang/Boolean;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lmm/purchasesdk/ui/d;->f:Ljava/lang/Boolean;

    new-instance v0, Lmm/purchasesdk/ui/e;

    invoke-direct {v0, p0}, Lmm/purchasesdk/ui/e;-><init>(Lmm/purchasesdk/ui/d;)V

    iput-object v0, p0, Lmm/purchasesdk/ui/d;->b:Landroid/view/View$OnTouchListener;

    new-instance v0, Lmm/purchasesdk/ui/f;

    invoke-direct {v0, p0}, Lmm/purchasesdk/ui/f;-><init>(Lmm/purchasesdk/ui/d;)V

    iput-object v0, p0, Lmm/purchasesdk/ui/d;->b:Landroid/view/View$OnClickListener;

    new-instance v0, Lmm/purchasesdk/ui/h;

    invoke-direct {v0, p0}, Lmm/purchasesdk/ui/h;-><init>(Lmm/purchasesdk/ui/d;)V

    iput-object v0, p0, Lmm/purchasesdk/ui/d;->a:Landroid/view/View$OnLongClickListener;

    const/4 v0, 0x0

    iput-object v0, p0, Lmm/purchasesdk/ui/d;->c:Ljava/util/HashMap;

    iput-object p2, p0, Lmm/purchasesdk/ui/d;->f:Ljava/lang/Boolean;

    iput-object p1, p0, Lmm/purchasesdk/ui/d;->b:Landroid/view/View;

    :try_start_0
    invoke-direct {p0}, Lmm/purchasesdk/ui/d;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lmm/purchasesdk/ui/d;->c:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmm/purchasesdk/ui/d;->c:Ljava/util/HashMap;

    iget-object v0, p0, Lmm/purchasesdk/ui/d;->c:Ljava/util/HashMap;

    const-string v1, "0"

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lmm/purchasesdk/ui/d;->c:Ljava/util/HashMap;

    const-string v1, "1"

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lmm/purchasesdk/ui/d;->c:Ljava/util/HashMap;

    const-string v1, "2"

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lmm/purchasesdk/ui/d;->c:Ljava/util/HashMap;

    const-string v1, "3"

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lmm/purchasesdk/ui/d;->c:Ljava/util/HashMap;

    const-string v1, "4"

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lmm/purchasesdk/ui/d;->c:Ljava/util/HashMap;

    const-string v1, "5"

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lmm/purchasesdk/ui/d;->c:Ljava/util/HashMap;

    const-string v1, "6"

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lmm/purchasesdk/ui/d;->c:Ljava/util/HashMap;

    const-string v1, "7"

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lmm/purchasesdk/ui/d;->c:Ljava/util/HashMap;

    const-string v1, "8"

    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lmm/purchasesdk/ui/d;->c:Ljava/util/HashMap;

    const-string v1, "9"

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lmm/purchasesdk/ui/d;->c:Ljava/util/HashMap;

    const-string v1, "back"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lmm/purchasesdk/ui/d;->c:Ljava/util/HashMap;

    const-string v1, "clear"

    const/16 v2, 0x1c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lmm/purchasesdk/ui/d;->c:Ljava/util/HashMap;

    const-string v1, "delete"

    const/16 v2, 0x43

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lmm/purchasesdk/ui/d;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmm/purchasesdk/ui/d;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lmm/purchasesdk/ui/d;Ljava/lang/String;)I
    .locals 1

    invoke-direct {p0, p1}, Lmm/purchasesdk/ui/d;->a(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lmm/purchasesdk/ui/aa;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "error,"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not exist!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-object v0
.end method

.method static synthetic a(Lmm/purchasesdk/ui/d;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/ui/d;->q:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic a(Lmm/purchasesdk/ui/d;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/ui/d;->b:Landroid/view/View;

    return-object v0
.end method

.method static synthetic a(Lmm/purchasesdk/ui/d;)Landroid/widget/PopupWindow;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/ui/d;->a:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic b(Lmm/purchasesdk/ui/d;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/ui/d;->r:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic b(Lmm/purchasesdk/ui/d;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/ui/d;->a:Landroid/view/View;

    return-object v0
.end method

.method static synthetic c(Lmm/purchasesdk/ui/d;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/ui/d;->s:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic d(Lmm/purchasesdk/ui/d;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/ui/d;->n:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private d(Landroid/content/Context;)Landroid/view/View;
    .locals 12

    const/4 v8, 0x1

    const/high16 v11, 0x3f80

    const/4 v10, -0x1

    const/4 v9, 0x5

    const/4 v2, 0x0

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v10, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lmm/purchasesdk/ui/d;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v3, v9, v9, v9, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    move v0, v2

    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v8, v8, v8, v8}, Landroid/widget/Button;->setPadding(IIII)V

    iget-object v5, p0, Lmm/purchasesdk/ui/d;->n:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/high16 v5, 0x41c8

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setTextSize(F)V

    iget-object v5, p0, Lmm/purchasesdk/ui/d;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lmm/purchasesdk/ui/d;->b:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v4, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v5, Ljava/util/Random;

    invoke-direct {v5}, Ljava/util/Random;-><init>()V

    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v10, v2, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    move v1, v2

    :goto_1
    const/4 v0, 0x3

    if-ge v1, v0, :cond_1

    rsub-int/lit8 v0, v1, 0xa

    invoke-virtual {v5, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v2, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iput v9, v7, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput v9, v7, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iput v9, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lmm/purchasesdk/ui/d;->o:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    iget-object v1, p0, Lmm/purchasesdk/ui/d;->b:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Lmm/purchasesdk/ui/d;->a:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v1, p0, Lmm/purchasesdk/ui/d;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v10, v2, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    const/4 v0, 0x3

    move v1, v0

    :goto_2
    const/4 v0, 0x7

    if-ge v1, v0, :cond_3

    rsub-int/lit8 v0, v1, 0xa

    invoke-virtual {v5, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v2, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/4 v8, 0x6

    if-eq v1, v8, :cond_2

    iput v9, v7, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    :cond_2
    iput v9, v7, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_3
    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v10, v2, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    const/4 v0, 0x7

    move v1, v0

    :goto_3
    const/16 v0, 0xa

    if-ge v1, v0, :cond_4

    rsub-int/lit8 v0, v1, 0xa

    invoke-virtual {v5, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v2, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iput v9, v7, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput v9, v7, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_4
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iput v9, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lmm/purchasesdk/ui/d;->p:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    iget-object v1, p0, Lmm/purchasesdk/ui/d;->b:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Lmm/purchasesdk/ui/d;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v3
.end method

.method private d()V
    .locals 2

    iget-object v0, p0, Lmm/purchasesdk/ui/d;->m:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "mmiap/image/vertical/keyboard_bg.png"

    invoke-static {v0, v1}, Lmm/purchasesdk/ui/aa;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_7

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lmm/purchasesdk/ui/d;->m:Landroid/graphics/drawable/Drawable;

    :cond_0
    iget-object v0, p0, Lmm/purchasesdk/ui/d;->n:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    const-string v0, "mmiap/image/vertical/keyboard_button.png"

    invoke-direct {p0, v0}, Lmm/purchasesdk/ui/d;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_8

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lmm/purchasesdk/ui/d;->n:Landroid/graphics/drawable/Drawable;

    :cond_1
    iget-object v0, p0, Lmm/purchasesdk/ui/d;->o:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2

    const-string v0, "mmiap/image/vertical/keyboard_button_delete.png"

    invoke-direct {p0, v0}, Lmm/purchasesdk/ui/d;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_9

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lmm/purchasesdk/ui/d;->o:Landroid/graphics/drawable/Drawable;

    :cond_2
    iget-object v0, p0, Lmm/purchasesdk/ui/d;->p:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_3

    const-string v0, "mmiap/image/vertical/keyboard_button_hide.png"

    invoke-direct {p0, v0}, Lmm/purchasesdk/ui/d;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_a

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lmm/purchasesdk/ui/d;->p:Landroid/graphics/drawable/Drawable;

    :cond_3
    iget-object v0, p0, Lmm/purchasesdk/ui/d;->q:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_4

    const-string v0, "mmiap/image/vertical/keyboard_button_press.png"

    invoke-direct {p0, v0}, Lmm/purchasesdk/ui/d;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_b

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lmm/purchasesdk/ui/d;->q:Landroid/graphics/drawable/Drawable;

    :cond_4
    iget-object v0, p0, Lmm/purchasesdk/ui/d;->s:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_5

    const-string v0, "mmiap/image/vertical/keyboard_button_hide_press.png"

    invoke-direct {p0, v0}, Lmm/purchasesdk/ui/d;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_c

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lmm/purchasesdk/ui/d;->s:Landroid/graphics/drawable/Drawable;

    :cond_5
    iget-object v0, p0, Lmm/purchasesdk/ui/d;->r:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_6

    const-string v0, "mmiap/image/vertical/keyboard_button_delete_press.png"

    invoke-direct {p0, v0}, Lmm/purchasesdk/ui/d;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_d

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lmm/purchasesdk/ui/d;->r:Landroid/graphics/drawable/Drawable;

    :cond_6
    return-void

    :cond_7
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "error!mmiap/image/vertical/keyboard_bg.pngread failed!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "error!mmiap/image/vertical/keyboard_button.pngread failed!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "error!mmiap/image/vertical/keyboard_button_delete.pngread failed!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "error!mmiap/image/vertical/keyboard_button_hide.pngread failed!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "error!mmiap/image/vertical/keyboard_button_press.pngread failed!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "error!mmiap/image/vertical/keyboard_button_hide_press.pngread failed!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "error!mmiap/image/vertical/keyboard_button_delete_press.pngread failed!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic e(Lmm/purchasesdk/ui/d;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/ui/d;->o:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private e(Landroid/content/Context;)Landroid/view/View;
    .locals 12

    const/4 v11, 0x1

    const/high16 v10, 0x3f80

    const/4 v9, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x5

    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v9, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lmm/purchasesdk/ui/d;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v4, v2, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const-string v0, "mmiap/image/vertical/keyboard_button.png"

    invoke-direct {p0, v0}, Lmm/purchasesdk/ui/d;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    move v0, v3

    :goto_0
    const/16 v6, 0xa

    if-ge v0, v6, :cond_1

    new-instance v6, Landroid/widget/Button;

    invoke-direct {v6, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v11, v11, v11, v11}, Landroid/widget/Button;->setPadding(IIII)V

    if-eqz v1, :cond_0

    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v7, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/high16 v7, 0x41c8

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setTextSize(F)V

    iget-object v7, p0, Lmm/purchasesdk/ui/d;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v7, p0, Lmm/purchasesdk/ui/d;->b:Landroid/view/View$OnTouchListener;

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v6, Ljava/util/Random;

    invoke-direct {v6}, Ljava/util/Random;-><init>()V

    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v9, v3, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    move v1, v3

    :goto_1
    if-ge v1, v2, :cond_2

    rsub-int/lit8 v0, v1, 0xa

    invoke-virtual {v6, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v3, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iput v2, v8, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput v2, v8, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lmm/purchasesdk/ui/d;->o:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    iget-object v1, p0, Lmm/purchasesdk/ui/d;->a:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v1, p0, Lmm/purchasesdk/ui/d;->b:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Lmm/purchasesdk/ui/d;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v9, v3, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    move v1, v2

    :goto_2
    const/16 v0, 0xa

    if-ge v1, v0, :cond_3

    rsub-int/lit8 v0, v1, 0xa

    invoke-virtual {v6, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v3, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iput v2, v8, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput v2, v8, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_3
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lmm/purchasesdk/ui/d;->p:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    iget-object v1, p0, Lmm/purchasesdk/ui/d;->b:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Lmm/purchasesdk/ui/d;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v4
.end method

.method static synthetic f(Lmm/purchasesdk/ui/d;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/ui/d;->p:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 5

    const/4 v1, 0x0

    iput-object p1, p0, Lmm/purchasesdk/ui/d;->a:Landroid/view/View;

    sget-object v0, Lmm/purchasesdk/ui/aa;->d:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lmm/purchasesdk/ui/d;->f:Ljava/lang/Boolean;

    iget-object v0, p0, Lmm/purchasesdk/ui/d;->a:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lmm/purchasesdk/ui/d;->j()Landroid/view/View;

    move-result-object v2

    const/4 v3, -0x1

    sget v4, Lmm/purchasesdk/ui/aa;->S:I

    invoke-direct {v0, v2, v3, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lmm/purchasesdk/ui/d;->a:Landroid/widget/PopupWindow;

    :cond_0
    iget-object v0, p0, Lmm/purchasesdk/ui/d;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lmm/purchasesdk/ui/d;->a:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lmm/purchasesdk/ui/d;->a:Landroid/view/View;

    const/16 v3, 0x50

    invoke-virtual {v0, v2, v3, v1, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public j()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/ui/d;->f:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lmm/purchasesdk/ui/d;->d(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lmm/purchasesdk/ui/d;->e(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method
