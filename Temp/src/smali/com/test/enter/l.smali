.class final Lcom/test/enter/l;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lcom/test/enter/LogoActivity;


# direct methods
.method constructor <init>(Lcom/test/enter/LogoActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/test/enter/l;->a:Lcom/test/enter/LogoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x4

    iget-object v0, p0, Lcom/test/enter/l;->a:Lcom/test/enter/LogoActivity;

    iget v0, v0, Lcom/test/enter/LogoActivity;->g:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/test/enter/l;->a:Lcom/test/enter/LogoActivity;

    iget v1, v0, Lcom/test/enter/LogoActivity;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/test/enter/LogoActivity;->g:I

    iget-object v0, p0, Lcom/test/enter/l;->a:Lcom/test/enter/LogoActivity;

    iget-object v0, v0, Lcom/test/enter/LogoActivity;->a:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/test/enter/l;->a:Lcom/test/enter/LogoActivity;

    iget-object v0, v0, Lcom/test/enter/LogoActivity;->a:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/test/enter/l;->a:Lcom/test/enter/LogoActivity;

    iget-object v0, v0, Lcom/test/enter/LogoActivity;->b:Landroid/view/View;

    iget-object v1, p0, Lcom/test/enter/l;->a:Lcom/test/enter/LogoActivity;

    iget-object v1, v1, Lcom/test/enter/LogoActivity;->e:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/test/enter/l;->a:Lcom/test/enter/LogoActivity;

    iget v1, v0, Lcom/test/enter/LogoActivity;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/test/enter/LogoActivity;->g:I

    iget-object v0, p0, Lcom/test/enter/l;->a:Lcom/test/enter/LogoActivity;

    iget-object v0, v0, Lcom/test/enter/LogoActivity;->b:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/test/enter/l;->a:Lcom/test/enter/LogoActivity;

    iget-object v0, v0, Lcom/test/enter/LogoActivity;->b:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/test/enter/l;->a:Lcom/test/enter/LogoActivity;

    iget-object v0, v0, Lcom/test/enter/LogoActivity;->c:Landroid/view/View;

    iget-object v1, p0, Lcom/test/enter/l;->a:Lcom/test/enter/LogoActivity;

    iget-object v1, v1, Lcom/test/enter/LogoActivity;->f:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/test/enter/l;->a:Lcom/test/enter/LogoActivity;

    iget v1, v0, Lcom/test/enter/LogoActivity;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/test/enter/LogoActivity;->g:I

    iget-object v0, p0, Lcom/test/enter/l;->a:Lcom/test/enter/LogoActivity;

    iget-object v0, v0, Lcom/test/enter/LogoActivity;->c:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/test/enter/l;->a:Lcom/test/enter/LogoActivity;

    iget-object v0, v0, Lcom/test/enter/LogoActivity;->c:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/test/enter/l;->a:Lcom/test/enter/LogoActivity;

    invoke-virtual {v0}, Lcom/test/enter/LogoActivity;->GoModeSelectPage()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/test/enter/l;->a:Lcom/test/enter/LogoActivity;

    iget v0, v0, Lcom/test/enter/LogoActivity;->g:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/test/enter/l;->a:Lcom/test/enter/LogoActivity;

    iget-object v0, v0, Lcom/test/enter/LogoActivity;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/test/enter/l;->a:Lcom/test/enter/LogoActivity;

    iget-object v0, v0, Lcom/test/enter/LogoActivity;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/test/enter/l;->a:Lcom/test/enter/LogoActivity;

    iget-object v0, v0, Lcom/test/enter/LogoActivity;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
