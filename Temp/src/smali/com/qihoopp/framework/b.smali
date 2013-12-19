.class final Lcom/qihoopp/framework/b;
.super Landroid/os/Handler;


# instance fields
.field a:Ljava/lang/ref/WeakReference;

.field b:Lcom/qihoopp/framework/HttpLoaderCallback;


# direct methods
.method constructor <init>(Lcom/qihoopp/framework/HttpLoaderCallback;Lcom/qihoopp/framework/HttpCreater;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/qihoopp/framework/b;->a:Ljava/lang/ref/WeakReference;

    iput-object p1, p0, Lcom/qihoopp/framework/b;->b:Lcom/qihoopp/framework/HttpLoaderCallback;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/qihoopp/framework/b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qihoopp/framework/HttpCreater;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/qihoopp/framework/HttpCreater;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v2, "the class is done"

    invoke-static {v0, v2}, Lcom/qihoopp/framework/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "state"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "json"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    iget-object v0, p0, Lcom/qihoopp/framework/b;->b:Lcom/qihoopp/framework/HttpLoaderCallback;

    invoke-interface {v0, v2, v1}, Lcom/qihoopp/framework/HttpLoaderCallback;->callback(ILorg/json/JSONObject;)V

    :goto_0
    return-void

    :cond_1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v1, p0, Lcom/qihoopp/framework/b;->b:Lcom/qihoopp/framework/HttpLoaderCallback;

    invoke-interface {v1, v2, v0}, Lcom/qihoopp/framework/HttpLoaderCallback;->callback(ILorg/json/JSONObject;)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/qihoopp/framework/HttpCreater;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "JSONException"

    invoke-static {v3, v4, v0}, Lcom/qihoopp/framework/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_1
.end method
