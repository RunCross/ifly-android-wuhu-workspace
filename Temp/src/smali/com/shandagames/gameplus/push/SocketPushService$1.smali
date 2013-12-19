.class Lcom/shandagames/gameplus/push/SocketPushService$1;
.super Landroid/os/Handler;


# instance fields
.field final synthetic this$0:Lcom/shandagames/gameplus/push/SocketPushService;


# direct methods
.method constructor <init>(Lcom/shandagames/gameplus/push/SocketPushService;)V
    .locals 0

    iput-object p1, p0, Lcom/shandagames/gameplus/push/SocketPushService$1;->this$0:Lcom/shandagames/gameplus/push/SocketPushService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    const/16 v5, 0x41a

    const/4 v4, 0x1

    const/16 v3, 0x406

    const/16 v2, 0x3df

    const/4 v1, 0x0

    sget-boolean v0, Lcom/shandagames/gameplus/push/SocketPushService;->isStop:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/shandagames/gameplus/push/SocketPushService$1;->this$0:Lcom/shandagames/gameplus/push/SocketPushService;

    invoke-virtual {v0}, Lcom/shandagames/gameplus/push/SocketPushService;->clear()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const-string v1, "SocketPushService"

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/shandagames/gameplus/log/LogDebugger;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/shandagames/gameplus/push/SocketPushService$1;->this$0:Lcom/shandagames/gameplus/push/SocketPushService;

    invoke-virtual {v0}, Lcom/shandagames/gameplus/push/SocketPushService;->isAlive()Z

    move-result v0

    if-nez v0, :cond_2

    sget v0, Lcom/shandagames/gameplus/push/SocketPushService;->pushState:I

    const/16 v1, 0x3de

    if-ne v0, v1, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/shandagames/gameplus/push/SocketPushService$1;->this$0:Lcom/shandagames/gameplus/push/SocketPushService;

    const-string v1, "\u5df2\u5728\u8fde\u63a5\u72b6\u6001\uff0c\u4e0d\u91cd\u65b0\u8fde\u63a5"

    invoke-virtual {v0, v1}, Lcom/shandagames/gameplus/push/SocketPushService;->updateLog(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget v0, p1, Landroid/os/Message;->what:I

    sput v0, Lcom/shandagames/gameplus/push/SocketPushService;->pushState:I

    iget-object v0, p0, Lcom/shandagames/gameplus/push/SocketPushService$1;->this$0:Lcom/shandagames/gameplus/push/SocketPushService;

    invoke-virtual {v0}, Lcom/shandagames/gameplus/push/SocketPushService;->getPushServerInfo()V

    goto :goto_0

    :sswitch_2
    sget v0, Lcom/shandagames/gameplus/push/SocketPushService;->pushState:I

    if-eq v0, v2, :cond_5

    sput v2, Lcom/shandagames/gameplus/push/SocketPushService;->pushState:I

    iget-object v0, p0, Lcom/shandagames/gameplus/push/SocketPushService$1;->this$0:Lcom/shandagames/gameplus/push/SocketPushService;

    invoke-virtual {v0}, Lcom/shandagames/gameplus/push/SocketPushService;->clear()V

    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    const v1, 0xea60

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit16 v0, v0, 0x7530

    sget-boolean v1, Lcom/shandagames/gameplus/network/ConnectionChangeReceiver;->isConnected:Z

    if-nez v1, :cond_4

    const v0, 0x36ee80

    :cond_4
    iget-object v1, p0, Lcom/shandagames/gameplus/push/SocketPushService$1;->this$0:Lcom/shandagames/gameplus/push/SocketPushService;

    const/16 v2, 0x3de

    invoke-virtual {v1, v2, v0}, Lcom/shandagames/gameplus/push/SocketPushService;->setAlarmManagerTime(II)V

    iget-object v1, p0, Lcom/shandagames/gameplus/push/SocketPushService$1;->this$0:Lcom/shandagames/gameplus/push/SocketPushService;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u5c06\u5728 "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\u6beb\u79d2\u540e \u91cd\u65b0\u8fde\u63a5"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/shandagames/gameplus/push/SocketPushService;->updateLog(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/shandagames/gameplus/push/SocketPushService$1;->this$0:Lcom/shandagames/gameplus/push/SocketPushService;

    const-string v1, "\u5df2\u5728\u91cd\u65b0\u8fde\u63a5\u7b49\u5f85\u72b6\u6001\uff0c\u4e0d\u91cd\u65b0\u8bbe\u7f6e "

    invoke-virtual {v0, v1}, Lcom/shandagames/gameplus/push/SocketPushService;->updateLog(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_3
    iget v0, p1, Landroid/os/Message;->what:I

    sput v0, Lcom/shandagames/gameplus/push/SocketPushService;->pushState:I

    sput-boolean v4, Lcom/shandagames/gameplus/push/SocketPushService;->isStop:Z

    iget-object v0, p0, Lcom/shandagames/gameplus/push/SocketPushService$1;->this$0:Lcom/shandagames/gameplus/push/SocketPushService;

    invoke-virtual {v0}, Lcom/shandagames/gameplus/push/SocketPushService;->clear()V

    goto/16 :goto_0

    :sswitch_4
    invoke-static {}, Lcom/shandagames/gameplus/push/SocketPushService;->access$0()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p1, Landroid/os/Message;->what:I

    sput v0, Lcom/shandagames/gameplus/push/SocketPushService;->pushState:I

    invoke-static {v4}, Lcom/shandagames/gameplus/push/SocketPushService;->access$1(Z)V

    invoke-static {v1}, Lcom/shandagames/gameplus/push/SocketPushService;->access$2(Z)V

    iget-object v0, p0, Lcom/shandagames/gameplus/push/SocketPushService$1;->this$0:Lcom/shandagames/gameplus/push/SocketPushService;

    #getter for: Lcom/shandagames/gameplus/push/SocketPushService;->checkBeatRunnable:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/shandagames/gameplus/push/SocketPushService;->access$3(Lcom/shandagames/gameplus/push/SocketPushService;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lcom/shandagames/gameplus/api/impl/network/GLRequestExecutor;->doAsync(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :sswitch_5
    iget v0, p1, Landroid/os/Message;->what:I

    sput v0, Lcom/shandagames/gameplus/push/SocketPushService;->pushState:I

    invoke-static {v1}, Lcom/shandagames/gameplus/push/SocketPushService;->access$1(Z)V

    invoke-static {v1}, Lcom/shandagames/gameplus/push/SocketPushService;->access$2(Z)V

    iget-object v0, p0, Lcom/shandagames/gameplus/push/SocketPushService$1;->this$0:Lcom/shandagames/gameplus/push/SocketPushService;

    invoke-virtual {v0, v3}, Lcom/shandagames/gameplus/push/SocketPushService;->sendMessage(I)V

    goto/16 :goto_0

    :sswitch_6
    sget v0, Lcom/shandagames/gameplus/push/SocketPushService;->pushState:I

    if-ne v0, v3, :cond_0

    invoke-static {}, Lcom/shandagames/gameplus/push/SocketPushService;->access$0()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p1, Landroid/os/Message;->what:I

    sput v0, Lcom/shandagames/gameplus/push/SocketPushService;->pushState:I

    invoke-static {v4}, Lcom/shandagames/gameplus/push/SocketPushService;->access$1(Z)V

    invoke-static {v1}, Lcom/shandagames/gameplus/push/SocketPushService;->access$2(Z)V

    iget-object v0, p0, Lcom/shandagames/gameplus/push/SocketPushService$1;->this$0:Lcom/shandagames/gameplus/push/SocketPushService;

    #getter for: Lcom/shandagames/gameplus/push/SocketPushService;->checkBeatRunnable2:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/shandagames/gameplus/push/SocketPushService;->access$4(Lcom/shandagames/gameplus/push/SocketPushService;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lcom/shandagames/gameplus/api/impl/network/GLRequestExecutor;->doAsync(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :sswitch_7
    iget v0, p1, Landroid/os/Message;->what:I

    sput v0, Lcom/shandagames/gameplus/push/SocketPushService;->pushState:I

    iget-object v0, p0, Lcom/shandagames/gameplus/push/SocketPushService$1;->this$0:Lcom/shandagames/gameplus/push/SocketPushService;

    #getter for: Lcom/shandagames/gameplus/push/SocketPushService;->sendMsgReportRunnable:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/shandagames/gameplus/push/SocketPushService;->access$5(Lcom/shandagames/gameplus/push/SocketPushService;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lcom/shandagames/gameplus/api/impl/network/GLRequestExecutor;->doAsync(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :sswitch_8
    sput v2, Lcom/shandagames/gameplus/push/SocketPushService;->pushState:I

    iget-object v0, p0, Lcom/shandagames/gameplus/push/SocketPushService$1;->this$0:Lcom/shandagames/gameplus/push/SocketPushService;

    invoke-virtual {v0, v3}, Lcom/shandagames/gameplus/push/SocketPushService;->sendMessage(I)V

    goto/16 :goto_0

    :sswitch_9
    sput v2, Lcom/shandagames/gameplus/push/SocketPushService;->pushState:I

    iget-object v0, p0, Lcom/shandagames/gameplus/push/SocketPushService$1;->this$0:Lcom/shandagames/gameplus/push/SocketPushService;

    invoke-virtual {v0, v5}, Lcom/shandagames/gameplus/push/SocketPushService;->sendMessage(I)V

    goto/16 :goto_0

    :sswitch_a
    invoke-static {}, Lcom/shandagames/gameplus/push/SocketPushService;->access$6()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p1, Landroid/os/Message;->what:I

    sput v0, Lcom/shandagames/gameplus/push/SocketPushService;->pushState:I

    invoke-static {v4}, Lcom/shandagames/gameplus/push/SocketPushService;->access$2(Z)V

    iget-object v0, p0, Lcom/shandagames/gameplus/push/SocketPushService$1;->this$0:Lcom/shandagames/gameplus/push/SocketPushService;

    #getter for: Lcom/shandagames/gameplus/push/SocketPushService;->getMessageRunnable:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/shandagames/gameplus/push/SocketPushService;->access$7(Lcom/shandagames/gameplus/push/SocketPushService;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lcom/shandagames/gameplus/api/impl/network/GLRequestExecutor;->doAsync(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :sswitch_b
    iget v0, p1, Landroid/os/Message;->what:I

    sput v0, Lcom/shandagames/gameplus/push/SocketPushService;->pushState:I

    invoke-static {v1}, Lcom/shandagames/gameplus/push/SocketPushService;->access$2(Z)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/shandagames/gameplus/push/SocketPushService$1;->this$0:Lcom/shandagames/gameplus/push/SocketPushService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/shandagames/gameplus/model/MessageModel;

    #calls: Lcom/shandagames/gameplus/push/SocketPushService;->showNotification(Lcom/shandagames/gameplus/model/MessageModel;)V
    invoke-static {v1, v0}, Lcom/shandagames/gameplus/push/SocketPushService;->access$8(Lcom/shandagames/gameplus/push/SocketPushService;Lcom/shandagames/gameplus/model/MessageModel;)V

    :cond_6
    iget-object v0, p0, Lcom/shandagames/gameplus/push/SocketPushService$1;->this$0:Lcom/shandagames/gameplus/push/SocketPushService;

    const/16 v1, 0x410

    invoke-virtual {v0, v1}, Lcom/shandagames/gameplus/push/SocketPushService;->sendMessage(I)V

    goto/16 :goto_0

    :sswitch_c
    iget v0, p1, Landroid/os/Message;->what:I

    sput v0, Lcom/shandagames/gameplus/push/SocketPushService;->pushState:I

    invoke-static {v1}, Lcom/shandagames/gameplus/push/SocketPushService;->access$2(Z)V

    iget-object v0, p0, Lcom/shandagames/gameplus/push/SocketPushService$1;->this$0:Lcom/shandagames/gameplus/push/SocketPushService;

    invoke-virtual {v0, v5}, Lcom/shandagames/gameplus/push/SocketPushService;->sendMessage(I)V

    goto/16 :goto_0

    :sswitch_d
    iget v0, p1, Landroid/os/Message;->what:I

    sput v0, Lcom/shandagames/gameplus/push/SocketPushService;->pushState:I

    iget-object v0, p0, Lcom/shandagames/gameplus/push/SocketPushService$1;->this$0:Lcom/shandagames/gameplus/push/SocketPushService;

    #getter for: Lcom/shandagames/gameplus/push/SocketPushService;->registerRunnable:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/shandagames/gameplus/push/SocketPushService;->access$9(Lcom/shandagames/gameplus/push/SocketPushService;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lcom/shandagames/gameplus/api/impl/network/GLRequestExecutor;->doAsync(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :sswitch_e
    iget v0, p1, Landroid/os/Message;->what:I

    sput v0, Lcom/shandagames/gameplus/push/SocketPushService;->pushState:I

    iget-object v0, p0, Lcom/shandagames/gameplus/push/SocketPushService$1;->this$0:Lcom/shandagames/gameplus/push/SocketPushService;

    invoke-virtual {v0, v3}, Lcom/shandagames/gameplus/push/SocketPushService;->sendMessage(I)V

    goto/16 :goto_0

    :sswitch_f
    iget v0, p1, Landroid/os/Message;->what:I

    sput v0, Lcom/shandagames/gameplus/push/SocketPushService;->pushState:I

    iget-object v0, p0, Lcom/shandagames/gameplus/push/SocketPushService$1;->this$0:Lcom/shandagames/gameplus/push/SocketPushService;

    #getter for: Lcom/shandagames/gameplus/push/SocketPushService;->createSocketRunnable:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/shandagames/gameplus/push/SocketPushService;->access$10(Lcom/shandagames/gameplus/push/SocketPushService;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lcom/shandagames/gameplus/api/impl/network/GLRequestExecutor;->doAsync(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :sswitch_10
    iget v0, p1, Landroid/os/Message;->what:I

    sput v0, Lcom/shandagames/gameplus/push/SocketPushService;->pushState:I

    iget-object v0, p0, Lcom/shandagames/gameplus/push/SocketPushService$1;->this$0:Lcom/shandagames/gameplus/push/SocketPushService;

    const/16 v1, 0x3fc

    invoke-virtual {v0, v1}, Lcom/shandagames/gameplus/push/SocketPushService;->sendMessage(I)V

    goto/16 :goto_0

    :sswitch_11
    iget v0, p1, Landroid/os/Message;->what:I

    sput v0, Lcom/shandagames/gameplus/push/SocketPushService;->pushState:I

    iget-object v0, p0, Lcom/shandagames/gameplus/push/SocketPushService$1;->this$0:Lcom/shandagames/gameplus/push/SocketPushService;

    invoke-virtual {v0}, Lcom/shandagames/gameplus/push/SocketPushService;->getPushServerInfo()V

    goto/16 :goto_0

    :sswitch_12
    iget v0, p1, Landroid/os/Message;->what:I

    sput v0, Lcom/shandagames/gameplus/push/SocketPushService;->pushState:I

    iget-object v0, p0, Lcom/shandagames/gameplus/push/SocketPushService$1;->this$0:Lcom/shandagames/gameplus/push/SocketPushService;

    const/16 v1, 0x3f2

    invoke-virtual {v0, v1}, Lcom/shandagames/gameplus/push/SocketPushService;->sendMessage(I)V

    goto/16 :goto_0

    :sswitch_13
    sget v0, Lcom/shandagames/gameplus/push/SocketPushService;->pushState:I

    const/16 v1, 0x3fc

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/shandagames/gameplus/push/SocketPushService$1;->this$0:Lcom/shandagames/gameplus/push/SocketPushService;

    const/16 v1, 0x3fe

    invoke-virtual {v0, v1}, Lcom/shandagames/gameplus/push/SocketPushService;->sendMessage(I)V

    goto/16 :goto_0

    :sswitch_14
    sget v0, Lcom/shandagames/gameplus/push/SocketPushService;->pushState:I

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/shandagames/gameplus/push/SocketPushService$1;->this$0:Lcom/shandagames/gameplus/push/SocketPushService;

    const/16 v1, 0x42e

    invoke-virtual {v0, v1}, Lcom/shandagames/gameplus/push/SocketPushService;->sendMessage(I)V

    goto/16 :goto_0

    :sswitch_15
    sget v0, Lcom/shandagames/gameplus/push/SocketPushService;->pushState:I

    if-ne v0, v5, :cond_0

    iget-object v0, p0, Lcom/shandagames/gameplus/push/SocketPushService$1;->this$0:Lcom/shandagames/gameplus/push/SocketPushService;

    const/16 v1, 0x41c

    invoke-virtual {v0, v1}, Lcom/shandagames/gameplus/push/SocketPushService;->sendMessage(I)V

    goto/16 :goto_0

    :sswitch_16
    sget v0, Lcom/shandagames/gameplus/push/SocketPushService;->pushState:I

    const/16 v1, 0x42e

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/shandagames/gameplus/push/SocketPushService$1;->this$0:Lcom/shandagames/gameplus/push/SocketPushService;

    const/16 v1, 0x41c

    invoke-virtual {v0, v1}, Lcom/shandagames/gameplus/push/SocketPushService;->sendMessage(I)V

    goto/16 :goto_0

    :sswitch_17
    iget v0, p1, Landroid/os/Message;->what:I

    sput v0, Lcom/shandagames/gameplus/push/SocketPushService;->pushState:I

    iget-object v0, p0, Lcom/shandagames/gameplus/push/SocketPushService$1;->this$0:Lcom/shandagames/gameplus/push/SocketPushService;

    invoke-virtual {v0, v2}, Lcom/shandagames/gameplus/push/SocketPushService;->sendMessage(I)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x378 -> :sswitch_0
        0x3de -> :sswitch_1
        0x3df -> :sswitch_2
        0x3e0 -> :sswitch_3
        0x3e8 -> :sswitch_11
        0x3e9 -> :sswitch_12
        0x3ea -> :sswitch_17
        0x3f2 -> :sswitch_f
        0x3f3 -> :sswitch_10
        0x3f4 -> :sswitch_17
        0x3fc -> :sswitch_d
        0x3fd -> :sswitch_e
        0x3fe -> :sswitch_17
        0x3ff -> :sswitch_13
        0x406 -> :sswitch_a
        0x407 -> :sswitch_b
        0x408 -> :sswitch_c
        0x409 -> :sswitch_14
        0x410 -> :sswitch_7
        0x411 -> :sswitch_8
        0x412 -> :sswitch_9
        0x41a -> :sswitch_4
        0x41b -> :sswitch_5
        0x41c -> :sswitch_17
        0x41d -> :sswitch_15
        0x424 -> :sswitch_17
        0x42e -> :sswitch_6
        0x431 -> :sswitch_16
    .end sparse-switch
.end method
