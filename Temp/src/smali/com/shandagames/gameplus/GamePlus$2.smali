.class Lcom/shandagames/gameplus/GamePlus$2;
.super Lcom/shandagames/gameplus/api/impl/network/GLRequest;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/shandagames/gameplus/api/impl/network/GLRequest;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onFailure(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;)V"
        }
    .end annotation

    const/4 v3, 0x0

    invoke-static {v3}, Lcom/shandagames/gameplus/GamePlus;->access$9(I)V

    if-nez p1, :cond_0

    invoke-static {}, Lcom/shandagames/gameplus/GamePlus;->access$0()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u7f51\u7edc\u8d85\u65f6\uff0c\u8bf7\u7a0d\u5019\u518d\u8bd5\u3002"

    invoke-static {v0, v1}, Lcom/shandagames/gameplus/util/ToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/shandagames/gameplus/GamePlus;->access$1()Lcom/shandagames/gameplus/GamePlus$PayCallback;

    move-result-object v0

    const-string v1, "2"

    const-string v2, "\u7f51\u7edc\u8d85\u65f6\uff0c\u8bf7\u7a0d\u5019\u518d\u8bd5\u3002"

    invoke-interface {v0, v3, v1, v2}, Lcom/shandagames/gameplus/GamePlus$PayCallback;->onResult(ZLjava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/shandagames/gameplus/GamePlus;->access$0()Landroid/content/Context;

    move-result-object v0

    const-string v1, "message"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shandagames/gameplus/util/ToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/shandagames/gameplus/GamePlus;->access$1()Lcom/shandagames/gameplus/GamePlus$PayCallback;

    move-result-object v0

    const-string v1, "1"

    const-string v2, "message"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v3, v1, v2}, Lcom/shandagames/gameplus/GamePlus$PayCallback;->onResult(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onSuccess(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;)V"
        }
    .end annotation

    const-string v0, "data"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Lcom/shandagames/gameplus/GamePlus;->access$8()Landroid/os/Handler;

    move-result-object v1

    invoke-static {}, Lcom/shandagames/gameplus/GamePlus;->access$8()Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x64

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/shandagames/gameplus/GamePlus;->access$9(I)V

    return-void
.end method
