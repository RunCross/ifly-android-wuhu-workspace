.class Lcom/shandagames/gameplus/push/SocketPushService$8;
.super Lcom/shandagames/gameplus/api/impl/network/GLRequest;


# instance fields
.field final synthetic this$0:Lcom/shandagames/gameplus/push/SocketPushService;


# direct methods
.method constructor <init>(Lcom/shandagames/gameplus/push/SocketPushService;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/shandagames/gameplus/push/SocketPushService$8;->this$0:Lcom/shandagames/gameplus/push/SocketPushService;

    invoke-direct {p0, p2, p3, p4}, Lcom/shandagames/gameplus/api/impl/network/GLRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method protected onFailure(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/shandagames/gameplus/push/SocketPushService$8;->this$0:Lcom/shandagames/gameplus/push/SocketPushService;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u83b7\u53d6PushServer\u4fe1\u606f\u5931\u8d25"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shandagames/gameplus/push/SocketPushService;->updateLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/shandagames/gameplus/push/SocketPushService$8;->this$0:Lcom/shandagames/gameplus/push/SocketPushService;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Lcom/shandagames/gameplus/push/SocketPushService;->sendMessage(I)V

    return-void
.end method

.method protected onSuccess(Ljava/util/Map;)V
    .locals 6
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

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/shandagames/gameplus/push/SocketPushService$8;->this$0:Lcom/shandagames/gameplus/push/SocketPushService;

    const-class v2, Lcom/shandagames/gameplus/model/PushServerInfo;

    invoke-static {v0, v2}, Lcom/shandagames/gameplus/util/JsonUtils;->bindData(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shandagames/gameplus/model/PushServerInfo;

    #setter for: Lcom/shandagames/gameplus/push/SocketPushService;->mPushServerInfo:Lcom/shandagames/gameplus/model/PushServerInfo;
    invoke-static {v1, v0}, Lcom/shandagames/gameplus/push/SocketPushService;->access$16(Lcom/shandagames/gameplus/push/SocketPushService;Lcom/shandagames/gameplus/model/PushServerInfo;)V

    iget-object v0, p0, Lcom/shandagames/gameplus/push/SocketPushService$8;->this$0:Lcom/shandagames/gameplus/push/SocketPushService;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u83b7\u53d6PushServer\u4fe1\u606f\u6210\u529f"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/shandagames/gameplus/push/SocketPushService$8;->this$0:Lcom/shandagames/gameplus/push/SocketPushService;

    #getter for: Lcom/shandagames/gameplus/push/SocketPushService;->mPushServerInfo:Lcom/shandagames/gameplus/model/PushServerInfo;
    invoke-static {v2}, Lcom/shandagames/gameplus/push/SocketPushService;->access$11(Lcom/shandagames/gameplus/push/SocketPushService;)Lcom/shandagames/gameplus/model/PushServerInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/shandagames/gameplus/model/PushServerInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shandagames/gameplus/push/SocketPushService;->updateLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/shandagames/gameplus/push/SocketPushService$8;->this$0:Lcom/shandagames/gameplus/push/SocketPushService;

    #getter for: Lcom/shandagames/gameplus/push/SocketPushService;->mPushServerInfo:Lcom/shandagames/gameplus/model/PushServerInfo;
    invoke-static {v0}, Lcom/shandagames/gameplus/push/SocketPushService;->access$11(Lcom/shandagames/gameplus/push/SocketPushService;)Lcom/shandagames/gameplus/model/PushServerInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shandagames/gameplus/model/PushServerInfo;->getMessages()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_0

    const-class v1, Lcom/shandagames/gameplus/model/LastMessageModel;

    invoke-static {v0, v1}, Lcom/shandagames/gameplus/util/JsonUtils;->bindDataList(Ljava/lang/Object;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, v3, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/shandagames/gameplus/push/SocketPushService$8;->this$0:Lcom/shandagames/gameplus/push/SocketPushService;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Lcom/shandagames/gameplus/push/SocketPushService;->sendMessage(I)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shandagames/gameplus/model/LastMessageModel;

    iget-object v4, p0, Lcom/shandagames/gameplus/push/SocketPushService$8;->this$0:Lcom/shandagames/gameplus/push/SocketPushService;

    invoke-virtual {v1}, Lcom/shandagames/gameplus/model/LastMessageModel;->get_t()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/shandagames/gameplus/model/LastMessageModel;->get_c()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/shandagames/gameplus/push/SocketPushService;->showNotification(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v4, v5, v1}, Lcom/shandagames/gameplus/push/SocketPushService;->access$17(Lcom/shandagames/gameplus/push/SocketPushService;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v4, 0x1f4

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/shandagames/gameplus/log/LogDebugger;->exception(Ljava/lang/String;)V

    goto :goto_1
.end method
