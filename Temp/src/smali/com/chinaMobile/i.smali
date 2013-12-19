.class final Lcom/chinaMobile/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/chinaMobile/i;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    const/4 v1, 0x1

    const/4 v6, 0x3

    const/4 v5, 0x0

    sget v0, Lcom/chinaMobile/MobileAgent;->a:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    :try_start_0
    sget v0, Lcom/chinaMobile/MobileAgent;->b:I

    int-to-long v2, v0

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    move v0, v1

    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/chinaMobile/i;->a:Landroid/content/Context;

    #calls: Lcom/chinaMobile/MobileAgent;->popUploadFileName(Landroid/content/Context;)Ljava/lang/String;
    invoke-static {v2}, Lcom/chinaMobile/MobileAgent;->access$100(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    if-eqz v0, :cond_5

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "act"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v0, p0, Lcom/chinaMobile/i;->a:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/chinaMobile/MobileAgent;->sendActionMessage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    :cond_2
    :goto_2
    if-eqz v0, :cond_1

    const-wide/16 v2, 0x0

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_3
    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "evn"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v0, p0, Lcom/chinaMobile/i;->a:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/chinaMobile/MobileAgent;->sendEventMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_2

    :cond_4
    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "err"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v0, p0, Lcom/chinaMobile/i;->a:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/chinaMobile/MobileAgent;->sendErrorMessage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/chinaMobile/i;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/chinaMobile/MobileAgent;->isOnce(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/chinaMobile/i;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/chinaMobile/MobileAgent;->sendSystemMessage(Landroid/content/Context;)V

    :cond_6
    return-void
.end method
