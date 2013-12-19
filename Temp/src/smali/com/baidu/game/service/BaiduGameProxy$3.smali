.class Lcom/baidu/game/service/BaiduGameProxy$3;
.super Ljava/lang/Thread;


# instance fields
.field private final synthetic ak:I

.field private final synthetic al:Ljava/lang/String;

.field private final synthetic am:Ljava/lang/String;

.field private final synthetic an:Ljava/lang/String;

.field private final synthetic ao:Landroid/app/Activity;

.field private final synthetic ap:Lcom/baidu/game/listener/PayCallbackListener;


# direct methods
.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Lcom/baidu/game/listener/PayCallbackListener;)V
    .locals 0

    iput p1, p0, Lcom/baidu/game/service/BaiduGameProxy$3;->ak:I

    iput-object p2, p0, Lcom/baidu/game/service/BaiduGameProxy$3;->al:Ljava/lang/String;

    iput-object p3, p0, Lcom/baidu/game/service/BaiduGameProxy$3;->am:Ljava/lang/String;

    iput-object p4, p0, Lcom/baidu/game/service/BaiduGameProxy$3;->an:Ljava/lang/String;

    iput-object p5, p0, Lcom/baidu/game/service/BaiduGameProxy$3;->ao:Landroid/app/Activity;

    iput-object p6, p0, Lcom/baidu/game/service/BaiduGameProxy$3;->ap:Lcom/baidu/game/listener/PayCallbackListener;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const-string v0, ""

    :try_start_0
    iget v1, p0, Lcom/baidu/game/service/BaiduGameProxy$3;->ak:I

    iget-object v2, p0, Lcom/baidu/game/service/BaiduGameProxy$3;->al:Ljava/lang/String;

    iget-object v3, p0, Lcom/baidu/game/service/BaiduGameProxy$3;->am:Ljava/lang/String;

    iget-object v4, p0, Lcom/baidu/game/service/BaiduGameProxy$3;->an:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/baidu/game/service/BaiduGameProxy;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/baidu/game/util/g;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/baidu/game/service/BaiduGameProxy;->r()Lcom/baidu/game/service/BaiduGameProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/game/service/BaiduGameProxy;->n()Lcom/baidu/game/model/UserInfo;

    move-result-object v1

    if-nez v1, :cond_2

    :cond_0
    invoke-static {}, Landroid/os/Looper;->prepare()V

    invoke-static {}, Lcom/baidu/game/service/BaiduGameProxy;->r()Lcom/baidu/game/service/BaiduGameProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/game/service/BaiduGameProxy;->c()V

    iget-object v0, p0, Lcom/baidu/game/service/BaiduGameProxy$3;->ao:Landroid/app/Activity;

    const-string v1, "\u63d0\u793a"

    const-string v2, "\u83b7\u53d6\u8ba2\u5355\u5931\u8d25"

    const v3, 0x1080027

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/android/a;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {}, Landroid/os/Looper;->loop()V

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v1

    const-string v2, "baidu.proxy"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u521b\u5efa\u8ba2\u5355\u51fa\u73b0\u5f02\u5e38"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/baidu/game/util/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/alipay/android/c;

    invoke-direct {v1}, Lcom/alipay/android/c;-><init>()V

    new-instance v2, Lcom/baidu/game/handler/a;

    iget-object v3, p0, Lcom/baidu/game/service/BaiduGameProxy$3;->ao:Landroid/app/Activity;

    iget-object v4, p0, Lcom/baidu/game/service/BaiduGameProxy$3;->ap:Lcom/baidu/game/listener/PayCallbackListener;

    invoke-static {}, Lcom/baidu/game/service/BaiduGameProxy;->r()Lcom/baidu/game/service/BaiduGameProxy;

    move-result-object v5

    invoke-virtual {v5}, Lcom/baidu/game/service/BaiduGameProxy;->n()Lcom/baidu/game/model/UserInfo;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/baidu/game/handler/a;-><init>(Landroid/app/Activity;Lcom/baidu/game/listener/PayCallbackListener;Lcom/baidu/game/model/UserInfo;)V

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/baidu/game/service/BaiduGameProxy$3;->ao:Landroid/app/Activity;

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/alipay/android/c;->a(Ljava/lang/String;Landroid/os/Handler;ILandroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Looper;->prepare()V

    invoke-static {}, Lcom/baidu/game/service/BaiduGameProxy;->r()Lcom/baidu/game/service/BaiduGameProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/game/service/BaiduGameProxy;->c()V

    invoke-static {}, Landroid/os/Looper;->loop()V

    goto :goto_1
.end method
