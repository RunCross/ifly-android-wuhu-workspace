.class public Lad;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lad$a;,
        Lad$b;,
        Lad$c;
    }
.end annotation


# static fields
.field private static a:Lad;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lad;
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    sget-object v0, Lad;->a:Lad;

    if-eqz v0, :cond_0

    sget-object v0, Lad;->a:Lad;

    :goto_0
    return-object v0

    :cond_0
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "GT-I9082"

    aput-object v1, v0, v2

    invoke-static {v0}, Lg;->a([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lad$c;

    invoke-direct {v0, v2}, Lad$c;-><init>(B)V

    sput-object v0, Lad;->a:Lad;

    :goto_1
    sget-object v0, Lad;->a:Lad;

    goto :goto_0

    :cond_1
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "GT-B9062"

    aput-object v1, v0, v2

    invoke-static {v0}, Lg;->a([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lad$a;

    invoke-direct {v0, v2}, Lad$a;-><init>(B)V

    sput-object v0, Lad;->a:Lad;

    goto :goto_1

    :cond_2
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "GT-B9120"

    aput-object v1, v0, v2

    invoke-static {v0}, Lg;->a([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lad$b;

    invoke-direct {v0, v2}, Lad$b;-><init>(B)V

    sput-object v0, Lad;->a:Lad;

    goto :goto_1

    :cond_3
    new-instance v0, Lad;

    invoke-direct {v0}, Lad;-><init>()V

    sput-object v0, Lad;->a:Lad;

    goto :goto_1
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

    const-string v0, "sim_id"

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const-string v0, "sim_id"

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "simId"

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "simId"

    return-object v0
.end method
