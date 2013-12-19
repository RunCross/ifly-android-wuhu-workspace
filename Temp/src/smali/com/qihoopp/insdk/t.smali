.class public final Lcom/qihoopp/insdk/t;
.super Ljava/lang/Object;


# static fields
.field public static a:Lcom/qihoopp/insdk/y;

.field private static b:Ljava/io/File;

.field private static c:Ljava/io/File;

.field private static d:Ljava/io/File;


# direct methods
.method private static a()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/qihoopp/insdk/aa;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "pro.jar"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/qihoopp/insdk/aa;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "pro.jar"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qihoopp/insdk/ab;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 5

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/qihoopp/insdk/aa;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "cfg.ini"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/qihoopp/insdk/t;->b:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/qihoopp/insdk/aa;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "pro.jar"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/qihoopp/insdk/t;->c:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/qihoopp/insdk/aa;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "res"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/qihoopp/insdk/t;->d:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/qihoopp/insdk/aa;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/qihoopp/insdk/aa;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "cfg.ini"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/qihoopp/insdk/aa;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "pro.jar"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/qihoopp/insdk/aa;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "res.zip"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const-string v0, "cfg.ini"

    sget-object v1, Lcom/qihoopp/insdk/aa;->b:Ljava/lang/String;

    const-string v2, "cfg.ini"

    invoke-static {p0, v0, v1, v2}, Lcom/qihoopp/insdk/ab;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "pro.jar"

    sget-object v1, Lcom/qihoopp/insdk/aa;->b:Ljava/lang/String;

    const-string v2, "pro.jar"

    invoke-static {p0, v0, v1, v2}, Lcom/qihoopp/insdk/ab;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "res.zip"

    sget-object v1, Lcom/qihoopp/insdk/aa;->b:Ljava/lang/String;

    const-string v2, "res.zip"

    invoke-static {p0, v0, v1, v2}, Lcom/qihoopp/insdk/ab;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    invoke-static {}, Lcom/qihoopp/insdk/t;->c()Lcom/qihoopp/insdk/y;

    move-result-object v1

    iget-object v0, v1, Lcom/qihoopp/insdk/y;->a:Ljava/lang/String;

    const-string v2, "1.5.0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "assets\u91cc\u9762\u653e\u7f6e\u7684\u8d44\u6e90\u6587\u4ef6\u7248\u672c\u548c\u672c\u5730jar\u5305\u7248\u672c\u4e0d\u4e00\u81f4\uff0c\u8bf7\u68c0\u67e5"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {}, Lcom/qihoopp/insdk/t;->c()Lcom/qihoopp/insdk/y;

    move-result-object v0

    invoke-static {p0}, Lcom/qihoopp/insdk/t;->b(Landroid/content/Context;)Lcom/qihoopp/insdk/y;

    move-result-object v1

    if-nez v1, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u672c\u5730cfg\u4fe1\u606f\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    if-eqz v0, :cond_4

    iget-object v2, v1, Lcom/qihoopp/insdk/y;->a:Ljava/lang/String;

    iget-object v3, v0, Lcom/qihoopp/insdk/y;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    sput-object v1, Lcom/qihoopp/insdk/t;->a:Lcom/qihoopp/insdk/y;

    const-string v0, "SourcesController"

    const-string v1, "assets\u91cc\u662f\u6700\u65b0"

    invoke-static {v0, v1}, Lcom/qihoopp/framework/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SourcesController"

    const-string v1, "\u62f7\u8d1dassets\u4e2dpro\u5230download"

    invoke-static {v0, v1}, Lcom/qihoopp/framework/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "pro.jar"

    sget-object v1, Lcom/qihoopp/insdk/aa;->b:Ljava/lang/String;

    const-string v2, "pro.jar"

    invoke-static {p0, v0, v1, v2}, Lcom/qihoopp/insdk/ab;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SourcesController"

    const-string v1, "\u62f7\u8d1dassets\u4e2dres\u5230download"

    invoke-static {v0, v1}, Lcom/qihoopp/framework/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "res.zip"

    sget-object v1, Lcom/qihoopp/insdk/aa;->b:Ljava/lang/String;

    const-string v2, "res.zip"

    invoke-static {p0, v0, v1, v2}, Lcom/qihoopp/insdk/ab;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "cfg.ini"

    sget-object v1, Lcom/qihoopp/insdk/aa;->b:Ljava/lang/String;

    const-string v2, "cfg.ini"

    invoke-static {p0, v0, v1, v2}, Lcom/qihoopp/insdk/ab;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    sput-object v0, Lcom/qihoopp/insdk/t;->a:Lcom/qihoopp/insdk/y;

    iget-object v2, v1, Lcom/qihoopp/insdk/y;->b:Ljava/lang/String;

    iget-object v3, v0, Lcom/qihoopp/insdk/y;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    iget-object v3, v1, Lcom/qihoopp/insdk/y;->c:Ljava/lang/String;

    iget-object v0, v0, Lcom/qihoopp/insdk/y;->c:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_7

    if-ltz v2, :cond_7

    if-lez v2, :cond_6

    sput-object v1, Lcom/qihoopp/insdk/t;->a:Lcom/qihoopp/insdk/y;

    const-string v2, "SourcesController"

    const-string v3, "assets\u4e2dpro\u6709\u66f4\u65b0"

    invoke-static {v2, v3}, Lcom/qihoopp/framework/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "pro.jar"

    sget-object v3, Lcom/qihoopp/insdk/aa;->b:Ljava/lang/String;

    const-string v4, "pro.jar"

    invoke-static {p0, v2, v3, v4}, Lcom/qihoopp/insdk/ab;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    if-lez v0, :cond_7

    sput-object v1, Lcom/qihoopp/insdk/t;->a:Lcom/qihoopp/insdk/y;

    const-string v0, "SourcesController"

    const-string v2, "assets\u4e2dres\u6709\u66f4\u65b0"

    invoke-static {v0, v2}, Lcom/qihoopp/framework/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "res.zip"

    sget-object v2, Lcom/qihoopp/insdk/aa;->b:Ljava/lang/String;

    const-string v3, "res.zip"

    invoke-static {p0, v0, v2, v3}, Lcom/qihoopp/insdk/ab;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    sget-object v0, Lcom/qihoopp/insdk/t;->a:Lcom/qihoopp/insdk/y;

    if-ne v0, v1, :cond_1

    const-string v0, "cfg.ini"

    sget-object v1, Lcom/qihoopp/insdk/aa;->b:Ljava/lang/String;

    const-string v2, "cfg.ini"

    invoke-static {p0, v0, v1, v2}, Lcom/qihoopp/insdk/ab;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    sget-object v0, Lcom/qihoopp/insdk/t;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lcom/qihoopp/insdk/t;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lcom/qihoopp/insdk/t;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/qihoopp/insdk/aa;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "cfg.ini"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qihoopp/insdk/ab;->a(Ljava/lang/String;)Lcom/qihoopp/insdk/y;

    move-result-object v0

    iget-object v2, v1, Lcom/qihoopp/insdk/y;->a:Ljava/lang/String;

    iget-object v3, v0, Lcom/qihoopp/insdk/y;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_b

    sput-object v1, Lcom/qihoopp/insdk/t;->a:Lcom/qihoopp/insdk/y;

    const-string v0, "SourcesController"

    const-string v1, "\u62f7\u8d1ddownload\u4e2dpro\u5230loader"

    invoke-static {v0, v1}, Lcom/qihoopp/framework/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/qihoopp/insdk/t;->a()V

    const-string v0, "SourcesController"

    const-string v1, "\u62f7\u8d1ddownload\u4e2dres\u5230loader"

    invoke-static {v0, v1}, Lcom/qihoopp/framework/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/qihoopp/insdk/t;->b()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/qihoopp/insdk/aa;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "cfg.ini"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/qihoopp/insdk/aa;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "cfg.ini"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qihoopp/insdk/ab;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_2
    return-void

    :cond_a
    const/4 v0, 0x0

    goto :goto_1

    :cond_b
    sput-object v0, Lcom/qihoopp/insdk/t;->a:Lcom/qihoopp/insdk/y;

    const-string v2, "SourcesController"

    const-string v3, "download\u548cloader\u6bd4\u8f83"

    invoke-static {v2, v3}, Lcom/qihoopp/framework/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/qihoopp/insdk/y;->b:Ljava/lang/String;

    iget-object v3, v0, Lcom/qihoopp/insdk/y;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    iget-object v3, v1, Lcom/qihoopp/insdk/y;->c:Ljava/lang/String;

    iget-object v0, v0, Lcom/qihoopp/insdk/y;->c:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-ltz v2, :cond_d

    if-ltz v0, :cond_d

    if-lez v2, :cond_c

    sput-object v1, Lcom/qihoopp/insdk/t;->a:Lcom/qihoopp/insdk/y;

    const-string v2, "SourcesController"

    const-string v3, "download\u4e2dpro\u6709\u66f4\u65b0"

    invoke-static {v2, v3}, Lcom/qihoopp/framework/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/qihoopp/insdk/t;->a()V

    :cond_c
    if-lez v0, :cond_d

    sput-object v1, Lcom/qihoopp/insdk/t;->a:Lcom/qihoopp/insdk/y;

    const-string v0, "SourcesController"

    const-string v2, "download\u4e2dres\u6709\u66f4\u65b0"

    invoke-static {v0, v2}, Lcom/qihoopp/framework/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/qihoopp/insdk/t;->b()V

    :cond_d
    sget-object v0, Lcom/qihoopp/insdk/t;->a:Lcom/qihoopp/insdk/y;

    if-ne v0, v1, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/qihoopp/insdk/aa;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "cfg.ini"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/qihoopp/insdk/aa;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "cfg.ini"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qihoopp/insdk/ab;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_e
    sput-object v1, Lcom/qihoopp/insdk/t;->a:Lcom/qihoopp/insdk/y;

    const-string v0, "SourcesController"

    const-string v1, "\u65e0folder\u5e76\u4e14download\u91cc\u9762\u662f\u6700\u65b0"

    invoke-static {v0, v1}, Lcom/qihoopp/framework/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/qihoopp/insdk/t;->a()V

    invoke-static {}, Lcom/qihoopp/insdk/t;->b()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/qihoopp/insdk/aa;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "cfg.ini"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/qihoopp/insdk/aa;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "cfg.ini"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qihoopp/insdk/ab;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method public static a(Ljava/lang/String;)V
    .locals 4

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    const/4 v0, 0x0

    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_2

    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method public static a(Lcom/qihoopp/insdk/y;Lcom/qihoopp/insdk/y;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "localcfg\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p1, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v1, p0, Lcom/qihoopp/insdk/y;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/qihoopp/insdk/y;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/qihoopp/insdk/y;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/qihoopp/insdk/y;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/qihoopp/insdk/y;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/qihoopp/insdk/y;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-gez v1, :cond_3

    if-lez v2, :cond_4

    :cond_3
    if-gtz v1, :cond_1

    if-gez v2, :cond_1

    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;)Lcom/qihoopp/insdk/y;
    .locals 4

    new-instance v1, Lcom/qihoopp/insdk/y;

    invoke-direct {v1}, Lcom/qihoopp/insdk/y;-><init>()V

    invoke-static {p0}, Lcom/qihoopp/insdk/ab;->a(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    :try_start_0
    const-string v2, "resversion"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/qihoopp/insdk/y;->c:Ljava/lang/String;

    const-string v2, "outsdkversion"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/qihoopp/insdk/y;->b:Ljava/lang/String;

    const-string v2, "insdkversion"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/qihoopp/insdk/y;->a:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string v2, "SourcesController"

    const-string v3, "JSONException"

    invoke-static {v2, v3, v0}, Lcom/qihoopp/framework/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static b()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/qihoopp/insdk/aa;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "res.zip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/qihoopp/insdk/aa;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/qihoopp/insdk/ab;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static c()Lcom/qihoopp/insdk/y;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/qihoopp/insdk/aa;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "cfg.ini"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qihoopp/insdk/ab;->a(Ljava/lang/String;)Lcom/qihoopp/insdk/y;

    move-result-object v0

    return-object v0
.end method
