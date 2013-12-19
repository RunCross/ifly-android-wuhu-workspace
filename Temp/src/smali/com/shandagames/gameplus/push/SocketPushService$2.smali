.class Lcom/shandagames/gameplus/push/SocketPushService$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/shandagames/gameplus/push/SocketPushService;


# direct methods
.method constructor <init>(Lcom/shandagames/gameplus/push/SocketPushService;)V
    .locals 0

    iput-object p1, p0, Lcom/shandagames/gameplus/push/SocketPushService$2;->this$0:Lcom/shandagames/gameplus/push/SocketPushService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/16 v4, 0x3f4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/shandagames/gameplus/push/SocketPushService$2;->this$0:Lcom/shandagames/gameplus/push/SocketPushService;

    invoke-virtual {v1}, Lcom/shandagames/gameplus/push/SocketPushService;->closeSocket()V

    iget-object v1, p0, Lcom/shandagames/gameplus/push/SocketPushService$2;->this$0:Lcom/shandagames/gameplus/push/SocketPushService;

    #getter for: Lcom/shandagames/gameplus/push/SocketPushService;->mPushServerInfo:Lcom/shandagames/gameplus/model/PushServerInfo;
    invoke-static {v1}, Lcom/shandagames/gameplus/push/SocketPushService;->access$11(Lcom/shandagames/gameplus/push/SocketPushService;)Lcom/shandagames/gameplus/model/PushServerInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/shandagames/gameplus/push/SocketPushService$2;->this$0:Lcom/shandagames/gameplus/push/SocketPushService;

    #getter for: Lcom/shandagames/gameplus/push/SocketPushService;->mPushServerInfo:Lcom/shandagames/gameplus/model/PushServerInfo;
    invoke-static {v1}, Lcom/shandagames/gameplus/push/SocketPushService;->access$11(Lcom/shandagames/gameplus/push/SocketPushService;)Lcom/shandagames/gameplus/model/PushServerInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shandagames/gameplus/model/PushServerInfo;->isNull()Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/shandagames/gameplus/push/SocketPushService$2;->this$0:Lcom/shandagames/gameplus/push/SocketPushService;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u521b\u5efaSocket"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/shandagames/gameplus/push/SocketPushService$2;->this$0:Lcom/shandagames/gameplus/push/SocketPushService;

    #getter for: Lcom/shandagames/gameplus/push/SocketPushService;->mPushServerInfo:Lcom/shandagames/gameplus/model/PushServerInfo;
    invoke-static {v3}, Lcom/shandagames/gameplus/push/SocketPushService;->access$11(Lcom/shandagames/gameplus/push/SocketPushService;)Lcom/shandagames/gameplus/model/PushServerInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/shandagames/gameplus/model/PushServerInfo;->getPushserver()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/shandagames/gameplus/push/SocketPushService$2;->this$0:Lcom/shandagames/gameplus/push/SocketPushService;

    #getter for: Lcom/shandagames/gameplus/push/SocketPushService;->mPushServerInfo:Lcom/shandagames/gameplus/model/PushServerInfo;
    invoke-static {v3}, Lcom/shandagames/gameplus/push/SocketPushService;->access$11(Lcom/shandagames/gameplus/push/SocketPushService;)Lcom/shandagames/gameplus/model/PushServerInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/shandagames/gameplus/model/PushServerInfo;->getPort()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/shandagames/gameplus/push/SocketPushService;->updateLog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/shandagames/gameplus/push/SocketPushService$2;->this$0:Lcom/shandagames/gameplus/push/SocketPushService;

    #getter for: Lcom/shandagames/gameplus/push/SocketPushService;->mPushServerInfo:Lcom/shandagames/gameplus/model/PushServerInfo;
    invoke-static {v1}, Lcom/shandagames/gameplus/push/SocketPushService;->access$11(Lcom/shandagames/gameplus/push/SocketPushService;)Lcom/shandagames/gameplus/model/PushServerInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shandagames/gameplus/model/PushServerInfo;->getPort()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/shandagames/gameplus/push/SocketPushService$2;->this$0:Lcom/shandagames/gameplus/push/SocketPushService;

    new-instance v2, Ljava/net/Socket;

    iget-object v3, p0, Lcom/shandagames/gameplus/push/SocketPushService$2;->this$0:Lcom/shandagames/gameplus/push/SocketPushService;

    #getter for: Lcom/shandagames/gameplus/push/SocketPushService;->mPushServerInfo:Lcom/shandagames/gameplus/model/PushServerInfo;
    invoke-static {v3}, Lcom/shandagames/gameplus/push/SocketPushService;->access$11(Lcom/shandagames/gameplus/push/SocketPushService;)Lcom/shandagames/gameplus/model/PushServerInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/shandagames/gameplus/model/PushServerInfo;->getPushserver()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    #setter for: Lcom/shandagames/gameplus/push/SocketPushService;->mSocket:Ljava/net/Socket;
    invoke-static {v1, v2}, Lcom/shandagames/gameplus/push/SocketPushService;->access$12(Lcom/shandagames/gameplus/push/SocketPushService;Ljava/net/Socket;)V

    iget-object v0, p0, Lcom/shandagames/gameplus/push/SocketPushService$2;->this$0:Lcom/shandagames/gameplus/push/SocketPushService;

    #getter for: Lcom/shandagames/gameplus/push/SocketPushService;->mSocket:Ljava/net/Socket;
    invoke-static {v0}, Lcom/shandagames/gameplus/push/SocketPushService;->access$13(Lcom/shandagames/gameplus/push/SocketPushService;)Ljava/net/Socket;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setKeepAlive(Z)V

    iget-object v0, p0, Lcom/shandagames/gameplus/push/SocketPushService$2;->this$0:Lcom/shandagames/gameplus/push/SocketPushService;

    const-string v1, "\u521b\u5efaSocket\u6210\u529f"

    invoke-virtual {v0, v1}, Lcom/shandagames/gameplus/push/SocketPushService;->updateLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/shandagames/gameplus/push/SocketPushService$2;->this$0:Lcom/shandagames/gameplus/push/SocketPushService;

    const/16 v1, 0x3f3

    invoke-virtual {v0, v1}, Lcom/shandagames/gameplus/push/SocketPushService;->sendMessage(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/shandagames/gameplus/push/SocketPushService$2;->this$0:Lcom/shandagames/gameplus/push/SocketPushService;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u521b\u5efaSocket\u5931\u8d25 "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/shandagames/gameplus/push/SocketPushService;->updateLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/shandagames/gameplus/push/SocketPushService$2;->this$0:Lcom/shandagames/gameplus/push/SocketPushService;

    invoke-virtual {v0, v4}, Lcom/shandagames/gameplus/push/SocketPushService;->sendMessage(I)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/shandagames/gameplus/push/SocketPushService$2;->this$0:Lcom/shandagames/gameplus/push/SocketPushService;

    const-string v1, "\u521b\u5efaSocket\u5931\u8d25 mPushServerInfo == null"

    invoke-virtual {v0, v1}, Lcom/shandagames/gameplus/push/SocketPushService;->updateLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/shandagames/gameplus/push/SocketPushService$2;->this$0:Lcom/shandagames/gameplus/push/SocketPushService;

    invoke-virtual {v0, v4}, Lcom/shandagames/gameplus/push/SocketPushService;->sendMessage(I)V

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method
