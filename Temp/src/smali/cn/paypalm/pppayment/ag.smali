.class Lcn/paypalm/pppayment/ag;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcn/paypalm/pppayment/BankcardPayAct;

.field private final synthetic b:Landroid/view/View;

.field private final synthetic c:Landroid/view/View;


# direct methods
.method constructor <init>(Lcn/paypalm/pppayment/BankcardPayAct;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcn/paypalm/pppayment/ag;->a:Lcn/paypalm/pppayment/BankcardPayAct;

    iput-object p2, p0, Lcn/paypalm/pppayment/ag;->b:Landroid/view/View;

    iput-object p3, p0, Lcn/paypalm/pppayment/ag;->c:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcn/paypalm/pppayment/ag;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/paypalm/pppayment/ag;->c:Landroid/view/View;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcn/paypalm/pppayment/ag;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v2, p0, Lcn/paypalm/pppayment/ag;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    if-gez v0, :cond_2

    move v0, v1

    :cond_2
    iget-object v2, p0, Lcn/paypalm/pppayment/ag;->b:Landroid/view/View;

    invoke-virtual {v2, v1, v0}, Landroid/view/View;->scrollTo(II)V

    goto :goto_0
.end method
