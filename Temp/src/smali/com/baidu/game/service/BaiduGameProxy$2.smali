.class Lcom/baidu/game/service/BaiduGameProxy$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic ah:Lcom/baidu/game/service/BaiduGameProxy;

.field private final synthetic ai:Lcom/baidu/game/model/UserInfo;

.field private final synthetic aj:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/baidu/game/service/BaiduGameProxy;Lcom/baidu/game/model/UserInfo;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/game/service/BaiduGameProxy$2;->ah:Lcom/baidu/game/service/BaiduGameProxy;

    iput-object p2, p0, Lcom/baidu/game/service/BaiduGameProxy$2;->ai:Lcom/baidu/game/model/UserInfo;

    iput-object p3, p0, Lcom/baidu/game/service/BaiduGameProxy$2;->aj:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, -0x1

    iget-object v0, p0, Lcom/baidu/game/service/BaiduGameProxy$2;->ah:Lcom/baidu/game/service/BaiduGameProxy;

    iget-object v1, p0, Lcom/baidu/game/service/BaiduGameProxy$2;->ai:Lcom/baidu/game/model/UserInfo;

    invoke-static {v0, v1}, Lcom/baidu/game/service/BaiduGameProxy;->a(Lcom/baidu/game/service/BaiduGameProxy;Lcom/baidu/game/model/UserInfo;)Ljava/util/Map;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/baidu/game/util/d;->a([Ljava/lang/Object;)V

    if-eqz v0, :cond_0

    const-string v1, "result"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "1"

    const-string v2, "result"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "userInfo"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "userInfo"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    iput v5, v1, Landroid/os/Message;->what:I

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/baidu/game/service/BaiduGameProxy$2;->aj:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void

    :cond_0
    if-eqz v0, :cond_1

    const-string v1, "result"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "1"

    const-string v2, "result"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "message"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "message"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    iput v4, v1, Landroid/os/Message;->what:I

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/baidu/game/service/BaiduGameProxy$2;->aj:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput v4, v0, Landroid/os/Message;->what:I

    const-string v1, "\u767b\u5f55\u5f02\u5e38"

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/baidu/game/service/BaiduGameProxy$2;->aj:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
