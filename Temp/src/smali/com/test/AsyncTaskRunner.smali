.class public Lcom/test/AsyncTaskRunner;
.super Ljava/lang/Object;


# static fields
.field private static a:Z

.field private static b:Ljava/lang/String;

.field private static c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/test/RequestConnectTask;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/test/Task;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/test/AsyncBitmapTask;",
            ">;"
        }
    .end annotation
.end field

.field private static f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/test/AsyncBitmapTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/test/AsyncTaskRunner;->a:Z

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/test/AsyncTaskRunner;->c:Ljava/util/List;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/test/AsyncTaskRunner;->d:Ljava/util/List;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/test/AsyncTaskRunner;->e:Ljava/util/List;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/test/AsyncTaskRunner;->f:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/test/AsyncTaskRunner;->d:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/test/AsyncTaskRunner;->a:Z

    return-void
.end method

.method static synthetic c()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/test/AsyncTaskRunner;->f:Ljava/util/List;

    return-object v0
.end method

.method public static connectGet(Ljava/lang/String;I)V
    .locals 3

    const-string v0, "connectGet:url:%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lcom/test/Debug;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/test/a;

    invoke-direct {v1, p1, p0}, Lcom/test/a;-><init>(ILjava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static connectPost(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    sget-boolean v0, Lcom/test/AsyncTaskRunner;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "<> \u901a\u4fe1\u4e2d\u3067\u3059\u3002_lastUrl:[%s]"

    new-array v1, v3, [Ljava/lang/Object;

    sget-object v2, Lcom/test/AsyncTaskRunner;->b:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/test/Debug;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "<>   \u901a\u4fe1\u4e88\u7d04: url:[%s] param:[%s], sender:%d"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v4

    aput-object p1, v1, v3

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/test/Debug;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/test/AsyncTaskRunner;->c:Ljava/util/List;

    new-instance v1, Lcom/test/RequestConnectTask;

    invoke-direct {v1, p0, p1, p2}, Lcom/test/RequestConnectTask;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_0
    const-string v0, "connectPost:url:%s"

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p0, v1, v4

    invoke-static {v0, v1}, Lcom/test/Debug;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    sput-boolean v3, Lcom/test/AsyncTaskRunner;->a:Z

    sput-object p0, Lcom/test/AsyncTaskRunner;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/test/b;

    invoke-direct {v1, p0, p1, p2}, Lcom/test/b;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public static existsRequestConnectTask()Z
    .locals 1

    sget-object v0, Lcom/test/AsyncTaskRunner;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getBitmapTaskList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/test/AsyncBitmapTask;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/test/AsyncTaskRunner;->e:Ljava/util/List;

    return-object v0
.end method

.method public static getDoneBitmapTaskList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/test/AsyncBitmapTask;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/test/AsyncTaskRunner;->f:Ljava/util/List;

    return-object v0
.end method

.method public static getDoneConnectTaskList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/test/Task;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/test/AsyncTaskRunner;->d:Ljava/util/List;

    return-object v0
.end method

.method public static getNextConnectPostSender()I
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/test/AsyncTaskRunner;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u30bf\u30b9\u30af\u30ea\u30b9\u30c8\u304c\u7a7a\u3067\u3059"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/test/Debug;->err(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v0, Lcom/test/AsyncTaskRunner;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/test/RequestConnectTask;

    iget v0, v0, Lcom/test/RequestConnectTask;->sender:I

    return v0
.end method

.method public static isConnecting()Z
    .locals 1

    sget-boolean v0, Lcom/test/AsyncTaskRunner;->a:Z

    return v0
.end method

.method public static nextConnectPost()V
    .locals 3

    const/4 v1, 0x0

    sget-object v0, Lcom/test/AsyncTaskRunner;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u901a\u4fe1\u4e88\u7d04\u30ea\u30b9\u30c8\u304c\u7a7a\u3067\u3059\u3002"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/test/Debug;->err(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v0, Lcom/test/AsyncTaskRunner;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/test/RequestConnectTask;

    iget-object v1, v0, Lcom/test/RequestConnectTask;->url:Ljava/lang/String;

    iget-object v2, v0, Lcom/test/RequestConnectTask;->param:Ljava/lang/String;

    iget v0, v0, Lcom/test/RequestConnectTask;->sender:I

    invoke-static {v1, v2, v0}, Lcom/test/AsyncTaskRunner;->connectPost(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static putLoadBitmapAsync(ILjava/lang/String;FZI)V
    .locals 2

    new-instance v0, Lcom/test/AsyncBitmapTask;

    invoke-direct {v0}, Lcom/test/AsyncBitmapTask;-><init>()V

    iput p0, v0, Lcom/test/AsyncBitmapTask;->imageId:I

    iput-object p1, v0, Lcom/test/AsyncBitmapTask;->path:Ljava/lang/String;

    iput p2, v0, Lcom/test/AsyncBitmapTask;->scale:F

    iput-boolean p3, v0, Lcom/test/AsyncBitmapTask;->horo:Z

    iput p4, v0, Lcom/test/AsyncBitmapTask;->sender:I

    sget-object v1, Lcom/test/AsyncTaskRunner;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static startLoadBitmapAsync(Lcom/test/AsyncBitmapTask;)V
    .locals 4

    const-string v0, "loadBitmapAsync path:[%s], sender:%d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/test/AsyncBitmapTask;->path:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/test/AsyncBitmapTask;->sender:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/test/Debug;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/test/c;

    invoke-direct {v1, p0}, Lcom/test/c;-><init>(Lcom/test/AsyncBitmapTask;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
