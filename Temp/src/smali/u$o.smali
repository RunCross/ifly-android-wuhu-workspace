.class final Lu$o;
.super Lu;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "o"
.end annotation


# static fields
.field private static synthetic a:[I


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lu;-><init>(B)V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lu$o;-><init>()V

    return-void
.end method

.method private static synthetic f()[I
    .locals 3

    sget-object v0, Lu$o;->a:[I

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
    sput-object v0, Lu$o;->a:[I

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

    invoke-static {}, Lu$o;->f()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/qihoo360/mobilesafe/telephonyInterface/DoubleTelephonyManagerInterface$SysIdType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2}, Lu;->a(Lcom/qihoo360/mobilesafe/telephonyInterface/DoubleTelephonyManagerInterface$SysIdType;I)I

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    add-int/lit8 v0, p2, -0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Lcom/qihoo360/mobilesafe/telephonyInterface/DoubleTelephonyManagerInterface$SysIdType;I)I
    .locals 2

    invoke-static {}, Lu$o;->f()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/qihoo360/mobilesafe/telephonyInterface/DoubleTelephonyManagerInterface$SysIdType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2}, Lu;->a(Lcom/qihoo360/mobilesafe/telephonyInterface/DoubleTelephonyManagerInterface$SysIdType;I)I

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    add-int/lit8 v0, p2, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    const-string v0, "mode_id"

    return-object v0
.end method
