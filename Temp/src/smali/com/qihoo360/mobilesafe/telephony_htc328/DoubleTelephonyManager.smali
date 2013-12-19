.class public Lcom/qihoo360/mobilesafe/telephony_htc328/DoubleTelephonyManager;
.super Lcom/qihoo360/mobilesafe/telephonyInterface/DoubleTelephonyManagerInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qihoo360/mobilesafe/telephony_htc328/DoubleTelephonyManager$a;
    }
.end annotation


# static fields
.field private static c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/qihoo360/mobilesafe/telephonyInterface/PhoneCardInterface;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Landroid/telephony/TelephonyManager;

.field public static dualGsmPhone:Z

.field private static synthetic i:[I

.field public static nowNetWorkCard:I


# instance fields
.field public final a:Landroid/content/Context;

.field private b:I

.field private e:I

.field private f:I

.field private g:Z

.field private final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lh;",
            "Lcom/qihoo360/mobilesafe/telephony_htc328/DoubleTelephonyManager$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/qihoo360/mobilesafe/telephony_htc328/DoubleTelephonyManager;->c:Ljava/util/ArrayList;

    const/4 v0, -0x1

    sput v0, Lcom/qihoo360/mobilesafe/telephony_htc328/DoubleTelephonyManager;->nowNetWorkCard:I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/qihoo360/mobilesafe/telephony_htc328/DoubleTelephonyManager;->dualGsmPhone:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v0, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/qihoo360/mobilesafe/telephonyInterface/DoubleTelephonyManagerInterface;-><init>()V

    iput v0, p0, Lcom/qihoo360/mobilesafe/telephony_htc328/DoubleTelephonyManager;->b:I

    iput v0, p0, Lcom/qihoo360/mobilesafe/telephony_htc328/DoubleTelephonyManager;->e:I

    iput v0, p0, Lcom/qihoo360/mobilesafe/telephony_htc328/DoubleTelephonyManager;->f:I

    iput-boolean v4, p0, Lcom/qihoo360/mobilesafe/telephony_htc328/DoubleTelephonyManager;->g:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/qihoo360/mobilesafe/telephony_htc328/DoubleTelephonyManager;->h:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/qihoo360/mobilesafe/telephony_htc328/DoubleTelephonyManager;->a:Landroid/content/Context;

    sget-object v0, Lcom/qihoo360/mobilesafe/telephony_htc328/DoubleTelephonyManager;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/qihoo360/mobilesafe/telephony_htc328/DoubleTelephonyManager;->a:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    sput-object v0, Lcom/qihoo360/mobilesafe/telephony_htc328/DoubleTelephonyManager;->d:Landroid/telephony/TelephonyManager;

    new-instance v0, Lp;

    invoke-direct {v0, v4, p0}, Lp;-><init>(ILcom/qihoo360/mobilesafe/telephony_htc328/DoubleTelephonyManager;)V

    new-instance v1, Lp;

    invoke-direct {v1, v5, p0}, Lp;-><init>(ILcom/qihoo360/mobilesafe/telephony_htc328/DoubleTelephonyManager;)V

    sget-object v2, Lcom/qihoo360/mobilesafe/telephony_htc328/DoubleTelephonyManager;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/qihoo360/mobilesafe/telephony_htc328/DoubleTelephonyManager;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/qihoo360/mobilesafe/telephony_htc328/DoubleTelephonyManager;->d:Landroid/telephony/TelephonyManager;

    const-string v1, "dualGSMPhoneEnable"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v6, v3}, Lm;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/qihoo360/mobilesafe/telephony_htc328/DoubleTelephonyManager;->dualGsmPhone:Z

    sget-object v0, Lcom/qihoo360/mobilesafe/telephony_htc328/DoubleTelephonyManager;->d:Landroid/telephony/TelephonyManager;

    const-string v1, "getMainPhoneType"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v6, v3}, Lm;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/qihoo360/mobilesafe/telephony_htc328/DoubleTelephonyManager;->e:I

    sget-object v0, Lcom/qihoo360/mobilesafe/telephony_htc328/DoubleTelephonyManager;->d:Landroid/telephony/TelephonyManager;

    const-string v1, "getSubPhoneType"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v6, v3}, Lm;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/qihoo360/mobilesafe/telephony_htc328/DoubleTelephonyManager;->f:I

    sget-boolean v0, Lcom/qihoo360/mobilesafe/telephony_htc328/DoubleTelephonyManager;->dualGsmPhone:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/qihoo360/mobilesafe/telephony_htc328/DoubleTelephonyManager;->f:I

    if-ne v0, v5, :cond_0

    iput-boolean v5, p0, Lcom/qihoo360/mobilesafe/telephony_htc328/DoubleTelephonyManager;->g:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/qihoo360/mobilesafe/telephony_htc328/DoubleTelephonyManager;->f:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iput-boolean v5, p0, Lcom/qihoo360/mobilesafe/telephony_htc328/DoubleTelephonyManager;->g:Z

    goto :goto_0
.end method

.method private a(Ljava/lang/String;J)I
    .locals 10

    const/4 v8, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    :try_start_0
    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "dialer/calllogs"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lcom/qihoo360/mobilesafe/telephony_htc328/DoubleTelephonyManager;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "phone_type"

    aput-object v4, v2, v3

    const-string v3, "number=? and date=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    const-string v5, "_id desc limit 1"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_4

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "phone_type"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/qihoo360/mobilesafe/telephony_htc328/DoubleTelephonyManager;->b()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    move-result v2

    if-ne v0, v2, :cond_1

    move v0, v8

    :goto_0
    if-eqz v1, :cond_0

    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_0
    :goto_1
    return v0

    :cond_1
    move v0, v6

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v7

    :goto_2
    if-eqz v0, :cond_2

    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :cond_2
    :goto_3
    move v0, v6

    goto :goto_1

    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v7, :cond_3

    :try_start_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :cond_3
    :goto_5
    throw v0

    :cond_4
    if-eqz v1, :cond_2

    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object v7, v1

    goto :goto_4

    :catch_5
    move-exception v0

    move-object v0, v1

    goto :goto_2
.end method

.method private b(I)I
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/qihoo360/mobilesafe/telephony_htc328/DoubleTelephonyManager;->a()I

    move-result v0

    :goto_0
    :try_start_0
    sget-object v2, Lcom/qihoo360/mobilesafe/telephony_htc328/DoubleTelephonyManager;->d:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const-string v4, "getDataStateExt"

    invoke-virtual {v2, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    sget-object v3, Lcom/qihoo360/mobilesafe/telephony_htc328/DoubleTelephonyManager;->d:Landroid/telephony/TelephonyManager;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    return v0

    :cond_0
    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/qihoo360/mobilesafe/telephony_htc328/DoubleTelephonyManager;->b()I

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private c(I)V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/qihoo360/mobilesafe/telephony_htc328/DoubleTelephonyManager;->a:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    new-array v1, v7, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v6

    new-array v2, v7, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v6

    const/4 v3, -0x1

    if-ne p1, v3, :cond_0

    const-string v2, "setMobileDataEnabled"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v0, v2, v8, v1, v3}, Lm;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_0
    const-string v3, "setMobileDataEnabled"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v0, v3, v8, v1, v4}, Lm;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "setMobileDataPhoneType"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v0, v1, v8, v2, v3}, Lm;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method static synthetic c()[I
    .locals 3

    sget-object v0, Lcom/qihoo360/mobilesafe/telephony_htc328/DoubleTelephonyManager;->i:[I

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
    sput-object v0, Lcom/qihoo360/mobilesafe/telephony_htc328/DoubleTelephonyManager;->i:[I

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

.method private d(I)I
    .locals 2

    const/4 v0, 0x1

    sget-boolean v1, Lcom/qihoo360/mobilesafe/telephony_htc328/DoubleTelephonyManager;->dualGsmPhone:Z

    if-eqz v1, :cond_2

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-ne p1, v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()V
    .locals 3

    sget-object v0, Lcom/qihoo360/mobilesafe/telephony_htc328/DoubleTelephonyManager;->c:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/qihoo360/mobilesafe/telephony_htc328/DoubleTelephonyManager;->c:Ljava/util/ArrayList;

    :cond_0
    sget-object v0, Lcom/qihoo360/mobilesafe/telephony_htc328/DoubleTelephonyManager;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    sget-object v0, Lcom/qihoo360/mobilesafe/telephony_htc328/DoubleTelephonyManager;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    new-instance v0, Lp;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lp;-><init>(ILcom/qihoo360/mobilesafe/telephony_htc328/DoubleTelephonyManager;)V

    new-instance v1, Lp;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, Lp;-><init>(ILcom/qihoo360/mobilesafe/telephony_htc328/DoubleTelephonyManager;)V

    sget-object v2, Lcom/qihoo360/mobilesafe/telephony_htc328/DoubleTelephonyManager;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/qihoo360/mobilesafe/telephony_htc328/DoubleTelephonyManager;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public static dumpIntent(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 8

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v0, "networkInfo"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    const-string v1, "otherNetwork"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    invoke-virtual {v3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[NetworkInfo]:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "[OtherNetworkInfo]:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "key:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " \t content:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " --> class:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private e()I
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/qihoo360/mobilesafe/telephony_htc328/DoubleTelephonyManager;->a:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const-string v1, "getMobileDataPhoneType"

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
.method public a()I
    .locals 1

    iget-boolean v0, p0, Lcom/qihoo360/mobilesafe/telephony_htc328/DoubleTelephonyManager;->g:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/qihoo360/mobilesafe/telephony_htc328/DoubleTelephonyManager;->f:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/qihoo360/mobilesafe/telephony_htc328/DoubleTelephonyManager;->e:I

    goto :goto_0
.end method

.method public addSimIdColumnToProjection(Lcom/qihoo360/mobilesafe/telephonyInterface/DoubleTelephonyManagerInterface$SysIdType;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    if-nez p2, :cond_1

    const/4 p2, 0x0

    :cond_0
    :goto_0
    return-object p2

    :cond_1
    array-length v0, p2

    add-int/lit8 v0, v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    move v0, v1

    :goto_1
    array-length v3, p2

    if-lt v0, v3, :cond_2

    invoke-static {}, Lcom/qihoo360/mobilesafe/telephony_htc328/DoubleTelephonyManager;->c()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/qihoo360/mobilesafe/telephonyInterface/DoubleTelephonyManagerInterface$SysIdType;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    :goto_2
    move-object p2, v2

    goto :goto_0

    :cond_2
    aget-object v3, p2, v0

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :pswitch_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "HTC Z510d"

    aput-object v3, v0, v1

    invoke-static {v0}, Lg;->a([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :pswitch_1
    array-length v0, v2

    add-int/lit8 v0, v0, -0x1

    const-string v1, "phone_type"

    aput-object v1, v2, v0

    goto :goto_2

    :pswitch_2
    sget-boolean v0, Lcom/qihoo360/mobilesafe/telephony_htc328/DoubleTelephonyManager;->dualGsmPhone:Z

    if-eqz v0, :cond_3

    array-length v0, v2

    add-int/lit8 v0, v0, -0x1

    const-string v1, "sim_slot"

    aput-object v1, v2, v0

    goto :goto_2

    :cond_3
    array-length v0, v2

    add-int/lit8 v0, v0, -0x1

    const-string v1, "is_cdma_format"

    aput-object v1, v2, v0

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public b()I
    .locals 1

    iget-boolean v0, p0, Lcom/qihoo360/mobilesafe/telephony_htc328/DoubleTelephonyManager;->g:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/qihoo360/mobilesafe/telephony_htc328/DoubleTelephonyManager;->e:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/qihoo360/mobilesafe/telephony_htc328/DoubleTelephonyManager;->f:I

    goto :goto_0
.end method

.method public beginMMSConnectivity(Landroid/content/Context;I)I
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v1, -0x1

    if-nez p2, :cond_0

    iput p2, p0, Lcom/qihoo360/mobilesafe/telephony_htc328/DoubleTelephonyManager;->b:I

    sget-boolean v1, Lcom/qihoo360/mobilesafe/telephony_htc328/DoubleTelephonyManager;->dualGsmPhone:Z

    if-nez v1, :cond_1

    const/16 v1, 0x1a

    const-string v2, "enableCDMAMMS"

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x1

    if-ne p2, v2, :cond_2

    iput p2, p0, Lcom/qihoo360/mobilesafe/telephony_htc328/DoubleTelephonyManager;->b:I

    sget-boolean v1, Lcom/qihoo360/mobilesafe/telephony_htc328/DoubleTelephonyManager;->dualGsmPhone:Z

    if-eqz v1, :cond_1

    const/16 v1, 0x1e

    const-string v2, "enableSUBGSMMMS"

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_1
    const/16 v1, 0x1c

    const-string v2, "enableGSMMMS"

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public endMMSConnectivity(Landroid/content/Context;I)V
    .locals 4

    const/4 v3, -0x1

    const/16 v2, 0x1c

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-nez p2, :cond_2

    iput v3, p0, Lcom/qihoo360/mobilesafe/telephony_htc328/DoubleTelephonyManager;->b:I

    sget-boolean v1, Lcom/qihoo360/mobilesafe/telephony_htc328/DoubleTelephonyManager;->dualGsmPhone:Z

    if-eqz v1, :cond_1

    const-string v1, "enableGSMMMS"

    invoke-virtual {v0, v2, v1}, Landroid/net/ConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v1, 0x1a

    const-string v2, "enableCDMAMMS"

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    iput v3, p0, Lcom/qihoo360/mobilesafe/telephony_htc328/DoubleTelephonyManager;->b:I

    sget-boolean v1, Lcom/qihoo360/mobilesafe/telephony_htc328/DoubleTelephonyManager;->dualGsmPhone:Z

    if-eqz v1, :cond_3

    const-string v1, "enableGSMMMS"

    invoke-virtual {v0, v2, v1}, Landroid/net/ConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string v1, "enableGSMMMS"

    invoke-virtual {v0, v2, v1}, Landroid/net/ConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I

    goto :goto_0
.end method

.method public getConnectActionCardId(Landroid/content/Intent;)I
    .locals 3

    const/4 v1, -0x1

    const-string v0, "networkInfo"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    const-string v2, "htcCurrentActiveNetwork"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    const-string v2, "HTC"

    invoke-static {p1, v2}, Lcom/qihoo360/mobilesafe/telephony_htc328/DoubleTelephonyManager;->dumpIntent(Landroid/content/Intent;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v2, "dataEnabled"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "dataDisabled"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/qihoo360/mobilesafe/telephony_htc328/DoubleTelephonyManager;->b:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/qihoo360/mobilesafe/telephony_htc328/DoubleTelephonyManager;->b:I

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
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

    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v1}, Lcom/qihoo360/mobilesafe/telephony_htc328/DoubleTelephonyManager;->b(I)I

    move-result v0

    if-ne v3, v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, v2}, Lcom/qihoo360/mobilesafe/telephony_htc328/DoubleTelephonyManager;->b(I)I

    move-result v0

    if-ne v3, v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/qihoo360/mobilesafe/telephony_htc328/DoubleTelephonyManager;->getPhoneCardsList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qihoo360/mobilesafe/telephonyInterface/PhoneCardInterface;

    invoke-virtual {v0}, Lcom/qihoo360/mobilesafe/telephonyInterface/PhoneCardInterface;->isAvailable()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0}, Lcom/qihoo360/mobilesafe/telephony_htc328/DoubleTelephonyManager;->getPhoneCardsList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qihoo360/mobilesafe/telephonyInterface/PhoneCardInterface;

    invoke-virtual {v0}, Lcom/qihoo360/mobilesafe/telephonyInterface/PhoneCardInterface;->isAvailable()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    sget v0, Lcom/qihoo360/mobilesafe/telephony_htc328/DoubleTelephonyManager;->nowNetWorkCard:I

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

    invoke-direct {p0}, Lcom/qihoo360/mobilesafe/telephony_htc328/DoubleTelephonyManager;->d()V

    sget-object v0, Lcom/qihoo360/mobilesafe/telephony_htc328/DoubleTelephonyManager;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSimId(Lcom/qihoo360/mobilesafe/telephonyInterface/DoubleTelephonyManagerInterface$SysIdType;Landroid/database/Cursor;)I
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {}, Lcom/qihoo360/mobilesafe/telephony_htc328/DoubleTelephonyManager;->c()[I

    move-result-object v2

    invoke-virtual {p1}, Lcom/qihoo360/mobilesafe/telephonyInterface/DoubleTelephonyManagerInterface$SysIdType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "HTC Z510d"

    aput-object v3, v2, v0

    invoke-static {v2}, Lg;->a([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "number"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "date"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lcom/qihoo360/mobilesafe/telephony_htc328/DoubleTelephonyManager;->a(Ljava/lang/String;J)I

    move-result v0

    goto :goto_0

    :cond_1
    :pswitch_1
    const-string v2, "phone_type"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/qihoo360/mobilesafe/telephony_htc328/DoubleTelephonyManager;->b()I

    move-result v3

    if-ne v2, v3, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :pswitch_2
    sget-boolean v2, Lcom/qihoo360/mobilesafe/telephony_htc328/DoubleTelephonyManager;->dualGsmPhone:Z

    if-eqz v2, :cond_3

    const-string v2, "sim_slot"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    :goto_1
    if-ne v2, v1, :cond_2

    goto :goto_0

    :cond_3
    const-string v2, "is_cdma_format"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public getSimId(Lcom/qihoo360/mobilesafe/telephonyInterface/DoubleTelephonyManagerInterface$SysIdType;Landroid/database/Cursor;I)I
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {}, Lcom/qihoo360/mobilesafe/telephony_htc328/DoubleTelephonyManager;->c()[I

    move-result-object v2

    invoke-virtual {p1}, Lcom/qihoo360/mobilesafe/telephonyInterface/DoubleTelephonyManagerInterface$SysIdType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "HTC Z510d"

    aput-object v3, v2, v0

    invoke-static {v2}, Lg;->a([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "number"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "date"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lcom/qihoo360/mobilesafe/telephony_htc328/DoubleTelephonyManager;->a(Ljava/lang/String;J)I

    move-result v0

    goto :goto_0

    :cond_1
    :pswitch_1
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/qihoo360/mobilesafe/telephony_htc328/DoubleTelephonyManager;->b()I

    move-result v3

    if-ne v2, v3, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :pswitch_2
    sget-boolean v2, Lcom/qihoo360/mobilesafe/telephony_htc328/DoubleTelephonyManager;->dualGsmPhone:Z

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v1, :cond_2

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public getSimIdFromIntent(Lcom/qihoo360/mobilesafe/telephonyInterface/DoubleTelephonyManagerInterface$SysIdType;Landroid/content/Intent;)I
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {}, Lcom/qihoo360/mobilesafe/telephony_htc328/DoubleTelephonyManager;->c()[I

    move-result-object v2

    invoke-virtual {p1}, Lcom/qihoo360/mobilesafe/telephonyInterface/DoubleTelephonyManagerInterface$SysIdType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "HTC Z510d"

    aput-object v3, v2, v0

    invoke-static {v2}, Lg;->a([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const-string v2, "phone_type"

    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p0}, Lcom/qihoo360/mobilesafe/telephony_htc328/DoubleTelephonyManager;->a()I

    move-result v3

    if-eq v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/qihoo360/mobilesafe/telephony_htc328/DoubleTelephonyManager;->b()I

    move-result v3

    if-ne v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    :pswitch_1
    const-string v2, "phone_type"

    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p0}, Lcom/qihoo360/mobilesafe/telephony_htc328/DoubleTelephonyManager;->a()I

    move-result v3

    if-ne v2, v3, :cond_2

    iput v0, p0, Lcom/qihoo360/mobilesafe/telephony_htc328/DoubleTelephonyManager;->b:I

    iget v0, p0, Lcom/qihoo360/mobilesafe/telephony_htc328/DoubleTelephonyManager;->b:I

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/qihoo360/mobilesafe/telephony_htc328/DoubleTelephonyManager;->b()I

    move-result v3

    if-ne v2, v3, :cond_0

    iput v1, p0, Lcom/qihoo360/mobilesafe/telephony_htc328/DoubleTelephonyManager;->b:I

    iget v0, p0, Lcom/qihoo360/mobilesafe/telephony_htc328/DoubleTelephonyManager;->b:I

    goto :goto_0

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

    invoke-direct {p0}, Lcom/qihoo360/mobilesafe/telephony_htc328/DoubleTelephonyManager;->d()V

    iget-object v0, p0, Lcom/qihoo360/mobilesafe/telephony_htc328/DoubleTelephonyManager;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qihoo360/mobilesafe/telephony_htc328/DoubleTelephonyManager$a;

    if-nez v0, :cond_1

    new-instance v0, Lcom/qihoo360/mobilesafe/telephony_htc328/DoubleTelephonyManager$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/qihoo360/mobilesafe/telephony_htc328/DoubleTelephonyManager$a;-><init>(Lcom/qihoo360/mobilesafe/telephony_htc328/DoubleTelephonyManager;Lh;I)V

    iget-object v1, p0, Lcom/qihoo360/mobilesafe/telephony_htc328/DoubleTelephonyManager;->h:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    :goto_0
    sget-object v0, Lcom/qihoo360/mobilesafe/telephony_htc328/DoubleTelephonyManager;->c:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qihoo360/mobilesafe/telephonyInterface/PhoneCardInterface;

    iget-object v1, v1, Lcom/qihoo360/mobilesafe/telephony_htc328/DoubleTelephonyManager$a;->a:Lcom/qihoo360/mobilesafe/telephony_htc328/PhoneStateListenerProxy;

    invoke-virtual {v0, v1, p2}, Lcom/qihoo360/mobilesafe/telephonyInterface/PhoneCardInterface;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_0
    return-void

    :cond_1
    if-nez p2, :cond_2

    iget-object v1, p0, Lcom/qihoo360/mobilesafe/telephony_htc328/DoubleTelephonyManager;->h:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget v1, v0, Lcom/qihoo360/mobilesafe/telephony_htc328/DoubleTelephonyManager$a;->b:I

    if-eq p2, v1, :cond_0

    iput p2, v0, Lcom/qihoo360/mobilesafe/telephony_htc328/DoubleTelephonyManager$a;->b:I

    move-object v1, v0

    goto :goto_0
.end method

.method public openMobileDataForce(Landroid/content/Context;)Z
    .locals 1

    invoke-direct {p0}, Lcom/qihoo360/mobilesafe/telephony_htc328/DoubleTelephonyManager;->e()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/qihoo360/mobilesafe/telephony_htc328/DoubleTelephonyManager;->c(I)V

    const/4 v0, 0x1

    return v0
.end method

.method public setMobileDataState(Landroid/content/Context;ZZ)Z
    .locals 3

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mobile_data"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    if-nez p2, :cond_3

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v1, -0x1

    invoke-direct {p0, v1}, Lcom/qihoo360/mobilesafe/telephony_htc328/DoubleTelephonyManager;->c(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    if-eqz p3, :cond_2

    sget-object v0, Lcom/qihoo360/mobilesafe/telephonyInterface/OperatorInterface;->telephoneEnvConfig:Lcom/qihoo360/mobilesafe/telephonyInterface/TelephoneEnvInterface;

    invoke-virtual {v0}, Lcom/qihoo360/mobilesafe/telephonyInterface/TelephoneEnvInterface;->getDataConnectionIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    :try_start_1
    invoke-direct {p0}, Lcom/qihoo360/mobilesafe/telephony_htc328/DoubleTelephonyManager;->e()I

    move-result v2

    if-eqz p2, :cond_0

    if-nez v1, :cond_0

    invoke-direct {p0, v2}, Lcom/qihoo360/mobilesafe/telephony_htc328/DoubleTelephonyManager;->c(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public setSimId(Lcom/qihoo360/mobilesafe/telephonyInterface/DoubleTelephonyManagerInterface$SysIdType;Landroid/content/ContentValues;I)V
    .locals 3

    const/4 v0, 0x1

    invoke-static {}, Lcom/qihoo360/mobilesafe/telephony_htc328/DoubleTelephonyManager;->c()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/qihoo360/mobilesafe/telephonyInterface/DoubleTelephonyManagerInterface$SysIdType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    if-nez p3, :cond_1

    invoke-virtual {p0}, Lcom/qihoo360/mobilesafe/telephony_htc328/DoubleTelephonyManager;->a()I

    move-result v0

    :cond_0
    :goto_1
    const-string v1, "phone_type"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    :cond_1
    if-ne p3, v0, :cond_0

    invoke-virtual {p0}, Lcom/qihoo360/mobilesafe/telephony_htc328/DoubleTelephonyManager;->b()I

    move-result v0

    goto :goto_1

    :pswitch_1
    sget-boolean v0, Lcom/qihoo360/mobilesafe/telephony_htc328/DoubleTelephonyManager;->dualGsmPhone:Z

    if-eqz v0, :cond_2

    const-string v0, "sim_slot"

    invoke-direct {p0, p3}, Lcom/qihoo360/mobilesafe/telephony_htc328/DoubleTelephonyManager;->d(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    :cond_2
    const-string v0, "is_cdma_format"

    invoke-direct {p0, p3}, Lcom/qihoo360/mobilesafe/telephony_htc328/DoubleTelephonyManager;->d(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
