.class Lcom/baidu/game/activity/PaymentActivity$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field final synthetic z:Lcom/baidu/game/activity/PaymentActivity;


# direct methods
.method constructor <init>(Lcom/baidu/game/activity/PaymentActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/game/activity/PaymentActivity$4;->z:Lcom/baidu/game/activity/PaymentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/baidu/game/activity/PaymentActivity$4;->z:Lcom/baidu/game/activity/PaymentActivity;

    invoke-virtual {v0}, Lcom/baidu/game/activity/PaymentActivity;->h()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
