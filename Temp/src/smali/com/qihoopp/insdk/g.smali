.class final Lcom/qihoopp/insdk/g;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/qihoopp/insdk/ContainerActivity;


# direct methods
.method constructor <init>(Lcom/qihoopp/insdk/ContainerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/qihoopp/insdk/g;->a:Lcom/qihoopp/insdk/ContainerActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/qihoopp/insdk/g;->a:Lcom/qihoopp/insdk/ContainerActivity;

    invoke-static {v0}, Lcom/qihoopp/insdk/t;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/qihoopp/insdk/g;->a:Lcom/qihoopp/insdk/ContainerActivity;

    iget-object v1, p0, Lcom/qihoopp/insdk/g;->a:Lcom/qihoopp/insdk/ContainerActivity;

    invoke-static {v1}, Lcom/qihoopp/insdk/s;->a(Landroid/content/Context;)Lcom/qihoopp/insdk/s;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qihoopp/insdk/s;->b()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qihoopp/insdk/ContainerActivity;->a(Lcom/qihoopp/insdk/ContainerActivity;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/qihoopp/insdk/g;->a:Lcom/qihoopp/insdk/ContainerActivity;

    invoke-static {v0}, Lcom/qihoopp/insdk/ContainerActivity;->e(Lcom/qihoopp/insdk/ContainerActivity;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/qihoopp/insdk/aa;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/qihoopp/insdk/t;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/qihoopp/insdk/aa;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/qihoopp/insdk/t;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/qihoopp/insdk/g;->a:Lcom/qihoopp/insdk/ContainerActivity;

    const-string v1, "pro.jar"

    sget-object v2, Lcom/qihoopp/insdk/aa;->c:Ljava/lang/String;

    const-string v3, "pro.jar"

    invoke-static {v0, v1, v2, v3}, Lcom/qihoopp/insdk/ab;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "cfg.ini"

    sget-object v2, Lcom/qihoopp/insdk/aa;->c:Ljava/lang/String;

    const-string v3, "cfg.ini"

    invoke-static {v0, v1, v2, v3}, Lcom/qihoopp/insdk/ab;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "res.zip"

    sget-object v2, Lcom/qihoopp/insdk/aa;->c:Ljava/lang/String;

    const-string v3, "res.zip"

    invoke-static {v0, v1, v2, v3}, Lcom/qihoopp/insdk/ab;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/qihoopp/insdk/aa;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "res.zip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/qihoopp/insdk/aa;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/qihoopp/insdk/ab;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/qihoopp/insdk/g;->a:Lcom/qihoopp/insdk/ContainerActivity;

    iget-object v1, p0, Lcom/qihoopp/insdk/g;->a:Lcom/qihoopp/insdk/ContainerActivity;

    invoke-static {v1}, Lcom/qihoopp/insdk/s;->a(Landroid/content/Context;)Lcom/qihoopp/insdk/s;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qihoopp/insdk/s;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qihoopp/insdk/ContainerActivity;->a(Lcom/qihoopp/insdk/ContainerActivity;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/qihoopp/insdk/g;->a:Lcom/qihoopp/insdk/ContainerActivity;

    invoke-static {v0}, Lcom/qihoopp/insdk/ContainerActivity;->b(Lcom/qihoopp/insdk/ContainerActivity;)Lcom/qihoopp/insdk/h;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/qihoopp/insdk/h;->sendEmptyMessage(I)Z

    return-void

    :catch_0
    move-exception v0

    const-string v1, "ContainerActivity"

    const-string v2, "Exception"

    invoke-static {v1, v2, v0}, Lcom/qihoopp/framework/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
