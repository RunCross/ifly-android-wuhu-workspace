.class final Lcom/test/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:I

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 0

    iput p1, p0, Lcom/test/a;->a:I

    iput-object p2, p0, Lcom/test/a;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    const/16 v5, 0x2710

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/test/a;->a:I

    if-ne v0, v5, :cond_6

    move v0, v2

    :goto_0
    iget v3, p0, Lcom/test/a;->a:I

    const/16 v4, 0x2711

    if-ne v3, v4, :cond_0

    move v0, v2

    :cond_0
    iget v3, p0, Lcom/test/a;->a:I

    const v4, 0x186a1

    if-ne v3, v4, :cond_1

    move v0, v2

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "pack download url - "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/test/a;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/test/Debug;->log_cjh(Ljava/lang/String;)V

    const/4 v3, 0x0

    iget v4, p0, Lcom/test/a;->a:I

    if-ne v4, v5, :cond_2

    iget-object v3, p0, Lcom/test/a;->b:Ljava/lang/String;

    invoke-static {v3}, Lcom/test/FileUtils;->getSDPackFile(Ljava/lang/String;)[B

    move-result-object v3

    if-nez v3, :cond_2

    const-string v3, "pack file get assets !!!!!!!!!!!!!!!"

    invoke-static {v3}, Lcom/test/Debug;->log_cjh(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/test/a;->b:Ljava/lang/String;

    invoke-static {v3}, Lcom/test/FileUtils;->getAssetPackFile(Ljava/lang/String;)[B

    move-result-object v3

    :cond_2
    if-nez v3, :cond_3

    const-string v3, "pack file get web server!!!!!"

    invoke-static {v3}, Lcom/test/Debug;->log_cjh(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/test/a;->b:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/test/HttpUtil;->connectGet(Ljava/lang/String;Z)[B

    move-result-object v3

    :cond_3
    if-eqz v3, :cond_4

    const-string v0, "connectGet:CONNECT_GET FINISHED: %s"

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/test/a;->b:Ljava/lang/String;

    aput-object v5, v4, v2

    invoke-static {v0, v4}, Lcom/test/Debug;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    if-nez v3, :cond_5

    const-string v0, "connectGet:CONNECT_GET ERROR: %s"

    new-array v3, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/test/a;->b:Ljava/lang/String;

    aput-object v4, v3, v2

    invoke-static {v0, v3}, Lcom/test/Debug;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v3, v1, [B

    move v5, v1

    :goto_1
    invoke-static {}, Lcom/test/AsyncTaskRunner;->a()Ljava/util/List;

    move-result-object v6

    new-instance v0, Lcom/test/Task;

    iget-object v2, p0, Lcom/test/a;->b:Ljava/lang/String;

    iget v4, p0, Lcom/test/a;->a:I

    invoke-direct/range {v0 .. v5}, Lcom/test/Task;-><init>(ILjava/lang/String;[BII)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_5
    move v5, v2

    goto :goto_1

    :cond_6
    move v0, v1

    goto :goto_0
.end method
