.class Lcom/shandagames/gameplus/push/SocketPushService$7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/shandagames/gameplus/push/SocketPushService;


# direct methods
.method constructor <init>(Lcom/shandagames/gameplus/push/SocketPushService;)V
    .locals 0

    iput-object p1, p0, Lcom/shandagames/gameplus/push/SocketPushService$7;->this$0:Lcom/shandagames/gameplus/push/SocketPushService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/16 v4, 0x3fe

    iget-object v0, p0, Lcom/shandagames/gameplus/push/SocketPushService$7;->this$0:Lcom/shandagames/gameplus/push/SocketPushService;

    invoke-virtual {v0}, Lcom/shandagames/gameplus/push/SocketPushService;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shandagames/gameplus/push/SocketPushService$7;->this$0:Lcom/shandagames/gameplus/push/SocketPushService;

    #getter for: Lcom/shandagames/gameplus/push/SocketPushService;->mPushServerInfo:Lcom/shandagames/gameplus/model/PushServerInfo;
    invoke-static {v0}, Lcom/shandagames/gameplus/push/SocketPushService;->access$11(Lcom/shandagames/gameplus/push/SocketPushService;)Lcom/shandagames/gameplus/model/PushServerInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/shandagames/gameplus/push/SocketPushService$7;->this$0:Lcom/shandagames/gameplus/push/SocketPushService;

    const/16 v1, 0x3ff

    const/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2}, Lcom/shandagames/gameplus/push/SocketPushService;->setAlarmManagerTime(II)V

    iget-object v0, p0, Lcom/shandagames/gameplus/push/SocketPushService$7;->this$0:Lcom/shandagames/gameplus/push/SocketPushService;

    #getter for: Lcom/shandagames/gameplus/push/SocketPushService;->mSocket:Ljava/net/Socket;
    invoke-static {v0}, Lcom/shandagames/gameplus/push/SocketPushService;->access$13(Lcom/shandagames/gameplus/push/SocketPushService;)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-static {}, Lcom/shandagames/gameplus/push/SocketPushService;->access$15()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/shandagames/gameplus/push/SocketPushService$7;->this$0:Lcom/shandagames/gameplus/push/SocketPushService;

    #getter for: Lcom/shandagames/gameplus/push/SocketPushService;->mPushServerInfo:Lcom/shandagames/gameplus/model/PushServerInfo;
    invoke-static {v2}, Lcom/shandagames/gameplus/push/SocketPushService;->access$11(Lcom/shandagames/gameplus/push/SocketPushService;)Lcom/shandagames/gameplus/model/PushServerInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/shandagames/gameplus/model/PushServerInfo;->getToken()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/shandagames/gameplus/push/SocketPushService$7;->this$0:Lcom/shandagames/gameplus/push/SocketPushService;

    #getter for: Lcom/shandagames/gameplus/push/SocketPushService;->mPushServerInfo:Lcom/shandagames/gameplus/model/PushServerInfo;
    invoke-static {v3}, Lcom/shandagames/gameplus/push/SocketPushService;->access$11(Lcom/shandagames/gameplus/push/SocketPushService;)Lcom/shandagames/gameplus/model/PushServerInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/shandagames/gameplus/model/PushServerInfo;->getTimepos()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/shandagames/gameplus/util/MessageUtil;->spellRegisterMsg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x0

    array-length v3, v1

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    iget-object v0, p0, Lcom/shandagames/gameplus/push/SocketPushService$7;->this$0:Lcom/shandagames/gameplus/push/SocketPushService;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u6ce8\u518c\u4fe1\u606f "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shandagames/gameplus/push/SocketPushService;->updateLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/shandagames/gameplus/push/SocketPushService$7;->this$0:Lcom/shandagames/gameplus/push/SocketPushService;

    const/16 v1, 0x3fe

    invoke-virtual {v0, v1}, Lcom/shandagames/gameplus/push/SocketPushService;->parseMessage(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/shandagames/gameplus/push/SocketPushService$7;->this$0:Lcom/shandagames/gameplus/push/SocketPushService;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u6ce8\u518c\u5931\u8d25 "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/shandagames/gameplus/push/SocketPushService;->updateLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/shandagames/gameplus/push/SocketPushService$7;->this$0:Lcom/shandagames/gameplus/push/SocketPushService;

    invoke-virtual {v0, v4}, Lcom/shandagames/gameplus/push/SocketPushService;->sendMessage(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/shandagames/gameplus/push/SocketPushService$7;->this$0:Lcom/shandagames/gameplus/push/SocketPushService;

    const-string v1, "\u6ce8\u518c\u5931\u8d25 mSocket == null"

    invoke-virtual {v0, v1}, Lcom/shandagames/gameplus/push/SocketPushService;->updateLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/shandagames/gameplus/push/SocketPushService$7;->this$0:Lcom/shandagames/gameplus/push/SocketPushService;

    invoke-virtual {v0, v4}, Lcom/shandagames/gameplus/push/SocketPushService;->sendMessage(I)V

    goto :goto_0
.end method
