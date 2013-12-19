.class public Lcom/unipay/dialog/OpeningAnimationView;
.super Landroid/view/View;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unipay/dialog/IIllllllIIIlllll;,
        Lcom/unipay/dialog/IlIllIlIlIlllIll;,
        Lcom/unipay/dialog/OpeningAnimationView$AnimationPlayCallBack;
    }
.end annotation


# instance fields
.field private _$1:Lcom/unipay/dialog/OpeningAnimationView$AnimationPlayCallBack;

.field private _$2:Landroid/util/DisplayMetrics;

.field private _$3:Landroid/view/animation/AlphaAnimation;

.field private _$4:Landroid/view/animation/AlphaAnimation;

.field private _$5:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/unipay/dialog/OpeningAnimationView$AnimationPlayCallBack;)V
    .locals 7

    const-wide/16 v5, 0x3e8

    const/high16 v4, 0x3f80

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/unipay/dialog/OpeningAnimationView;->_$5:Landroid/content/Context;

    iput-object p2, p0, Lcom/unipay/dialog/OpeningAnimationView;->_$1:Lcom/unipay/dialog/OpeningAnimationView$AnimationPlayCallBack;

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/unipay/dialog/OpeningAnimationView;->_$4:Landroid/view/animation/AlphaAnimation;

    iget-object v0, p0, Lcom/unipay/dialog/OpeningAnimationView;->_$4:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/unipay/dialog/OpeningAnimationView;->_$4:Landroid/view/animation/AlphaAnimation;

    new-instance v1, Lcom/unipay/dialog/IlIllIlIlIlllIll;

    invoke-direct {v1, p0}, Lcom/unipay/dialog/IlIllIlIlIlllIll;-><init>(Lcom/unipay/dialog/OpeningAnimationView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v4, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/unipay/dialog/OpeningAnimationView;->_$3:Landroid/view/animation/AlphaAnimation;

    iget-object v0, p0, Lcom/unipay/dialog/OpeningAnimationView;->_$3:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v5, v6}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    iget-object v0, p0, Lcom/unipay/dialog/OpeningAnimationView;->_$3:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v5, v6}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/unipay/dialog/OpeningAnimationView;->_$3:Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    iget-object v0, p0, Lcom/unipay/dialog/OpeningAnimationView;->_$3:Landroid/view/animation/AlphaAnimation;

    new-instance v1, Lcom/unipay/dialog/IIllllllIIIlllll;

    invoke-direct {v1, p0}, Lcom/unipay/dialog/IIllllllIIIlllll;-><init>(Lcom/unipay/dialog/OpeningAnimationView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/unipay/dialog/OpeningAnimationView;->_$2:Landroid/util/DisplayMetrics;

    iget-object v0, p0, Lcom/unipay/dialog/OpeningAnimationView;->_$5:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/unipay/dialog/OpeningAnimationView;->_$2:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget-object v0, p0, Lcom/unipay/dialog/OpeningAnimationView;->_$4:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {p0, v0}, Lcom/unipay/dialog/OpeningAnimationView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method static synthetic _$1(Lcom/unipay/dialog/OpeningAnimationView;)Lcom/unipay/dialog/OpeningAnimationView$AnimationPlayCallBack;
    .locals 1

    iget-object v0, p0, Lcom/unipay/dialog/OpeningAnimationView;->_$1:Lcom/unipay/dialog/OpeningAnimationView$AnimationPlayCallBack;

    return-object v0
.end method

.method static synthetic _$2(Lcom/unipay/dialog/OpeningAnimationView;)Landroid/view/animation/AlphaAnimation;
    .locals 1

    iget-object v0, p0, Lcom/unipay/dialog/OpeningAnimationView;->_$3:Landroid/view/animation/AlphaAnimation;

    return-object v0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    const/4 v0, -0x1

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/unipay/dialog/OpeningAnimationView;->_$5:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v2, "unicom_extend/cucc_logo.png"

    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v2, v0

    :goto_0
    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/unipay/dialog/OpeningAnimationView;->_$2:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/unipay/dialog/OpeningAnimationView;->_$2:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v1, v0, 0x2

    iget-object v0, p0, Lcom/unipay/dialog/OpeningAnimationView;->_$2:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int/2addr v0, v4

    div-int/lit8 v0, v0, 0x2

    :goto_1
    int-to-float v1, v1

    int-to-float v0, v0

    invoke-virtual {p1, v2, v1, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v2, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/unipay/dialog/OpeningAnimationView;->_$2:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int/2addr v0, v4

    div-int/lit8 v0, v0, 0x2

    goto :goto_1
.end method
