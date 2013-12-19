.class final Lcom/qihoopp/insdk/j;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/qihoopp/insdk/i;


# direct methods
.method constructor <init>(Lcom/qihoopp/insdk/i;)V
    .locals 0

    iput-object p1, p0, Lcom/qihoopp/insdk/j;->a:Lcom/qihoopp/insdk/i;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/qihoopp/insdk/aa;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "cfg_temp.ini"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qihoopp/insdk/ab;->a(Ljava/lang/String;)Lcom/qihoopp/insdk/y;

    move-result-object v0

    iget-object v1, p0, Lcom/qihoopp/insdk/j;->a:Lcom/qihoopp/insdk/i;

    iget-object v1, v1, Lcom/qihoopp/insdk/i;->a:Lcom/qihoopp/insdk/ContainerActivity;

    iget-object v2, p0, Lcom/qihoopp/insdk/j;->a:Lcom/qihoopp/insdk/i;

    iget-object v2, v2, Lcom/qihoopp/insdk/i;->a:Lcom/qihoopp/insdk/ContainerActivity;

    invoke-static {v2}, Lcom/qihoopp/insdk/ContainerActivity;->c(Lcom/qihoopp/insdk/ContainerActivity;)Lcom/qihoopp/insdk/z;

    move-result-object v2

    sget-object v3, Lcom/qihoopp/insdk/t;->a:Lcom/qihoopp/insdk/y;

    invoke-static {v1, v0, v2, v3}, Lcom/qihoopp/insdk/ContainerActivity;->a(Lcom/qihoopp/insdk/ContainerActivity;Lcom/qihoopp/insdk/y;Lcom/qihoopp/insdk/z;Lcom/qihoopp/insdk/y;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qihoopp/insdk/j;->a:Lcom/qihoopp/insdk/i;

    iget-object v0, v0, Lcom/qihoopp/insdk/i;->a:Lcom/qihoopp/insdk/ContainerActivity;

    invoke-static {v0}, Lcom/qihoopp/insdk/ContainerActivity;->b(Lcom/qihoopp/insdk/ContainerActivity;)Lcom/qihoopp/insdk/h;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/qihoopp/insdk/h;->sendEmptyMessage(I)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/qihoopp/insdk/j;->a:Lcom/qihoopp/insdk/i;

    iget-object v0, v0, Lcom/qihoopp/insdk/i;->a:Lcom/qihoopp/insdk/ContainerActivity;

    invoke-static {v0}, Lcom/qihoopp/insdk/ContainerActivity;->b(Lcom/qihoopp/insdk/ContainerActivity;)Lcom/qihoopp/insdk/h;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/qihoopp/insdk/h;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
