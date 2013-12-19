.class Lcom/shandagames/gameplus/GamePlus$1$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unipay/unipay_sdk/UniPay$UniPayCallBack;


# instance fields
.field final synthetic this$1:Lcom/shandagames/gameplus/GamePlus$1;


# direct methods
.method constructor <init>(Lcom/shandagames/gameplus/GamePlus$1;)V
    .locals 0

    iput-object p1, p0, Lcom/shandagames/gameplus/GamePlus$1$2;->this$1:Lcom/shandagames/gameplus/GamePlus$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public PayResult(ILjava/lang/String;)V
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unipay result:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shandagames/gameplus/log/LogDebugger;->println(Ljava/lang/String;)V

    if-ne p1, v3, :cond_0

    invoke-static {}, Lcom/shandagames/gameplus/GamePlus;->access$1()Lcom/shandagames/gameplus/GamePlus$PayCallback;

    move-result-object v0

    const-string v1, "0"

    const-string v2, "\u8d2d\u4e70\u6210\u529f\u3002"

    invoke-interface {v0, v3, v1, v2}, Lcom/shandagames/gameplus/GamePlus$PayCallback;->onResult(ZLjava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    const/4 v0, 0x7

    if-ne p1, v0, :cond_2

    :cond_1
    invoke-static {}, Lcom/shandagames/gameplus/GamePlus;->access$2()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/shandagames/gameplus/GamePlus;->access$3()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shandagames/gameplus/network/RequestConstant;->checkPayResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/shandagames/gameplus/GamePlus$1$2$1;

    invoke-direct {v1, p0, v0}, Lcom/shandagames/gameplus/GamePlus$1$2$1;-><init>(Lcom/shandagames/gameplus/GamePlus$1$2;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/shandagames/gameplus/api/impl/network/GLRequestExecutor;->doAsync(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/shandagames/gameplus/GamePlus;->access$0()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/shandagames/gameplus/util/ToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/shandagames/gameplus/GamePlus;->access$1()Lcom/shandagames/gameplus/GamePlus$PayCallback;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "1"

    invoke-interface {v0, v1, v2, p2}, Lcom/shandagames/gameplus/GamePlus$PayCallback;->onResult(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
