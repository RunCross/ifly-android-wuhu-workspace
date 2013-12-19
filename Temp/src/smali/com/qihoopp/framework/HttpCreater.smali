.class public Lcom/qihoopp/framework/HttpCreater;
.super Ljava/lang/Object;


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "HttpCreater"

    sput-object v0, Lcom/qihoopp/framework/HttpCreater;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/qihoopp/framework/HttpCreater;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public create(Landroid/content/Context;Lcom/qihoopp/framework/HttpRequestMode;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/qihoopp/framework/HttpLoaderCallback;)Lcom/qihoopp/framework/HttpLoadThread;
    .locals 7

    new-instance v0, Lcom/qihoopp/framework/HttpLoadThread;

    new-instance v2, Lcom/qihoopp/framework/b;

    invoke-direct {v2, p6, p0}, Lcom/qihoopp/framework/b;-><init>(Lcom/qihoopp/framework/HttpLoaderCallback;Lcom/qihoopp/framework/HttpCreater;)V

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/qihoopp/framework/HttpLoadThread;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/qihoopp/framework/HttpRequestMode;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    return-object v0
.end method
