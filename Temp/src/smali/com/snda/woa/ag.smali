.class Lcom/snda/woa/ag;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/snda/woa/ag;

.field protected static b:Ljava/lang/String;

.field protected static c:Ljava/lang/String;

.field private static d:I

.field private static e:Z

.field private static g:Lcom/snda/woa/co;


# instance fields
.field private final f:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/snda/woa/ag;

    invoke-direct {v0}, Lcom/snda/woa/ag;-><init>()V

    sput-object v0, Lcom/snda/woa/ag;->a:Lcom/snda/woa/ag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/snda/woa/ce;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/datacollect/sendBase64.shtm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/snda/woa/ag;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/snda/woa/ce;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/datacollect/sendBase64.shtm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/snda/woa/ag;->c:Ljava/lang/String;

    const/4 v0, 0x0

    sput v0, Lcom/snda/woa/ag;->d:I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/snda/woa/ag;->e:Z

    new-instance v0, Lcom/snda/woa/aq;

    invoke-direct {v0}, Lcom/snda/woa/aq;-><init>()V

    sput-object v0, Lcom/snda/woa/ag;->g:Lcom/snda/woa/co;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SDOAnalyzeAgent"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/snda/woa/ag;->f:Landroid/os/Handler;

    return-void
.end method

.method public static a()Lcom/snda/woa/co;
    .locals 1

    sget-object v0, Lcom/snda/woa/ag;->g:Lcom/snda/woa/co;

    return-object v0
.end method

.method protected static a(Landroid/content/Context;)V
    .locals 2

    if-nez p0, :cond_0

    :try_start_0
    const-string v0, "SDOAnalyzeAgent"

    const-string v1, "unexpected null context"

    invoke-static {v0, v1}, Lcom/snda/woa/au;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/snda/woa/ag;->a:Lcom/snda/woa/ag;

    invoke-direct {v0, p0}, Lcom/snda/woa/ag;->b(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "SDOAnalyzeAgent"

    const-string v1, "Exception occurred in SDO.flush(). "

    invoke-static {v0, v1}, Lcom/snda/woa/au;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    sget-object v1, Lcom/snda/woa/z;->c:Ljava/lang/String;

    sget-object v2, Lcom/snda/woa/z;->r:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lcom/snda/woa/z;->ak:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    sget-object v1, Lcom/snda/woa/z;->s:Ljava/lang/String;

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lcom/snda/woa/z;->t:Ljava/lang/String;

    invoke-virtual {v0, v1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lcom/snda/woa/z;->u:Ljava/lang/String;

    invoke-virtual {v0, v1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lcom/snda/woa/ag;->f:Landroid/os/Handler;

    new-instance v2, Lcom/snda/woa/c;

    invoke-direct {v2, p0, p1, v0}, Lcom/snda/woa/c;-><init>(Lcom/snda/woa/ag;Landroid/content/Context;Lorg/json/JSONObject;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/snda/woa/ag;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method protected static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    if-nez p0, :cond_0

    const-string v0, "SDOAnalyzeAgent"

    const-string v1, "unexpected null context"

    invoke-static {v0, v1}, Lcom/snda/woa/au;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    const-string v0, ""

    if-ne p1, v0, :cond_2

    :cond_1
    const-string v0, "SDOAnalyzeAgent"

    const-string v1, "tag is null or empty"

    invoke-static {v0, v1}, Lcom/snda/woa/au;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    const-string v0, ""

    if-ne p2, v0, :cond_4

    :cond_3
    const-string v0, "SDOAnalyzeAgent"

    const-string v1, "label is null or empty"

    invoke-static {v0, v1}, Lcom/snda/woa/au;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    if-gtz p3, :cond_5

    const-string v0, "SDOAnalyzeAgent"

    const-string v1, "Illegal value of acc"

    invoke-static {v0, v1}, Lcom/snda/woa/au;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/snda/woa/ag;->a:Lcom/snda/woa/ag;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/snda/woa/ag;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private declared-synchronized a(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SDOAnalyzeAgent"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Log is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/snda/woa/au;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Lcom/snda/woa/an;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ISO-8859-1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    sget-object v2, Lcom/snda/woa/ce;->o:[Ljava/lang/String;

    sget v3, Lcom/snda/woa/ce;->b:I

    aget-object v2, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "msg="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v4, v1

    invoke-static {v1, v4}, Lcom/snda/woa/q;->a([BI)Ljava/lang/String;

    move-result-object v1

    const-string v4, "UTF-8"

    invoke-static {v1, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "GB2312"

    invoke-static {p1, v2, p3, v1, v3}, Lcom/snda/woa/av;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/snda/woa/bz;

    move-result-object v1

    const-string v2, "SDOAnalyzeAgent"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u6570\u636e\u91c7\u96c6 resp\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/snda/woa/au;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    invoke-virtual {v1}, Lcom/snda/woa/bz;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "resultCode"

    const/16 v3, -0x3e7

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "SDOAnalyzeAgent"

    const-string v3, "\u6570\u636e\u91c7\u96c6 error:"

    invoke-static {v2, v3, v1}, Lcom/snda/woa/au;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static a(Ljava/lang/String;Landroid/content/Context;I)Z
    .locals 6

    const/4 v0, 0x0

    const/16 v5, 0x3e8

    const/4 v1, 0x1

    const-string v2, "SDOAnalyzeAgent"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Log Message Lenth is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " event type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/snda/woa/au;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p1}, Lcom/snda/woa/ar;->d(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-ge p2, v5, :cond_2

    sget-object v2, Lcom/snda/woa/z;->d:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/snda/woa/z;->p:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/snda/woa/z;->v:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/snda/woa/z;->o:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    sget v2, Lcom/snda/woa/ag;->d:I

    if-ne v2, v1, :cond_4

    sget-object v2, Lcom/snda/woa/z;->l:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    if-lt p2, v5, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    sget v2, Lcom/snda/woa/ag;->d:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    sget-object v2, Lcom/snda/woa/z;->q:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    if-lt p2, v5, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    sget v2, Lcom/snda/woa/ag;->d:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_7

    sget-object v2, Lcom/snda/woa/z;->q:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    sget-object v2, Lcom/snda/woa/z;->l:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    if-lt p2, v5, :cond_7

    move v0, v1

    goto :goto_0

    :cond_7
    sget v2, Lcom/snda/woa/ag;->d:I

    if-nez v2, :cond_0

    if-lt p2, v5, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private declared-synchronized b(Landroid/content/Context;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/snda/woa/ag;->c(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/snda/woa/ag;->d(Landroid/content/Context;)Landroid/content/SharedPreferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    :try_start_1
    invoke-direct/range {v0 .. v5}, Lcom/snda/woa/ag;->a(Landroid/content/Context;Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private c(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    sget-object v1, Lcom/snda/woa/z;->c:Ljava/lang/String;

    sget-object v2, Lcom/snda/woa/z;->o:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lcom/snda/woa/ag;->f:Landroid/os/Handler;

    new-instance v2, Lcom/snda/woa/c;

    invoke-direct {v2, p0, p1, v0}, Lcom/snda/woa/c;-><init>(Lcom/snda/woa/ag;Landroid/content/Context;Lorg/json/JSONObject;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static d(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SDO_agent_state_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 2

    sget-object v0, Lcom/snda/woa/z;->d:Ljava/lang/String;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/snda/woa/ag;->a(Ljava/lang/String;Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/snda/woa/ag;->c:Ljava/lang/String;

    invoke-direct {p0, p1, p2, v0}, Lcom/snda/woa/ag;->a(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public b(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 1

    sget-object v0, Lcom/snda/woa/ag;->c:Ljava/lang/String;

    invoke-direct {p0, p1, p2, v0}, Lcom/snda/woa/ag;->a(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)Z

    return-void
.end method

.method public c(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 13

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/snda/woa/o;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/snda/woa/ar;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/snda/woa/ag;->g:Lcom/snda/woa/co;

    invoke-virtual {v0, p1}, Lcom/snda/woa/co;->a(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v7

    if-nez v7, :cond_2

    const-string v0, "SDOAnalyzeAgent"

    const-string v1, "Fail to construct message header"

    invoke-static {v0, v1}, Lcom/snda/woa/au;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/snda/woa/o;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-direct {v8, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v2, v1

    move-object v1, v0

    :cond_3
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snda/woa/bs;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/snda/woa/bs;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/snda/woa/cn;->c(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v0}, Lcom/snda/woa/bs;->c()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v0}, Lcom/snda/woa/bs;->a()I

    move-result v0

    invoke-static {p1, v0}, Lcom/snda/woa/o;->a(Landroid/content/Context;I)V

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Lcom/snda/woa/bs;->b()Ljava/lang/String;

    move-result-object v10

    const/4 v5, 0x0

    const-string v6, ""

    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v3, Lcom/snda/woa/z;->c:Ljava/lang/String;

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v3

    :goto_2
    if-eqz v4, :cond_5

    invoke-static {v3}, Lcom/snda/woa/cn;->c(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_5
    invoke-virtual {v0}, Lcom/snda/woa/bs;->a()I

    move-result v0

    invoke-static {p1, v0}, Lcom/snda/woa/o;->a(Landroid/content/Context;I)V

    goto :goto_1

    :catch_0
    move-exception v3

    move-object v4, v5

    :goto_3
    const-string v5, "SDOAnalyzeAgent"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "\u8bb0\u5f55: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " \u975ejson\u683c\u5f0f"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10, v3}, Lcom/snda/woa/au;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v3, v6

    goto :goto_2

    :cond_6
    invoke-virtual {v0}, Lcom/snda/woa/bs;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :try_start_2
    sget-object v0, Lcom/snda/woa/z;->o:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_7
    :goto_4
    sget-object v0, Lcom/snda/woa/z;->B:Ljava/lang/String;

    invoke-virtual {v2, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v0, Lcom/snda/woa/z;->C:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_5
    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_3

    sget-object v0, Lcom/snda/woa/z;->o:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Lcom/snda/woa/z;->r:Ljava/lang/String;

    :goto_6
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v0, p1, v3}, Lcom/snda/woa/ag;->a(Ljava/lang/String;Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/snda/woa/ag;->b:Ljava/lang/String;

    invoke-direct {p0, p1, v2, v0}, Lcom/snda/woa/ag;->a(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p1, v0}, Lcom/snda/woa/o;->a(Landroid/content/Context;I)V

    goto :goto_7

    :cond_8
    :try_start_3
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    const-string v4, "SDOAnalyzeAgent"

    const-string v5, "\u7ec4\u88c5json\u4e32\u51fa\u9519"

    invoke-static {v4, v5, v0}, Lcom/snda/woa/au;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    :cond_9
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p1, v0}, Lcom/snda/woa/o;->b(Landroid/content/Context;I)V

    goto :goto_8

    :cond_a
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :goto_9
    move-object v2, v1

    move-object v1, v0

    goto/16 :goto_1

    :catch_2
    move-exception v3

    goto/16 :goto_3

    :cond_b
    move-object v0, v1

    move-object v1, v2

    goto :goto_9

    :cond_c
    move-object v0, v3

    goto :goto_6
.end method
