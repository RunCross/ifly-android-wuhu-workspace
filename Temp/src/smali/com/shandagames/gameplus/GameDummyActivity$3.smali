.class Lcom/shandagames/gameplus/GameDummyActivity$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/shandagames/gameplus/GameDummyActivity;


# direct methods
.method constructor <init>(Lcom/shandagames/gameplus/GameDummyActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/shandagames/gameplus/GameDummyActivity$3;->this$0:Lcom/shandagames/gameplus/GameDummyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/shandagames/gameplus/GameDummyActivity$3;->this$0:Lcom/shandagames/gameplus/GameDummyActivity;

    invoke-static {v0}, Lcom/shandagames/gameplus/GamePlus;->loginToGPlus(Landroid/app/Activity;)V

    return-void
.end method
