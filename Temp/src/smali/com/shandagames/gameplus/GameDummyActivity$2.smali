.class Lcom/shandagames/gameplus/GameDummyActivity$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/shandagames/gameplus/GameDummyActivity;


# direct methods
.method constructor <init>(Lcom/shandagames/gameplus/GameDummyActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/shandagames/gameplus/GameDummyActivity$2;->this$0:Lcom/shandagames/gameplus/GameDummyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/shandagames/gameplus/GameDummyActivity$2;)Lcom/shandagames/gameplus/GameDummyActivity;
    .locals 1

    iget-object v0, p0, Lcom/shandagames/gameplus/GameDummyActivity$2;->this$0:Lcom/shandagames/gameplus/GameDummyActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/shandagames/gameplus/GameDummyActivity$2;->this$0:Lcom/shandagames/gameplus/GameDummyActivity;

    #getter for: Lcom/shandagames/gameplus/GameDummyActivity;->mSmsCode:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/shandagames/gameplus/GameDummyActivity;->access$1(Lcom/shandagames/gameplus/GameDummyActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/shandagames/gameplus/GameDummyActivity$2;->this$0:Lcom/shandagames/gameplus/GameDummyActivity;

    iget-object v2, p0, Lcom/shandagames/gameplus/GameDummyActivity$2;->this$0:Lcom/shandagames/gameplus/GameDummyActivity;

    #getter for: Lcom/shandagames/gameplus/GameDummyActivity;->mPhoneNumber:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/shandagames/gameplus/GameDummyActivity;->access$0(Lcom/shandagames/gameplus/GameDummyActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/shandagames/gameplus/GameDummyActivity$2$1;

    invoke-direct {v3, p0}, Lcom/shandagames/gameplus/GameDummyActivity$2$1;-><init>(Lcom/shandagames/gameplus/GameDummyActivity$2;)V

    invoke-static {v1, v2, v0, v3}, Lcom/shandagames/gameplus/GamePlus;->validateSmsCode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/shandagames/gameplus/GamePlus$ValidateCallback;)V

    return-void
.end method
