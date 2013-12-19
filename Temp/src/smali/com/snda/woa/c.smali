.class public final Lcom/snda/woa/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final a:Ljava/lang/Object;


# instance fields
.field private b:Lcom/snda/woa/ag;

.field private c:Landroid/content/Context;

.field private d:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/snda/woa/c;->a:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Lcom/snda/woa/ag;Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/snda/woa/ag;->a:Lcom/snda/woa/ag;

    iput-object v0, p0, Lcom/snda/woa/c;->b:Lcom/snda/woa/ag;

    iput-object p2, p0, Lcom/snda/woa/c;->c:Landroid/content/Context;

    iput-object p3, p0, Lcom/snda/woa/c;->d:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/snda/woa/c;->d:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snda/woa/c;->d:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/snda/woa/c;->d:Lorg/json/JSONObject;

    sget-object v1, Lcom/snda/woa/z;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/snda/woa/z;->d:Ljava/lang/String;

    if-ne v0, v1, :cond_1

    sget-object v1, Lcom/snda/woa/c;->a:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/snda/woa/c;->b:Lcom/snda/woa/ag;

    iget-object v2, p0, Lcom/snda/woa/c;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/snda/woa/c;->d:Lorg/json/JSONObject;

    invoke-virtual {v0, v2, v3}, Lcom/snda/woa/ag;->a(Landroid/content/Context;Lorg/json/JSONObject;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "ReportMessageHandler"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/snda/woa/au;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/snda/woa/c;->d:Lorg/json/JSONObject;

    sget-object v1, Lcom/snda/woa/z;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/snda/woa/z;->v:Ljava/lang/String;

    if-ne v0, v1, :cond_2

    sget-object v1, Lcom/snda/woa/c;->a:Ljava/lang/Object;

    monitor-enter v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    iget-object v0, p0, Lcom/snda/woa/c;->b:Lcom/snda/woa/ag;

    iget-object v2, p0, Lcom/snda/woa/c;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/snda/woa/c;->d:Lorg/json/JSONObject;

    invoke-virtual {v0, v2, v3}, Lcom/snda/woa/ag;->b(Landroid/content/Context;Lorg/json/JSONObject;)V

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v1

    throw v0

    :cond_2
    sget-object v1, Lcom/snda/woa/c;->a:Ljava/lang/Object;

    monitor-enter v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :try_start_6
    iget-object v0, p0, Lcom/snda/woa/c;->b:Lcom/snda/woa/ag;

    iget-object v2, p0, Lcom/snda/woa/c;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/snda/woa/c;->d:Lorg/json/JSONObject;

    invoke-virtual {v0, v2, v3}, Lcom/snda/woa/ag;->c(Landroid/content/Context;Lorg/json/JSONObject;)V

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    :try_start_7
    monitor-exit v1

    throw v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
.end method
