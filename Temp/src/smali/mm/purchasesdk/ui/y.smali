.class public Lmm/purchasesdk/ui/y;
.super Lmm/purchasesdk/ui/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmm/purchasesdk/ui/y$a;
    }
.end annotation


# instance fields
.field private B:Landroid/graphics/drawable/Drawable;

.field private C:Landroid/graphics/drawable/Drawable;

.field G:I

.field H:I

.field a:Landroid/hardware/SensorManager;

.field a:Landroid/view/Display;

.field k:Z

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x1

    const v0, 0x1030005

    invoke-direct {p0, p1, v0}, Lmm/purchasesdk/ui/b;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lmm/purchasesdk/ui/y;->B:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lmm/purchasesdk/ui/y;->C:Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Lmm/purchasesdk/ui/y;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lmm/purchasesdk/ui/y;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lmm/purchasesdk/ui/y;->setOwnerActivity(Landroid/app/Activity;)V

    iput v1, p0, Lmm/purchasesdk/ui/y;->G:I

    iput v1, p0, Lmm/purchasesdk/ui/y;->H:I

    invoke-virtual {p0}, Lmm/purchasesdk/ui/y;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Window;->requestFeature(I)Z

    iget-object v0, p0, Lmm/purchasesdk/ui/y;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lmm/purchasesdk/ui/y;->a:Landroid/view/Display;

    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lmm/purchasesdk/ui/y;->a:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lmm/purchasesdk/ui/y;->a:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    new-instance v1, Lmm/purchasesdk/ui/z;

    invoke-direct {v1, p0}, Lmm/purchasesdk/ui/z;-><init>(Lmm/purchasesdk/ui/y;)V

    iget-object v2, p0, Lmm/purchasesdk/ui/y;->a:Landroid/hardware/SensorManager;

    invoke-virtual {v2, v1, v0, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    return-void
.end method

.method private d()V
    .locals 2

    iget-object v0, p0, Lmm/purchasesdk/ui/y;->B:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lmm/purchasesdk/ui/y;->mContext:Landroid/content/Context;

    const-string v1, "mmiap/image/vertical/splash_v.jpg"

    invoke-static {v0, v1}, Lmm/purchasesdk/ui/aa;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lmm/purchasesdk/ui/y;->B:Landroid/graphics/drawable/Drawable;

    :cond_0
    iget-object v0, p0, Lmm/purchasesdk/ui/y;->C:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    iget-object v0, p0, Lmm/purchasesdk/ui/y;->mContext:Landroid/content/Context;

    const-string v1, "mmiap/image/vertical/splash_h.jpg"

    invoke-static {v0, v1}, Lmm/purchasesdk/ui/aa;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lmm/purchasesdk/ui/y;->C:Landroid/graphics/drawable/Drawable;

    :cond_1
    return-void
.end method

.method private n()Landroid/view/View;
    .locals 1

    sget-object v0, Lmm/purchasesdk/ui/aa;->d:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lmm/purchasesdk/ui/y;->k:Z

    iget-boolean v0, p0, Lmm/purchasesdk/ui/y;->k:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmm/purchasesdk/ui/y;->p()Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lmm/purchasesdk/ui/y;->o()Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private o()Landroid/view/View;
    .locals 4

    const/4 v3, -0x1

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lmm/purchasesdk/ui/y;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lmm/purchasesdk/ui/y;->B:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method


# virtual methods
.method f(Z)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lmm/purchasesdk/ui/aa;->d:Ljava/lang/Boolean;

    invoke-direct {p0}, Lmm/purchasesdk/ui/y;->n()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmm/purchasesdk/ui/y;->setContentView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput v0, p0, Lmm/purchasesdk/ui/y;->G:I

    return-void
.end method

.method public p()Landroid/view/View;
    .locals 3

    const/4 v2, -0x1

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lmm/purchasesdk/ui/y;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lmm/purchasesdk/ui/y;->C:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method public show()V
    .locals 4

    invoke-direct {p0}, Lmm/purchasesdk/ui/y;->d()V

    invoke-direct {p0}, Lmm/purchasesdk/ui/y;->n()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmm/purchasesdk/ui/y;->setContentView(Landroid/view/View;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmm/purchasesdk/ui/y;->setCancelable(Z)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lmm/purchasesdk/ui/y$a;

    invoke-direct {v1, p0}, Lmm/purchasesdk/ui/y$a;-><init>(Lmm/purchasesdk/ui/y;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-super {p0}, Lmm/purchasesdk/ui/b;->show()V

    return-void
.end method
