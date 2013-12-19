.class Lcom/shandagames/gameplus/GamePlus$1$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/game/listener/PayCallbackListener;


# instance fields
.field final synthetic this$1:Lcom/shandagames/gameplus/GamePlus$1;


# direct methods
.method constructor <init>(Lcom/shandagames/gameplus/GamePlus$1;)V
    .locals 0

    iput-object p1, p0, Lcom/shandagames/gameplus/GamePlus$1$3;->this$1:Lcom/shandagames/gameplus/GamePlus$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILcom/baidu/game/model/OrderInfo;)V
    .locals 4

    if-nez p1, :cond_1

    invoke-static {}, Lcom/shandagames/gameplus/GamePlus;->access$0()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u672a\u6210\u529f\u8d2d\u4e70\u3002"

    invoke-static {v0, v1}, Lcom/shandagames/gameplus/util/ToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/shandagames/gameplus/GamePlus;->access$1()Lcom/shandagames/gameplus/GamePlus$PayCallback;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "1"

    const-string v3, "\u672a\u6210\u529f\u8d2d\u4e70\u3002"

    invoke-interface {v0, v1, v2, v3}, Lcom/shandagames/gameplus/GamePlus$PayCallback;->onResult(ZLjava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-static {}, Lcom/shandagames/gameplus/GamePlus;->access$2()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/shandagames/gameplus/GamePlus;->access$3()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shandagames/gameplus/network/RequestConstant;->checkPayResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/shandagames/gameplus/GamePlus$1$3$1;

    invoke-direct {v1, p0, v0}, Lcom/shandagames/gameplus/GamePlus$1$3$1;-><init>(Lcom/shandagames/gameplus/GamePlus$1$3;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/shandagames/gameplus/api/impl/network/GLRequestExecutor;->doAsync(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
