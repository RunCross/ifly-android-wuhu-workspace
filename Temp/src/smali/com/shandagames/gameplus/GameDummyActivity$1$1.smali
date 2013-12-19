.class Lcom/shandagames/gameplus/GameDummyActivity$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/shandagames/gameplus/GamePlus$RequestSMSCallback;


# instance fields
.field final synthetic this$1:Lcom/shandagames/gameplus/GameDummyActivity$1;


# direct methods
.method constructor <init>(Lcom/shandagames/gameplus/GameDummyActivity$1;)V
    .locals 0

    iput-object p1, p0, Lcom/shandagames/gameplus/GameDummyActivity$1$1;->this$1:Lcom/shandagames/gameplus/GameDummyActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/shandagames/gameplus/GameDummyActivity$1$1;->this$1:Lcom/shandagames/gameplus/GameDummyActivity$1;

    #getter for: Lcom/shandagames/gameplus/GameDummyActivity$1;->this$0:Lcom/shandagames/gameplus/GameDummyActivity;
    invoke-static {v0}, Lcom/shandagames/gameplus/GameDummyActivity$1;->access$0(Lcom/shandagames/gameplus/GameDummyActivity$1;)Lcom/shandagames/gameplus/GameDummyActivity;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/shandagames/gameplus/util/ToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
