.class public Lcom/qihoo360/mobilesafe/telephonyInterface/OperatorInterface;
.super Ljava/lang/Object;


# static fields
.field private static a:Z

.field private static b:I

.field public static final bDEBUG:Z

.field private static c:I

.field private static d:Lcom/qihoo360/mobilesafe/telephonyInterface/DoubleTelephonyManagerInterface;

.field private static e:Ljava/lang/String;

.field public static telephoneEnvConfig:Lcom/qihoo360/mobilesafe/telephonyInterface/TelephoneEnvInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/qihoo360/mobilesafe/telephonyInterface/OperatorInterface;->a:Z

    sput v0, Lcom/qihoo360/mobilesafe/telephonyInterface/OperatorInterface;->b:I

    sput v0, Lcom/qihoo360/mobilesafe/telephonyInterface/OperatorInterface;->c:I

    sput-object v1, Lcom/qihoo360/mobilesafe/telephonyInterface/OperatorInterface;->d:Lcom/qihoo360/mobilesafe/telephonyInterface/DoubleTelephonyManagerInterface;

    sput-object v1, Lcom/qihoo360/mobilesafe/telephonyInterface/OperatorInterface;->telephoneEnvConfig:Lcom/qihoo360/mobilesafe/telephonyInterface/TelephoneEnvInterface;

    sput-object v1, Lcom/qihoo360/mobilesafe/telephonyInterface/OperatorInterface;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getClassPath()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/qihoo360/mobilesafe/telephonyInterface/OperatorInterface;->e:Ljava/lang/String;

    return-object v0
.end method

.method public static getDefault()Lcom/qihoo360/mobilesafe/telephonyInterface/DoubleTelephonyManagerInterface;
    .locals 1

    sget-object v0, Lcom/qihoo360/mobilesafe/telephonyInterface/OperatorInterface;->d:Lcom/qihoo360/mobilesafe/telephonyInterface/DoubleTelephonyManagerInterface;

    return-object v0
.end method

.method public static getDefault(Landroid/content/Context;)Lcom/qihoo360/mobilesafe/telephonyInterface/DoubleTelephonyManagerInterface;
    .locals 1

    sget-object v0, Lcom/qihoo360/mobilesafe/telephonyInterface/OperatorInterface;->d:Lcom/qihoo360/mobilesafe/telephonyInterface/DoubleTelephonyManagerInterface;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/qihoo360/mobilesafe/telephonyInterface/OperatorInterface;->telephoneEnvConfig:Lcom/qihoo360/mobilesafe/telephonyInterface/TelephoneEnvInterface;

    if-nez v0, :cond_1

    :cond_0
    invoke-static {p0}, Lcom/qihoo360/mobilesafe/telephonyInterface/OperatorInterface;->init(Landroid/content/Context;)V

    :cond_1
    sget-object v0, Lcom/qihoo360/mobilesafe/telephonyInterface/OperatorInterface;->d:Lcom/qihoo360/mobilesafe/telephonyInterface/DoubleTelephonyManagerInterface;

    return-object v0
.end method

.method public static getNowNetWorkCard(Landroid/content/Context;)I
    .locals 2

    sget v0, Lcom/qihoo360/mobilesafe/telephonyInterface/OperatorInterface;->b:I

    sput v0, Lcom/qihoo360/mobilesafe/telephonyInterface/OperatorInterface;->c:I

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/qihoo360/mobilesafe/telephonyInterface/OperatorInterface;->getDefault(Landroid/content/Context;)Lcom/qihoo360/mobilesafe/telephonyInterface/DoubleTelephonyManagerInterface;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qihoo360/mobilesafe/telephonyInterface/DoubleTelephonyManagerInterface;->getCurrentNetCard(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/qihoo360/mobilesafe/telephonyInterface/OperatorInterface;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    sget v0, Lcom/qihoo360/mobilesafe/telephonyInterface/OperatorInterface;->c:I

    sput v0, Lcom/qihoo360/mobilesafe/telephonyInterface/OperatorInterface;->b:I

    :cond_0
    sget v0, Lcom/qihoo360/mobilesafe/telephonyInterface/OperatorInterface;->b:I

    return v0
.end method

.method public static getPhoneCardsList_card(Landroid/content/Context;I)Lcom/qihoo360/mobilesafe/telephonyInterface/PhoneCardInterface;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/qihoo360/mobilesafe/telephonyInterface/OperatorInterface;->telephoneEnvConfig:Lcom/qihoo360/mobilesafe/telephonyInterface/TelephoneEnvInterface;

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/qihoo360/mobilesafe/telephonyInterface/OperatorInterface;->init(Landroid/content/Context;)V

    :cond_0
    sget-object v0, Lcom/qihoo360/mobilesafe/telephonyInterface/OperatorInterface;->telephoneEnvConfig:Lcom/qihoo360/mobilesafe/telephonyInterface/TelephoneEnvInterface;

    invoke-virtual {v0}, Lcom/qihoo360/mobilesafe/telephonyInterface/TelephoneEnvInterface;->getCardCount()I

    move-result v0

    if-le p1, v0, :cond_2

    sget-boolean v0, Lcom/qihoo360/mobilesafe/telephonyInterface/OperatorInterface;->a:Z

    if-eqz v0, :cond_1

    const-string v0, "OperatorInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cardid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/qihoo360/mobilesafe/telephonyInterface/OperatorInterface;->telephoneEnvConfig:Lcom/qihoo360/mobilesafe/telephonyInterface/TelephoneEnvInterface;

    invoke-virtual {v2}, Lcom/qihoo360/mobilesafe/telephonyInterface/TelephoneEnvInterface;->getCardCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {p0}, Lcom/qihoo360/mobilesafe/telephonyInterface/OperatorInterface;->getDefault(Landroid/content/Context;)Lcom/qihoo360/mobilesafe/telephonyInterface/DoubleTelephonyManagerInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qihoo360/mobilesafe/telephonyInterface/DoubleTelephonyManagerInterface;->getPhoneCardsList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qihoo360/mobilesafe/telephonyInterface/PhoneCardInterface;

    :goto_0
    return-object v0

    :cond_2
    invoke-static {p0}, Lcom/qihoo360/mobilesafe/telephonyInterface/OperatorInterface;->getDefault(Landroid/content/Context;)Lcom/qihoo360/mobilesafe/telephonyInterface/DoubleTelephonyManagerInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qihoo360/mobilesafe/telephonyInterface/DoubleTelephonyManagerInterface;->getPhoneCardsList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p1, v1, :cond_3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qihoo360/mobilesafe/telephonyInterface/PhoneCardInterface;

    goto :goto_0

    :cond_3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qihoo360/mobilesafe/telephonyInterface/PhoneCardInterface;

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 6

    sget-boolean v0, Lcom/qihoo360/mobilesafe/telephonyInterface/OperatorInterface;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "OperatorInterface"

    const-string v1, "init Telephone interface."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v0, Lcom/qihoo360/mobilesafe/telephonyInterface/OperatorInterface;->e:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-static {v1}, Ll;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/qihoo360/mobilesafe/telephonyInterface/OperatorInterface;->e:Ljava/lang/String;

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "com.qihoo360.mobilesafe."

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/qihoo360/mobilesafe/telephonyInterface/OperatorInterface;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".TelephoneEnv"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "com.qihoo360.mobilesafe."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/qihoo360/mobilesafe/telephonyInterface/OperatorInterface;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".DoubleTelephonyManager"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    const/4 v0, 0x1

    :try_start_1
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v0, v4

    invoke-virtual {v3, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qihoo360/mobilesafe/telephonyInterface/TelephoneEnvInterface;

    sput-object v0, Lcom/qihoo360/mobilesafe/telephonyInterface/OperatorInterface;->telephoneEnvConfig:Lcom/qihoo360/mobilesafe/telephonyInterface/TelephoneEnvInterface;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    :try_start_2
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qihoo360/mobilesafe/telephonyInterface/DoubleTelephonyManagerInterface;

    sput-object v0, Lcom/qihoo360/mobilesafe/telephonyInterface/OperatorInterface;->d:Lcom/qihoo360/mobilesafe/telephonyInterface/DoubleTelephonyManagerInterface;

    sget-boolean v0, Lcom/qihoo360/mobilesafe/telephonyInterface/OperatorInterface;->a:Z

    if-eqz v0, :cond_2

    const-string v0, "OperatorInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "test interface begin:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sget-object v0, Lcom/qihoo360/mobilesafe/telephonyInterface/OperatorInterface;->telephoneEnvConfig:Lcom/qihoo360/mobilesafe/telephonyInterface/TelephoneEnvInterface;

    invoke-virtual {v0}, Lcom/qihoo360/mobilesafe/telephonyInterface/TelephoneEnvInterface;->getCardCount()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/qihoo360/mobilesafe/telephonyInterface/OperatorInterface;->getPhoneCardsList_card(Landroid/content/Context;I)Lcom/qihoo360/mobilesafe/telephonyInterface/PhoneCardInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qihoo360/mobilesafe/telephonyInterface/PhoneCardInterface;->getDataState()I

    :cond_3
    sget-object v0, Lcom/qihoo360/mobilesafe/telephonyInterface/OperatorInterface;->d:Lcom/qihoo360/mobilesafe/telephonyInterface/DoubleTelephonyManagerInterface;

    invoke-virtual {v0, v1}, Lcom/qihoo360/mobilesafe/telephonyInterface/DoubleTelephonyManagerInterface;->getCurrentNetCard(Landroid/content/Context;)I

    new-instance v0, Lk;

    invoke-direct {v0}, Lk;-><init>()V

    sget-object v2, Lcom/qihoo360/mobilesafe/telephonyInterface/OperatorInterface;->d:Lcom/qihoo360/mobilesafe/telephonyInterface/DoubleTelephonyManagerInterface;

    const/16 v3, 0x20

    invoke-virtual {v2, v0, v3}, Lcom/qihoo360/mobilesafe/telephonyInterface/DoubleTelephonyManagerInterface;->listen(Lh;I)V

    sget-object v2, Lcom/qihoo360/mobilesafe/telephonyInterface/OperatorInterface;->d:Lcom/qihoo360/mobilesafe/telephonyInterface/DoubleTelephonyManagerInterface;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/qihoo360/mobilesafe/telephonyInterface/DoubleTelephonyManagerInterface;->listen(Lh;I)V

    sget-boolean v0, Lcom/qihoo360/mobilesafe/telephonyInterface/OperatorInterface;->a:Z

    if-eqz v0, :cond_4

    const-string v0, "OperatorInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "test interface end:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    return-void

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Class;

    invoke-virtual {v3, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qihoo360/mobilesafe/telephonyInterface/TelephoneEnvInterface;

    sput-object v0, Lcom/qihoo360/mobilesafe/telephonyInterface/OperatorInterface;->telephoneEnvConfig:Lcom/qihoo360/mobilesafe/telephonyInterface/TelephoneEnvInterface;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-static {v1}, Ll;->e(Landroid/content/Context;)Z

    sget-boolean v0, Lcom/qihoo360/mobilesafe/telephonyInterface/OperatorInterface;->a:Z

    if-eqz v0, :cond_5

    const-string v0, "OperatorInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "use "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/qihoo360/mobilesafe/telephonyInterface/OperatorInterface;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " exception. change to default pac."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    new-instance v0, Lcom/qihoo360/mobilesafe/telephonydefault/TelephoneEnv;

    invoke-direct {v0, v1}, Lcom/qihoo360/mobilesafe/telephonydefault/TelephoneEnv;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/qihoo360/mobilesafe/telephonyInterface/OperatorInterface;->telephoneEnvConfig:Lcom/qihoo360/mobilesafe/telephonyInterface/TelephoneEnvInterface;

    new-instance v0, Lcom/qihoo360/mobilesafe/telephonydefault/DoubleTelephonyManager;

    invoke-direct {v0, v1}, Lcom/qihoo360/mobilesafe/telephonydefault/DoubleTelephonyManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/qihoo360/mobilesafe/telephonyInterface/OperatorInterface;->d:Lcom/qihoo360/mobilesafe/telephonyInterface/DoubleTelephonyManagerInterface;

    goto :goto_1
.end method

.method public static initFromClassPath(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    sput-object p1, Lcom/qihoo360/mobilesafe/telephonyInterface/OperatorInterface;->e:Ljava/lang/String;

    invoke-static {p0}, Lcom/qihoo360/mobilesafe/telephonyInterface/OperatorInterface;->init(Landroid/content/Context;)V

    return-void
.end method

.method public static reset()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/qihoo360/mobilesafe/telephonyInterface/OperatorInterface;->e:Ljava/lang/String;

    sput-object v0, Lcom/qihoo360/mobilesafe/telephonyInterface/OperatorInterface;->telephoneEnvConfig:Lcom/qihoo360/mobilesafe/telephonyInterface/TelephoneEnvInterface;

    sput-object v0, Lcom/qihoo360/mobilesafe/telephonyInterface/OperatorInterface;->d:Lcom/qihoo360/mobilesafe/telephonyInterface/DoubleTelephonyManagerInterface;

    sput-object v0, Ll;->a:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method
