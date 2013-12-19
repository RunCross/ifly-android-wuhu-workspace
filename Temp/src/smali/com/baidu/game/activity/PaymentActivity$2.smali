.class Lcom/baidu/game/activity/PaymentActivity$2;
.super Landroid/os/Handler;


# instance fields
.field final synthetic z:Lcom/baidu/game/activity/PaymentActivity;


# direct methods
.method constructor <init>(Lcom/baidu/game/activity/PaymentActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/game/activity/PaymentActivity$2;->z:Lcom/baidu/game/activity/PaymentActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    new-array v1, v4, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "login result:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v1}, Lcom/baidu/game/util/d;->a([Ljava/lang/Object;)V

    new-array v1, v4, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "login message:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v1}, Lcom/baidu/game/util/d;->a([Ljava/lang/Object;)V

    if-ne v0, v4, :cond_1

    iget-object v0, p0, Lcom/baidu/game/activity/PaymentActivity$2;->z:Lcom/baidu/game/activity/PaymentActivity;

    invoke-static {v0}, Lcom/baidu/game/activity/PaymentActivity;->b(Lcom/baidu/game/activity/PaymentActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/game/activity/PaymentActivity$2;->z:Lcom/baidu/game/activity/PaymentActivity;

    invoke-static {v0}, Lcom/baidu/game/activity/PaymentActivity;->b(Lcom/baidu/game/activity/PaymentActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "test"

    const-string v1, "dismiss the dialog"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/baidu/game/activity/PaymentActivity$2;->z:Lcom/baidu/game/activity/PaymentActivity;

    invoke-static {v0}, Lcom/baidu/game/activity/PaymentActivity;->b(Lcom/baidu/game/activity/PaymentActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_1
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "login success,start the payment activity"

    aput-object v1, v0, v5

    invoke-static {v0}, Lcom/baidu/game/util/d;->a([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/baidu/game/activity/PaymentActivity$2;->z:Lcom/baidu/game/activity/PaymentActivity;

    invoke-static {v0}, Lcom/baidu/game/activity/PaymentActivity;->e(Lcom/baidu/game/activity/PaymentActivity;)V

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
