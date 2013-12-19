.class public Lcom/qihoo360/mobilesafe/telephony_sumsang_note/DoubleTelephonyManager;
.super Lcom/qihoo360/mobilesafe/telephonyInterface/DoubleTelephonyManagerInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qihoo360/mobilesafe/telephony_sumsang_note/DoubleTelephonyManager$a;
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

.field private static synthetic d:[I

.field public static nowNetWorkCard:I

.field public static phoneCardsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/qihoo360/mobilesafe/telephonyInterface/PhoneCardInterface;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Landroid/content/Context;

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lh;",
            "Lcom/qihoo360/mobilesafe/telephony_sumsang_note/DoubleTelephonyManager$a;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ln;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/qihoo360/mobilesafe/telephony_sumsang_note/DoubleTelephonyManager;->phoneCardsList:Ljava/util/ArrayList;

    const/4 v0, -0x1

    sput v0, Lcom/qihoo360/mobilesafe/telephony_sumsang_note/DoubleTelephonyManager;->nowNetWorkCard:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Lcom/qihoo360/mobilesafe/telephonyInterface/DoubleTelephonyManagerInterface;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/qihoo360/mobilesafe/telephony_sumsang_note/DoubleTelephonyManager;->b:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/qihoo360/mobilesafe/telephony_sumsang_note/DoubleTelephonyManager;->a:Landroid/content/Context;

    sget-object v0, Lcom/qihoo360/mobilesafe/telephony_sumsang_note/DoubleTelephonyManager;->phoneCardsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0}, Lcom/qihoo360/mobilesafe/telephony_sumsang_note/DoubleTelephonyManager;->c()V

    new-instance v0, Ln;

    iget-object v1, p0, Lcom/qihoo360/mobilesafe/telephony_sumsang_note/DoubleTelephonyManager;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Ln;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/qihoo360/mobilesafe/telephony_sumsang_note/DoubleTelephonyManager;->c:Ln;

    return-void
.end method

.method static synthetic b()[I
    .locals 3

    sget-object v0, Lcom/qihoo360/mobilesafe/telephony_sumsang_note/DoubleTelephonyManager;->d:[I

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
    sput-object v0, Lcom/qihoo360/mobilesafe/telephony_sumsang_note/DoubleTelephonyManager;->d:[I

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

.method private c()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    sget-object v0, Lcom/qihoo360/mobilesafe/telephony_sumsang_note/DoubleTelephonyManager;->phoneCardsList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/qihoo360/mobilesafe/telephony_sumsang_note/DoubleTelephonyManager;->phoneCardsList:Ljava/util/ArrayList;

    :cond_0
    sget-object v0, Lcom/qihoo360/mobilesafe/telephony_sumsang_note/DoubleTelephonyManager;->phoneCardsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "GT-I9152"

    aput-object v1, v0, v2

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

    new-instance v0, Lai;

    invoke-direct {v0, v3, p0}, Lai;-><init>(ILcom/qihoo360/mobilesafe/telephony_sumsang_note/DoubleTelephonyManager;)V

    new-instance v1, Lai;

    invoke-direct {v1, v2, p0}, Lai;-><init>(ILcom/qihoo360/mobilesafe/telephony_sumsang_note/DoubleTelephonyManager;)V

    sget-object v2, Lcom/qihoo360/mobilesafe/telephony_sumsang_note/DoubleTelephonyManager;->phoneCardsList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/qihoo360/mobilesafe/telephony_sumsang_note/DoubleTelephonyManager;->phoneCardsList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-object v0, Lcom/qihoo360/mobilesafe/telephony_sumsang_note/DoubleTelephonyManager;->phoneCardsList:Ljava/util/ArrayList;

    new-instance v1, Lai;

    invoke-direct {v1, v2, p0}, Lai;-><init>(ILcom/qihoo360/mobilesafe/telephony_sumsang_note/DoubleTelephonyManager;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/qihoo360/mobilesafe/telephony_sumsang_note/DoubleTelephonyManager;->phoneCardsList:Ljava/util/ArrayList;

    new-instance v1, Lai;

    invoke-direct {v1, v3, p0}, Lai;-><init>(ILcom/qihoo360/mobilesafe/telephony_sumsang_note/DoubleTelephonyManager;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method protected a()I
    .locals 2

    iget-object v0, p0, Lcom/qihoo360/mobilesafe/telephony_sumsang_note/DoubleTelephonyManager;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    return v0
.end method

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

    invoke-static {}, Lcom/qihoo360/mobilesafe/telephony_sumsang_note/DoubleTelephonyManager;->b()[I

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

    invoke-static {}, Lah;->a()Lah;

    move-result-object v2

    invoke-virtual {v2}, Lah;->c()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    goto :goto_2

    :pswitch_1
    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    invoke-static {}, Lah;->a()Lah;

    move-result-object v2

    invoke-virtual {v2}, Lah;->b()Ljava/lang/String;

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
    .locals 6

    const/4 v5, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    sget-object v1, Lcom/qihoo360/mobilesafe/telephony_sumsang_note/DoubleTelephonyManager;->phoneCardsList:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qihoo360/mobilesafe/telephonyInterface/PhoneCardInterface;

    invoke-virtual {v1}, Lcom/qihoo360/mobilesafe/telephonyInterface/PhoneCardInterface;->getCardState()I

    move-result v1

    if-ne v1, v5, :cond_0

    move v1, v2

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    sget-object v1, Lcom/qihoo360/mobilesafe/telephony_sumsang_note/DoubleTelephonyManager;->phoneCardsList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qihoo360/mobilesafe/telephonyInterface/PhoneCardInterface;

    invoke-virtual {v1}, Lcom/qihoo360/mobilesafe/telephonyInterface/PhoneCardInterface;->getCardState()I

    move-result v1

    if-ne v1, v5, :cond_1

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p2, :cond_2

    const-string v1, "enableMMS2"

    invoke-virtual {v0, v3, v1}, Landroid/net/ConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;)I

    move-result v0

    :goto_2
    return v0

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1

    :cond_2
    const-string v1, "enableMMS"

    invoke-virtual {v0, v3, v1}, Landroid/net/ConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;)I

    move-result v0

    goto :goto_2
.end method

.method public endMMSConnectivity(Landroid/content/Context;I)V
    .locals 6

    const/4 v5, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    sget-object v1, Lcom/qihoo360/mobilesafe/telephony_sumsang_note/DoubleTelephonyManager;->phoneCardsList:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qihoo360/mobilesafe/telephonyInterface/PhoneCardInterface;

    invoke-virtual {v1}, Lcom/qihoo360/mobilesafe/telephonyInterface/PhoneCardInterface;->getCardState()I

    move-result v1

    if-ne v1, v5, :cond_0

    move v1, v2

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    sget-object v1, Lcom/qihoo360/mobilesafe/telephony_sumsang_note/DoubleTelephonyManager;->phoneCardsList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qihoo360/mobilesafe/telephonyInterface/PhoneCardInterface;

    invoke-virtual {v1}, Lcom/qihoo360/mobilesafe/telephonyInterface/PhoneCardInterface;->getCardState()I

    move-result v1

    if-ne v1, v5, :cond_1

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    if-nez p2, :cond_2

    const-string v1, "enableMMS"

    invoke-virtual {v0, v3, v1}, Landroid/net/ConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I

    :goto_2
    return-void

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1

    :cond_2
    const-string v1, "enableMMS2"

    invoke-virtual {v0, v3, v1}, Landroid/net/ConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I

    goto :goto_2

    :cond_3
    const-string v1, "enableMMS"

    invoke-virtual {v0, v3, v1}, Landroid/net/ConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I

    goto :goto_2
.end method

.method public getConnectActionCardId(Landroid/content/Intent;)I
    .locals 2

    const-string v0, "extraInfo"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ctwap"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

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
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/qihoo360/mobilesafe/telephony_sumsang_note/DoubleTelephonyManager;->c()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "connectivity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "GT-I9502"

    aput-object v4, v3, v2

    const-string v4, "GT-N7102"

    aput-object v4, v3, v1

    invoke-static {v3}, Lg;->a([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :try_start_0
    const-class v3, Landroid/net/ConnectivityManager;

    const-string v4, "getMobileDataEnabledSecondary"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iget-object v4, p0, Lcom/qihoo360/mobilesafe/telephony_sumsang_note/DoubleTelephonyManager;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "current_data"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    return v0

    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method public getCurrentNetCard(Landroid/content/Context;)I
    .locals 5

    const/4 v4, 0x5

    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/qihoo360/mobilesafe/telephony_sumsang_note/DoubleTelephonyManager;->c()V

    sget-object v0, Lcom/qihoo360/mobilesafe/telephony_sumsang_note/DoubleTelephonyManager;->phoneCardsList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qihoo360/mobilesafe/telephonyInterface/PhoneCardInterface;

    invoke-virtual {v0}, Lcom/qihoo360/mobilesafe/telephonyInterface/PhoneCardInterface;->getDataState()I

    move-result v0

    if-ne v3, v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    sget-object v0, Lcom/qihoo360/mobilesafe/telephony_sumsang_note/DoubleTelephonyManager;->phoneCardsList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qihoo360/mobilesafe/telephonyInterface/PhoneCardInterface;

    invoke-virtual {v0}, Lcom/qihoo360/mobilesafe/telephonyInterface/PhoneCardInterface;->getDataState()I

    move-result v0

    if-ne v3, v0, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/qihoo360/mobilesafe/telephony_sumsang_note/DoubleTelephonyManager;->phoneCardsList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qihoo360/mobilesafe/telephonyInterface/PhoneCardInterface;

    invoke-virtual {v0}, Lcom/qihoo360/mobilesafe/telephonyInterface/PhoneCardInterface;->getCardState()I

    move-result v0

    if-ne v0, v4, :cond_3

    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    sget-object v0, Lcom/qihoo360/mobilesafe/telephony_sumsang_note/DoubleTelephonyManager;->phoneCardsList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qihoo360/mobilesafe/telephonyInterface/PhoneCardInterface;

    invoke-virtual {v0}, Lcom/qihoo360/mobilesafe/telephonyInterface/PhoneCardInterface;->getCardState()I

    move-result v0

    if-ne v0, v4, :cond_4

    move v0, v1

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_5

    move v1, v2

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_2

    :cond_5
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_6
    sget v1, Lcom/qihoo360/mobilesafe/telephony_sumsang_note/DoubleTelephonyManager;->nowNetWorkCard:I

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

    invoke-direct {p0}, Lcom/qihoo360/mobilesafe/telephony_sumsang_note/DoubleTelephonyManager;->c()V

    sget-object v0, Lcom/qihoo360/mobilesafe/telephony_sumsang_note/DoubleTelephonyManager;->phoneCardsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSimId(Lcom/qihoo360/mobilesafe/telephonyInterface/DoubleTelephonyManagerInterface$SysIdType;Landroid/database/Cursor;)I
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/qihoo360/mobilesafe/telephony_sumsang_note/DoubleTelephonyManager;->b()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/qihoo360/mobilesafe/telephonyInterface/DoubleTelephonyManagerInterface$SysIdType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    invoke-static {}, Lah;->a()Lah;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lah;->a(Lcom/qihoo360/mobilesafe/telephonyInterface/DoubleTelephonyManagerInterface$SysIdType;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/qihoo360/mobilesafe/telephony_sumsang_note/DoubleTelephonyManager;->a(I)I

    move-result v0

    return v0

    :pswitch_0
    invoke-static {}, Lah;->a()Lah;

    move-result-object v0

    invoke-virtual {v0}, Lah;->c()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lah;->a()Lah;

    move-result-object v0

    invoke-virtual {v0}, Lah;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

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

.method public getSimId(Lcom/qihoo360/mobilesafe/telephonyInterface/DoubleTelephonyManagerInterface$SysIdType;Landroid/database/Cursor;I)I
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/qihoo360/mobilesafe/telephony_sumsang_note/DoubleTelephonyManager;->b()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/qihoo360/mobilesafe/telephonyInterface/DoubleTelephonyManagerInterface$SysIdType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    invoke-static {}, Lah;->a()Lah;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lah;->a(Lcom/qihoo360/mobilesafe/telephonyInterface/DoubleTelephonyManagerInterface$SysIdType;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/qihoo360/mobilesafe/telephony_sumsang_note/DoubleTelephonyManager;->a(I)I

    move-result v0

    return v0

    :pswitch_0
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :pswitch_1
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getInt(I)I

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

.method public getSimIdFromIntent(Lcom/qihoo360/mobilesafe/telephonyInterface/DoubleTelephonyManagerInterface$SysIdType;Landroid/content/Intent;)I
    .locals 6

    const/4 v5, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {}, Lcom/qihoo360/mobilesafe/telephony_sumsang_note/DoubleTelephonyManager;->b()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/qihoo360/mobilesafe/telephonyInterface/DoubleTelephonyManagerInterface$SysIdType;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    invoke-static {}, Lah;->a()Lah;

    move-result-object v0

    invoke-virtual {v0}, Lah;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "GT-I9152"

    aput-object v4, v3, v1

    invoke-static {v3}, Lg;->a([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    if-ne v2, v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0}, Lcom/qihoo360/mobilesafe/telephony_sumsang_note/DoubleTelephonyManager;->a(I)I

    move-result v0

    goto :goto_0

    :cond_3
    if-ne v0, v5, :cond_4

    iget-object v0, p0, Lcom/qihoo360/mobilesafe/telephony_sumsang_note/DoubleTelephonyManager;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "CURRENT_NETWORK"

    invoke-static {v0, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v5, :cond_0

    :cond_4
    if-nez v0, :cond_6

    sget-object v0, Lcom/qihoo360/mobilesafe/telephony_sumsang_note/DoubleTelephonyManager;->phoneCardsList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qihoo360/mobilesafe/telephonyInterface/PhoneCardInterface;

    invoke-virtual {v0}, Lcom/qihoo360/mobilesafe/telephonyInterface/PhoneCardInterface;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/qihoo360/mobilesafe/telephony_sumsang_note/DoubleTelephonyManager;->phoneCardsList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qihoo360/mobilesafe/telephonyInterface/PhoneCardInterface;

    invoke-virtual {v0}, Lcom/qihoo360/mobilesafe/telephonyInterface/PhoneCardInterface;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v2

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/qihoo360/mobilesafe/telephony_sumsang_note/DoubleTelephonyManager;->a(I)I

    move-result v0

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/qihoo360/mobilesafe/telephony_sumsang_note/DoubleTelephonyManager;->a()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "android.provider.Telephony.WAP_PUSH_GSM_RECEIVED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    move v0, v2

    goto :goto_0

    :cond_7
    const-string v3, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v1

    goto :goto_0

    :cond_8
    const-string v0, "format"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "3gpp"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v2

    goto/16 :goto_0

    :cond_9
    move v0, v1

    goto/16 :goto_0

    :cond_a
    :pswitch_2
    new-array v0, v2, [Ljava/lang/String;

    const-string v3, "GT-I9152"

    aput-object v3, v0, v1

    invoke-static {v0}, Lg;->a([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, Lah;->a()Lah;

    move-result-object v0

    invoke-virtual {v0}, Lah;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_c

    sget-object v0, Lcom/qihoo360/mobilesafe/telephony_sumsang_note/DoubleTelephonyManager;->phoneCardsList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qihoo360/mobilesafe/telephonyInterface/PhoneCardInterface;

    invoke-virtual {v0}, Lcom/qihoo360/mobilesafe/telephonyInterface/PhoneCardInterface;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/qihoo360/mobilesafe/telephony_sumsang_note/DoubleTelephonyManager;->phoneCardsList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qihoo360/mobilesafe/telephonyInterface/PhoneCardInterface;

    invoke-virtual {v0}, Lcom/qihoo360/mobilesafe/telephonyInterface/PhoneCardInterface;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_b

    move v0, v2

    goto/16 :goto_0

    :cond_b
    move v0, v1

    goto/16 :goto_0

    :cond_c
    if-ne v2, v0, :cond_d

    move v0, v2

    goto/16 :goto_0

    :cond_d
    invoke-virtual {p0, v0}, Lcom/qihoo360/mobilesafe/telephony_sumsang_note/DoubleTelephonyManager;->a(I)I

    move-result v0

    goto/16 :goto_0

    :cond_e
    invoke-static {}, Lah;->a()Lah;

    move-result-object v0

    invoke-virtual {v0}, Lah;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "3gpp"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    move v0, v2

    goto/16 :goto_0

    :cond_f
    move v0, v1

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
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

    invoke-direct {p0}, Lcom/qihoo360/mobilesafe/telephony_sumsang_note/DoubleTelephonyManager;->c()V

    iget-object v0, p0, Lcom/qihoo360/mobilesafe/telephony_sumsang_note/DoubleTelephonyManager;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qihoo360/mobilesafe/telephony_sumsang_note/DoubleTelephonyManager$a;

    if-nez v0, :cond_1

    new-instance v0, Lcom/qihoo360/mobilesafe/telephony_sumsang_note/DoubleTelephonyManager$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/qihoo360/mobilesafe/telephony_sumsang_note/DoubleTelephonyManager$a;-><init>(Lcom/qihoo360/mobilesafe/telephony_sumsang_note/DoubleTelephonyManager;Lh;I)V

    iget-object v1, p0, Lcom/qihoo360/mobilesafe/telephony_sumsang_note/DoubleTelephonyManager;->b:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    :goto_0
    sget-object v0, Lcom/qihoo360/mobilesafe/telephony_sumsang_note/DoubleTelephonyManager;->phoneCardsList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qihoo360/mobilesafe/telephonyInterface/PhoneCardInterface;

    iget-object v2, v1, Lcom/qihoo360/mobilesafe/telephony_sumsang_note/DoubleTelephonyManager$a;->a:Lcom/qihoo360/mobilesafe/telephony_sumsang_note/PhoneStateListenerProxy;

    invoke-virtual {v0, v2, p2}, Lcom/qihoo360/mobilesafe/telephonyInterface/PhoneCardInterface;->listen(Landroid/telephony/PhoneStateListener;I)V

    sget-object v0, Lcom/qihoo360/mobilesafe/telephony_sumsang_note/DoubleTelephonyManager;->phoneCardsList:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qihoo360/mobilesafe/telephonyInterface/PhoneCardInterface;

    iget-object v1, v1, Lcom/qihoo360/mobilesafe/telephony_sumsang_note/DoubleTelephonyManager$a;->b:Lcom/qihoo360/mobilesafe/telephony_sumsang_note/PhoneStateListenerProxy;

    invoke-virtual {v0, v1, p2}, Lcom/qihoo360/mobilesafe/telephonyInterface/PhoneCardInterface;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_0
    return-void

    :cond_1
    if-nez p2, :cond_2

    iget-object v1, p0, Lcom/qihoo360/mobilesafe/telephony_sumsang_note/DoubleTelephonyManager;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget v1, v0, Lcom/qihoo360/mobilesafe/telephony_sumsang_note/DoubleTelephonyManager$a;->c:I

    if-eq p2, v1, :cond_0

    iput p2, v0, Lcom/qihoo360/mobilesafe/telephony_sumsang_note/DoubleTelephonyManager$a;->c:I

    move-object v1, v0

    goto :goto_0
.end method

.method public setMobileDataState(Landroid/content/Context;ZZ)Z
    .locals 9

    const/4 v2, 0x0

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "connectivity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const-class v3, Landroid/net/ConnectivityManager;

    const-string v4, "setMobileDataEnabled"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const-class v4, Landroid/net/ConnectivityManager;

    const-string v5, "setMobileDataEnabledSecondary"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-virtual {v4, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    move v0, v2

    goto :goto_0
.end method

.method public setSimId(Lcom/qihoo360/mobilesafe/telephonyInterface/DoubleTelephonyManagerInterface$SysIdType;Landroid/content/ContentValues;I)V
    .locals 3

    invoke-static {}, Lcom/qihoo360/mobilesafe/telephony_sumsang_note/DoubleTelephonyManager;->b()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/qihoo360/mobilesafe/telephonyInterface/DoubleTelephonyManagerInterface$SysIdType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/qihoo360/mobilesafe/telephony_sumsang_note/DoubleTelephonyManager;->c:Ln;

    invoke-static {}, Lah;->a()Lah;

    move-result-object v1

    invoke-virtual {v1}, Lah;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ln;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lah;->a()Lah;

    move-result-object v0

    invoke-virtual {v0}, Lah;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lah;->a()Lah;

    move-result-object v1

    invoke-virtual {v1, p1, p3}, Lah;->b(Lcom/qihoo360/mobilesafe/telephonyInterface/DoubleTelephonyManagerInterface$SysIdType;I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lah;->a()Lah;

    move-result-object v0

    invoke-virtual {v0}, Lah;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lah;->a()Lah;

    move-result-object v1

    invoke-virtual {v1, p1, p3}, Lah;->b(Lcom/qihoo360/mobilesafe/telephonyInterface/DoubleTelephonyManagerInterface$SysIdType;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "GT-I9152"

    aput-object v2, v0, v1

    invoke-static {v0}, Lg;->a([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "sim_imsi"

    sget-object v0, Lcom/qihoo360/mobilesafe/telephony_sumsang_note/DoubleTelephonyManager;->phoneCardsList:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qihoo360/mobilesafe/telephonyInterface/PhoneCardInterface;

    invoke-virtual {v0}, Lcom/qihoo360/mobilesafe/telephonyInterface/PhoneCardInterface;->getIMSI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
