.class Lcom/shandagames/gameplus/GameDummyActivity$12;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/shandagames/gameplus/GamePlus$PayCallback;


# instance fields
.field final synthetic this$0:Lcom/shandagames/gameplus/GameDummyActivity;


# direct methods
.method constructor <init>(Lcom/shandagames/gameplus/GameDummyActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/shandagames/gameplus/GameDummyActivity$12;->this$0:Lcom/shandagames/gameplus/GameDummyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/shandagames/gameplus/GameDummyActivity$12;->this$0:Lcom/shandagames/gameplus/GameDummyActivity;

    invoke-static {v0, p3}, Lcom/shandagames/gameplus/util/ToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
