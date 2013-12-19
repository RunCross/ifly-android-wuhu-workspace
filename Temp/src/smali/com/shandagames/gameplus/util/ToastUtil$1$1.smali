.class Lcom/shandagames/gameplus/util/ToastUtil$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/shandagames/gameplus/util/ToastUtil$1;

.field private final synthetic val$act:Landroid/content/Context;

.field private final synthetic val$len:I

.field private final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/shandagames/gameplus/util/ToastUtil$1;Ljava/lang/String;ILandroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/shandagames/gameplus/util/ToastUtil$1$1;->this$1:Lcom/shandagames/gameplus/util/ToastUtil$1;

    iput-object p2, p0, Lcom/shandagames/gameplus/util/ToastUtil$1$1;->val$msg:Ljava/lang/String;

    iput p3, p0, Lcom/shandagames/gameplus/util/ToastUtil$1$1;->val$len:I

    iput-object p4, p0, Lcom/shandagames/gameplus/util/ToastUtil$1$1;->val$act:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/shandagames/gameplus/util/ToastUtil;->access$1()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/shandagames/gameplus/util/ToastUtil;->access$2()Landroid/widget/Toast;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/shandagames/gameplus/util/ToastUtil;->access$2()Landroid/widget/Toast;

    move-result-object v0

    iget-object v2, p0, Lcom/shandagames/gameplus/util/ToastUtil$1$1;->val$msg:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/shandagames/gameplus/util/ToastUtil;->access$2()Landroid/widget/Toast;

    move-result-object v0

    iget v2, p0, Lcom/shandagames/gameplus/util/ToastUtil$1$1;->val$len:I

    invoke-virtual {v0, v2}, Landroid/widget/Toast;->setDuration(I)V

    :goto_0
    invoke-static {}, Lcom/shandagames/gameplus/util/ToastUtil;->access$2()Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    monitor-exit v1

    return-void

    :cond_0
    iget-object v0, p0, Lcom/shandagames/gameplus/util/ToastUtil$1$1;->val$act:Landroid/content/Context;

    iget-object v2, p0, Lcom/shandagames/gameplus/util/ToastUtil$1$1;->val$msg:Ljava/lang/String;

    iget v3, p0, Lcom/shandagames/gameplus/util/ToastUtil$1$1;->val$len:I

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-static {v0}, Lcom/shandagames/gameplus/util/ToastUtil;->access$3(Landroid/widget/Toast;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
