.class public Lq;
.super Ljava/lang/Object;


# static fields
.field private static a:Lq;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lq;
    .locals 1

    sget-object v0, Lq;->a:Lq;

    if-eqz v0, :cond_0

    sget-object v0, Lq;->a:Lq;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lq;

    invoke-direct {v0}, Lq;-><init>()V

    sput-object v0, Lq;->a:Lq;

    goto :goto_0
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

    const-string v0, "phone_id"

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const-string v0, "subs_id"

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "subslotcard"

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "Subscription"

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    const-string v0, "phone_id"

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    const-string v0, "subscription"

    return-object v0
.end method
