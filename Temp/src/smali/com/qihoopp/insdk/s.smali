.class public final Lcom/qihoopp/insdk/s;
.super Ljava/lang/Object;


# static fields
.field public static a:Lcom/qihoopp/insdk/s;


# instance fields
.field private b:Ljava/lang/Object;

.field private c:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qihoopp/insdk/s;->c:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/qihoopp/insdk/s;
    .locals 1

    sget-object v0, Lcom/qihoopp/insdk/s;->a:Lcom/qihoopp/insdk/s;

    if-nez v0, :cond_0

    new-instance v0, Lcom/qihoopp/insdk/s;

    invoke-direct {v0, p0}, Lcom/qihoopp/insdk/s;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/qihoopp/insdk/s;->a:Lcom/qihoopp/insdk/s;

    :cond_0
    sget-object v0, Lcom/qihoopp/insdk/s;->a:Lcom/qihoopp/insdk/s;

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/Class;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u5df2\u7ecf\u5b58\u5728\u4e8e\u5f53\u524d\u4e0a\u4e0b\u6587\u4e2d\uff01\u53ea\u80fd\u52a0\u5728\u4e0d\u5b58\u5728\u4e8e\u5f53\u524d\u4e0a\u4e0b\u6587\u4e2d\u7684\u7c7b\uff01"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v1

    const-string v2, "InController"

    const-string v3, "Exception"

    invoke-static {v2, v3, v1}, Lcom/qihoopp/framework/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/qihoopp/insdk/aa;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "pro.jar"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/qihoopp/insdk/s;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "InController"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "jarPath = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/qihoopp/framework/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;
    .locals 4

    const/4 v0, 0x0

    const-string v1, "+++++\u52a0\u8f7djar+++++"

    invoke-static {v1, p1}, Lcom/qihoopp/framework/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ldalvik/system/DexClassLoader;

    sget-object v2, Lcom/qihoopp/insdk/aa;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/qihoopp/insdk/s;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-direct {v1, p1, v2, v0, v3}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    :try_start_0
    invoke-virtual {v1, p2}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "InController"

    const-string v3, "Exception"

    invoke-static {v2, v3, v1}, Lcom/qihoopp/framework/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private c()V
    .locals 5

    const/4 v4, 0x0

    const-string v0, "com.qihoopp.outsdk.OutDispather"

    invoke-direct {p0, v0}, Lcom/qihoopp/insdk/s;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "InController"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "dispatcher = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qihoopp/framework/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-array v1, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/qihoopp/insdk/s;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/qihoopp/insdk/s;->b:Ljava/lang/Object;

    if-nez v0, :cond_0

    :try_start_0
    invoke-direct {p0}, Lcom/qihoopp/insdk/s;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/qihoopp/insdk/s;->b:Ljava/lang/Object;

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "InController"

    const-string v2, "Exception"

    invoke-static {v1, v2, v0}, Lcom/qihoopp/framework/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final b()Ljava/lang/Object;
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/qihoopp/insdk/s;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/qihoopp/insdk/s;->b:Ljava/lang/Object;

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "InController"

    const-string v2, "Exception"

    invoke-static {v1, v2, v0}, Lcom/qihoopp/framework/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
