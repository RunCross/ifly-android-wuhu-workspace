.class public Lx;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/qihoo360/mobilesafe/telephony_qrd/TelephoneEnv;

.field private final synthetic b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/qihoo360/mobilesafe/telephony_qrd/TelephoneEnv;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lx;->a:Lcom/qihoo360/mobilesafe/telephony_qrd/TelephoneEnv;

    iput-object p2, p0, Lx;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    const/4 v1, 0x0

    const/4 v9, 0x2

    const/4 v0, 0x0

    const/4 v8, 0x1

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    move-object v2, v1

    move-object v10, v1

    move v1, v0

    move-object v0, v10

    :goto_0
    invoke-static {}, Lcom/qihoo360/mobilesafe/telephony_qrd/TelephoneEnv;->a()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-lt v1, v3, :cond_1

    move-object v1, v0

    :goto_1
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v4

    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v3

    if-eq v0, v9, :cond_3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lx;->a:Lcom/qihoo360/mobilesafe/telephony_qrd/TelephoneEnv;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/qihoo360/mobilesafe/telephony_qrd/TelephoneEnv;->a(Lcom/qihoo360/mobilesafe/telephony_qrd/TelephoneEnv;I)V

    :goto_2
    const-string v0, "MSM"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initPhoneType successfully!platformType:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lx;->a:Lcom/qihoo360/mobilesafe/telephony_qrd/TelephoneEnv;

    invoke-static {v2}, Lcom/qihoo360/mobilesafe/telephony_qrd/TelephoneEnv;->a(Lcom/qihoo360/mobilesafe/telephony_qrd/TelephoneEnv;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :goto_3
    iget-object v0, p0, Lx;->a:Lcom/qihoo360/mobilesafe/telephony_qrd/TelephoneEnv;

    invoke-static {v0}, Lcom/qihoo360/mobilesafe/telephony_qrd/TelephoneEnv;->b(Lcom/qihoo360/mobilesafe/telephony_qrd/TelephoneEnv;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/qihoo360/mobilesafe/telephony_qrd/TelephoneEnv;->b(Lcom/qihoo360/mobilesafe/telephony_qrd/TelephoneEnv;I)V

    iget-object v0, p0, Lx;->a:Lcom/qihoo360/mobilesafe/telephony_qrd/TelephoneEnv;

    invoke-static {v0}, Lcom/qihoo360/mobilesafe/telephony_qrd/TelephoneEnv;->b(Lcom/qihoo360/mobilesafe/telephony_qrd/TelephoneEnv;)I

    move-result v0

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    const-wide/16 v0, 0x1388

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3

    :goto_4
    iget-object v0, p0, Lx;->a:Lcom/qihoo360/mobilesafe/telephony_qrd/TelephoneEnv;

    iget-object v1, p0, Lx;->b:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/qihoo360/mobilesafe/telephony_qrd/TelephoneEnv;->a(Lcom/qihoo360/mobilesafe/telephony_qrd/TelephoneEnv;Landroid/content/Context;)V

    :cond_0
    return-void

    :cond_1
    iget-object v2, p0, Lx;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/qihoo360/mobilesafe/telephony_qrd/TelephoneEnv;->a()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getPhoneTypeFromProperty"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    if-eqz v0, :cond_2

    move-object v1, v0

    goto/16 :goto_1

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/SecurityException;->printStackTrace()V

    :cond_2
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :catch_1
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_5

    :cond_3
    :try_start_3
    iget-object v0, p0, Lx;->a:Lcom/qihoo360/mobilesafe/telephony_qrd/TelephoneEnv;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/qihoo360/mobilesafe/telephony_qrd/TelephoneEnv;->a(Lcom/qihoo360/mobilesafe/telephony_qrd/TelephoneEnv;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    const-string v0, "MSM"

    const-string v1, "initPhoneType exception"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lx;->a:Lcom/qihoo360/mobilesafe/telephony_qrd/TelephoneEnv;

    invoke-static {v0, v8}, Lcom/qihoo360/mobilesafe/telephony_qrd/TelephoneEnv;->a(Lcom/qihoo360/mobilesafe/telephony_qrd/TelephoneEnv;I)V

    goto :goto_3

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_4
.end method
