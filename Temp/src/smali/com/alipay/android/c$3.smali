.class Lcom/alipay/android/c$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic k:Lcom/alipay/android/c;

.field private final synthetic l:Ljava/lang/String;

.field private final synthetic m:I

.field private final synthetic n:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/alipay/android/c;Ljava/lang/String;ILandroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/c$3;->k:Lcom/alipay/android/c;

    iput-object p2, p0, Lcom/alipay/android/c$3;->l:Ljava/lang/String;

    iput p3, p0, Lcom/alipay/android/c$3;->m:I

    iput-object p4, p0, Lcom/alipay/android/c$3;->n:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/c$3;->k:Lcom/alipay/android/c;

    iget-object v1, v0, Lcom/alipay/android/c;->e:Ljava/lang/Integer;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/alipay/android/c$3;->k:Lcom/alipay/android/c;

    iget-object v0, v0, Lcom/alipay/android/c;->f:Lcom/alipay/android/app/IAlixPay;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/c$3;->k:Lcom/alipay/android/c;

    iget-object v0, v0, Lcom/alipay/android/c;->e:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lcom/alipay/android/c$3;->k:Lcom/alipay/android/c;

    iget-object v0, v0, Lcom/alipay/android/c;->f:Lcom/alipay/android/app/IAlixPay;

    iget-object v1, p0, Lcom/alipay/android/c$3;->k:Lcom/alipay/android/c;

    invoke-static {v1}, Lcom/alipay/android/c;->a(Lcom/alipay/android/c;)Lcom/alipay/android/app/IRemoteServiceCallback;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/android/app/IAlixPay;->registerCallback(Lcom/alipay/android/app/IRemoteServiceCallback;)V

    iget-object v0, p0, Lcom/alipay/android/c$3;->k:Lcom/alipay/android/c;

    iget-object v0, v0, Lcom/alipay/android/c;->f:Lcom/alipay/android/app/IAlixPay;

    iget-object v1, p0, Lcom/alipay/android/c$3;->l:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/alipay/android/app/IAlixPay;->Pay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/c;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "After Pay: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/android/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/c$3;->k:Lcom/alipay/android/c;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/alipay/android/c;->g:Z

    iget-object v1, p0, Lcom/alipay/android/c$3;->k:Lcom/alipay/android/c;

    iget-object v1, v1, Lcom/alipay/android/c;->f:Lcom/alipay/android/app/IAlixPay;

    iget-object v2, p0, Lcom/alipay/android/c$3;->k:Lcom/alipay/android/c;

    invoke-static {v2}, Lcom/alipay/android/c;->a(Lcom/alipay/android/c;)Lcom/alipay/android/app/IRemoteServiceCallback;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/alipay/android/app/IAlixPay;->unregisterCallback(Lcom/alipay/android/app/IRemoteServiceCallback;)V

    iget-object v1, p0, Lcom/alipay/android/c$3;->k:Lcom/alipay/android/c;

    iget-object v1, v1, Lcom/alipay/android/c;->h:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/c$3;->k:Lcom/alipay/android/c;

    invoke-static {v2}, Lcom/alipay/android/c;->b(Lcom/alipay/android/c;)Landroid/content/ServiceConnection;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    iget v2, p0, Lcom/alipay/android/c$3;->m:I

    iput v2, v1, Landroid/os/Message;->what:I

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/android/c$3;->n:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    iget v2, p0, Lcom/alipay/android/c$3;->m:I

    iput v2, v1, Landroid/os/Message;->what:I

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/android/c$3;->n:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
