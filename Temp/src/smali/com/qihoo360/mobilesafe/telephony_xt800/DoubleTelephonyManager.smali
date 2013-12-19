.class public Lcom/qihoo360/mobilesafe/telephony_xt800/DoubleTelephonyManager;
.super Lcom/qihoo360/mobilesafe/telephonyInterface/DoubleTelephonyManagerInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qihoo360/mobilesafe/telephony_xt800/DoubleTelephonyManager$a;
    }
.end annotation


# static fields
.field public static final CALL_STATE_IDLE:I = 0x0

.field public static final CALL_STATE_OFFHOOK:I = 0x2

.field public static final CALL_STATE_RINGING:I = 0x1

.field public static final DATA_CONNECTED:I = 0x2

.field public static final DATA_CONNECTING:I = 0x1

.field public static final DATA_DISCONNECTED:I = 0x0

.field public static final PHONE_TYPE_CDMA:I = 0x2

.field public static final PHONE_TYPE_GSM:I = 0x1

.field private static b:Landroid/telephony/TelephonyManager; = null

.field private static c:Lcom/motorola/telephony/SecondaryTelephonyManager; = null

.field private static synthetic e:[I = null

.field public static nowNetWorkCard:I = 0x0

.field public static phoneCardsList:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/qihoo360/mobilesafe/telephonyInterface/PhoneCardInterface;",
            ">;"
        }
    .end annotation
.end field

.field public static final sysCallColumnName:Ljava/lang/String; = "network"

.field public static final sysSMSColumnName:Ljava/lang/String; = "mode"


# instance fields
.field public final a:Landroid/content/Context;

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lh;",
            "Lcom/qihoo360/mobilesafe/telephony_xt800/DoubleTelephonyManager$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/qihoo360/mobilesafe/telephony_xt800/DoubleTelephonyManager;->phoneCardsList:Ljava/util/ArrayList;

    const/4 v0, -0x1

    sput v0, Lcom/qihoo360/mobilesafe/telephony_xt800/DoubleTelephonyManager;->nowNetWorkCard:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Lcom/qihoo360/mobilesafe/telephonyInterface/DoubleTelephonyManagerInterface;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/qihoo360/mobilesafe/telephony_xt800/DoubleTelephonyManager;->d:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/qihoo360/mobilesafe/telephony_xt800/DoubleTelephonyManager;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/qihoo360/mobilesafe/telephony_xt800/DoubleTelephonyManager;->a:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    sput-object v0, Lcom/qihoo360/mobilesafe/telephony_xt800/DoubleTelephonyManager;->b:Landroid/telephony/TelephonyManager;

    iget-object v0, p0, Lcom/qihoo360/mobilesafe/telephony_xt800/DoubleTelephonyManager;->a:Landroid/content/Context;

    const-string v1, "phone2"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/telephony/SecondaryTelephonyManager;

    sput-object v0, Lcom/qihoo360/mobilesafe/telephony_xt800/DoubleTelephonyManager;->c:Lcom/motorola/telephony/SecondaryTelephonyManager;

    invoke-direct {p0}, Lcom/qihoo360/mobilesafe/telephony_xt800/DoubleTelephonyManager;->b()V

    return-void
.end method

.method static synthetic a()[I
    .locals 3

    sget-object v0, Lcom/qihoo360/mobilesafe/telephony_xt800/DoubleTelephonyManager;->e:[I

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
    sput-object v0, Lcom/qihoo360/mobilesafe/telephony_xt800/DoubleTelephonyManager;->e:[I

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

.method private static b(I)I
    .locals 4

    const/4 v0, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x1

    const/4 v3, 0x2

    if-ne v3, p0, :cond_0

    sput v0, Lcom/qihoo360/mobilesafe/telephony_xt800/DoubleTelephonyManager;->nowNetWorkCard:I

    :goto_0
    return v0

    :cond_0
    if-ne v1, p0, :cond_1

    sput v1, Lcom/qihoo360/mobilesafe/telephony_xt800/DoubleTelephonyManager;->nowNetWorkCard:I

    move v0, v1

    goto :goto_0

    :cond_1
    sput v2, Lcom/qihoo360/mobilesafe/telephony_xt800/DoubleTelephonyManager;->nowNetWorkCard:I

    move v0, v2

    goto :goto_0
.end method

.method private b()V
    .locals 6

    const/4 v5, 0x1

    const/4 v1, 0x0

    sget-object v0, Lcom/qihoo360/mobilesafe/telephony_xt800/DoubleTelephonyManager;->phoneCardsList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/qihoo360/mobilesafe/telephony_xt800/DoubleTelephonyManager;->phoneCardsList:Ljava/util/ArrayList;

    :cond_0
    sget-object v0, Lcom/qihoo360/mobilesafe/telephony_xt800/DoubleTelephonyManager;->phoneCardsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_2

    sget-object v0, Lcom/qihoo360/mobilesafe/telephony_xt800/DoubleTelephonyManager;->phoneCardsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    move v0, v1

    :cond_1
    sget-object v2, Lcom/qihoo360/mobilesafe/telephony_xt800/DoubleTelephonyManager;->b:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v2

    sget-object v3, Lcom/qihoo360/mobilesafe/telephony_xt800/DoubleTelephonyManager;->c:Lcom/motorola/telephony/SecondaryTelephonyManager;

    invoke-virtual {v3}, Lcom/motorola/telephony/SecondaryTelephonyManager;->getPhoneType()I

    move-result v3

    add-int/lit8 v0, v0, 0x1

    const/4 v4, 0x3

    if-lt v0, v4, :cond_1

    if-eq v2, v3, :cond_1

    if-ne v2, v5, :cond_3

    new-instance v0, Lak;

    invoke-direct {v0, v1, p0}, Lak;-><init>(ILcom/qihoo360/mobilesafe/telephony_xt800/DoubleTelephonyManager;)V

    new-instance v1, Laj;

    invoke-direct {v1, v5, p0}, Laj;-><init>(ILcom/qihoo360/mobilesafe/telephony_xt800/DoubleTelephonyManager;)V

    sget-object v2, Lcom/qihoo360/mobilesafe/telephony_xt800/DoubleTelephonyManager;->phoneCardsList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/qihoo360/mobilesafe/telephony_xt800/DoubleTelephonyManager;->phoneCardsList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    return-void

    :cond_3
    new-instance v0, Laj;

    invoke-direct {v0, v1, p0}, Laj;-><init>(ILcom/qihoo360/mobilesafe/telephony_xt800/DoubleTelephonyManager;)V

    new-instance v1, Lak;

    invoke-direct {v1, v5, p0}, Lak;-><init>(ILcom/qihoo360/mobilesafe/telephony_xt800/DoubleTelephonyManager;)V

    sget-object v2, Lcom/qihoo360/mobilesafe/telephony_xt800/DoubleTelephonyManager;->phoneCardsList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/qihoo360/mobilesafe/telephony_xt800/DoubleTelephonyManager;->phoneCardsList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static getCurrentNetCardWithUnknow(Landroid/content/Context;)I
    .locals 5

    const/4 v4, 0x5

    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-object v0, Lcom/qihoo360/mobilesafe/telephony_xt800/DoubleTelephonyManager;->c:Lcom/motorola/telephony/SecondaryTelephonyManager;

    invoke-virtual {v0}, Lcom/motorola/telephony/SecondaryTelephonyManager;->getDataState()I

    move-result v0

    if-ne v3, v0, :cond_0

    sget-object v0, Lcom/qihoo360/mobilesafe/telephony_xt800/DoubleTelephonyManager;->c:Lcom/motorola/telephony/SecondaryTelephonyManager;

    invoke-virtual {v0}, Lcom/motorola/telephony/SecondaryTelephonyManager;->getPhoneType()I

    move-result v0

    invoke-static {v0}, Lcom/qihoo360/mobilesafe/telephony_xt800/DoubleTelephonyManager;->b(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/qihoo360/mobilesafe/telephony_xt800/DoubleTelephonyManager;->b:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v0

    if-ne v3, v0, :cond_1

    sget-object v0, Lcom/qihoo360/mobilesafe/telephony_xt800/DoubleTelephonyManager;->b:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    invoke-static {v0}, Lcom/qihoo360/mobilesafe/telephony_xt800/DoubleTelephonyManager;->b(I)I

    move-result v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/qihoo360/mobilesafe/telephony_xt800/DoubleTelephonyManager;->b:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    if-ne v0, v4, :cond_2

    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sget-object v3, Lcom/qihoo360/mobilesafe/telephony_xt800/DoubleTelephonyManager;->c:Lcom/motorola/telephony/SecondaryTelephonyManager;

    invoke-virtual {v3}, Lcom/motorola/telephony/SecondaryTelephonyManager;->getSimState()I

    move-result v3

    if-ne v3, v4, :cond_3

    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v0, Lcom/qihoo360/mobilesafe/telephony_xt800/DoubleTelephonyManager;->b:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    invoke-static {v0}, Lcom/qihoo360/mobilesafe/telephony_xt800/DoubleTelephonyManager;->b(I)I

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/qihoo360/mobilesafe/telephony_xt800/DoubleTelephonyManager;->c:Lcom/motorola/telephony/SecondaryTelephonyManager;

    invoke-virtual {v0}, Lcom/motorola/telephony/SecondaryTelephonyManager;->getPhoneType()I

    move-result v0

    invoke-static {v0}, Lcom/qihoo360/mobilesafe/telephony_xt800/DoubleTelephonyManager;->b(I)I

    move-result v0

    goto :goto_0

    :cond_5
    const/4 v0, -0x1

    goto :goto_0
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

    invoke-static {}, Lcom/qihoo360/mobilesafe/telephony_xt800/DoubleTelephonyManager;->a()[I

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

    const-string v2, "network"

    aput-object v2, v1, v0

    goto :goto_2

    :pswitch_1
    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    const-string v2, "mode"

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

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const-string v1, "enableMMS"

    invoke-virtual {v0, v2, v1}, Landroid/net/ConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;)I

    if-nez p2, :cond_0

    const-string v1, "enableMMS-CDMA"

    invoke-virtual {v0, v2, v1}, Landroid/net/ConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const-string v1, "enableMMS-GSM"

    invoke-virtual {v0, v2, v1}, Landroid/net/ConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public endMMSConnectivity(Landroid/content/Context;I)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-nez p2, :cond_0

    const-string v1, "enableMMS-CDMA"

    invoke-virtual {v0, v2, v1}, Landroid/net/ConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string v1, "enableMMS-GSM"

    invoke-virtual {v0, v2, v1}, Landroid/net/ConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I

    goto :goto_0
.end method

.method public getConnectActionCardId(Landroid/content/Intent;)I
    .locals 2

    const-string v0, "extraInfo"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "#777:CDMA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getCurrentMobileState(Landroid/content/Context;)I
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_data_network"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "none"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentNetCard(Landroid/content/Context;)I
    .locals 2

    invoke-static {p1}, Lcom/qihoo360/mobilesafe/telephony_xt800/DoubleTelephonyManager;->getCurrentNetCardWithUnknow(Landroid/content/Context;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    sget v0, Lcom/qihoo360/mobilesafe/telephony_xt800/DoubleTelephonyManager;->nowNetWorkCard:I

    :cond_0
    return v0
.end method

.method public getCurrentNetCardWithUnknowMotoxt800State(Landroid/content/Context;)I
    .locals 2

    const/4 v1, 0x2

    sget-object v0, Lcom/qihoo360/mobilesafe/telephony_xt800/DoubleTelephonyManager;->c:Lcom/motorola/telephony/SecondaryTelephonyManager;

    invoke-virtual {v0}, Lcom/motorola/telephony/SecondaryTelephonyManager;->getDataState()I

    move-result v0

    if-ne v1, v0, :cond_0

    sget-object v0, Lcom/qihoo360/mobilesafe/telephony_xt800/DoubleTelephonyManager;->c:Lcom/motorola/telephony/SecondaryTelephonyManager;

    invoke-virtual {v0}, Lcom/motorola/telephony/SecondaryTelephonyManager;->getPhoneType()I

    move-result v0

    invoke-static {v0}, Lcom/qihoo360/mobilesafe/telephony_xt800/DoubleTelephonyManager;->b(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/qihoo360/mobilesafe/telephony_xt800/DoubleTelephonyManager;->b:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v0

    if-ne v1, v0, :cond_1

    sget-object v0, Lcom/qihoo360/mobilesafe/telephony_xt800/DoubleTelephonyManager;->b:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    invoke-static {v0}, Lcom/qihoo360/mobilesafe/telephony_xt800/DoubleTelephonyManager;->b(I)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

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

    invoke-direct {p0}, Lcom/qihoo360/mobilesafe/telephony_xt800/DoubleTelephonyManager;->b()V

    sget-object v0, Lcom/qihoo360/mobilesafe/telephony_xt800/DoubleTelephonyManager;->phoneCardsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSimId(Lcom/qihoo360/mobilesafe/telephonyInterface/DoubleTelephonyManagerInterface$SysIdType;Landroid/database/Cursor;)I
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/qihoo360/mobilesafe/telephony_xt800/DoubleTelephonyManager;->a()[I

    move-result-object v2

    invoke-virtual {p1}, Lcom/qihoo360/mobilesafe/telephonyInterface/DoubleTelephonyManagerInterface$SysIdType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    const-string v2, "network"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x2

    if-eq v3, v2, :cond_0

    move v0, v1

    goto :goto_0

    :pswitch_1
    const-string v2, "mode"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "GSM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public getSimId(Lcom/qihoo360/mobilesafe/telephonyInterface/DoubleTelephonyManagerInterface$SysIdType;Landroid/database/Cursor;I)I
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/qihoo360/mobilesafe/telephony_xt800/DoubleTelephonyManager;->a()[I

    move-result-object v2

    invoke-virtual {p1}, Lcom/qihoo360/mobilesafe/telephonyInterface/DoubleTelephonyManagerInterface$SysIdType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x2

    if-eq v3, v2, :cond_0

    move v0, v1

    goto :goto_0

    :pswitch_1
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "GSM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public getSimIdFromIntent(Lcom/qihoo360/mobilesafe/telephonyInterface/DoubleTelephonyManagerInterface$SysIdType;Landroid/content/Intent;)I
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/qihoo360/mobilesafe/telephony_xt800/DoubleTelephonyManager;->a()[I

    move-result-object v2

    invoke-virtual {p1}, Lcom/qihoo360/mobilesafe/telephonyInterface/DoubleTelephonyManagerInterface$SysIdType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    const-string v2, "phone"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "GSM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :pswitch_1
    const-string v2, "from"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "GSM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

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

    invoke-direct {p0}, Lcom/qihoo360/mobilesafe/telephony_xt800/DoubleTelephonyManager;->b()V

    iget-object v0, p0, Lcom/qihoo360/mobilesafe/telephony_xt800/DoubleTelephonyManager;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qihoo360/mobilesafe/telephony_xt800/DoubleTelephonyManager$a;

    if-nez v0, :cond_1

    new-instance v0, Lcom/qihoo360/mobilesafe/telephony_xt800/DoubleTelephonyManager$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/qihoo360/mobilesafe/telephony_xt800/DoubleTelephonyManager$a;-><init>(Lcom/qihoo360/mobilesafe/telephony_xt800/DoubleTelephonyManager;Lh;I)V

    iget-object v1, p0, Lcom/qihoo360/mobilesafe/telephony_xt800/DoubleTelephonyManager;->d:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    :goto_0
    sget-object v0, Lcom/qihoo360/mobilesafe/telephony_xt800/DoubleTelephonyManager;->phoneCardsList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qihoo360/mobilesafe/telephonyInterface/PhoneCardInterface;

    iget-object v2, v1, Lcom/qihoo360/mobilesafe/telephony_xt800/DoubleTelephonyManager$a;->a:Lcom/qihoo360/mobilesafe/telephony_xt800/PhoneStateListenerProxy;

    invoke-virtual {v0, v2, p2}, Lcom/qihoo360/mobilesafe/telephonyInterface/PhoneCardInterface;->listen(Landroid/telephony/PhoneStateListener;I)V

    sget-object v0, Lcom/qihoo360/mobilesafe/telephony_xt800/DoubleTelephonyManager;->phoneCardsList:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qihoo360/mobilesafe/telephonyInterface/PhoneCardInterface;

    iget-object v1, v1, Lcom/qihoo360/mobilesafe/telephony_xt800/DoubleTelephonyManager$a;->b:Lcom/qihoo360/mobilesafe/telephony_xt800/PhoneStateListenerProxy;

    invoke-virtual {v0, v1, p2}, Lcom/qihoo360/mobilesafe/telephonyInterface/PhoneCardInterface;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_0
    return-void

    :cond_1
    if-nez p2, :cond_2

    iget-object v1, p0, Lcom/qihoo360/mobilesafe/telephony_xt800/DoubleTelephonyManager;->d:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget v1, v0, Lcom/qihoo360/mobilesafe/telephony_xt800/DoubleTelephonyManager$a;->c:I

    if-eq p2, v1, :cond_0

    iput p2, v0, Lcom/qihoo360/mobilesafe/telephony_xt800/DoubleTelephonyManager$a;->c:I

    move-object v1, v0

    goto :goto_0
.end method

.method public setMobileDataState(Landroid/content/Context;ZZ)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "default_data_network"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "cdma"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "gsm"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    const-string v2, "cdma"

    :cond_1
    if-nez p2, :cond_4

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "default_data_network"

    const-string v5, "none"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "save_interface"

    invoke-interface {v4, v5, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    if-eqz v3, :cond_3

    :cond_2
    :goto_0
    return v0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "save_interface"

    const-string v4, "cdma"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "cdma"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x0

    invoke-static {p1, v3}, Lcom/qihoo360/mobilesafe/telephonyInterface/OperatorInterface;->getPhoneCardsList_card(Landroid/content/Context;I)Lcom/qihoo360/mobilesafe/telephonyInterface/PhoneCardInterface;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qihoo360/mobilesafe/telephonyInterface/PhoneCardInterface;->isAvailable()Z

    move-result v3

    if-nez v3, :cond_5

    const-string v2, "gsm"

    :cond_5
    const-string v3, "gsm"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x1

    invoke-static {p1, v3}, Lcom/qihoo360/mobilesafe/telephonyInterface/OperatorInterface;->getPhoneCardsList_card(Landroid/content/Context;I)Lcom/qihoo360/mobilesafe/telephonyInterface/PhoneCardInterface;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qihoo360/mobilesafe/telephonyInterface/PhoneCardInterface;->isAvailable()Z

    move-result v3

    if-nez v3, :cond_6

    const-string v2, "cdma"

    :cond_6
    if-eqz v2, :cond_7

    const-string v3, "cdma"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "gsm"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    :cond_7
    const-string v2, "cdma"

    :cond_8
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "default_data_network"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method public setSimId(Lcom/qihoo360/mobilesafe/telephonyInterface/DoubleTelephonyManagerInterface$SysIdType;Landroid/content/ContentValues;I)V
    .locals 2

    invoke-static {}, Lcom/qihoo360/mobilesafe/telephony_xt800/DoubleTelephonyManager;->a()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/qihoo360/mobilesafe/telephonyInterface/DoubleTelephonyManagerInterface$SysIdType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string v0, "network"

    add-int/lit8 v1, p3, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x1

    if-ne v0, p3, :cond_0

    const-string v0, "GSM"

    :goto_1
    const-string v1, "mode"

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "CDMA"

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
