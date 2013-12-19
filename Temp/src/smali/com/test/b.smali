.class final Lcom/test/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Ljava/lang/String;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/test/b;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/test/b;->b:Ljava/lang/String;

    iput p3, p0, Lcom/test/b;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    const/4 v1, 0x2

    const/4 v0, 0x0

    const/4 v5, 0x1

    iget-object v2, p0, Lcom/test/b;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/test/b;->b:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/test/HttpUtil;->connectPost(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v2, "connectPost:FINISHED(data.length:%d) url:[%s]"

    new-array v4, v1, [Ljava/lang/Object;

    array-length v6, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v0

    iget-object v6, p0, Lcom/test/b;->a:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v2, v4}, Lcom/test/Debug;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    if-nez v3, :cond_1

    const-string v2, "connectPost:ERROR: url:[%s]"

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/test/b;->a:Ljava/lang/String;

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Lcom/test/Debug;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v3, v5, [B

    :goto_0
    invoke-static {}, Lcom/test/AsyncTaskRunner;->a()Ljava/util/List;

    move-result-object v6

    new-instance v0, Lcom/test/Task;

    iget-object v2, p0, Lcom/test/b;->a:Ljava/lang/String;

    iget v4, p0, Lcom/test/b;->c:I

    invoke-direct/range {v0 .. v5}, Lcom/test/Task;-><init>(ILjava/lang/String;[BII)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/test/AsyncTaskRunner;->b()V

    return-void

    :cond_1
    move v5, v0

    goto :goto_0
.end method
