.class public Ly;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ly$a;,
        Ly$b;,
        Ly$c;
    }
.end annotation


# static fields
.field private static a:Ly;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Ly;-><init>()V

    return-void
.end method

.method public static a()Ly;
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    sget-object v0, Ly;->a:Ly;

    if-eqz v0, :cond_0

    sget-object v0, Ly;->a:Ly;

    :goto_0
    return-object v0

    :cond_0
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "HS-U8"

    aput-object v1, v0, v2

    const-string v1, "EPHONE W8"

    aput-object v1, v0, v3

    invoke-static {v0}, Lg;->a([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ly$a;

    invoke-direct {v0, v2}, Ly$a;-><init>(B)V

    sput-object v0, Ly;->a:Ly;

    :goto_1
    sget-object v0, Ly;->a:Ly;

    goto :goto_0

    :cond_1
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "S8600"

    aput-object v1, v0, v2

    invoke-static {v0}, Lg;->a([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ly$b;

    invoke-direct {v0, v2}, Ly$b;-><init>(B)V

    sput-object v0, Ly;->a:Ly;

    goto :goto_1

    :cond_2
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "HUAWEI Y210-0010"

    aput-object v1, v0, v2

    const-string v1, "HUAWEI Y210-2010"

    aput-object v1, v0, v3

    invoke-static {v0}, Lg;->a([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ly$c;

    invoke-direct {v0}, Ly$c;-><init>()V

    sput-object v0, Ly;->a:Ly;

    goto :goto_1

    :cond_3
    new-instance v0, Ly;

    invoke-direct {v0}, Ly;-><init>()V

    sput-object v0, Ly;->a:Ly;

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

    const-string v0, "sub_id"

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const-string v0, "sub_id"

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "Subscription"

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "sub_id"

    return-object v0
.end method
