.class Lcom/alipay/android/b$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic b:Lcom/alipay/android/b;

.field private final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/android/b;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/b$2;->b:Lcom/alipay/android/b;

    iput-object p2, p0, Lcom/alipay/android/b$2;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/alipay/android/b$2;->b:Lcom/alipay/android/b;

    iget-object v1, p0, Lcom/alipay/android/b$2;->b:Lcom/alipay/android/b;

    iget-object v1, v1, Lcom/alipay/android/b;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/alipay/android/b$2;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/b;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/b$2;->b:Lcom/alipay/android/b;

    invoke-virtual {v1, v0}, Lcom/alipay/android/b;->a(Landroid/content/pm/PackageInfo;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alipay/android/b$2;->b:Lcom/alipay/android/b;

    iget-object v2, p0, Lcom/alipay/android/b$2;->b:Lcom/alipay/android/b;

    iget-object v2, v2, Lcom/alipay/android/b;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/alipay/android/b$2;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, v3}, Lcom/alipay/android/b;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/alipay/android/b$2;->c:Ljava/lang/String;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/alipay/android/b$2;->b:Lcom/alipay/android/b;

    invoke-static {v1}, Lcom/alipay/android/b;->a(Lcom/alipay/android/b;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
