.class final Ly$b;
.super Ly;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# static fields
.field private static synthetic a:[I


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ly;-><init>(B)V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Ly$b;-><init>()V

    return-void
.end method

.method private static synthetic f()[I
    .locals 3

    sget-object v0, Ly$b;->a:[I

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
    sput-object v0, Ly$b;->a:[I

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
    .locals 3

    const/4 v0, 0x1

    invoke-static {}, Ly$b;->f()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/qihoo360/mobilesafe/telephonyInterface/DoubleTelephonyManagerInterface$SysIdType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    return p2

    :pswitch_0
    if-eq p2, v0, :cond_0

    const/4 v1, 0x4

    if-ne p2, v1, :cond_0

    move p2, v0

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
    .locals 3

    const/4 v0, 0x1

    invoke-static {}, Ly$b;->f()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/qihoo360/mobilesafe/telephonyInterface/DoubleTelephonyManagerInterface$SysIdType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    return p2

    :pswitch_0
    if-eqz p2, :cond_0

    if-ne p2, v0, :cond_0

    const/4 p2, 0x4

    goto :goto_0

    :cond_0
    move p2, v0

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
