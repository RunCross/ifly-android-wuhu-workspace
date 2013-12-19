.class Lcom/unipay/dialog/IIllllllIIIlllll;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unipay/dialog/OpeningAnimationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "outAnimationListener"
.end annotation


# instance fields
.field final synthetic _$1:Lcom/unipay/dialog/OpeningAnimationView;


# direct methods
.method constructor <init>(Lcom/unipay/dialog/OpeningAnimationView;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/dialog/IIllllllIIIlllll;->_$1:Lcom/unipay/dialog/OpeningAnimationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object v0, p0, Lcom/unipay/dialog/IIllllllIIIlllll;->_$1:Lcom/unipay/dialog/OpeningAnimationView;

    invoke-static {v0}, Lcom/unipay/dialog/OpeningAnimationView;->_$1(Lcom/unipay/dialog/OpeningAnimationView;)Lcom/unipay/dialog/OpeningAnimationView$AnimationPlayCallBack;

    move-result-object v0

    invoke-interface {v0}, Lcom/unipay/dialog/OpeningAnimationView$AnimationPlayCallBack;->onPlayCallBack()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
