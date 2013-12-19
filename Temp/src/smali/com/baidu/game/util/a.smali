.class public Lcom/baidu/game/util/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static Z:Lcom/baidu/game/util/a; = null

.field private static final serialVersionUID:J = 0xb36a81e0d31617cL


# instance fields
.field private G:Ljava/lang/String;

.field private ar:I

.field private as:I

.field private at:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private au:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/game/util/a;->Z:Lcom/baidu/game/util/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/baidu/game/util/a;->ar:I

    const/16 v0, 0xbb8

    iput v0, p0, Lcom/baidu/game/util/a;->as:I

    const-string v0, "userId"

    iput-object v0, p0, Lcom/baidu/game/util/a;->G:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/game/util/a;->at:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/game/util/a;->au:Ljava/lang/String;

    return-void
.end method

.method public static u()Lcom/baidu/game/util/a;
    .locals 2

    sget-object v0, Lcom/baidu/game/util/a;->Z:Lcom/baidu/game/util/a;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/baidu/game/util/a;->Z:Lcom/baidu/game/util/a;

    :goto_0
    return-object v0

    :cond_0
    const-class v1, Lcom/baidu/game/util/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/baidu/game/util/a;->Z:Lcom/baidu/game/util/a;

    if-nez v0, :cond_1

    new-instance v0, Lcom/baidu/game/util/a;

    invoke-direct {v0}, Lcom/baidu/game/util/a;-><init>()V

    sput-object v0, Lcom/baidu/game/util/a;->Z:Lcom/baidu/game/util/a;

    :cond_1
    sget-object v0, Lcom/baidu/game/util/a;->Z:Lcom/baidu/game/util/a;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/game/util/b;
        }
    .end annotation

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, ""

    :try_start_0
    invoke-static {p1, v1}, Lcom/baidu/game/util/h;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    return-object v0

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "baidu.httpClient"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "doPost error:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
