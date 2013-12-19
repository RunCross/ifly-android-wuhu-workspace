.class final Ly$c;
.super Ly;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# static fields
.field private static synthetic c:[I


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 5

    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Ly;-><init>(B)V

    iput v2, p0, Ly$c;->a:I

    iput v3, p0, Ly$c;->b:I

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "HUAWEI Y210-2010"

    aput-object v1, v0, v2

    invoke-static {v0}, Lg;->a([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput v3, p0, Ly$c;->a:I

    iput v4, p0, Ly$c;->b:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "HUAWEI Y210-0010"

    aput-object v1, v0, v2

    invoke-static {v0}, Lg;->a([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Ly$c;->a:I

    iput v4, p0, Ly$c;->b:I

    goto :goto_0
.end method

.method private static synthetic f()[I
    .locals 3

    sget-object v0, Ly$c;->c:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/qihoo360/mobilesafe/telephonyInterface/DoubleTelephonyManagerInterface$SysIdType;->values()[Lcom/qihoo360/mobilesafe/telephonyInterface/DoubleTelephonyManagerInterface$SysIdType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/qihoo360/mobilesafe/telephonyInterface/DoubleTelephonyManagerInterface$SysIdType;->CALL:Lcom/qihoo360/mobilesafe/telephonyInterface/DoubleTelephonyManagerInterface$SysIdType;

    invoke-virtual {v1}, Lcom/qihoo360/mobilesafe/telephonyInterface/DoubleTelephonyManagerInterface$SysIdType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lcom/qihoo360/mobilesafe/telephonyInterface/DoubleTelephonyManagerInterface$SysIdType;->MMS:Lcom/qihoo360/mobilesafe/telephonyInterface/DoubleTelephonyManagerInterface$SysIdType;

    invoke-virtual {v1}, Lcom/qihoo360/mobilesafe/telephonyInterface/DoubleTelephonyManagerInterface$SysIdType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcom/qihoo360/mobilesafe/telephonyInterface/DoubleTelephonyManagerInterface$SysIdType;->SMS:Lcom/qihoo360/mobilesafe/telephonyInterface/DoubleTelephonyManagerInterface$SysIdType;

    invoke-virtual {v1}, Lcom/qihoo360/mobilesafe/telephonyInterface/DoubleTelephonyManagerInterface$SysIdType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Ly$c;->c:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public final a(Lcom/qihoo360/mobilesafe/telephonyInterface/DoubleTelephonyManagerInterface$SysIdType;I)I
    .locals 2

    invoke-static {}, Ly$c;->f()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/qihoo360/mobilesafe/telephonyInterface/DoubleTelephonyManagerInterface$SysIdType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return p2

    :pswitch_0
    iget v0, p0, Ly$c;->b:I

    if-ne p2, v0, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Lcom/qihoo360/mobilesafe/telephonyInterface/DoubleTelephonyManagerInterface$SysIdType;I)I
    .locals 2

    invoke-static {}, Ly$c;->f()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/qihoo360/mobilesafe/telephonyInterface/DoubleTelephonyManagerInterface$SysIdType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return p2

    :pswitch_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget p2, p0, Ly$c;->b:I

    goto :goto_0

    :cond_0
    iget p2, p0, Ly$c;->a:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    const-string v0, "subscription"

    return-object v0
.end method
