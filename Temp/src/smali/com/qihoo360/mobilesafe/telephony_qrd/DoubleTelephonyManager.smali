.class public Lcom/qihoo360/mobilesafe/telephony_qrd/DoubleTelephonyManager;
.super Lcom/qihoo360/mobilesafe/telephonyInterface/DoubleTelephonyManagerInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qihoo360/mobilesafe/telephony_qrd/DoubleTelephonyManager$a;
    }
.end annotation


# static fields
.field private static d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/qihoo360/mobilesafe/telephonyInterface/PhoneCardInterface;",
            ">;"
        }
    .end annotation
.end field

.field private static synthetic h:[I

.field public static nowNetWorkCard:I


# instance fields
.field public final a:Landroid/content/Context;

.field protected b:Ljava/lang/Object;

.field private final c:I

.field private final e:Lu;

.field private f:I

.field private final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lh;",
            "Lcom/qihoo360/mobilesafe/telephony_qrd/DoubleTelephonyManager$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/qihoo360/mobilesafe/telephony_qrd/DoubleTelephonyManager;->d:Ljava/util/ArrayList;

    const/4 v0, -0x1

    sput v0, Lcom/qihoo360/mobilesafe/telephony_qrd/DoubleTelephonyManager;->nowNetWorkCard:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/qihoo360/mobilesafe/telephonyInterface/DoubleTelephonyManagerInterface;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/qihoo360/mobilesafe/telephony_qrd/DoubleTelephonyManager;->c:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/qihoo360/mobilesafe/telephony_qrd/DoubleTelephonyManager;->f:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/qihoo360/mobilesafe/telephony_qrd/DoubleTelephonyManager;->g:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/qihoo360/mobilesafe/telephony_qrd/DoubleTelephonyManager;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/qihoo360/mobilesafe/telephony_qrd/DoubleTelephonyManager;->b()V

    invoke-static {}, Lu;->a()Lu;

    move-result-object v0

    iput-object v0, p0, Lcom/qihoo360/mobilesafe/telephony_qrd/DoubleTelephonyManager;->e:Lu;

    return-void
.end method

.method static synthetic a(Lcom/qihoo360/mobilesafe/telephony_qrd/DoubleTelephonyManager;)I
    .locals 1

    iget v0, p0, Lcom/qihoo360/mobilesafe/telephony_qrd/DoubleTelephonyManager;->f:I

    return v0
.end method

.method static synthetic a()[I
    .locals 3

    sget-object v0, Lcom/qihoo360/mobilesafe/telephony_qrd/DoubleTelephonyManager;->h:[I

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
    sput-object v0, Lcom/qihoo360/mobilesafe/telephony_qrd/DoubleTelephonyManager;->h:[I

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

.method private b()V
    .locals 5

    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    sget-object v0, Lcom/qihoo360/mobilesafe/telephony_qrd/DoubleTelephonyManager;->d:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/qihoo360/mobilesafe/telephony_qrd/DoubleTelephonyManager;->d:Ljava/util/ArrayList;

    :cond_0
    sget-object v0, Lcom/qihoo360/mobilesafe/telephony_qrd/DoubleTelephonyManager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, v2, :cond_1

    sget-object v0, Lcom/qihoo360/mobilesafe/telephony_qrd/DoubleTelephonyManager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "GT-S7562i"

    aput-object v1, v0, v4

    const-string v1, "GT-I8552"

    aput-object v1, v0, v3

    const-string v1, "GT-S7572"

    aput-object v1, v0, v2

    const/4 v1, 0x3

    const-string v2, "GT-I8262D"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "GT-S7562"

    aput-object v2, v0, v1

    invoke-static {v0}, Lg;->a([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "ril.MSIMM"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lv;

    invoke-direct {v0, v3, p0}, Lv;-><init>(ILcom/qihoo360/mobilesafe/telephony_qrd/DoubleTelephonyManager;)V

    new-instance v1, Lv;

    invoke-direct {v1, v4, p0}, Lv;-><init>(ILcom/qihoo360/mobilesafe/telephony_qrd/DoubleTelephonyManager;)V

    sget-object v2, Lcom/qihoo360/mobilesafe/telephony_qrd/DoubleTelephonyManager;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/qihoo360/mobilesafe/telephony_qrd/DoubleTelephonyManager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput v3, p0, Lcom/qihoo360/mobilesafe/telephony_qrd/DoubleTelephonyManager;->f:I

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v0, Lv;

    invoke-direct {v0, v4, p0}, Lv;-><init>(ILcom/qihoo360/mobilesafe/telephony_qrd/DoubleTelephonyManager;)V

    new-instance v1, Lv;

    invoke-direct {v1, v3, p0}, Lv;-><init>(ILcom/qihoo360/mobilesafe/telephony_qrd/DoubleTelephonyManager;)V

    sget-object v2, Lcom/qihoo360/mobilesafe/telephony_qrd/DoubleTelephonyManager;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/qihoo360/mobilesafe/telephony_qrd/DoubleTelephonyManager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private c()I
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/qihoo360/mobilesafe/telephony_qrd/DoubleTelephonyManager;->b:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/qihoo360/mobilesafe/telephony_qrd/DoubleTelephonyManager;->a:Landroid/content/Context;

    const-string v1, "phone_msim"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/qihoo360/mobilesafe/telephony_qrd/DoubleTelephonyManager;->b:Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/qihoo360/mobilesafe/telephony_qrd/DoubleTelephonyManager;->b:Ljava/lang/Object;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/qihoo360/mobilesafe/telephony_qrd/DoubleTelephonyManager;->a:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/qihoo360/mobilesafe/telephony_qrd/DoubleTelephonyManager;->b:Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lcom/qihoo360/mobilesafe/telephony_qrd/DoubleTelephonyManager;->b:Ljava/lang/Object;

    const-string v1, "getPreferredDataSubscription"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3, v4}, Lm;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method


# virtual methods
.method public addSimIdColumnToProjection(Lcom/qihoo360/mobilesafe/telephonyInterface/DoubleTelephonyManagerInterface$SysIdType;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    array-length v0, p2

    add-int/lit8 v0, v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_1
    array-length v2, p2

    if-lt v0, v2, :cond_1

    invoke-static {}, Lcom/qihoo360/mobilesafe/telephony_qrd/DoubleTelephonyManager;->a()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/qihoo360/mobilesafe/telephonyInterface/DoubleTelephonyManagerInterface$SysIdType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    :goto_2
    move-object v0, v1

    goto :goto_0

    :cond_1
    aget-object v2, p2, v0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :pswitch_0
    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    iget-object v2, p0, Lcom/qihoo360/mobilesafe/telephony_qrd/DoubleTelephonyManager;->e:Lu;

    invoke-virtual {v2}, Lu;->c()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    goto :goto_2

    :pswitch_1
    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    iget-object v2, p0, Lcom/qihoo360/mobilesafe/telephony_qrd/DoubleTelephonyManager;->e:Lu;

    invoke-virtual {v2}, Lu;->b()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public beginMMSConnectivity(Landroid/content/Context;I)I
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    const-string v2, "enableMMS"

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public doIpcallWithSdk14()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "K-Touch W619"

    aput-object v3, v2, v1

    const-string v3, "K-Touch E619"

    aput-object v3, v2, v0

    invoke-static {v2}, Lg;->a([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public endMMSConnectivity(Landroid/content/Context;I)V
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    const-string v2, "enableMMS"

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I

    return-void
.end method

.method public getConnectActionCardId(Landroid/content/Intent;)I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getCurrentMobileState(Landroid/content/Context;)I
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "mobile_data"

    invoke-static {v0, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "connectivity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const-class v3, Landroid/net/ConnectivityManager;

    :try_start_1
    const-string v4, "getMobileDataEnabled"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :catch_1
    move-exception v0

    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getCurrentNetCard(Landroid/content/Context;)I
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/qihoo360/mobilesafe/telephony_qrd/DoubleTelephonyManager;->getPhoneCardsList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qihoo360/mobilesafe/telephonyInterface/PhoneCardInterface;

    invoke-virtual {v0}, Lcom/qihoo360/mobilesafe/telephonyInterface/PhoneCardInterface;->isAvailable()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0}, Lcom/qihoo360/mobilesafe/telephony_qrd/DoubleTelephonyManager;->getPhoneCardsList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qihoo360/mobilesafe/telephonyInterface/PhoneCardInterface;

    invoke-virtual {v0}, Lcom/qihoo360/mobilesafe/telephonyInterface/PhoneCardInterface;->isAvailable()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    and-int/2addr v3, v4

    if-nez v3, :cond_1

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v2

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/qihoo360/mobilesafe/telephony_qrd/DoubleTelephonyManager;->c()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    goto :goto_0

    :catch_1
    move-exception v0

    move v0, v2

    goto :goto_0
.end method

.method public getDefaultTelephonyService()Lcom/android/internal/telephony/ITelephony;
    .locals 1

    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneCardsList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/qihoo360/mobilesafe/telephonyInterface/PhoneCardInterface;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/qihoo360/mobilesafe/telephony_qrd/DoubleTelephonyManager;->b()V

    sget-object v0, Lcom/qihoo360/mobilesafe/telephony_qrd/DoubleTelephonyManager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSimId(Lcom/qihoo360/mobilesafe/telephonyInterface/DoubleTelephonyManagerInterface$SysIdType;Landroid/database/Cursor;)I
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {}, Lcom/qihoo360/mobilesafe/telephony_qrd/DoubleTelephonyManager;->a()[I

    move-result-object v2

    invoke-virtual {p1}, Lcom/qihoo360/mobilesafe/telephonyInterface/DoubleTelephonyManagerInterface$SysIdType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :goto_0
    iget-object v1, p0, Lcom/qihoo360/mobilesafe/telephony_qrd/DoubleTelephonyManager;->e:Lu;

    invoke-virtual {v1, p1, v0}, Lu;->a(Lcom/qihoo360/mobilesafe/telephonyInterface/DoubleTelephonyManagerInterface$SysIdType;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/qihoo360/mobilesafe/telephony_qrd/DoubleTelephonyManager;->a(I)I

    move-result v0

    :cond_0
    :goto_1
    return v0

    :pswitch_0
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Lenovo A765e"

    aput-object v3, v2, v0

    const-string v3, "Lenovo A580"

    aput-object v3, v2, v1

    const/4 v3, 0x2

    const-string v4, "Lenovo S850e"

    aput-object v4, v2, v3

    invoke-static {v2}, Lg;->a([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/qihoo360/mobilesafe/telephony_qrd/DoubleTelephonyManager;->e:Lu;

    invoke-virtual {v2}, Lu;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "46003"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/qihoo360/mobilesafe/telephony_qrd/DoubleTelephonyManager;->e:Lu;

    invoke-virtual {v0}, Lu;->c()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/qihoo360/mobilesafe/telephony_qrd/DoubleTelephonyManager;->e:Lu;

    invoke-virtual {v0}, Lu;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public getSimId(Lcom/qihoo360/mobilesafe/telephonyInterface/DoubleTelephonyManagerInterface$SysIdType;Landroid/database/Cursor;I)I
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {}, Lcom/qihoo360/mobilesafe/telephony_qrd/DoubleTelephonyManager;->a()[I

    move-result-object v2

    invoke-virtual {p1}, Lcom/qihoo360/mobilesafe/telephonyInterface/DoubleTelephonyManagerInterface$SysIdType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :goto_0
    iget-object v1, p0, Lcom/qihoo360/mobilesafe/telephony_qrd/DoubleTelephonyManager;->e:Lu;

    invoke-virtual {v1, p1, v0}, Lu;->a(Lcom/qihoo360/mobilesafe/telephonyInterface/DoubleTelephonyManagerInterface$SysIdType;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/qihoo360/mobilesafe/telephony_qrd/DoubleTelephonyManager;->a(I)I

    move-result v0

    :cond_0
    :goto_1
    return v0

    :pswitch_0
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Lenovo A765e"

    aput-object v3, v2, v0

    const-string v3, "Lenovo A580"

    aput-object v3, v2, v1

    const/4 v3, 0x2

    const-string v4, "Lenovo S850e"

    aput-object v4, v2, v3

    invoke-static {v2}, Lg;->a([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "46003"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_1

    :cond_1
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    goto :goto_0

    :pswitch_1
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public getSimIdFromIntent(Lcom/qihoo360/mobilesafe/telephonyInterface/DoubleTelephonyManagerInterface$SysIdType;Landroid/content/Intent;)I
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/qihoo360/mobilesafe/telephony_qrd/DoubleTelephonyManager;->a()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/qihoo360/mobilesafe/telephonyInterface/DoubleTelephonyManagerInterface$SysIdType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/qihoo360/mobilesafe/telephony_qrd/DoubleTelephonyManager;->a(I)I

    move-result v0

    return v0

    :pswitch_0
    iget-object v1, p0, Lcom/qihoo360/mobilesafe/telephony_qrd/DoubleTelephonyManager;->e:Lu;

    invoke-virtual {v1}, Lu;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/qihoo360/mobilesafe/telephony_qrd/DoubleTelephonyManager;->e:Lu;

    invoke-virtual {v1}, Lu;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public getSmsFragmentText(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public listen(Lh;I)V
    .locals 3

    invoke-direct {p0}, Lcom/qihoo360/mobilesafe/telephony_qrd/DoubleTelephonyManager;->b()V

    iget-object v0, p0, Lcom/qihoo360/mobilesafe/telephony_qrd/DoubleTelephonyManager;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qihoo360/mobilesafe/telephony_qrd/DoubleTelephonyManager$a;

    if-nez v0, :cond_1

    new-instance v0, Lcom/qihoo360/mobilesafe/telephony_qrd/DoubleTelephonyManager$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/qihoo360/mobilesafe/telephony_qrd/DoubleTelephonyManager$a;-><init>(Lcom/qihoo360/mobilesafe/telephony_qrd/DoubleTelephonyManager;Lh;I)V

    iget-object v1, p0, Lcom/qihoo360/mobilesafe/telephony_qrd/DoubleTelephonyManager;->g:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    :goto_0
    sget-object v0, Lcom/qihoo360/mobilesafe/telephony_qrd/DoubleTelephonyManager;->d:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qihoo360/mobilesafe/telephonyInterface/PhoneCardInterface;

    iget-object v2, v1, Lcom/qihoo360/mobilesafe/telephony_qrd/DoubleTelephonyManager$a;->a:Lcom/qihoo360/mobilesafe/telephony_qrd/PhoneStateListenerProxy;

    invoke-virtual {v0, v2, p2}, Lcom/qihoo360/mobilesafe/telephonyInterface/PhoneCardInterface;->listen(Landroid/telephony/PhoneStateListener;I)V

    sget-object v0, Lcom/qihoo360/mobilesafe/telephony_qrd/DoubleTelephonyManager;->d:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qihoo360/mobilesafe/telephonyInterface/PhoneCardInterface;

    iget-object v1, v1, Lcom/qihoo360/mobilesafe/telephony_qrd/DoubleTelephonyManager$a;->b:Lcom/qihoo360/mobilesafe/telephony_qrd/PhoneStateListenerProxy;

    invoke-virtual {v0, v1, p2}, Lcom/qihoo360/mobilesafe/telephonyInterface/PhoneCardInterface;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_0
    return-void

    :cond_1
    if-nez p2, :cond_2

    iget-object v1, p0, Lcom/qihoo360/mobilesafe/telephony_qrd/DoubleTelephonyManager;->g:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget v1, v0, Lcom/qihoo360/mobilesafe/telephony_qrd/DoubleTelephonyManager$a;->c:I

    if-eq p2, v1, :cond_0

    iput p2, v0, Lcom/qihoo360/mobilesafe/telephony_qrd/DoubleTelephonyManager$a;->c:I

    move-object v1, v0

    goto :goto_0
.end method

.method public setMobileDataState(Landroid/content/Context;ZZ)Z
    .locals 2

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p2}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    if-eqz p3, :cond_0

    sget-object v0, Lcom/qihoo360/mobilesafe/telephonyInterface/OperatorInterface;->telephoneEnvConfig:Lcom/qihoo360/mobilesafe/telephonyInterface/TelephoneEnvInterface;

    invoke-virtual {v0}, Lcom/qihoo360/mobilesafe/telephonyInterface/TelephoneEnvInterface;->getDataConnectionIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSimId(Lcom/qihoo360/mobilesafe/telephonyInterface/DoubleTelephonyManagerInterface$SysIdType;Landroid/content/ContentValues;I)V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/qihoo360/mobilesafe/telephony_qrd/DoubleTelephonyManager;->e:Lu;

    invoke-virtual {v0, p1, p3}, Lu;->b(Lcom/qihoo360/mobilesafe/telephonyInterface/DoubleTelephonyManagerInterface$SysIdType;I)I

    move-result v0

    invoke-static {}, Lcom/qihoo360/mobilesafe/telephony_qrd/DoubleTelephonyManager;->a()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/qihoo360/mobilesafe/telephonyInterface/DoubleTelephonyManagerInterface$SysIdType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "GT-S7562"

    aput-object v2, v1, v3

    const-string v2, "GT-I8262D"

    aput-object v2, v1, v4

    const-string v2, "GT-S7562i"

    aput-object v2, v1, v5

    const-string v2, "GT-S7572"

    aput-object v2, v1, v6

    const-string v2, "GT-I8552"

    aput-object v2, v1, v7

    invoke-static {v1}, Lg;->a([Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/qihoo360/mobilesafe/telephony_qrd/DoubleTelephonyManager;->e:Lu;

    invoke-virtual {v1}, Lu;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_1
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "Lenovo A765e"

    aput-object v1, v0, v3

    const-string v1, "Lenovo A580"

    aput-object v1, v0, v4

    const-string v1, "Lenovo S850e"

    aput-object v1, v0, v5

    invoke-static {v0}, Lg;->a([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "sim_imsi"

    sget-object v0, Lcom/qihoo360/mobilesafe/telephony_qrd/DoubleTelephonyManager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qihoo360/mobilesafe/telephonyInterface/PhoneCardInterface;

    invoke-virtual {v0}, Lcom/qihoo360/mobilesafe/telephonyInterface/PhoneCardInterface;->getIMSI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/qihoo360/mobilesafe/telephony_qrd/DoubleTelephonyManager;->e:Lu;

    invoke-virtual {v1}, Lu;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "GT-S7562"

    aput-object v1, v0, v3

    const-string v1, "GT-S7562i"

    aput-object v1, v0, v4

    const-string v1, "GT-I8262D"

    aput-object v1, v0, v5

    const-string v1, "GT-S7572"

    aput-object v1, v0, v6

    const-string v1, "GT-I8552"

    aput-object v1, v0, v7

    invoke-static {v0}, Lg;->a([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v1, "sim_imsi"

    sget-object v0, Lcom/qihoo360/mobilesafe/telephony_qrd/DoubleTelephonyManager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qihoo360/mobilesafe/telephonyInterface/PhoneCardInterface;

    invoke-virtual {v0}, Lcom/qihoo360/mobilesafe/telephonyInterface/PhoneCardInterface;->getIMSI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "HUAWEI D2-2010"

    aput-object v1, v0, v3

    invoke-static {v0}, Lg;->a([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/qihoo360/mobilesafe/telephony_qrd/DoubleTelephonyManager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qihoo360/mobilesafe/telephonyInterface/PhoneCardInterface;

    invoke-virtual {v0}, Lcom/qihoo360/mobilesafe/telephonyInterface/PhoneCardInterface;->getNetworkType()I

    move-result v0

    const-string v1, "network_type"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
