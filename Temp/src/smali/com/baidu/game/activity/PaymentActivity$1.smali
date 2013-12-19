.class Lcom/baidu/game/activity/PaymentActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/game/listener/PayCallbackListener;


# instance fields
.field final synthetic z:Lcom/baidu/game/activity/PaymentActivity;


# direct methods
.method constructor <init>(Lcom/baidu/game/activity/PaymentActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/game/activity/PaymentActivity$1;->z:Lcom/baidu/game/activity/PaymentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILcom/baidu/game/model/OrderInfo;)V
    .locals 3

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/baidu/game/model/OrderInfo;->getOrderId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/game/activity/PaymentActivity$1;->z:Lcom/baidu/game/activity/PaymentActivity;

    invoke-static {v0}, Lcom/baidu/game/activity/PaymentActivity;->a(Lcom/baidu/game/activity/PaymentActivity;)Landroid/webkit/WebView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "javascript:setOrderId(\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/baidu/game/model/OrderInfo;->getOrderId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/baidu/game/activity/PaymentActivity$1;->z:Lcom/baidu/game/activity/PaymentActivity;

    invoke-static {v0}, Lcom/baidu/game/activity/PaymentActivity;->a(Lcom/baidu/game/activity/PaymentActivity;)Landroid/webkit/WebView;

    move-result-object v0

    const-string v1, "javascript:clearOrderInfo()"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method
