.class public Lah;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lah$a;
    }
.end annotation


# static fields
.field private static a:Lah;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lah;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lah;
    .locals 4

    const-class v1, Lah;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lah;->a:Lah;

    if-eqz v0, :cond_0

    sget-object v0, Lah;->a:Lah;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "GT-I9152"

    aput-object v3, v0, v2

    invoke-static {v0}, Lg;->a([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lah$a;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lah$a;-><init>(B)V

    sput-object v0, Lah;->a:Lah;

    :goto_1
    sget-object v0, Lah;->a:Lah;

    goto :goto_0

    :cond_1
    new-instance v0, Lah;

    invoke-direct {v0}, Lah;-><init>()V

    sput-object v0, Lah;->a:Lah;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a(Lcom/qihoo360/mobilesafe/telephonyInterface/DoubleTelephonyManagerInterface$SysIdType;I)I
    .locals 0

    return p2
.end method

.method public b(Lcom/qihoo360/mobilesafe/telephonyInterface/DoubleTelephonyManagerInterface$SysIdType;I)I
    .locals 0

    return p2
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "phonetype"

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const-string v0, "simnum"

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "simnum"

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "format"

    return-object v0
.end method
