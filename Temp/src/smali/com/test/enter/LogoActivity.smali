.class public Lcom/test/enter/LogoActivity;
.super Landroid/app/Activity;


# static fields
.field public static final LOGO_GAME:I = 0x3

.field public static final LOGO_PLAYPIE:I = 0x2

.field public static final LOGO_SHANDA:I = 0x0

.field public static final LOGO_SQEX:I = 0x1


# instance fields
.field a:Landroid/view/View;

.field b:Landroid/view/View;

.field c:Landroid/view/View;

.field d:Landroid/view/animation/AnimationSet;

.field e:Landroid/view/animation/AnimationSet;

.field f:Landroid/view/animation/AnimationSet;

.field g:I

.field h:Z

.field i:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-boolean v0, p0, Lcom/test/enter/LogoActivity;->h:Z

    iput-boolean v0, p0, Lcom/test/enter/LogoActivity;->i:Z

    return-void
.end method


# virtual methods
.method public GoModeSelectPage()V
    .locals 2

    iget-boolean v0, p0, Lcom/test/enter/LogoActivity;->h:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/test/enter/LogoActivity;->i:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/test/enter/LogoActivity;->h:Z

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/test/enter/ModeSelectActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/test/enter/LogoActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/test/enter/LogoActivity;->finish()V

    goto :goto_0
.end method

.method public MakeFadeAnimation()V
    .locals 8

    const/high16 v7, 0x3f80

    const/4 v3, 0x0

    const-wide/16 v5, 0x3e8

    const/4 v4, 0x0

    new-instance v0, Lcom/test/enter/l;

    invoke-direct {v0, p0}, Lcom/test/enter/l;-><init>(Lcom/test/enter/LogoActivity;)V

    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v3, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v1, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v2, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v2, v7, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v2, v5, v6}, Landroid/view/animation/Animation;->setStartOffset(J)V

    invoke-virtual {v2, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v3, Landroid/view/animation/AnimationSet;

    invoke-direct {v3, v4}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v3, p0, Lcom/test/enter/LogoActivity;->d:Landroid/view/animation/AnimationSet;

    iget-object v3, p0, Lcom/test/enter/LogoActivity;->d:Landroid/view/animation/AnimationSet;

    invoke-virtual {v3, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v3, p0, Lcom/test/enter/LogoActivity;->d:Landroid/view/animation/AnimationSet;

    invoke-virtual {v3, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v3, p0, Lcom/test/enter/LogoActivity;->d:Landroid/view/animation/AnimationSet;

    invoke-virtual {v3, v0}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    new-instance v3, Landroid/view/animation/AnimationSet;

    invoke-direct {v3, v4}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v3, p0, Lcom/test/enter/LogoActivity;->e:Landroid/view/animation/AnimationSet;

    iget-object v3, p0, Lcom/test/enter/LogoActivity;->e:Landroid/view/animation/AnimationSet;

    invoke-virtual {v3, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v3, p0, Lcom/test/enter/LogoActivity;->e:Landroid/view/animation/AnimationSet;

    invoke-virtual {v3, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v3, p0, Lcom/test/enter/LogoActivity;->e:Landroid/view/animation/AnimationSet;

    invoke-virtual {v3, v0}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    new-instance v3, Landroid/view/animation/AnimationSet;

    invoke-direct {v3, v4}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v3, p0, Lcom/test/enter/LogoActivity;->f:Landroid/view/animation/AnimationSet;

    iget-object v3, p0, Lcom/test/enter/LogoActivity;->f:Landroid/view/animation/AnimationSet;

    invoke-virtual {v3, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lcom/test/enter/LogoActivity;->f:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lcom/test/enter/LogoActivity;->f:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    sget-object v0, Lcom/test/RooneyJActivity;->g_RooneyJActivity:Lcom/test/RooneyJActivity;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/test/RooneyJActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/test/enter/LogoActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/test/enter/LogoActivity;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v0, 0x7f030009

    invoke-virtual {p0, v0}, Lcom/test/enter/LogoActivity;->setContentView(I)V

    const v0, 0x7f09003c

    invoke-virtual {p0, v0}, Lcom/test/enter/LogoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/test/enter/LogoActivity;->a:Landroid/view/View;

    const v0, 0x7f09003d

    invoke-virtual {p0, v0}, Lcom/test/enter/LogoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/test/enter/LogoActivity;->b:Landroid/view/View;

    const v0, 0x7f09003e

    invoke-virtual {p0, v0}, Lcom/test/enter/LogoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/test/enter/LogoActivity;->c:Landroid/view/View;

    invoke-virtual {p0}, Lcom/test/enter/LogoActivity;->MakeFadeAnimation()V

    iget-object v0, p0, Lcom/test/enter/LogoActivity;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/test/enter/LogoActivity;->d:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/test/enter/LogoActivity;->i:Z

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u672a\u68c0\u6d4b\u5230SD\u5361\uff0c\u6e38\u620f\u65e0\u6cd5\u8fd0\u884c\u3002"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u786e\u5b9a"

    new-instance v2, Lcom/test/enter/k;

    invoke-direct {v2, p0}, Lcom/test/enter/k;-><init>(Lcom/test/enter/LogoActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-static {p0, p0}, Lcom/test/enter/EnterDef;->ShowExit(Landroid/app/Activity;Landroid/content/Context;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/test/enter/LogoActivity;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/test/enter/LogoActivity;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/test/enter/LogoActivity;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/test/enter/LogoActivity;->GoModeSelectPage()V

    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
