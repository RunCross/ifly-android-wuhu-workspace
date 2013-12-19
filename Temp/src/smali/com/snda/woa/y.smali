.class Lcom/snda/woa/y;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Lcom/snda/woa/w;


# direct methods
.method constructor <init>(Lcom/snda/woa/w;)V
    .locals 0

    iput-object p1, p0, Lcom/snda/woa/y;->a:Lcom/snda/woa/w;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "woa_app_status"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isSendBroadcast : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/snda/woa/y;->a:Lcom/snda/woa/w;

    invoke-static {v2}, Lcom/snda/woa/w;->a(Lcom/snda/woa/w;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sendBroadcast : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/snda/woa/y;->a:Lcom/snda/woa/w;

    invoke-static {v2}, Lcom/snda/woa/w;->b(Lcom/snda/woa/w;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snda/woa/au;->b(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/snda/woa/y;->a:Lcom/snda/woa/w;

    invoke-static {v0}, Lcom/snda/woa/w;->a(Lcom/snda/woa/w;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "woa_app_status"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/snda/woa/y;->a:Lcom/snda/woa/w;

    invoke-static {v1}, Lcom/snda/woa/w;->c(Lcom/snda/woa/w;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v0, "woa_app_status"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "command : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/snda/woa/y;->a:Lcom/snda/woa/w;

    invoke-static {v2}, Lcom/snda/woa/w;->d(Lcom/snda/woa/w;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sendBroadcast : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/snda/woa/y;->a:Lcom/snda/woa/w;

    invoke-static {v2}, Lcom/snda/woa/w;->b(Lcom/snda/woa/w;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snda/woa/au;->b(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
