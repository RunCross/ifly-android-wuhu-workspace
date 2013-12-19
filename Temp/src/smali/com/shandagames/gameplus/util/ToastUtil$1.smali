.class Lcom/shandagames/gameplus/util/ToastUtil$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic val$act:Landroid/content/Context;

.field private final synthetic val$len:I

.field private final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;ILandroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/shandagames/gameplus/util/ToastUtil$1;->val$msg:Ljava/lang/String;

    iput p2, p0, Lcom/shandagames/gameplus/util/ToastUtil$1;->val$len:I

    iput-object p3, p0, Lcom/shandagames/gameplus/util/ToastUtil$1;->val$act:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Lcom/shandagames/gameplus/util/ToastUtil;->access$0()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/shandagames/gameplus/util/ToastUtil$1$1;

    iget-object v2, p0, Lcom/shandagames/gameplus/util/ToastUtil$1;->val$msg:Ljava/lang/String;

    iget v3, p0, Lcom/shandagames/gameplus/util/ToastUtil$1;->val$len:I

    iget-object v4, p0, Lcom/shandagames/gameplus/util/ToastUtil$1;->val$act:Landroid/content/Context;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/shandagames/gameplus/util/ToastUtil$1$1;-><init>(Lcom/shandagames/gameplus/util/ToastUtil$1;Ljava/lang/String;ILandroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
