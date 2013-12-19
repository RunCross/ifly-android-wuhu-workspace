.class final Lcom/test/q;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/shandagames/gameplus/api/callback/GLPushIdUpdateCB;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onError "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/test/Debug;->log_cjh(Ljava/lang/String;)V

    return-void
.end method

.method public final onHasUpdate(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lcom/test/RooneyJActivity;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/test/RooneyJActivity;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/shandagames/gameplus/push/SocketPushService;->actionStart(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/test/RooneyJActivity;->nativeDidRegisterForRemoteNotificationsWithDeviceToken(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onHasUpdate "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/test/Debug;->log_cjh(Ljava/lang/String;)V

    return-void
.end method

.method public final onNoUpdate(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lcom/test/RooneyJActivity;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/test/RooneyJActivity;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/shandagames/gameplus/push/SocketPushService;->actionStart(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/test/RooneyJActivity;->nativeDidRegisterForRemoteNotificationsWithDeviceToken(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onNoUpdate "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/test/Debug;->log_cjh(Ljava/lang/String;)V

    return-void
.end method
