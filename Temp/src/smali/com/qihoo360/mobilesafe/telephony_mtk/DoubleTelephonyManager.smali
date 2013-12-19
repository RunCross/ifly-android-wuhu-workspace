.class public Lcom/qihoo360/mobilesafe/telephony_mtk/DoubleTelephonyManager;
.super Lcom/qihoo360/mobilesafe/telephonyInterface/DoubleTelephonyManagerInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qihoo360/mobilesafe/telephony_mtk/DoubleTelephonyManager$a;
    }
.end annotation


# static fields
.field public static final CALL_STATE_OFFHOOK:I = 0x2

.field public static final CARD_ID1:I = 0x0

.field public static final CARD_ID2:I = 0x1

.field public static final CARD_MTK4_ERROR:I = -0x6

.field public static final CARD_UNKNOWN:I = -0x1

.field public static final DATA_CONNECTED:I = 0x2

.field public static final DATA_CONNECTING:I = 0x1

.field public static final DATA_DISCONNECTED:I = 0x0

.field public static final PHONE_TYPE_CDMA:I = 0x2

.field public static final PHONE_TYPE_GSM:I = 0x1

.field private static b:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/qihoo360/mobilesafe/telephonyInterface/PhoneCardInterface;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Landroid/telephony/TelephonyManager; = null

.field private static synthetic g:[I = null

.field public static nowNetWorkCard:I = 0x0

.field public static final sysCallColumnName:Ljava/lang/String; = "simid"

.field public static final sysSMSColumnName:Ljava/lang/String; = "sim_id"


# instance fields
.field public final a:Landroid/content/Context;

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lh;",
            "Lcom/qihoo360/mobilesafe/telephony_mtk/DoubleTelephonyManager$a;",
            ">;"
        }
    .end annotation
.end field

.field private e:I

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/qihoo360/mobilesafe/telephony_mtk/DoubleTelephonyManager;->b:Ljava/util/ArrayList;

    const/4 v0, -0x1

    sput v0, Lcom/qihoo360/mobilesafe/telephony_mtk/DoubleTelephonyManager;->nowNetWorkCard:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/qihoo360/mobilesafe/telephonyInterface/DoubleTelephonyManagerInterface;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/qihoo360/mobilesafe/telephony_mtk/DoubleTelephonyManager;->d:Ljava/util/Map;

    iput v1, p0, Lcom/qihoo360/mobilesafe/telephony_mtk/DoubleTelephonyManager;->e:I

    iput v1, p0, Lcom/qihoo360/mobilesafe/telephony_mtk/DoubleTelephonyManager;->f:I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/qihoo360/mobilesafe/telephony_mtk/DoubleTelephonyManager;->a:Landroid/content/Context;

    sget-object v0, Lcom/qihoo360/mobilesafe/telephony_mtk/DoubleTelephonyManager;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/qihoo360/mobilesafe/telephony_mtk/DoubleTelephonyManager;->a:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    sput-object v0, Lcom/qihoo360/mobilesafe/telephony_mtk/DoubleTelephonyManager;->c:Landroid/telephony/TelephonyManager;

    invoke-direct {p0}, Lcom/qihoo360/mobilesafe/telephony_mtk/DoubleTelephonyManager;->c()V

    invoke-direct {p0}, Lcom/qihoo360/mobilesafe/telephony_mtk/DoubleTelephonyManager;->b()V

    return-void
.end method

.method static synthetic a()[I
    .locals 3

    sget-object v0, Lcom/qihoo360/mobilesafe/telephony_mtk/DoubleTelephonyManager;->g:[I

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
    sput-object v0, Lcom/qihoo360/mobilesafe/telephony_mtk/DoubleTelephonyManager;->g:[I

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
    .locals 3

    sget-object v0, Lcom/qihoo360/mobilesafe/telephony_mtk/DoubleTelephonyManager;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/qihoo360/mobilesafe/telephony_mtk/DoubleTelephonyManager;->b:Ljava/util/ArrayList;

    :cond_0
    sget-object v0, Lcom/qihoo360/mobilesafe/telephony_mtk/DoubleTelephonyManager;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    sget-object v0, Lcom/qihoo360/mobilesafe/telephony_mtk/DoubleTelephonyManager;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-object v0, Lcom/qihoo360/mobilesafe/telephony_mtk/DoubleTelephonyManager;->b:Ljava/util/ArrayList;

    new-instance v1, Lt;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lt;-><init>(ILcom/qihoo360/mobilesafe/telephony_mtk/DoubleTelephonyManager;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/qihoo360/mobilesafe/telephony_mtk/DoubleTelephonyManager;->b:Ljava/util/ArrayList;

    new-instance v1, Lt;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, Lt;-><init>(ILcom/qihoo360/mobilesafe/telephony_mtk/DoubleTelephonyManager;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private b(I)V
    .locals 4

    new-instance v2, Landroid/content/Intent;

    const-string v0, "android.intent.action.DATA_DEFAULT_SIM"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/qihoo360/mobilesafe/telephony_mtk/DoubleTelephonyManager;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v3

    const-wide/16 v0, 0x0

    if-eqz v3, :cond_0

    iget-wide v0, v3, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    :cond_0
    const-string v3, "simid"

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v0, p0, Lcom/qihoo360/mobilesafe/telephony_mtk/DoubleTelephonyManager;->a:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private c()V
    .locals 2

    iget v0, p0, Lcom/qihoo360/mobilesafe/telephony_mtk/DoubleTelephonyManager;->e:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/qihoo360/mobilesafe/telephony_mtk/DoubleTelephonyManager;->f:I

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/qihoo360/mobilesafe/telephony_mtk/DoubleTelephonyManager;->a:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-wide v0, v0, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    long-to-int v0, v0

    iput v0, p0, Lcom/qihoo360/mobilesafe/telephony_mtk/DoubleTelephonyManager;->e:I

    :cond_2
    iget-object v0, p0, Lcom/qihoo360/mobilesafe/telephony_mtk/DoubleTelephonyManager;->a:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-wide v0, v0, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    long-to-int v0, v0

    iput v0, p0, Lcom/qihoo360/mobilesafe/telephony_mtk/DoubleTelephonyManager;->f:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

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

    invoke-static {}, Lcom/qihoo360/mobilesafe/telephony_mtk/DoubleTelephonyManager;->a()[I

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

    const-string v2, "simid"

    aput-object v2, v1, v0

    goto :goto_2

    :pswitch_1
    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    const-string v2, "sim_id"

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

    invoke-virtual {v0, v1, v2, p2}, Landroid/net/ConnectivityManager;->startUsingNetworkFeatureGemini(ILjava/lang/String;I)I

    move-result v0

    return v0
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

    invoke-virtual {v0, v1, v2, p2}, Landroid/net/ConnectivityManager;->stopUsingNetworkFeatureGemini(ILjava/lang/String;I)I

    return-void
.end method

.method public getConnectActionCardId(Landroid/content/Intent;)I
    .locals 2

    const-string v0, "simId"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getCurrentMobileState(Landroid/content/Context;)I
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gprs_connection_sim_setting"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public getCurrentNetCard(Landroid/content/Context;)I
    .locals 5

    const/4 v4, 0x5

    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-object v0, Lcom/qihoo360/mobilesafe/telephony_mtk/DoubleTelephonyManager;->c:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getDataStateGemini(I)I

    move-result v0

    if-ne v3, v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    sget-object v0, Lcom/qihoo360/mobilesafe/telephony_mtk/DoubleTelephonyManager;->c:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v2}, Landroid/telephony/TelephonyManager;->getDataStateGemini(I)I

    move-result v0

    if-ne v3, v0, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/qihoo360/mobilesafe/telephony_mtk/DoubleTelephonyManager;->c:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v2}, Landroid/telephony/TelephonyManager;->getSimStateGemini(I)I

    move-result v0

    if-ne v0, v4, :cond_3

    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    sget-object v0, Lcom/qihoo360/mobilesafe/telephony_mtk/DoubleTelephonyManager;->c:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSimStateGemini(I)I

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
    sget v1, Lcom/qihoo360/mobilesafe/telephony_mtk/DoubleTelephonyManager;->nowNetWorkCard:I

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

    invoke-direct {p0}, Lcom/qihoo360/mobilesafe/telephony_mtk/DoubleTelephonyManager;->b()V

    sget-object v0, Lcom/qihoo360/mobilesafe/telephony_mtk/DoubleTelephonyManager;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSimId(Lcom/qihoo360/mobilesafe/telephonyInterface/DoubleTelephonyManagerInterface$SysIdType;Landroid/database/Cursor;)I
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/qihoo360/mobilesafe/telephony_mtk/DoubleTelephonyManager;->c()V

    invoke-static {}, Lcom/qihoo360/mobilesafe/telephony_mtk/DoubleTelephonyManager;->a()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/qihoo360/mobilesafe/telephonyInterface/DoubleTelephonyManagerInterface$SysIdType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    move v0, v1

    :goto_0
    iget v2, p0, Lcom/qihoo360/mobilesafe/telephony_mtk/DoubleTelephonyManager;->f:I

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :pswitch_0
    const-string v0, "simid"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    goto :goto_0

    :pswitch_1
    const-string v0, "sim_id"

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
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/qihoo360/mobilesafe/telephony_mtk/DoubleTelephonyManager;->c()V

    invoke-static {}, Lcom/qihoo360/mobilesafe/telephony_mtk/DoubleTelephonyManager;->a()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/qihoo360/mobilesafe/telephonyInterface/DoubleTelephonyManagerInterface$SysIdType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    move v0, v1

    :goto_0
    iget v2, p0, Lcom/qihoo360/mobilesafe/telephony_mtk/DoubleTelephonyManager;->f:I

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :pswitch_0
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
    .locals 8

    const-wide/16 v6, -0x5

    const/4 v2, 0x1

    const/4 v0, -0x6

    const/4 v1, 0x0

    const/4 v3, -0x1

    invoke-static {}, Lcom/qihoo360/mobilesafe/telephony_mtk/DoubleTelephonyManager;->a()[I

    move-result-object v4

    invoke-virtual {p1}, Lcom/qihoo360/mobilesafe/telephonyInterface/DoubleTelephonyManagerInterface$SysIdType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xf

    if-ne v4, v5, :cond_1

    const-string v4, "follow_sim_management"

    invoke-virtual {p2, v4, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "com.android.phone.force.slot"

    invoke-virtual {p2, v4, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_1
    const-string v0, "simId"

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_2

    const-string v0, "com.android.phone.extra.slot"

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    :cond_2
    const-string v4, "com.android.phone.extra.video"

    invoke-virtual {p2, v4, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_3

    move v0, v1

    :cond_3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    if-lt v1, v4, :cond_5

    if-ne v0, v3, :cond_5

    iget-object v1, p0, Lcom/qihoo360/mobilesafe/telephony_mtk/DoubleTelephonyManager;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "voice_call_sim_setting"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const-string v4, "com.android.phone.extra.original"

    invoke-virtual {p2, v4, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    if-eq v1, v3, :cond_4

    if-eq v1, v3, :cond_6

    cmp-long v6, v4, v6

    if-eqz v6, :cond_6

    int-to-long v6, v1

    cmp-long v4, v6, v4

    if-eqz v4, :cond_6

    :cond_4
    move v0, v3

    :cond_5
    :goto_1
    if-le v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_6
    iget-object v3, p0, Lcom/qihoo360/mobilesafe/telephony_mtk/DoubleTelephonyManager;->a:Landroid/content/Context;

    int-to-long v4, v1

    invoke-static {v3, v4, v5}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoById(Landroid/content/Context;J)Landroid/provider/Telephony$SIMInfo;

    move-result-object v1

    if-eqz v1, :cond_5

    iget v0, v1, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    goto :goto_1

    :pswitch_1
    const-string v0, "simId"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/qihoo360/mobilesafe/telephony_mtk/DoubleTelephonyManager;->a(I)I

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

    invoke-direct {p0}, Lcom/qihoo360/mobilesafe/telephony_mtk/DoubleTelephonyManager;->b()V

    iget-object v0, p0, Lcom/qihoo360/mobilesafe/telephony_mtk/DoubleTelephonyManager;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qihoo360/mobilesafe/telephony_mtk/DoubleTelephonyManager$a;

    if-nez v0, :cond_1

    new-instance v0, Lcom/qihoo360/mobilesafe/telephony_mtk/DoubleTelephonyManager$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/qihoo360/mobilesafe/telephony_mtk/DoubleTelephonyManager$a;-><init>(Lcom/qihoo360/mobilesafe/telephony_mtk/DoubleTelephonyManager;Lh;I)V

    iget-object v1, p0, Lcom/qihoo360/mobilesafe/telephony_mtk/DoubleTelephonyManager;->d:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    :goto_0
    :try_start_0
    sget-object v0, Lcom/qihoo360/mobilesafe/telephony_mtk/DoubleTelephonyManager;->b:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qihoo360/mobilesafe/telephonyInterface/PhoneCardInterface;

    iget-object v2, v1, Lcom/qihoo360/mobilesafe/telephony_mtk/DoubleTelephonyManager$a;->a:Lcom/qihoo360/mobilesafe/telephony_mtk/PhoneStateListenerProxy;

    invoke-virtual {v0, v2, p2}, Lcom/qihoo360/mobilesafe/telephonyInterface/PhoneCardInterface;->listen(Landroid/telephony/PhoneStateListener;I)V

    sget-object v0, Lcom/qihoo360/mobilesafe/telephony_mtk/DoubleTelephonyManager;->b:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qihoo360/mobilesafe/telephonyInterface/PhoneCardInterface;

    iget-object v1, v1, Lcom/qihoo360/mobilesafe/telephony_mtk/DoubleTelephonyManager$a;->b:Lcom/qihoo360/mobilesafe/telephony_mtk/PhoneStateListenerProxy;

    invoke-virtual {v0, v1, p2}, Lcom/qihoo360/mobilesafe/telephonyInterface/PhoneCardInterface;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    if-nez p2, :cond_2

    iget-object v1, p0, Lcom/qihoo360/mobilesafe/telephony_mtk/DoubleTelephonyManager;->d:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget v1, v0, Lcom/qihoo360/mobilesafe/telephony_mtk/DoubleTelephonyManager$a;->c:I

    if-eq p2, v1, :cond_0

    iput p2, v0, Lcom/qihoo360/mobilesafe/telephony_mtk/DoubleTelephonyManager$a;->c:I

    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public setMobileDataState(Landroid/content/Context;ZZ)Z
    .locals 6

    const/4 v0, -0x1

    const/4 v2, 0x0

    const/4 v5, 0x1

    invoke-direct {p0}, Lcom/qihoo360/mobilesafe/telephony_mtk/DoubleTelephonyManager;->b()V

    move v1, v2

    move v3, v0

    move v4, v2

    :goto_0
    sget-object v0, Lcom/qihoo360/mobilesafe/telephony_mtk/DoubleTelephonyManager;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    if-nez v4, :cond_3

    move v2, v5

    :cond_0
    :goto_1
    return v2

    :cond_1
    sget-object v0, Lcom/qihoo360/mobilesafe/telephony_mtk/DoubleTelephonyManager;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qihoo360/mobilesafe/telephonyInterface/PhoneCardInterface;

    invoke-virtual {v0}, Lcom/qihoo360/mobilesafe/telephonyInterface/PhoneCardInterface;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    add-int/lit8 v4, v4, 0x1

    move v3, v1

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gprs_connection_sim_setting"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    if-nez p2, :cond_5

    if-nez v0, :cond_4

    move v2, v5

    goto :goto_1

    :cond_4
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/qihoo360/mobilesafe/telephony_mtk/DoubleTelephonyManager;->b(I)V

    move v2, v5

    goto :goto_1

    :cond_5
    if-eqz p2, :cond_7

    if-eqz v0, :cond_6

    move v2, v5

    goto :goto_1

    :cond_6
    if-ne v4, v5, :cond_8

    invoke-direct {p0, v3}, Lcom/qihoo360/mobilesafe/telephony_mtk/DoubleTelephonyManager;->b(I)V

    :cond_7
    move v2, v5

    goto :goto_1

    :cond_8
    if-nez p3, :cond_9

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/qihoo360/mobilesafe/telephony_mtk/DoubleTelephonyManager;->b(I)V

    move v2, v5

    goto :goto_1

    :cond_9
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.qihoo360.mobilesafe.OPEN_GPRS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const/high16 v3, 0x1000

    or-int/2addr v1, v3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    if-eqz p3, :cond_0

    sget-object v0, Lcom/qihoo360/mobilesafe/telephonyInterface/OperatorInterface;->telephoneEnvConfig:Lcom/qihoo360/mobilesafe/telephonyInterface/TelephoneEnvInterface;

    invoke-virtual {v0}, Lcom/qihoo360/mobilesafe/telephonyInterface/TelephoneEnvInterface;->getDataConnectionIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method public setSimId(Lcom/qihoo360/mobilesafe/telephonyInterface/DoubleTelephonyManagerInterface$SysIdType;Landroid/content/ContentValues;I)V
    .locals 3

    invoke-direct {p0}, Lcom/qihoo360/mobilesafe/telephony_mtk/DoubleTelephonyManager;->c()V

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    iget v0, p0, Lcom/qihoo360/mobilesafe/telephony_mtk/DoubleTelephonyManager;->f:I

    :goto_0
    invoke-static {}, Lcom/qihoo360/mobilesafe/telephony_mtk/DoubleTelephonyManager;->a()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/qihoo360/mobilesafe/telephonyInterface/DoubleTelephonyManagerInterface$SysIdType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_1
    return-void

    :cond_0
    iget v0, p0, Lcom/qihoo360/mobilesafe/telephony_mtk/DoubleTelephonyManager;->e:I

    goto :goto_0

    :pswitch_0
    const-string v1, "simid"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    :pswitch_1
    const-string v1, "sim_id"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
