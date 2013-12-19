.class Lcom/shandagames/gameplus/GameDummyActivity$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/shandagames/gameplus/GamePlus$ValidateCallback;


# instance fields
.field final synthetic this$1:Lcom/shandagames/gameplus/GameDummyActivity$2;


# direct methods
.method constructor <init>(Lcom/shandagames/gameplus/GameDummyActivity$2;)V
    .locals 0

    iput-object p1, p0, Lcom/shandagames/gameplus/GameDummyActivity$2$1;->this$1:Lcom/shandagames/gameplus/GameDummyActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 3

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "callback:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/shandagames/gameplus/GameDummyActivity$2$1;->this$1:Lcom/shandagames/gameplus/GameDummyActivity$2;

    #getter for: Lcom/shandagames/gameplus/GameDummyActivity$2;->this$0:Lcom/shandagames/gameplus/GameDummyActivity;
    invoke-static {v0}, Lcom/shandagames/gameplus/GameDummyActivity$2;->access$0(Lcom/shandagames/gameplus/GameDummyActivity$2;)Lcom/shandagames/gameplus/GameDummyActivity;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/shandagames/gameplus/util/ToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
