.class public Lcom/snda/woa/cf;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Z

.field private static e:Ljava/util/Hashtable;

.field private static f:Ljava/util/Hashtable;

.field private static g:Ljava/lang/String;

.field private static h:Ljava/lang/Object;

.field private static final i:[[Ljava/lang/String;

.field private static j:Lcom/snda/woa/bk;

.field private static k:Ljava/util/concurrent/ConcurrentHashMap;

.field private static l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/snda/woa/cf;->e:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/snda/woa/cf;->f:Ljava/util/Hashtable;

    sput-object v7, Lcom/snda/woa/cf;->g:Ljava/lang/String;

    sput-object v7, Lcom/snda/woa/cf;->a:Ljava/lang/String;

    sput-object v7, Lcom/snda/woa/cf;->b:Ljava/lang/String;

    sput-object v7, Lcom/snda/woa/cf;->c:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/snda/woa/cf;->h:Ljava/lang/Object;

    const/16 v0, 0x20

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "Galaxy"

    aput-object v2, v1, v4

    const-string v2, "Nexus"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "htc"

    aput-object v2, v1, v4

    const-string v2, "T328W"

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "HTC"

    aput-object v2, v1, v4

    const-string v2, "T328d"

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    const/4 v1, 0x3

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "HTC"

    aput-object v3, v2, v4

    const-string v3, "T328W"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "HTC"

    aput-object v3, v2, v4

    const-string v3, "htcz510d"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "HTC"

    aput-object v3, v2, v4

    const-string v3, "z510d"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ZTE"

    aput-object v3, v2, v4

    const-string v3, "V889D"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ZTE"

    aput-object v3, v2, v4

    const-string v3, "U960"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Hisense"

    aput-object v3, v2, v4

    const-string v3, "eg900"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "huawei"

    aput-object v3, v2, v4

    const-string v3, "S8600"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "huawei"

    aput-object v3, v2, v4

    const-string v3, "s8520"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Coolpad"

    aput-object v3, v2, v4

    const-string v3, "7260"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Coolpad"

    aput-object v3, v2, v4

    const-string v3, "5832"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Coolpad"

    aput-object v3, v2, v4

    const-string v3, "d539"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Lenovo"

    aput-object v3, v2, v4

    const-string v3, "P70"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Lenovo"

    aput-object v3, v2, v4

    const-string v3, "A1-32AB0"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "moto"

    aput-object v3, v2, v4

    const-string v3, "xt317"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "MOTO"

    aput-object v3, v2, v4

    const-string v3, "XT800"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Moto"

    aput-object v3, v2, v4

    const-string v3, "928"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "MOTO"

    aput-object v3, v2, v4

    const-string v3, "XT532"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Philips"

    aput-object v3, v2, v4

    const-string v3, "W635"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "coolpad"

    aput-object v3, v2, v4

    const-string v3, "5832"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "COOLPAD"

    aput-object v3, v2, v4

    const-string v3, "D539"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SAMSUNG"

    aput-object v3, v2, v4

    const-string v3, "i909"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SAMSUNG"

    aput-object v3, v2, v4

    const-string v3, "I589"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SAMSUNG"

    aput-object v3, v2, v4

    const-string v3, "I929"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SAMSUNG"

    aput-object v3, v2, v4

    const-string v3, "W899"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Hisense"

    aput-object v3, v2, v4

    const-string v3, "U8"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SKYWORTH"

    aput-object v3, v2, v4

    const-string v3, "GEG6188"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "CHANGHONG"

    aput-object v3, v2, v4

    const-string v3, "5018"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "K-Touch"

    aput-object v3, v2, v4

    const-string v3, "E619"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "K-Touch"

    aput-object v3, v2, v4

    const-string v3, "W619"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    sput-object v0, Lcom/snda/woa/cf;->i:[[Ljava/lang/String;

    sput-boolean v4, Lcom/snda/woa/cf;->d:Z

    sput-object v7, Lcom/snda/woa/cf;->j:Lcom/snda/woa/bk;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/snda/woa/cf;->k:Ljava/util/concurrent/ConcurrentHashMap;

    sput-boolean v5, Lcom/snda/woa/cf;->l:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/snda/woa/cf;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/snda/woa/cn;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/snda/woa/cf;->B(Landroid/content/Context;)Lcom/snda/woa/u;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/snda/woa/u;->c()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static B(Landroid/content/Context;)Lcom/snda/woa/u;
    .locals 10

    const-wide/16 v8, 0x0

    const/4 v7, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    const-string v0, "loginMobile"

    invoke-static {p0, v0}, Lcom/snda/woa/cf;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "loginMobile"

    invoke-static {p0, v0, v7}, Lcom/snda/woa/cf;->b(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    const-string v0, "StorageUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "token = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/snda/woa/au;->c(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "StorageUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "fileDirToken = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/snda/woa/au;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Lcom/snda/woa/cn;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v6}, Lcom/snda/woa/cn;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "loginMobileTimestamp"

    invoke-static {p0, v0}, Lcom/snda/woa/cf;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "loginMobileTimestamp"

    invoke-static {p0, v3, v7}, Lcom/snda/woa/cf;->b(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v8, v9}, Lcom/snda/woa/cf;->a(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-static {v7, v8, v9}, Lcom/snda/woa/cf;->a(Ljava/lang/String;J)J

    move-result-wide v7

    invoke-static {v2}, Lcom/snda/woa/cn;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v6}, Lcom/snda/woa/cn;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    cmp-long v0, v3, v7

    if-ltz v0, :cond_1

    new-instance v0, Lcom/snda/woa/u;

    invoke-direct/range {v0 .. v5}, Lcom/snda/woa/u;-><init>(Ljava/lang/String;Ljava/lang/String;JI)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/snda/woa/u;

    move-object v2, v6

    move-wide v3, v7

    invoke-direct/range {v0 .. v5}, Lcom/snda/woa/u;-><init>(Ljava/lang/String;Ljava/lang/String;JI)V

    goto :goto_0

    :cond_2
    invoke-static {v2}, Lcom/snda/woa/cn;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Lcom/snda/woa/u;

    invoke-direct/range {v0 .. v5}, Lcom/snda/woa/u;-><init>(Ljava/lang/String;Ljava/lang/String;JI)V

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/snda/woa/u;

    move-object v2, v6

    move-wide v3, v7

    invoke-direct/range {v0 .. v5}, Lcom/snda/woa/u;-><init>(Ljava/lang/String;Ljava/lang/String;JI)V

    goto :goto_0
.end method

.method public static C(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "key_cmwap_opt"

    invoke-static {p0, v1}, Lcom/snda/woa/cf;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    const-string v2, "StorageUtil"

    const-string v3, "e"

    invoke-static {v2, v3, v1}, Lcom/snda/woa/au;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static D(Landroid/content/Context;)V
    .locals 3

    const-string v0, "key_cmwap_opt"

    const-string v1, "1"

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Lcom/snda/woa/cf;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static E(Landroid/content/Context;)V
    .locals 3

    const-string v0, "key_cmwap_opt"

    const-string v1, "0"

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Lcom/snda/woa/cf;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private static F(Landroid/content/Context;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    sget-object v0, Lcom/snda/woa/cf;->g:Ljava/lang/String;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v0, Lcom/snda/woa/cf;->l:Z

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/snda/woa/bp;->a()Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/snda/woa/ce;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/snda/woa/cf;->g:Ljava/lang/String;

    :cond_2
    :goto_1
    const-string v0, "StorageUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "StorageUtil.databasePath="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/snda/woa/cf;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snda/woa/au;->c(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "publicKey"

    invoke-static {p0, v0, v4}, Lcom/snda/woa/cf;->b(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_3

    const-string v0, "|"

    invoke-static {v1, v0}, Lcom/snda/woa/cn;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :cond_3
    if-eqz v0, :cond_4

    array-length v1, v0

    if-le v1, v4, :cond_4

    aget-object v1, v0, v4

    aget-object v2, v0, v5

    invoke-static {v1, v2}, Lcom/snda/woa/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "StorageUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "pubKeys[0] "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v3, v0, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " pubKeys[1] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v0, v0, v4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/snda/woa/au;->c(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-static {p0}, Lcom/snda/woa/cf;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/snda/woa/cn;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x5

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/snda/woa/cf;->a(Landroid/content/Context;ILjava/lang/String;)V

    :cond_5
    :try_start_0
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "Bambook"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "S1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x1f6

    cmp-long v0, v0, v2

    if-gez v0, :cond_6

    const-string v0, "StorageUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No CMD_GET_TOKEN - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snda/woa/au;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :cond_6
    invoke-static {p0}, Lcom/snda/woa/cf;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/snda/woa/cn;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, ""

    invoke-static {p0, v4, v0}, Lcom/snda/woa/cf;->a(Landroid/content/Context;ILjava/lang/String;)V

    :cond_7
    invoke-static {p0}, Lcom/snda/woa/cf;->A(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/snda/woa/cn;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/snda/woa/cf;->a(Landroid/content/Context;ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    if-eqz p0, :cond_2

    invoke-static {p0}, Lcom/snda/woa/cf;->G(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/snda/woa/cf;->g:Ljava/lang/String;

    goto/16 :goto_1
.end method

.method private static G(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/snda/woa/ce;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static H(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "key_is_dual_card"

    invoke-static {p0, v0}, Lcom/snda/woa/cf;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/snda/woa/cn;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "key_is_dual_card"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/snda/woa/cf;->b(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private static I(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x1

    const-string v0, "loginMobileKey"

    invoke-static {p0, v0, v1}, Lcom/snda/woa/cf;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    const-string v0, "loginMobileKey"

    invoke-static {p0, v0, v1, v1}, Lcom/snda/woa/cf;->a(Landroid/content/Context;Ljava/lang/String;ZZ)V

    const-string v0, "loginMobileSeq"

    invoke-static {p0, v0, v1}, Lcom/snda/woa/cf;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    const-string v0, "loginMobileSeq"

    invoke-static {p0, v0, v1, v1}, Lcom/snda/woa/cf;->a(Landroid/content/Context;Ljava/lang/String;ZZ)V

    const-string v0, "loginMobile"

    invoke-static {p0, v0, v1}, Lcom/snda/woa/cf;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    const-string v0, "loginMobile"

    invoke-static {p0, v0, v1, v1}, Lcom/snda/woa/cf;->a(Landroid/content/Context;Ljava/lang/String;ZZ)V

    const-string v0, "loginMobileTimestamp"

    invoke-static {p0, v0, v1}, Lcom/snda/woa/cf;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    const-string v0, "loginMobileTimestamp"

    invoke-static {p0, v0, v1, v1}, Lcom/snda/woa/cf;->a(Landroid/content/Context;Ljava/lang/String;ZZ)V

    const/4 v0, 0x7

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/snda/woa/cf;->a(Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;J)J
    .locals 1

    invoke-static {p0}, Lcom/snda/woa/cn;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-wide p1

    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_0

    array-length v3, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, p2, v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v2

    goto :goto_0

    :cond_0
    const-string v1, "DB"

    invoke-static {v1, v0}, Lcom/snda/woa/au;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static a()Lcom/snda/woa/bk;
    .locals 1

    sget-object v0, Lcom/snda/woa/cf;->j:Lcom/snda/woa/bk;

    return-object v0
.end method

.method public static a(Landroid/content/Context;I)Lcom/snda/woa/u;
    .locals 7

    invoke-static {p0, p1}, Lcom/snda/woa/cf;->b(Landroid/content/Context;I)Lcom/snda/woa/u;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/snda/woa/u;->d()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    invoke-static {p0}, Lcom/snda/woa/cf;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/snda/woa/cf;->B(Landroid/content/Context;)Lcom/snda/woa/u;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/snda/woa/cn;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lcom/snda/woa/u;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/snda/woa/u;->b()J

    move-result-wide v3

    invoke-virtual {v0}, Lcom/snda/woa/u;->b()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-ltz v3, :cond_0

    invoke-virtual {v2}, Lcom/snda/woa/u;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Lcom/snda/woa/u;->b()J

    move-result-wide v2

    invoke-static {v1, v0, v2, v3}, Lcom/snda/woa/u;->c(Ljava/lang/String;Ljava/lang/String;J)Lcom/snda/woa/u;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/snda/woa/cf;->F(Landroid/content/Context;)V

    sget-object v0, Lcom/snda/woa/cf;->g:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/snda/woa/cf;->b(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;ILjava/lang/String;)V
    .locals 3

    sget-boolean v0, Lcom/snda/woa/cf;->d:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "StorageUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u53d1\u9001\u5e7f\u64ad: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snda/woa/au;->c(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/snda/woa/w;

    invoke-direct {v0, p0}, Lcom/snda/woa/w;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1, p2}, Lcom/snda/woa/w;->a(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 3

    const/4 v2, 0x1

    invoke-static {p1}, Lcom/snda/woa/cn;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "loginMobile"

    invoke-static {p0, v0, p1, v2}, Lcom/snda/woa/cf;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "loginMobile"

    invoke-static {p0, v0, p1, v2, v2}, Lcom/snda/woa/cf;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v0, "loginMobileTimestamp"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1, v2}, Lcom/snda/woa/cf;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "loginMobileTimestamp"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1, v2, v2}, Lcom/snda/woa/cf;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const/4 v0, 0x4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/snda/woa/cf;->a(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/snda/woa/u;)V
    .locals 9

    const/4 v1, 0x0

    const/4 v8, 0x2

    invoke-static {p1}, Lcom/snda/woa/cn;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v0, Lcom/snda/woa/cf;->l:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/snda/woa/bp;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/snda/woa/cf;->c()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Lcom/snda/woa/cf;->b(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v3

    :try_start_1
    invoke-static {v3}, Lcom/snda/woa/cf;->a(Landroid/database/sqlite/SQLiteDatabase;)Z

    const-string v0, "select * from usertoken where user=? and type=?"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v2, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/snda/woa/u;->d()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-static {v3, v0, v2}, Lcom/snda/woa/cf;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v2

    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "update usertoken set token=?,timestamp=?,fail=0 where user=? and type=?"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p2}, Lcom/snda/woa/u;->c()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {p2}, Lcom/snda/woa/u;->b()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object p1, v4, v5

    const/4 v5, 0x3

    invoke-virtual {p2}, Lcom/snda/woa/u;->d()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v0, v4}, Lcom/snda/woa/cf;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    const-string v0, "select * from userapp where app=? and type=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p0}, Lcom/snda/woa/bp;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/snda/woa/u;->d()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v0, v4}, Lcom/snda/woa/cf;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "update userapp set user=? where app=? and type=?"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    invoke-static {p0}, Lcom/snda/woa/bp;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-virtual {p2}, Lcom/snda/woa/u;->d()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v0, v4}, Lcom/snda/woa/cf;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    invoke-static {v2}, Lcom/snda/woa/cf;->a(Landroid/database/Cursor;)V

    invoke-static {v1}, Lcom/snda/woa/cf;->a(Landroid/database/Cursor;)V

    invoke-static {v3}, Lcom/snda/woa/cf;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_2
    :goto_3
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "key_app_token"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/snda/woa/u;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/snda/woa/u;->c()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-static {p0, v0, v1, v2, v3}, Lcom/snda/woa/cf;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "key_app_token_timestamp"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/snda/woa/u;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/snda/woa/u;->b()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-static {p0, v0, v1, v2, v3}, Lcom/snda/woa/cf;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "key_app_token_user"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/snda/woa/u;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-static {p0, v0, p1, v1, v2}, Lcom/snda/woa/cf;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :goto_4
    invoke-virtual {p2}, Lcom/snda/woa/u;->d()I

    move-result v0

    if-ne v0, v8, :cond_0

    const-string v0, "locMobile"

    invoke-static {p0, v0}, Lcom/snda/woa/cf;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/snda/woa/u;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/snda/woa/u;->b()J

    move-result-wide v1

    invoke-static {p0, v0, v1, v2}, Lcom/snda/woa/cf;->a(Landroid/content/Context;Ljava/lang/String;J)V

    goto/16 :goto_0

    :cond_3
    :try_start_4
    const-string v0, "insert into usertoken (user,type,token,timestamp,fail) values (?,?,?,?,0)"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    invoke-virtual {p2}, Lcom/snda/woa/u;->d()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-virtual {p2}, Lcom/snda/woa/u;->c()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-virtual {p2}, Lcom/snda/woa/u;->b()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v0, v4}, Lcom/snda/woa/cf;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    :goto_5
    :try_start_5
    const-string v4, "StorageUtil"

    const-string v5, "\u53d1\u751f\u5f02\u5e38\uff1a"

    invoke-static {v4, v5, v0}, Lcom/snda/woa/au;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-static {v2}, Lcom/snda/woa/cf;->a(Landroid/database/Cursor;)V

    invoke-static {v1}, Lcom/snda/woa/cf;->a(Landroid/database/Cursor;)V

    invoke-static {v3}, Lcom/snda/woa/cf;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    goto/16 :goto_3

    :cond_4
    :try_start_6
    const-string v0, "insert into userapp (app,user,type) values (?,?,?)"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p0}, Lcom/snda/woa/bp;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    invoke-virtual {p2}, Lcom/snda/woa/u;->d()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v0, v4}, Lcom/snda/woa/cf;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    :goto_6
    invoke-static {v2}, Lcom/snda/woa/cf;->a(Landroid/database/Cursor;)V

    invoke-static {v1}, Lcom/snda/woa/cf;->a(Landroid/database/Cursor;)V

    invoke-static {v3}, Lcom/snda/woa/cf;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v0

    :catch_1
    move-exception v0

    const-string v1, "StorageUtil"

    const-string v2, "\u53d1\u751f\u5f02\u5e38\uff1a"

    invoke-static {v1, v2, v0}, Lcom/snda/woa/au;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    :catchall_1
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    goto :goto_6

    :catchall_2
    move-exception v0

    move-object v2, v1

    goto :goto_6

    :catch_2
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    goto :goto_5

    :catch_3
    move-exception v0

    move-object v2, v1

    goto :goto_5
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/snda/woa/cn;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "ssn"

    invoke-static {p0, v0, p1, v3}, Lcom/snda/woa/cf;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    if-nez p2, :cond_2

    const-string p2, ""

    :cond_2
    const-string v0, "ssnBacklist"

    invoke-static {p0, v0}, Lcom/snda/woa/cf;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-static {v0, v1}, Lcom/snda/woa/ba;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_7

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v3}, Ljava/util/HashSet;-><init>(I)V

    move-object v1, v0

    :goto_1
    const-string v0, "backupSsnList"

    invoke-static {p0, v0, p2, v3}, Lcom/snda/woa/cf;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, ","

    invoke-static {p2, v0}, Lcom/snda/woa/ba;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    :cond_3
    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v1, "ssn"

    invoke-static {p0, v1, v0, v2}, Lcom/snda/woa/cf;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    move v0, v2

    :goto_2
    if-nez v0, :cond_0

    const-string v0, "ssnBacklist"

    invoke-static {p0, v0, v2}, Lcom/snda/woa/cf;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_5
    const-string v0, "ssnBacklist"

    invoke-static {p0, v0, v2}, Lcom/snda/woa/cf;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_6
    move v0, v3

    goto :goto_2

    :cond_7
    move-object v1, v0

    goto :goto_1
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/snda/woa/cf;->b(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    :try_start_1
    const-string v0, "SELECT * FROM data"

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Lcom/snda/woa/cf;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "SELECT * FROM data WHERE key=\'"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Lcom/snda/woa/cf;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "INSERT INTO data (key, value) VALUES(\'"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\',\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\')"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/snda/woa/cf;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    invoke-static {v1}, Lcom/snda/woa/cf;->a(Landroid/database/Cursor;)V

    invoke-static {v2}, Lcom/snda/woa/cf;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    :goto_2
    return-void

    :catch_0
    move-exception v0

    :try_start_3
    const-string v3, "StorageUtil"

    const-string v4, "e"

    invoke-static {v3, v4, v0}, Lcom/snda/woa/au;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v0, "CREATE TABLE data (key TEXT PRIMARY KEY, value TEXT)"

    invoke-static {v2, v0}, Lcom/snda/woa/cf;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_3
    :try_start_4
    const-string v3, "StorageUtil"

    const-string v4, "\u53d1\u751f\u5f02\u5e38\uff1a"

    invoke-static {v3, v4, v0}, Lcom/snda/woa/au;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {v1}, Lcom/snda/woa/cf;->a(Landroid/database/Cursor;)V

    invoke-static {v2}, Lcom/snda/woa/cf;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_2

    :cond_0
    :try_start_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "UPDATE data set value=\'"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\' WHERE key=\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/snda/woa/cf;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    :catchall_0
    move-exception v0

    :goto_4
    invoke-static {v1}, Lcom/snda/woa/cf;->a(Landroid/database/Cursor;)V

    invoke-static {v2}, Lcom/snda/woa/cf;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v0

    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_4

    :catch_2
    move-exception v0

    move-object v2, v1

    goto :goto_3
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/snda/woa/cf;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 3

    invoke-static {p0}, Lcom/snda/woa/cf;->F(Landroid/content/Context;)V

    const-string v0, "StorageUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "saveData[db:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sync["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snda/woa/au;->c(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p4, :cond_2

    invoke-static {p0}, Lcom/snda/woa/cf;->G(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/snda/woa/cf;->f:Ljava/util/Hashtable;

    :goto_1
    invoke-virtual {v1, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_0

    invoke-static {p0, v0, p1, p2}, Lcom/snda/woa/cf;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/snda/woa/cf;->g:Ljava/lang/String;

    sget-object v1, Lcom/snda/woa/cf;->e:Ljava/util/Hashtable;

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/snda/woa/cf;->a(Landroid/content/Context;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;ZZ)V
    .locals 3

    invoke-static {p0}, Lcom/snda/woa/cf;->F(Landroid/content/Context;)V

    const-string v0, "StorageUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "removeData[db:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sync["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snda/woa/au;->c(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_0

    invoke-static {p0}, Lcom/snda/woa/cf;->G(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/snda/woa/cf;->f:Ljava/util/Hashtable;

    :goto_0
    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p2, :cond_1

    :goto_1
    return-void

    :cond_0
    sget-object v0, Lcom/snda/woa/cf;->g:Ljava/lang/String;

    sget-object v1, Lcom/snda/woa/cf;->e:Ljava/util/Hashtable;

    goto :goto_0

    :cond_1
    invoke-static {p0, v0, p1}, Lcom/snda/woa/cf;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Z)V
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x2

    sget-boolean v2, Lcom/snda/woa/cf;->l:Z

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/snda/woa/bp;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/snda/woa/cf;->c()Ljava/lang/String;

    move-result-object v2

    :try_start_0
    invoke-static {v2}, Lcom/snda/woa/cf;->b(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v4

    :try_start_1
    invoke-static {v4}, Lcom/snda/woa/cf;->a(Landroid/database/sqlite/SQLiteDatabase;)Z

    const-string v2, "select user,type from userapp where app=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p0}, Lcom/snda/woa/bp;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-static {v4, v2, v3}, Lcom/snda/woa/cf;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v3

    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const-string v5, "select token,timestamp,fail from usertoken where user=? and type=?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v7, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Lcom/snda/woa/cf;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    move-result-object v0

    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-nez v5, :cond_2

    if-nez p1, :cond_2

    const-string v5, "update usertoken set fail=fail+1 where user=? and type=?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v2, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v4, v5, v6}, Lcom/snda/woa/cf;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :cond_0
    :goto_0
    invoke-static {v3}, Lcom/snda/woa/cf;->a(Landroid/database/Cursor;)V

    invoke-static {v0}, Lcom/snda/woa/cf;->a(Landroid/database/Cursor;)V

    invoke-static {v4}, Lcom/snda/woa/cf;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_1
    :goto_1
    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "key_app_token"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-static {p0, v0, v2, v3}, Lcom/snda/woa/cf;->a(Landroid/content/Context;Ljava/lang/String;ZZ)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "key_app_token_timestamp"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-static {p0, v0, v2, v3}, Lcom/snda/woa/cf;->a(Landroid/content/Context;Ljava/lang/String;ZZ)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "key_app_token_user"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Lcom/snda/woa/cf;->a(Landroid/content/Context;Ljava/lang/String;ZZ)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :goto_2
    invoke-static {p0}, Lcom/snda/woa/cf;->z(Landroid/content/Context;)V

    return-void

    :cond_2
    :try_start_5
    const-string v5, "delete from usertoken where user=? and type=?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v2, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v4, v5, v6}, Lcom/snda/woa/cf;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    move-object v9, v2

    move-object v2, v0

    move-object v0, v9

    move-object v10, v3

    move-object v3, v4

    move v4, v1

    move-object v1, v10

    :goto_3
    :try_start_6
    const-string v5, "StorageUtil"

    const-string v6, "\u53d1\u751f\u5f02\u5e38\uff1a"

    invoke-static {v5, v6, v0}, Lcom/snda/woa/au;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    invoke-static {v1}, Lcom/snda/woa/cf;->a(Landroid/database/Cursor;)V

    invoke-static {v2}, Lcom/snda/woa/cf;->a(Landroid/database/Cursor;)V

    invoke-static {v3}, Lcom/snda/woa/cf;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    move v1, v4

    goto :goto_1

    :catchall_0
    move-exception v1

    move-object v3, v0

    move-object v2, v0

    move-object v4, v0

    move-object v0, v1

    :goto_4
    invoke-static {v3}, Lcom/snda/woa/cf;->a(Landroid/database/Cursor;)V

    invoke-static {v2}, Lcom/snda/woa/cf;->a(Landroid/database/Cursor;)V

    invoke-static {v4}, Lcom/snda/woa/cf;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v0

    :catch_1
    move-exception v0

    const-string v1, "StorageUtil"

    const-string v2, "\u53d1\u751f\u5f02\u5e38\uff1a"

    invoke-static {v1, v2, v0}, Lcom/snda/woa/au;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :catchall_1
    move-exception v1

    move-object v3, v0

    move-object v2, v0

    move-object v0, v1

    goto :goto_4

    :catchall_2
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_4

    :catchall_3
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_4

    :catchall_4
    move-exception v0

    move-object v4, v3

    move-object v3, v1

    goto :goto_4

    :catch_2
    move-exception v2

    move-object v3, v0

    move v4, v1

    move-object v1, v0

    move-object v9, v2

    move-object v2, v0

    move-object v0, v9

    goto :goto_3

    :catch_3
    move-exception v2

    move-object v3, v4

    move v4, v1

    move-object v1, v0

    move-object v9, v2

    move-object v2, v0

    move-object v0, v9

    goto :goto_3

    :catch_4
    move-exception v2

    move-object v9, v2

    move-object v2, v0

    move-object v0, v9

    move-object v10, v3

    move-object v3, v4

    move v4, v1

    move-object v1, v10

    goto :goto_3
.end method

.method private static a(Landroid/database/Cursor;)V
    .locals 3

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "StorageUtil"

    const-string v2, "error"

    invoke-static {v1, v2, v0}, Lcom/snda/woa/au;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DB"

    invoke-static {v0, p1}, Lcom/snda/woa/au;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 5

    invoke-virtual {p0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_0

    array-length v3, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, p2, v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v2

    goto :goto_0

    :cond_0
    const-string v1, "DB"

    invoke-static {v1, v0}, Lcom/snda/woa/au;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static a(Lcom/snda/woa/bk;)V
    .locals 0

    sput-object p0, Lcom/snda/woa/cf;->j:Lcom/snda/woa/bk;

    return-void
.end method

.method public static a(Z)V
    .locals 0

    sput-boolean p0, Lcom/snda/woa/cf;->l:Z

    return-void
.end method

.method private static a(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x0

    :try_start_0
    const-string v2, "select user,type,token,timestamp,fail from usertoken"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/snda/woa/cf;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    invoke-static {v2}, Lcom/snda/woa/cf;->a(Landroid/database/Cursor;)V

    :goto_0
    :try_start_1
    const-string v2, "select app,user,type from userapp"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/snda/woa/cf;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v1

    invoke-static {v1}, Lcom/snda/woa/cf;->a(Landroid/database/Cursor;)V

    :goto_1
    return v0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v0, "drop table usertoken"

    invoke-static {p0, v0}, Lcom/snda/woa/cf;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    const-string v0, "create table usertoken (id INTEGER primary key autoincrement,user text,type integer,token text,timestamp numeric,fail integer)"

    invoke-static {p0, v0}, Lcom/snda/woa/cf;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v4}, Lcom/snda/woa/cf;->a(Landroid/database/Cursor;)V

    move v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_4
    const-string v2, "StorageUtil"

    const-string v3, "e"

    invoke-static {v2, v3, v0}, Lcom/snda/woa/au;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-static {v4}, Lcom/snda/woa/cf;->a(Landroid/database/Cursor;)V

    throw v0

    :catch_2
    move-exception v0

    :try_start_5
    const-string v0, "drop table userapp"

    invoke-static {p0, v0}, Lcom/snda/woa/cf;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :goto_3
    :try_start_6
    const-string v0, "create table userapp (id INTEGER primary key autoincrement,app text,user text,type integer)"

    invoke-static {p0, v0}, Lcom/snda/woa/cf;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    invoke-static {v4}, Lcom/snda/woa/cf;->a(Landroid/database/Cursor;)V

    move v0, v1

    goto :goto_1

    :catch_3
    move-exception v0

    :try_start_7
    const-string v2, "StorageUtil"

    const-string v3, "e"

    invoke-static {v2, v3, v0}, Lcom/snda/woa/au;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    invoke-static {v4}, Lcom/snda/woa/cf;->a(Landroid/database/Cursor;)V

    throw v0
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "pt"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "tempt"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "locMobile"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "loginMobile"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "loginMobileTimestamp"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 6

    const/4 v1, 0x0

    sget-object v2, Lcom/snda/woa/cf;->h:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-object v0, Lcom/snda/woa/cf;->k:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snda/woa/bt;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    :goto_0
    :try_start_2
    new-instance v0, Lcom/snda/woa/bt;

    invoke-direct {v0, v1}, Lcom/snda/woa/bt;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    sget-object v3, Lcom/snda/woa/cf;->k:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    const-string v3, "DB"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "GET_DB_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_COUNT_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Lcom/snda/woa/bt;->c(Lcom/snda/woa/bt;)I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/snda/woa/au;->a(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "DB"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "MAP_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/snda/woa/cf;->k:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/snda/woa/au;->a(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    return-object v1

    :catch_0
    move-exception v0

    const-string v3, "StorageUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "openOrCreateDatabase "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\u51fa\u9519: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/snda/woa/au;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_0
    :try_start_3
    invoke-static {v0}, Lcom/snda/woa/bt;->a(Lcom/snda/woa/bt;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-static {v0}, Lcom/snda/woa/bt;->b(Lcom/snda/woa/bt;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method private static b(Landroid/content/Context;I)Lcom/snda/woa/u;
    .locals 10

    const/4 v7, 0x0

    sget-boolean v0, Lcom/snda/woa/cf;->l:Z

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/snda/woa/bp;->a()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/snda/woa/cf;->c()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Lcom/snda/woa/cf;->b(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    :try_start_1
    invoke-static {v9}, Lcom/snda/woa/cf;->a(Landroid/database/sqlite/SQLiteDatabase;)Z

    const-string v0, "select user from userapp where app=? and type=?"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/snda/woa/bp;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v9, v0, v1}, Lcom/snda/woa/cf;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v8

    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v0, "select token,timestamp from usertoken where user=? and type=?"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v9, v0, v2}, Lcom/snda/woa/cf;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v6

    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v1}, Lcom/snda/woa/cn;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {v2}, Lcom/snda/woa/cn;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Lcom/snda/woa/u;

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/snda/woa/u;-><init>(Ljava/lang/String;Ljava/lang/String;JI)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    move-object v1, v0

    move-object v0, v6

    :goto_0
    invoke-static {v8}, Lcom/snda/woa/cf;->a(Landroid/database/Cursor;)V

    invoke-static {v0}, Lcom/snda/woa/cf;->a(Landroid/database/Cursor;)V

    invoke-static {v9}, Lcom/snda/woa/cf;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    move-object v6, v1

    :goto_1
    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "key_app_token_user"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/snda/woa/cf;->b(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "key_app_token"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {p0, v0, v2}, Lcom/snda/woa/cf;->b(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "key_app_token_timestamp"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    invoke-static {p0, v0, v3}, Lcom/snda/woa/cf;->b(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Lcom/snda/woa/cn;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v2}, Lcom/snda/woa/cn;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v3}, Lcom/snda/woa/cn;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/snda/woa/u;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/snda/woa/u;-><init>(Ljava/lang/String;Ljava/lang/String;JI)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :goto_2
    if-nez v6, :cond_1

    if-nez v0, :cond_1

    :goto_3
    return-object v7

    :catch_0
    move-exception v0

    move-object v1, v7

    move-object v6, v7

    move-object v2, v7

    :goto_4
    :try_start_5
    const-string v3, "StorageUtil"

    const-string v4, "\u53d1\u751f\u5f02\u5e38\uff1a"

    invoke-static {v3, v4, v0}, Lcom/snda/woa/au;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    invoke-static {v1}, Lcom/snda/woa/cf;->a(Landroid/database/Cursor;)V

    invoke-static {v6}, Lcom/snda/woa/cf;->a(Landroid/database/Cursor;)V

    invoke-static {v2}, Lcom/snda/woa/cf;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    move-object v6, v7

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v8, v7

    move-object v9, v7

    :goto_5
    invoke-static {v8}, Lcom/snda/woa/cf;->a(Landroid/database/Cursor;)V

    invoke-static {v7}, Lcom/snda/woa/cf;->a(Landroid/database/Cursor;)V

    invoke-static {v9}, Lcom/snda/woa/cf;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v0

    :catch_1
    move-exception v0

    const-string v1, "StorageUtil"

    const-string v2, "\u53d1\u751f\u5f02\u5e38\uff1a"

    invoke-static {v1, v2, v0}, Lcom/snda/woa/au;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    move-object v0, v7

    goto :goto_2

    :cond_1
    if-eqz v6, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {v6}, Lcom/snda/woa/u;->b()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/snda/woa/u;->b()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-ltz v1, :cond_2

    move-object v7, v6

    goto :goto_3

    :cond_2
    move-object v7, v0

    goto :goto_3

    :cond_3
    if-eqz v0, :cond_4

    move-object v7, v0

    goto :goto_3

    :cond_4
    move-object v7, v6

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v8, v7

    goto :goto_5

    :catchall_2
    move-exception v0

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object v7, v6

    goto :goto_5

    :catchall_4
    move-exception v0

    move-object v8, v1

    move-object v7, v6

    move-object v9, v2

    goto :goto_5

    :catch_2
    move-exception v0

    move-object v1, v7

    move-object v6, v7

    move-object v2, v9

    goto :goto_4

    :catch_3
    move-exception v0

    move-object v1, v8

    move-object v6, v7

    move-object v2, v9

    goto :goto_4

    :catch_4
    move-exception v0

    move-object v1, v8

    move-object v2, v9

    goto :goto_4

    :cond_5
    move-object v0, v6

    move-object v1, v7

    goto/16 :goto_0

    :cond_6
    move-object v0, v7

    move-object v1, v7

    goto/16 :goto_0

    :cond_7
    move-object v6, v7

    goto/16 :goto_1
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 5

    invoke-static {p0}, Lcom/snda/woa/cf;->F(Landroid/content/Context;)V

    if-eqz p2, :cond_1

    invoke-static {p0}, Lcom/snda/woa/cf;->G(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/snda/woa/cf;->f:Ljava/util/Hashtable;

    move-object v2, v1

    move-object v1, v0

    :goto_0
    invoke-static {p1}, Lcom/snda/woa/cf;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_1
    if-nez v0, :cond_0

    invoke-static {p0, v1, p1}, Lcom/snda/woa/cf;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "StorageUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/snda/woa/au;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/snda/woa/cn;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v2, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_2
    return-object v0

    :cond_1
    sget-object v0, Lcom/snda/woa/cf;->g:Ljava/lang/String;

    sget-object v1, Lcom/snda/woa/cf;->e:Ljava/util/Hashtable;

    move-object v2, v1

    move-object v1, v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    const-string v1, ""

    invoke-virtual {v2, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x1

    const-string v0, "locMobile"

    invoke-static {p0, v0, p1, v1}, Lcom/snda/woa/cf;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "locMobile"

    invoke-static {p0, v0, p1, v1, v1}, Lcom/snda/woa/cf;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const/4 v0, 0x2

    invoke-static {p0, v0, p1}, Lcom/snda/woa/cf;->a(Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/snda/woa/cf;->b(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v0, "DELETE FROM data WHERE key=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v1, v0, v2}, Lcom/snda/woa/cf;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v1}, Lcom/snda/woa/cf;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v2, "StorageUtil"

    const-string v3, "\u53d1\u751f\u5f02\u5e38\uff1a"

    invoke-static {v2, v3, v0}, Lcom/snda/woa/au;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1}, Lcom/snda/woa/cf;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/snda/woa/cf;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v0
.end method

.method private static b(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/snda/woa/cf;->h:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v0, Lcom/snda/woa/cf;->k:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snda/woa/bt;

    if-nez v0, :cond_1

    const-string v3, "StorageUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " path "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is null ,this is a error"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/snda/woa/au;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {v0}, Lcom/snda/woa/bt;->d(Lcom/snda/woa/bt;)V

    invoke-static {v0}, Lcom/snda/woa/bt;->c(Lcom/snda/woa/bt;)I

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v0}, Lcom/snda/woa/bt;->a(Lcom/snda/woa/bt;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    sget-object v3, Lcom/snda/woa/cf;->k:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string v3, "DB"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "CLOSE_DB_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "_COUNT_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/snda/woa/bt;->c(Lcom/snda/woa/bt;)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/snda/woa/au;->a(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "DB"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "MAP_"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/snda/woa/cf;->k:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snda/woa/au;->a(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "StorageUtil"

    const-string v2, "error"

    invoke-static {v1, v2, v0}, Lcom/snda/woa/au;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method public static b()Z
    .locals 1

    sget-boolean v0, Lcom/snda/woa/cf;->l:Z

    return v0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x1

    const-string v1, "key_is_old_user"

    invoke-static {p0, v1, v0}, Lcom/snda/woa/cf;->b(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static c()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/snda/woa/ce;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/snda/woa/cf;->b(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SELECT * FROM data WHERE key=\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v3, v1, v2}, Lcom/snda/woa/cf;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "StorageUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "oCursor.getString(oCursor.getColumnIndex()="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "value"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/snda/woa/au;->c(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "value"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    invoke-static {v2}, Lcom/snda/woa/cf;->a(Landroid/database/Cursor;)V

    invoke-static {v3}, Lcom/snda/woa/cf;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v2}, Lcom/snda/woa/cf;->a(Landroid/database/Cursor;)V

    invoke-static {v3}, Lcom/snda/woa/cf;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    :goto_1
    :try_start_3
    const-string v4, "StorageUtil"

    const-string v5, "\u53d1\u751f\u5f02\u5e38\uff1a"

    invoke-static {v4, v5, v1}, Lcom/snda/woa/au;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    invoke-static {v2}, Lcom/snda/woa/cf;->a(Landroid/database/Cursor;)V

    invoke-static {v3}, Lcom/snda/woa/cf;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v0, v1

    :goto_2
    invoke-static {v2}, Lcom/snda/woa/cf;->a(Landroid/database/Cursor;)V

    invoke-static {v3}, Lcom/snda/woa/cf;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v0

    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_2

    :catchall_2
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v1

    move-object v2, v0

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method public static c(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x1

    const-string v0, "pt"

    invoke-static {p0, v0, v1}, Lcom/snda/woa/cf;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-static {p0}, Lcom/snda/woa/cf;->x(Landroid/content/Context;)V

    const-string v0, "tempt"

    invoke-static {p0, v0, v1}, Lcom/snda/woa/cf;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method private static c(Landroid/content/Context;I)V
    .locals 5

    sget-boolean v0, Lcom/snda/woa/cf;->l:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/snda/woa/bp;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/snda/woa/cf;->c()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0}, Lcom/snda/woa/cf;->b(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-static {v1}, Lcom/snda/woa/cf;->a(Landroid/database/sqlite/SQLiteDatabase;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "delete from userapp where app=? "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-gez p1, :cond_1

    const-string v0, ""

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-gez p1, :cond_2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Lcom/snda/woa/bp;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    :goto_1
    invoke-static {v1, v2, v0}, Lcom/snda/woa/cf;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v1}, Lcom/snda/woa/cf;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_0
    :goto_2
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "key_app_token"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Lcom/snda/woa/cf;->a(Landroid/content/Context;Ljava/lang/String;ZZ)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "key_app_token_timestamp"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Lcom/snda/woa/cf;->a(Landroid/content/Context;Ljava/lang/String;ZZ)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "key_app_token_user"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Lcom/snda/woa/cf;->a(Landroid/content/Context;Ljava/lang/String;ZZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    return-void

    :cond_1
    :try_start_2
    const-string v0, " and type =? "

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Lcom/snda/woa/bp;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_3
    const-string v2, "StorageUtil"

    const-string v3, "\u53d1\u751f\u5f02\u5e38\uff1a"

    invoke-static {v2, v3, v0}, Lcom/snda/woa/au;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v1}, Lcom/snda/woa/cf;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/snda/woa/cf;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v0

    :catch_1
    move-exception v0

    const-string v1, "StorageUtil"

    const-string v2, "\u53d1\u751f\u5f02\u5e38\uff1a"

    invoke-static {v1, v2, v0}, Lcom/snda/woa/au;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const-string v0, "ssnBacklist"

    invoke-static {p0, v0}, Lcom/snda/woa/cf;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-static {v0, v1}, Lcom/snda/woa/ba;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, ","

    invoke-static {v0, v1}, Lcom/snda/woa/ct;->a(Ljava/util/Set;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ssnBacklist"

    const/4 v2, 0x1

    invoke-static {p0, v1, v0, v2}, Lcom/snda/woa/cf;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static d(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/snda/woa/cf;->y(Landroid/content/Context;)V

    return-void
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x1

    const-string v0, "key_uuid"

    invoke-static {p0, v0, p1, v1}, Lcom/snda/woa/cf;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "key_uuid"

    invoke-static {p0, v0, p1, v1, v1}, Lcom/snda/woa/cf;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-static {p0}, Lcom/snda/woa/cf;->k(Landroid/content/Context;)V

    return-void
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/snda/woa/cn;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "imei"

    const/4 v2, 0x1

    invoke-static {p0, v1, v0, v2}, Lcom/snda/woa/cf;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return-object v0
.end method

.method public static e(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x1

    const-string v0, "0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "sms_login_status"

    invoke-static {p0, v0, p1, v1, v1}, Lcom/snda/woa/cf;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    :cond_1
    return-void
.end method

.method public static f(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "locMobile"

    invoke-static {p0, v0}, Lcom/snda/woa/cf;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/snda/woa/cn;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v1, "[0-9]{1,}"

    invoke-static {v1, v0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/snda/woa/p;

    const-string v2, "w!o2a#r4e%g6i&n8(0)^_-=="

    invoke-direct {v1, v2}, Lcom/snda/woa/p;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/snda/woa/p;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static f(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-string v0, "mobile_mark"

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, v1}, Lcom/snda/woa/cf;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static g(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/snda/woa/cf;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/snda/woa/cn;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "locMobile"

    invoke-static {p0, v0}, Lcom/snda/woa/cf;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Lcom/snda/woa/cn;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "locMobile"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/snda/woa/cf;->b(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    :cond_1
    const-string v1, "StorageUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " mobile="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/snda/woa/au;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static g(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x1

    const-string v0, "key_is_registered"

    invoke-static {p0, v0, p1, v1}, Lcom/snda/woa/cf;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "key_is_registered"

    invoke-static {p0, v0, p1, v1, v1}, Lcom/snda/woa/cf;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public static h(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-static {p0}, Lcom/snda/woa/cf;->F(Landroid/content/Context;)V

    const-string v0, "imsi"

    invoke-static {p0, v0}, Lcom/snda/woa/cf;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/snda/woa/ai;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "StorageUtil"

    const-string v2, "remove local mobile from db"

    invoke-static {v0, v2}, Lcom/snda/woa/au;->c(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "sms_login_status"

    invoke-static {p0, v0, v3}, Lcom/snda/woa/cf;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    const-string v0, "locMobile"

    invoke-static {p0, v0, v3}, Lcom/snda/woa/cf;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    const-string v0, "locMobile"

    invoke-static {p0, v0, v3, v3}, Lcom/snda/woa/cf;->a(Landroid/content/Context;Ljava/lang/String;ZZ)V

    const-string v0, "key_is_registered"

    invoke-static {p0, v0, v3}, Lcom/snda/woa/cf;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    const-string v0, "key_is_registered"

    invoke-static {p0, v0, v3, v3}, Lcom/snda/woa/cf;->a(Landroid/content/Context;Ljava/lang/String;ZZ)V

    const/16 v0, 0x9

    const-string v2, ""

    invoke-static {p0, v0, v2}, Lcom/snda/woa/cf;->a(Landroid/content/Context;ILjava/lang/String;)V

    invoke-static {p0}, Lcom/snda/woa/android/OpenAPI;->clearMobileLoginData(Landroid/content/Context;)V

    const-string v0, "imsi"

    invoke-static {p0, v0, v3}, Lcom/snda/woa/cf;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    const-string v0, "imsi"

    invoke-static {p0, v0, v1, v3}, Lcom/snda/woa/cf;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "ssn"

    invoke-static {p0, v0, v4}, Lcom/snda/woa/cf;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    const-string v0, "ssnBacklist"

    invoke-static {p0, v0, v4}, Lcom/snda/woa/cf;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    const-string v0, "backupSsnList"

    invoke-static {p0, v0, v4}, Lcom/snda/woa/cf;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    const-string v0, "key_sms_time"

    invoke-static {p0, v0, v3}, Lcom/snda/woa/cf;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_1
    return-object v1
.end method

.method public static h(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x1

    const-string v0, "key_is_dual_card"

    invoke-static {p0, v0, p1, v1}, Lcom/snda/woa/cf;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "key_is_dual_card"

    invoke-static {p0, v0, p1, v1, v1}, Lcom/snda/woa/cf;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public static i(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "ssn"

    invoke-static {p0, v0}, Lcom/snda/woa/cf;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static i(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x1

    const-string v0, "0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "fast_callback"

    invoke-static {p0, v0, p1, v1, v1}, Lcom/snda/woa/cf;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    :cond_1
    return-void
.end method

.method public static j(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/16 v3, 0x8

    const/4 v6, 0x1

    const-string v0, "loginMobileKey"

    invoke-static {p0, v0}, Lcom/snda/woa/cf;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/snda/woa/cn;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "loginMobileKey"

    invoke-static {p0, v0, v6}, Lcom/snda/woa/cf;->b(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Lcom/snda/woa/cn;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "loginMobile"

    invoke-static {p0, v1, v6}, Lcom/snda/woa/cf;->b(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v3, :cond_1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1}, Lcom/snda/woa/cf;->k(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    move-object v1, v0

    const-string v0, "loginMobileSeq"

    invoke-static {p0, v0}, Lcom/snda/woa/cf;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/snda/woa/cn;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v0, "loginMobileSeq"

    invoke-static {p0, v0, v6}, Lcom/snda/woa/cf;->b(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-static {v1}, Lcom/snda/woa/cn;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    :goto_0
    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v0, "|"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "loginMobileSeq"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v0, v5, v6}, Lcom/snda/woa/cf;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "loginMobileSeq"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v2, v6, v6}, Lcom/snda/woa/cf;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    const-string v0, "|"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/snda/woa/ap;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static j(Landroid/content/Context;)Z
    .locals 7

    const-wide/16 v3, 0x0

    const/4 v0, 0x1

    :try_start_0
    const-string v1, "key_sms_time"

    invoke-static {p0, v1}, Lcom/snda/woa/cf;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    :goto_0
    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v3, v3, v1

    if-gez v3, :cond_1

    :cond_0
    :goto_1
    return v0

    :catch_0
    move-exception v1

    move-wide v1, v3

    goto :goto_0

    :cond_1
    const-string v3, "StorageUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "smsTime "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/snda/woa/au;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/32 v5, 0x240c8400

    add-long/2addr v5, v1

    cmp-long v3, v3, v5

    if-lez v3, :cond_2

    invoke-static {p0}, Lcom/snda/woa/cf;->m(Landroid/content/Context;)V

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/32 v5, 0x186a0

    add-long/2addr v1, v5

    cmp-long v1, v3, v1

    if-gtz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static k(Landroid/content/Context;)V
    .locals 4

    const-string v0, "key_sms_time"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Lcom/snda/woa/cf;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static k(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x1

    invoke-static {p1}, Lcom/snda/woa/cn;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "loginMobileKey"

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1, v2}, Lcom/snda/woa/cf;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "loginMobileKey"

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1, v2, v2}, Lcom/snda/woa/cf;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v0, "loginMobileSeq"

    const-string v1, "0"

    invoke-static {p0, v0, v1, v2}, Lcom/snda/woa/cf;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "loginMobileSeq"

    const-string v1, "0"

    invoke-static {p0, v0, v1, v2, v2}, Lcom/snda/woa/cf;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_0
.end method

.method public static l(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/snda/woa/cf;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/snda/woa/cn;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "key_uuid"

    invoke-static {p0, v0}, Lcom/snda/woa/cf;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Lcom/snda/woa/cn;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "key_uuid"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/snda/woa/cf;->b(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public static m(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x1

    const-string v0, "key_uuid"

    invoke-static {p0, v0, v1}, Lcom/snda/woa/cf;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    const-string v0, "key_uuid"

    invoke-static {p0, v0, v1, v1}, Lcom/snda/woa/cf;->a(Landroid/content/Context;Ljava/lang/String;ZZ)V

    const/16 v0, 0x8

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/snda/woa/cf;->a(Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method

.method public static n(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Lcom/snda/woa/cf;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/snda/woa/cn;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "MobileService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ssn="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/snda/woa/au;->c(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "imsi"

    invoke-static {p0, v0}, Lcom/snda/woa/cf;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "46001"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "1065502180988"

    goto :goto_0

    :cond_1
    const-string v1, "46003"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "1065902009082"

    goto :goto_0

    :cond_2
    const-string v0, "106575160882"

    goto :goto_0
.end method

.method public static o(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "key_is_registered"

    invoke-static {p0, v0}, Lcom/snda/woa/cf;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/snda/woa/cn;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "key_is_registered"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/snda/woa/cf;->b(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static p(Landroid/content/Context;)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/snda/woa/cf;->H(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    :cond_0
    :goto_0
    return v1

    :cond_1
    const-string v3, "0"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    move v0, v1

    :goto_1
    sget-object v4, Lcom/snda/woa/cf;->i:[[Ljava/lang/String;

    array-length v4, v4

    if-ge v0, v4, :cond_0

    sget-object v4, Lcom/snda/woa/cf;->i:[[Ljava/lang/String;

    aget-object v4, v4, v0

    aget-object v4, v4, v1

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lcom/snda/woa/cf;->i:[[Ljava/lang/String;

    aget-object v4, v4, v0

    aget-object v4, v4, v2

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v0, "1"

    invoke-static {p0, v0}, Lcom/snda/woa/cf;->h(Landroid/content/Context;Ljava/lang/String;)V

    move v1, v2

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static q(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "fast_callback"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/snda/woa/cf;->b(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static r(Landroid/content/Context;)Lcom/snda/woa/u;
    .locals 2

    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/snda/woa/cf;->a(Landroid/content/Context;I)Lcom/snda/woa/u;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/snda/woa/u;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/snda/woa/cf;->t(Landroid/content/Context;)Lcom/snda/woa/u;

    move-result-object v0

    goto :goto_0
.end method

.method public static s(Landroid/content/Context;)Lcom/snda/woa/u;
    .locals 2

    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/snda/woa/cf;->a(Landroid/content/Context;I)Lcom/snda/woa/u;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/snda/woa/u;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static t(Landroid/content/Context;)Lcom/snda/woa/u;
    .locals 4

    invoke-static {p0}, Lcom/snda/woa/cf;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/snda/woa/cf;->A(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/snda/woa/cn;->c(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Lcom/snda/woa/cn;->c(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/snda/woa/u;->c(Ljava/lang/String;Ljava/lang/String;J)Lcom/snda/woa/u;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static u(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/snda/woa/cf;->a(Landroid/content/Context;I)Lcom/snda/woa/u;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/snda/woa/u;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/snda/woa/u;->c()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static v(Landroid/content/Context;)Z
    .locals 4

    const/4 v2, 0x1

    const-string v0, "loginMobileKey"

    invoke-static {p0, v0}, Lcom/snda/woa/cf;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/snda/woa/cn;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "loginMobileKey"

    invoke-static {p0, v0, v2}, Lcom/snda/woa/cf;->b(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v1, "loginMobileSeq"

    invoke-static {p0, v1}, Lcom/snda/woa/cf;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/snda/woa/cn;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v1, "loginMobileSeq"

    invoke-static {p0, v1, v2}, Lcom/snda/woa/cf;->b(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-static {v0}, Lcom/snda/woa/cn;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v1}, Lcom/snda/woa/cn;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static w(Landroid/content/Context;)V
    .locals 1

    const/4 v0, -0x1

    invoke-static {p0, v0}, Lcom/snda/woa/cf;->c(Landroid/content/Context;I)V

    return-void
.end method

.method public static x(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/snda/woa/cf;->c(Landroid/content/Context;I)V

    return-void
.end method

.method public static y(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/snda/woa/cf;->c(Landroid/content/Context;I)V

    return-void
.end method

.method public static z(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/snda/woa/cf;->I(Landroid/content/Context;)V

    return-void
.end method
