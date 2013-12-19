.class Lcom/shandagames/gameplus/GamePlus$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/shandagames/gameplus/impl/PayActivity$ExitPayActivityEvent;


# instance fields
.field final synthetic this$1:Lcom/shandagames/gameplus/GamePlus$1;


# direct methods
.method constructor <init>(Lcom/shandagames/gameplus/GamePlus$1;)V
    .locals 0

    iput-object p1, p0, Lcom/shandagames/gameplus/GamePlus$1$1;->this$1:Lcom/shandagames/gameplus/GamePlus$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent()V
    .locals 2

    invoke-static {}, Lcom/shandagames/gameplus/GamePlus;->access$1()Lcom/shandagames/gameplus/GamePlus$PayCallback;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/shandagames/gameplus/GamePlus;->access$2()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/shandagames/gameplus/GamePlus;->access$3()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shandagames/gameplus/network/RequestConstant;->checkPayResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/shandagames/gameplus/GamePlus$1$1$1;

    invoke-direct {v1, p0, v0}, Lcom/shandagames/gameplus/GamePlus$1$1$1;-><init>(Lcom/shandagames/gameplus/GamePlus$1$1;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/shandagames/gameplus/api/impl/network/GLRequestExecutor;->doAsync(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
