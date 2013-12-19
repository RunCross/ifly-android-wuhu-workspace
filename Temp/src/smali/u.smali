.class public Lu;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu$a;,
        Lu$b;,
        Lu$c;,
        Lu$d;,
        Lu$e;,
        Lu$f;,
        Lu$g;,
        Lu$h;,
        Lu$i;,
        Lu$j;,
        Lu$k;,
        Lu$l;,
        Lu$m;,
        Lu$n;,
        Lu$o;
    }
.end annotation


# static fields
.field private static a:Lu;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lu;-><init>()V

    return-void
.end method

.method public static a()Lu;
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-object v0, Lu;->a:Lu;

    if-eqz v0, :cond_0

    sget-object v0, Lu;->a:Lu;

    :goto_0
    return-object v0

    :cond_0
    new-array v0, v1, [Ljava/lang/String;

    const-string v3, "Lenovo S680"

    aput-object v3, v0, v2

    invoke-static {v0}, Lg;->a([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lu$i;

    invoke-direct {v0, v2}, Lu$i;-><init>(B)V

    sput-object v0, Lu;->a:Lu;

    :goto_1
    sget-object v0, Lu;->a:Lu;

    goto :goto_0

    :cond_1
    new-array v0, v5, [Ljava/lang/String;

    const-string v3, "ZTE N880F"

    aput-object v3, v0, v2

    const-string v3, "ZTE N880G"

    aput-object v3, v0, v1

    invoke-static {v0}, Lg;->a([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lu$n;

    invoke-direct {v0, v2}, Lu$n;-><init>(B)V

    sput-object v0, Lu;->a:Lu;

    goto :goto_1

    :cond_2
    const-string v0, "ro.product.brand"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v3, "zte"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    if-eqz v0, :cond_4

    new-array v0, v1, [Ljava/lang/String;

    const-string v3, "ZTE V956"

    aput-object v3, v0, v2

    invoke-static {v0}, Lg;->a([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Lu$m;

    invoke-direct {v0, v2}, Lu$m;-><init>(B)V

    sput-object v0, Lu;->a:Lu;

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_2

    :cond_4
    new-array v0, v5, [Ljava/lang/String;

    const-string v3, "K-Touch W619"

    aput-object v3, v0, v2

    const-string v3, "K-Touch E619"

    aput-object v3, v0, v1

    invoke-static {v0}, Lg;->a([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lu$e;

    invoke-direct {v0, v2}, Lu$e;-><init>(B)V

    sput-object v0, Lu;->a:Lu;

    goto :goto_1

    :cond_5
    new-array v0, v1, [Ljava/lang/String;

    const-string v3, "K-Touch W806+"

    aput-object v3, v0, v2

    invoke-static {v0}, Lg;->a([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Lu$f;

    invoke-direct {v0, v2}, Lu$f;-><init>(B)V

    sput-object v0, Lu;->a:Lu;

    goto :goto_1

    :cond_6
    new-array v0, v1, [Ljava/lang/String;

    const-string v3, "K-Touch U86"

    aput-object v3, v0, v2

    invoke-static {v0}, Lg;->a([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Lu$d;

    invoke-direct {v0, v2}, Lu$d;-><init>(B)V

    sput-object v0, Lu;->a:Lu;

    goto/16 :goto_1

    :cond_7
    const-string v0, "ro.product.brand"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v3, "huawei"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    :goto_3
    if-eqz v0, :cond_9

    new-instance v0, Lu$c;

    invoke-direct {v0, v2}, Lu$c;-><init>(B)V

    sput-object v0, Lu;->a:Lu;

    goto/16 :goto_1

    :cond_8
    move v0, v2

    goto :goto_3

    :cond_9
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "GT-S7562"

    aput-object v3, v0, v2

    const-string v3, "GT-S7562i"

    aput-object v3, v0, v1

    const-string v3, "GT-I8262D"

    aput-object v3, v0, v5

    const-string v3, "GT-S7572"

    aput-object v3, v0, v6

    const/4 v3, 0x4

    const-string v4, "GT-I8552"

    aput-object v4, v0, v3

    invoke-static {v0}, Lg;->a([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v0, Lu$l;

    invoke-direct {v0, v2}, Lu$l;-><init>(B)V

    sput-object v0, Lu;->a:Lu;

    goto/16 :goto_1

    :cond_a
    new-array v0, v1, [Ljava/lang/String;

    const-string v3, "MOT-XT788"

    aput-object v3, v0, v2

    invoke-static {v0}, Lg;->a([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    new-instance v0, Lu$j;

    invoke-direct {v0, v2}, Lu$j;-><init>(B)V

    sput-object v0, Lu;->a:Lu;

    goto/16 :goto_1

    :cond_b
    new-array v0, v1, [Ljava/lang/String;

    const-string v3, "XT685"

    aput-object v3, v0, v2

    invoke-static {v0}, Lg;->a([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Lu$k;

    invoke-direct {v0, v2}, Lu$k;-><init>(B)V

    sput-object v0, Lu;->a:Lu;

    goto/16 :goto_1

    :cond_c
    new-array v0, v1, [Ljava/lang/String;

    const-string v3, "ZTE V955"

    aput-object v3, v0, v2

    invoke-static {v0}, Lg;->a([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    new-instance v0, Lu$o;

    invoke-direct {v0, v2}, Lu$o;-><init>(B)V

    sput-object v0, Lu;->a:Lu;

    goto/16 :goto_1

    :cond_d
    new-array v0, v6, [Ljava/lang/String;

    const-string v3, "Lenovo A765e"

    aput-object v3, v0, v2

    const-string v3, "Lenovo A580"

    aput-object v3, v0, v1

    const-string v3, "Lenovo S850e"

    aput-object v3, v0, v5

    invoke-static {v0}, Lg;->a([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Lu$g;

    invoke-direct {v0, v2}, Lu$g;-><init>(B)V

    sput-object v0, Lu;->a:Lu;

    goto/16 :goto_1

    :cond_e
    new-array v0, v1, [Ljava/lang/String;

    const-string v3, "Lenovo S686"

    aput-object v3, v0, v2

    invoke-static {v0}, Lg;->a([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    new-instance v0, Lu$h;

    invoke-direct {v0, v2}, Lu$h;-><init>(B)V

    sput-object v0, Lu;->a:Lu;

    goto/16 :goto_1

    :cond_f
    new-array v0, v5, [Ljava/lang/String;

    const-string v3, "HS-U9"

    aput-object v3, v0, v2

    const-string v3, "E30"

    aput-object v3, v0, v1

    invoke-static {v0}, Lg;->a([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance v0, Lu$b;

    invoke-direct {v0, v2}, Lu$b;-><init>(B)V

    sput-object v0, Lu;->a:Lu;

    goto/16 :goto_1

    :cond_10
    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "HS-EG950"

    aput-object v1, v0, v2

    invoke-static {v0}, Lg;->a([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    new-instance v0, Lu$a;

    invoke-direct {v0, v2}, Lu$a;-><init>(B)V

    sput-object v0, Lu;->a:Lu;

    goto/16 :goto_1

    :cond_11
    new-instance v0, Lu;

    invoke-direct {v0}, Lu;-><init>()V

    sput-object v0, Lu;->a:Lu;

    goto/16 :goto_1
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

    const-string v0, "subscription"

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "subscription"

    return-object v0
.end method
