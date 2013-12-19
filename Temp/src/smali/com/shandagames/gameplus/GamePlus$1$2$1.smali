.class Lcom/shandagames/gameplus/GamePlus$1$2$1;
.super Lcom/shandagames/gameplus/api/impl/network/GLRequest;


# instance fields
.field final synthetic this$2:Lcom/shandagames/gameplus/GamePlus$1$2;


# direct methods
.method constructor <init>(Lcom/shandagames/gameplus/GamePlus$1$2;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/shandagames/gameplus/GamePlus$1$2$1;->this$2:Lcom/shandagames/gameplus/GamePlus$1$2;

    invoke-direct {p0, p2}, Lcom/shandagames/gameplus/api/impl/network/GLRequest;-><init>(Ljava/lang/String;)V

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

    if-nez p1, :cond_0

    invoke-static {}, Lcom/shandagames/gameplus/GamePlus;->access$1()Lcom/shandagames/gameplus/GamePlus$PayCallback;

    move-result-object v0

    const-string v1, "2"

    const-string v2, "\u7f51\u7edc\u8d85\u65f6\uff0c\u8bf7\u7a0d\u5019\u518d\u8bd5\u3002"

    invoke-interface {v0, v3, v1, v2}, Lcom/shandagames/gameplus/GamePlus$PayCallback;->onResult(ZLjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/shandagames/gameplus/GamePlus;->access$0()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u7f51\u7edc\u8d85\u65f6\uff0c\u8bf7\u7a0d\u5019\u518d\u8bd5\u3002"

    invoke-static {v0, v1}, Lcom/shandagames/gameplus/util/ToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/shandagames/gameplus/GamePlus;->access$1()Lcom/shandagames/gameplus/GamePlus$PayCallback;

    move-result-object v0

    const-string v1, "1"

    const-string v2, "\u672a\u6210\u529f\u8d2d\u4e70\u3002"

    invoke-interface {v0, v3, v1, v2}, Lcom/shandagames/gameplus/GamePlus$PayCallback;->onResult(ZLjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/shandagames/gameplus/GamePlus;->access$0()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u672a\u6210\u529f\u8d2d\u4e70\u3002"

    invoke-static {v0, v1}, Lcom/shandagames/gameplus/util/ToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onSuccess(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;)V"
        }
    .end annotation

    const/4 v4, 0x0

    const-string v0, "data"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/shandagames/gameplus/GamePlus;->access$1()Lcom/shandagames/gameplus/GamePlus$PayCallback;

    move-result-object v0

    const-string v1, "1"

    const-string v2, "\u672a\u6210\u529f\u8d2d\u4e70\u3002"

    invoke-interface {v0, v4, v1, v2}, Lcom/shandagames/gameplus/GamePlus$PayCallback;->onResult(ZLjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/shandagames/gameplus/GamePlus;->access$0()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u672a\u6210\u529f\u8d2d\u4e70\u3002"

    invoke-static {v0, v1}, Lcom/shandagames/gameplus/util/ToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "status"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/shandagames/gameplus/GamePlus;->access$1()Lcom/shandagames/gameplus/GamePlus$PayCallback;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "0"

    const-string v3, "\u8d2d\u4e70\u6210\u529f\u3002"

    invoke-interface {v0, v1, v2, v3}, Lcom/shandagames/gameplus/GamePlus$PayCallback;->onResult(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/shandagames/gameplus/GamePlus;->access$1()Lcom/shandagames/gameplus/GamePlus$PayCallback;

    move-result-object v1

    const-string v2, "1"

    const-string v3, "\u672a\u6210\u529f\u8d2d\u4e70\u3002"

    invoke-interface {v1, v4, v2, v3}, Lcom/shandagames/gameplus/GamePlus$PayCallback;->onResult(ZLjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/shandagames/gameplus/GamePlus;->access$0()Landroid/content/Context;

    move-result-object v1

    const-string v2, "\u672a\u6210\u529f\u8d2d\u4e70\u3002"

    invoke-static {v1, v2}, Lcom/shandagames/gameplus/util/ToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-static {}, Lcom/shandagames/gameplus/GamePlus;->access$1()Lcom/shandagames/gameplus/GamePlus$PayCallback;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "1"

    const-string v3, "\u672a\u6210\u529f\u8d2d\u4e70\u3002"

    invoke-interface {v0, v1, v2, v3}, Lcom/shandagames/gameplus/GamePlus$PayCallback;->onResult(ZLjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/shandagames/gameplus/GamePlus;->access$0()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u672a\u6210\u529f\u8d2d\u4e70\u3002"

    invoke-static {v0, v1}, Lcom/shandagames/gameplus/util/ToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
