.class public Lcom/snda/woa/android/OpenAPI;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/snda/woa/android/callback/AutoLoginCallBack;ZLandroid/content/Context;Ljava/lang/String;ZZ)V
    .locals 8

    const v2, -0xa4cfcb

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v3, Lcom/snda/woa/e;

    invoke-direct {v3, p0}, Lcom/snda/woa/e;-><init>(Lcom/snda/woa/android/callback/AutoLoginCallBack;)V

    invoke-static {}, Lcom/snda/woa/cm;->b()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v2}, Lcom/snda/woa/android/OpenAPI;->getStatusText(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v3, v2, v0, v1}, Lcom/snda/woa/android/callback/AutoLoginCallBack;->callBack(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget v0, Lcom/snda/woa/cm;->a:I

    const/16 v1, 0xf

    if-eq v0, v1, :cond_2

    const/16 v0, 0x28

    sput v0, Lcom/snda/woa/cm;->a:I

    invoke-static {}, Lcom/snda/woa/cm;->a()V

    :cond_2
    new-instance v7, Ljava/lang/Thread;

    new-instance v0, Lcom/snda/woa/ca;

    move-object v1, p2

    move v2, p4

    move v4, p1

    move-object v5, p3

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/snda/woa/ca;-><init>(Landroid/content/Context;ZLcom/snda/woa/android/callback/AutoLoginCallBack;ZLjava/lang/String;Z)V

    invoke-direct {v7, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private static a(Lcom/snda/woa/android/callback/CustomMobileLoginCallBack;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;ZZ)V
    .locals 10

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v5, 0x1

    const v6, -0xa4cfcb

    const/4 v7, 0x0

    sget-object v0, Lcom/snda/woa/l;->g:Ljava/lang/String;

    sget-object v1, Lcom/snda/woa/l;->n:Ljava/lang/String;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "callBack"

    aput-object v3, v2, v7

    const-string v3, "ctx"

    aput-object v3, v2, v5

    const-string v3, "uuid"

    aput-object v3, v2, v8

    const-string v3, "validateCode"

    aput-object v3, v2, v9

    const/4 v3, 0x4

    const-string v4, "needUI"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v7

    aput-object p3, v3, v5

    aput-object p1, v3, v8

    aput-object p2, v3, v9

    const/4 v4, 0x4

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v1, p4, v2, v3}, Lcom/snda/woa/l;->a(Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v5, Lcom/snda/woa/cs;

    invoke-direct {v5, p0}, Lcom/snda/woa/cs;-><init>(Lcom/snda/woa/android/callback/CustomMobileLoginCallBack;)V

    invoke-static {}, Lcom/snda/woa/cm;->b()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v6}, Lcom/snda/woa/android/OpenAPI;->getStatusText(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v5, v6, v0, v1, v2}, Lcom/snda/woa/android/callback/CustomMobileLoginCallBack;->callBack(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget v0, Lcom/snda/woa/cm;->a:I

    const/16 v1, 0xf

    if-eq v0, v1, :cond_2

    if-eqz p5, :cond_3

    const/16 v0, 0x3f

    sput v0, Lcom/snda/woa/cm;->a:I

    :cond_2
    :goto_1
    new-instance v0, Lcom/snda/woa/bf;

    move-object v1, p3

    move v2, p4

    move-object v3, p2

    move-object v4, p1

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/snda/woa/bf;-><init>(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Lcom/snda/woa/android/callback/CustomMobileLoginCallBack;Z)V

    new-array v1, v7, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/snda/woa/bf;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_3
    const/16 v0, 0x3c

    sput v0, Lcom/snda/woa/cm;->a:I

    goto :goto_1
.end method

.method private static a(Lcom/snda/woa/android/callback/CustomMobileLoginCallBack;Ljava/lang/String;ZLandroid/content/Context;ZLjava/lang/String;)V
    .locals 10

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v6, 0x1

    const v5, -0xa4cfcb

    const/4 v7, 0x0

    sget-object v0, Lcom/snda/woa/l;->f:Ljava/lang/String;

    sget-object v1, Lcom/snda/woa/l;->n:Ljava/lang/String;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "callBack"

    aput-object v3, v2, v7

    const-string v3, "mobileNum"

    aput-object v3, v2, v6

    const-string v3, "needUI"

    aput-object v3, v2, v8

    const-string v3, "ctx"

    aput-object v3, v2, v9

    const/4 v3, 0x4

    const-string v4, "attributes"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v7

    aput-object p1, v3, v6

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v8

    aput-object p3, v3, v9

    const/4 v4, 0x4

    aput-object p5, v3, v4

    invoke-static {v0, v1, p2, v2, v3}, Lcom/snda/woa/l;->a(Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/snda/woa/cs;

    invoke-direct {v1, p0}, Lcom/snda/woa/cs;-><init>(Lcom/snda/woa/android/callback/CustomMobileLoginCallBack;)V

    invoke-static {}, Lcom/snda/woa/cm;->b()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v5}, Lcom/snda/woa/android/OpenAPI;->getStatusText(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, v5, v0, v2, v3}, Lcom/snda/woa/android/callback/CustomMobileLoginCallBack;->callBack(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget v0, Lcom/snda/woa/cm;->a:I

    const/16 v2, 0xf

    if-eq v0, v2, :cond_2

    if-eqz p4, :cond_3

    const/16 v0, 0x3f

    sput v0, Lcom/snda/woa/cm;->a:I

    :goto_1
    invoke-static {}, Lcom/snda/woa/cm;->a()V

    :cond_2
    invoke-static {p3}, Lcom/snda/woa/cf;->h(Landroid/content/Context;)Ljava/lang/String;

    new-instance v0, Lcom/snda/woa/by;

    move-object v2, p3

    move v3, p2

    move-object v4, p1

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/snda/woa/by;-><init>(Lcom/snda/woa/android/callback/CustomMobileLoginCallBack;Landroid/content/Context;ZLjava/lang/String;ZLjava/lang/String;)V

    new-array v1, v7, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/snda/woa/by;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_3
    const/16 v0, 0x3c

    sput v0, Lcom/snda/woa/cm;->a:I

    goto :goto_1
.end method

.method public static appFunction(Landroid/content/Context;Ljava/lang/String;)I
    .locals 11

    const/4 v10, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sdo.sdaccountkey"

    const/16 v2, 0x2000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "AkOpenApiUIActivity"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "nameUI"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ak_openapi_ui_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    new-instance v0, Lcom/snda/woa/bw;

    const/16 v2, 0xc

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x1

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v9}, Lcom/snda/woa/bw;-><init>(Landroid/content/Context;ILjava/lang/String;JIJI)V

    invoke-static {p0, v0}, Lcom/snda/woa/bc;->b(Landroid/content/Context;Lcom/snda/woa/bw;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v0, v10

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const v0, -0xa4d292

    goto :goto_0

    :catch_1
    move-exception v0

    const v0, -0xa4d29c

    goto :goto_0
.end method

.method public static autoLogin(Lcom/snda/woa/android/callback/AutoLoginCallBack;ZLandroid/content/Context;Ljava/lang/String;)V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    sget-object v0, Lcom/snda/woa/l;->a:Ljava/lang/String;

    sget-object v1, Lcom/snda/woa/l;->n:Ljava/lang/String;

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "callBack"

    aput-object v3, v2, v5

    const-string v3, "needUI"

    aput-object v3, v2, v4

    const-string v3, "ctx"

    aput-object v3, v2, v6

    const-string v3, "attributes"

    aput-object v3, v2, v7

    new-array v3, v8, [Ljava/lang/Object;

    aput-object p0, v3, v5

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    aput-object p2, v3, v6

    aput-object p3, v3, v7

    invoke-static {v0, v1, p1, v2, v3}, Lcom/snda/woa/l;->a(Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/snda/woa/android/OpenAPI;->a(Lcom/snda/woa/android/callback/AutoLoginCallBack;ZLandroid/content/Context;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public static autoLogin(Lcom/snda/woa/android/callback/AutoLoginCallBack;ZLjava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    sget-object v0, Lcom/snda/woa/l;->a:Ljava/lang/String;

    sget-object v1, Lcom/snda/woa/l;->n:Ljava/lang/String;

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "callBack"

    aput-object v3, v2, v5

    const-string v3, "needUI"

    aput-object v3, v2, v4

    const-string v3, "ctx"

    aput-object v3, v2, v6

    const-string v3, "attributes"

    aput-object v3, v2, v7

    new-array v3, v8, [Ljava/lang/Object;

    aput-object p0, v3, v5

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    aput-object p3, v3, v6

    aput-object p4, v3, v7

    invoke-static {v0, v1, p1, v2, v3}, Lcom/snda/woa/l;->a(Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p3}, Lcom/snda/woa/ax;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/snda/woa/ax;->e(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/snda/woa/ax;->a(Ljava/lang/String;)V

    move-object v0, p0

    move v1, p1

    move-object v2, p3

    move-object v3, p4

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/snda/woa/android/OpenAPI;->a(Lcom/snda/woa/android/callback/AutoLoginCallBack;ZLandroid/content/Context;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public static bindAccount(Lcom/snda/woa/android/callback/CallBack;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    const v2, -0xa4cf7f

    const v1, -0xa4cfcb

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p3, :cond_1

    invoke-static {p1}, Lcom/snda/woa/cn;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Lcom/snda/woa/cn;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-static {v2}, Lcom/snda/woa/android/OpenAPI;->getStatusText(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v2, v0}, Lcom/snda/woa/android/callback/CallBack;->callBack(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/snda/woa/cm;->b()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {v1}, Lcom/snda/woa/android/OpenAPI;->getStatusText(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v1, v0}, Lcom/snda/woa/android/callback/CallBack;->callBack(ILjava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/snda/woa/cm;->a()V

    new-instance v0, Lcom/snda/woa/be;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/snda/woa/be;-><init>(Lcom/snda/woa/android/callback/CallBack;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/snda/woa/be;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public static canAutoLogin(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/snda/woa/cm;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/snda/woa/cm;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static canSendSms(Landroid/content/Context;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/snda/woa/cf;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/snda/woa/cn;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Lcom/snda/woa/ai;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0}, Lcom/snda/woa/ai;->i(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0}, Lcom/snda/woa/ai;->g(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {p0}, Lcom/snda/woa/ai;->e(Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "OpenAPI"

    const-string v3, "e"

    invoke-static {v2, v3, v0}, Lcom/snda/woa/au;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    goto :goto_0
.end method

.method public static changePassword(Lcom/snda/woa/android/callback/CallBack;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    const v2, -0xa4cf7f

    const v1, -0xa4cfcb

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p3, :cond_1

    invoke-static {p1}, Lcom/snda/woa/cn;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Lcom/snda/woa/cn;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-static {v2}, Lcom/snda/woa/android/OpenAPI;->getStatusText(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v2, v0}, Lcom/snda/woa/android/callback/CallBack;->callBack(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/snda/woa/cm;->b()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {v1}, Lcom/snda/woa/android/OpenAPI;->getStatusText(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v1, v0}, Lcom/snda/woa/android/callback/CallBack;->callBack(ILjava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/snda/woa/cm;->a()V

    new-instance v0, Lcom/snda/woa/ac;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/snda/woa/ac;-><init>(Lcom/snda/woa/android/callback/CallBack;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/snda/woa/ac;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public static chkSmsIntercept(Lcom/snda/woa/android/callback/ChkSmsInterceptCallback;Landroid/content/Context;)V
    .locals 2

    new-instance v0, Lcom/snda/woa/bv;

    invoke-direct {v0, p0, p1}, Lcom/snda/woa/bv;-><init>(Lcom/snda/woa/android/callback/ChkSmsInterceptCallback;Landroid/content/Context;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/snda/woa/bv;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static clearAutoLoginData(Landroid/content/Context;)V
    .locals 10

    const/4 v9, 0x0

    invoke-static {}, Lcom/snda/woa/cm;->b()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/snda/woa/bd;

    invoke-direct {v0, p0}, Lcom/snda/woa/bd;-><init>(Landroid/content/Context;)V

    new-array v1, v9, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/snda/woa/bd;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    invoke-static {p0}, Lcom/snda/woa/cm;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v6, 0x1

    :goto_1
    new-instance v0, Lcom/snda/woa/bw;

    const/16 v2, 0x41

    const-string v3, "0"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v7, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Lcom/snda/woa/bw;-><init>(Landroid/content/Context;ILjava/lang/String;JIJI)V

    invoke-static {p0, v0}, Lcom/snda/woa/bc;->b(Landroid/content/Context;Lcom/snda/woa/bw;)V

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/snda/woa/cm;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v6, 0x2

    goto :goto_1

    :cond_2
    invoke-static {p0}, Lcom/snda/woa/cm;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v6, 0x3

    goto :goto_1

    :cond_3
    const/4 v6, -0x1

    goto :goto_1
.end method

.method public static clearMobileLoginData(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/snda/woa/cf;->y(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/snda/woa/cf;->z(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/snda/woa/cf;->m(Landroid/content/Context;)V

    return-void
.end method

.method public static clearPwdLoginData(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x1

    invoke-static {p0}, Lcom/snda/woa/cf;->c(Landroid/content/Context;)V

    const-string v0, "SndaID"

    invoke-static {p0, v0, v1, v1}, Lcom/snda/woa/cf;->a(Landroid/content/Context;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public static customMobileBind(Lcom/snda/woa/android/callback/CustomMobileLoginCallBack;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/snda/woa/android/OpenAPI;->a(Lcom/snda/woa/android/callback/CustomMobileLoginCallBack;Ljava/lang/String;ZLandroid/content/Context;ZLjava/lang/String;)V

    return-void
.end method

.method public static customMobileLogin(Lcom/snda/woa/android/callback/CustomMobileLoginCallBack;Ljava/lang/String;ZLandroid/content/Context;Ljava/lang/String;)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/snda/woa/android/OpenAPI;->a(Lcom/snda/woa/android/callback/CustomMobileLoginCallBack;Ljava/lang/String;ZLandroid/content/Context;ZLjava/lang/String;)V

    return-void
.end method

.method public static downloadApp(Landroid/content/Context;)V
    .locals 10

    const-wide/16 v4, 0x0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "http://txz.sdo.com/a/"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "com.android.browser"

    const-string v2, "com.android.browser.BrowserActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    new-instance v0, Lcom/snda/woa/bw;

    const/16 v2, 0xb

    const-string v3, "0"

    const/4 v6, 0x0

    const/4 v9, 0x1

    move-object v1, p0

    move-wide v7, v4

    invoke-direct/range {v0 .. v9}, Lcom/snda/woa/bw;-><init>(Landroid/content/Context;ILjava/lang/String;JIJI)V

    invoke-static {p0, v0}, Lcom/snda/woa/bc;->b(Landroid/content/Context;Lcom/snda/woa/bw;)V

    return-void
.end method

.method public static eCardLogin(Lcom/snda/woa/android/callback/PwdLoginCallBack;Ljava/lang/String;[Ljava/lang/String;Landroid/content/Context;ZZ)V
    .locals 11

    sget-object v0, Lcom/snda/woa/l;->i:Ljava/lang/String;

    sget-object v1, Lcom/snda/woa/l;->n:Ljava/lang/String;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "callBack"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "ctx"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "guid"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "password"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "autologin"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "needUI"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p3, v3, v4

    const/4 v4, 0x2

    aput-object p1, v3, v4

    const/4 v4, 0x3

    invoke-static {p2}, Lcom/snda/woa/cn;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v1, p4, v2, v3}, Lcom/snda/woa/l;->a(Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v7, Lcom/snda/woa/ab;

    invoke-direct {v7, p0}, Lcom/snda/woa/ab;-><init>(Lcom/snda/woa/android/callback/PwdLoginCallBack;)V

    invoke-static {}, Lcom/snda/woa/cm;->b()Z

    move-result v0

    if-nez v0, :cond_1

    const v0, -0xa4cfcb

    const v1, -0xa4cfcb

    invoke-static {v1}, Lcom/snda/woa/android/OpenAPI;->getStatusText(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v7, v0, v1, v2}, Lcom/snda/woa/android/callback/PwdLoginCallBack;->callBack(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v9, Lcom/snda/woa/bg;

    const/4 v8, 0x1

    const/4 v10, 0x0

    new-instance v0, Lcom/snda/woa/f;

    const-string v5, ""

    move-object v1, p1

    move-object v2, p2

    move v3, p4

    move-object v4, p3

    move/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/snda/woa/f;-><init>(Ljava/lang/String;[Ljava/lang/String;ZLandroid/content/Context;Ljava/lang/String;Z)V

    move-object v1, v9

    move-object v2, p3

    move v3, p4

    move-object v4, v7

    move v5, v8

    move v6, v10

    move/from16 v7, p5

    move-object v8, v0

    invoke-direct/range {v1 .. v8}, Lcom/snda/woa/bg;-><init>(Landroid/content/Context;ZLcom/snda/woa/android/callback/PwdLoginCallBack;ZZZLcom/snda/woa/f;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v9, v0}, Lcom/snda/woa/bg;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public static eKeyLogin(Lcom/snda/woa/android/callback/PwdLoginCallBack;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;ZZ)V
    .locals 11

    sget-object v0, Lcom/snda/woa/l;->j:Ljava/lang/String;

    sget-object v1, Lcom/snda/woa/l;->n:Ljava/lang/String;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "callBack"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "ctx"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "guid"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "password"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "autologin"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "needUI"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p3, v3, v4

    const/4 v4, 0x2

    aput-object p1, v3, v4

    const/4 v4, 0x3

    aput-object p2, v3, v4

    const/4 v4, 0x4

    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v1, p4, v2, v3}, Lcom/snda/woa/l;->a(Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v7, Lcom/snda/woa/ab;

    invoke-direct {v7, p0}, Lcom/snda/woa/ab;-><init>(Lcom/snda/woa/android/callback/PwdLoginCallBack;)V

    invoke-static {}, Lcom/snda/woa/cm;->b()Z

    move-result v0

    if-nez v0, :cond_1

    const v0, -0xa4cfcb

    const v1, -0xa4cfcb

    invoke-static {v1}, Lcom/snda/woa/android/OpenAPI;->getStatusText(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v7, v0, v1, v2}, Lcom/snda/woa/android/callback/PwdLoginCallBack;->callBack(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v9, Lcom/snda/woa/bg;

    const/4 v8, 0x0

    const/4 v10, 0x1

    new-instance v0, Lcom/snda/woa/f;

    const-string v5, ""

    move-object v1, p1

    move-object v2, p2

    move v3, p4

    move-object v4, p3

    move/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/snda/woa/f;-><init>(Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;Ljava/lang/String;Z)V

    move-object v1, v9

    move-object v2, p3

    move v3, p4

    move-object v4, v7

    move v5, v8

    move v6, v10

    move/from16 v7, p5

    move-object v8, v0

    invoke-direct/range {v1 .. v8}, Lcom/snda/woa/bg;-><init>(Landroid/content/Context;ZLcom/snda/woa/android/callback/PwdLoginCallBack;ZZZLcom/snda/woa/f;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v9, v0}, Lcom/snda/woa/bg;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public static expLogin(Lcom/snda/woa/android/callback/ExpLoginCallBack;ZLandroid/content/Context;Ljava/lang/String;)V
    .locals 10

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const v6, -0xa4cfcb

    const/4 v5, 0x0

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/snda/woa/l;->e:Ljava/lang/String;

    sget-object v1, Lcom/snda/woa/l;->n:Ljava/lang/String;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "callBack"

    aput-object v3, v2, v5

    const-string v3, "needUI"

    aput-object v3, v2, v7

    const-string v3, "ctx"

    aput-object v3, v2, v8

    const-string v3, "attributes"

    aput-object v3, v2, v9

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v5

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v7

    aput-object p2, v3, v8

    aput-object p3, v3, v9

    invoke-static {v0, v1, p1, v2, v3}, Lcom/snda/woa/l;->a(Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/snda/woa/ci;

    invoke-direct {v0, p0}, Lcom/snda/woa/ci;-><init>(Lcom/snda/woa/android/callback/ExpLoginCallBack;)V

    invoke-static {}, Lcom/snda/woa/cm;->b()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v6}, Lcom/snda/woa/android/OpenAPI;->getStatusText(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v6, v1, v2}, Lcom/snda/woa/android/callback/ExpLoginCallBack;->callBack(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x2d

    sput v1, Lcom/snda/woa/cm;->a:I

    invoke-static {}, Lcom/snda/woa/cm;->a()V

    new-instance v1, Lcom/snda/woa/i;

    invoke-direct {v1, p2, p1, v0, p3}, Lcom/snda/woa/i;-><init>(Landroid/content/Context;ZLcom/snda/woa/android/callback/ExpLoginCallBack;Ljava/lang/String;)V

    new-array v0, v5, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/snda/woa/i;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public static fastLogin(Lcom/snda/woa/android/callback/FastLoginCallBack;ZIZZLandroid/content/Context;Ljava/lang/String;)V
    .locals 8

    sget-object v0, Lcom/snda/woa/l;->l:Ljava/lang/String;

    sget-object v1, Lcom/snda/woa/l;->n:Ljava/lang/String;

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "callBack"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "needUI"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "tryMobileLoginTimes"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "tryCustomMobileLogin"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "showCountryList"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "ctx"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "attributes"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    aput-object p5, v3, v4

    const/4 v4, 0x6

    aput-object p6, v3, v4

    invoke-static {v0, v1, p1, v2, v3}, Lcom/snda/woa/l;->a(Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v3, Lcom/snda/woa/bo;

    invoke-direct {v3, p0}, Lcom/snda/woa/bo;-><init>(Lcom/snda/woa/android/callback/FastLoginCallBack;)V

    invoke-static {}, Lcom/snda/woa/cm;->b()Z

    move-result v0

    if-nez v0, :cond_1

    const v0, -0xa4cfcb

    const v1, -0xa4cfcb

    invoke-static {v1}, Lcom/snda/woa/android/OpenAPI;->getStatusText(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v1, v2, v4}, Lcom/snda/woa/bo;->callBack(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {p5}, Lcom/snda/woa/at;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/snda/woa/cn;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p5}, Lcom/snda/woa/at;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, -0xa4d09d

    const v1, -0xa4d09d

    invoke-static {v1}, Lcom/snda/woa/android/OpenAPI;->getStatusText(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v1, v2, v4}, Lcom/snda/woa/bo;->callBack(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const v0, -0xa4d097

    const v1, -0xa4d097

    invoke-static {v1}, Lcom/snda/woa/android/OpenAPI;->getStatusText(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v1, v2, v4}, Lcom/snda/woa/bo;->callBack(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/snda/woa/cm;->a()V

    const/16 v0, 0xf

    sput v0, Lcom/snda/woa/cm;->a:I

    new-instance v7, Ljava/lang/Thread;

    new-instance v0, Lcom/snda/woa/cb;

    move-object v1, p5

    move v2, p3

    move v4, p1

    move v5, p4

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/snda/woa/cb;-><init>(Landroid/content/Context;ZLcom/snda/woa/bo;ZZLjava/lang/String;)V

    invoke-direct {v7, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public static getCountryCode(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/snda/woa/ai;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCountryCodes(Landroid/content/Context;)Ljava/util/Map;
    .locals 11

    const/4 v7, 0x0

    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-direct {v8, v7}, Ljava/util/LinkedHashMap;-><init>(I)V

    move v6, v7

    :goto_0
    sget-object v0, Lcom/snda/woa/az;->c:[[Ljava/lang/String;

    array-length v0, v0

    if-ge v6, v0, :cond_0

    sget-object v0, Lcom/snda/woa/az;->c:[[Ljava/lang/String;

    aget-object v0, v0, v6

    aget-object v9, v0, v7

    new-instance v0, Lcom/snda/woa/android/Country;

    sget-object v1, Lcom/snda/woa/az;->c:[[Ljava/lang/String;

    aget-object v1, v1, v6

    const/4 v2, 0x1

    aget-object v1, v1, v2

    sget-object v2, Lcom/snda/woa/az;->c:[[Ljava/lang/String;

    aget-object v2, v2, v6

    aget-object v2, v2, v7

    sget-object v3, Lcom/snda/woa/az;->c:[[Ljava/lang/String;

    aget-object v3, v3, v6

    const/4 v4, 0x2

    aget-object v3, v3, v4

    sget-object v4, Lcom/snda/woa/az;->c:[[Ljava/lang/String;

    aget-object v4, v4, v6

    const/4 v5, 0x3

    aget-object v4, v4, v5

    sget-object v5, Lcom/snda/woa/az;->c:[[Ljava/lang/String;

    aget-object v5, v5, v6

    const/4 v10, 0x4

    aget-object v5, v5, v10

    invoke-direct/range {v0 .. v5}, Lcom/snda/woa/android/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    :cond_0
    return-object v8
.end method

.method public static getDualCardInfo(Landroid/content/Context;)[Ljava/lang/String;
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v1, Lcom/snda/youni/dualsim/DualSimAgent;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/snda/youni/dualsim/DualSimAgent;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/snda/youni/dualsim/DualSimAgent;->isDualSimSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/snda/youni/dualsim/DualSimAgent;->getSimSerialNumber(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    invoke-virtual {v1, v4}, Lcom/snda/youni/dualsim/DualSimAgent;->getSimSerialNumber(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getStatusText(I)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/snda/woa/ce;->t:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/snda/woa/ce;->t:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static getUserId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "SndaID"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/snda/woa/cf;->b(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Lcom/snda/woa/ap;->b(Ljava/lang/String;Lcom/snda/woa/bk;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUserName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "pt"

    invoke-static {p0, v0}, Lcom/snda/woa/cf;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "2.5.1"

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 10

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-static {}, Lcom/snda/woa/cm;->c()V

    invoke-static {}, Lcom/snda/woa/cm;->a()V

    invoke-static {p0}, Lcom/snda/woa/ax;->f(Landroid/content/Context;)V

    new-instance v0, Lcom/snda/woa/bn;

    invoke-direct {v0, p0}, Lcom/snda/woa/bn;-><init>(Landroid/content/Context;)V

    new-array v1, v6, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/snda/woa/bn;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    new-instance v0, Lcom/snda/woa/bw;

    const/16 v2, 0xa

    const-string v3, "0"

    const/4 v9, 0x1

    move-object v1, p0

    move-wide v7, v4

    invoke-direct/range {v0 .. v9}, Lcom/snda/woa/bw;-><init>(Landroid/content/Context;ILjava/lang/String;JIJI)V

    invoke-static {p0, v0}, Lcom/snda/woa/bc;->b(Landroid/content/Context;Lcom/snda/woa/bw;)V

    return-void
.end method

.method public static init(Landroid/content/Context;I)V
    .locals 10

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x1

    invoke-static {}, Lcom/snda/woa/cm;->c()V

    invoke-static {}, Lcom/snda/woa/cm;->a()V

    invoke-static {p0}, Lcom/snda/woa/ax;->f(Landroid/content/Context;)V

    if-ltz p1, :cond_0

    if-gt p1, v9, :cond_0

    const-string v0, "key_selected_card"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1, v9, v9}, Lcom/snda/woa/cf;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    :cond_0
    new-instance v0, Lcom/snda/woa/bn;

    invoke-direct {v0, p0}, Lcom/snda/woa/bn;-><init>(Landroid/content/Context;)V

    new-array v1, v6, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/snda/woa/bn;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    new-instance v0, Lcom/snda/woa/bw;

    const/16 v2, 0xa

    const-string v3, "0"

    move-object v1, p0

    move-wide v7, v4

    invoke-direct/range {v0 .. v9}, Lcom/snda/woa/bw;-><init>(Landroid/content/Context;ILjava/lang/String;JIJI)V

    invoke-static {p0, v0}, Lcom/snda/woa/bc;->b(Landroid/content/Context;Lcom/snda/woa/bw;)V

    return-void
.end method

.method public static isDualCard(Landroid/content/Context;)Z
    .locals 2

    new-instance v0, Lcom/snda/youni/dualsim/DualSimAgent;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/snda/youni/dualsim/DualSimAgent;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/snda/youni/dualsim/DualSimAgent;->isDualSimSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/snda/woa/cf;->p(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0
.end method

.method public static loginFeedBack(Landroid/content/Context;ZILjava/lang/String;)V
    .locals 11

    const/4 v4, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v10, 0x0

    invoke-static {}, Lcom/snda/woa/cm;->b()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    :sswitch_0
    return-void

    :cond_0
    const-string v0, "OpenAPI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "loginFeedBack "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snda/woa/au;->c(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/snda/woa/l;->m:Ljava/lang/String;

    sget-object v1, Lcom/snda/woa/l;->p:Ljava/lang/String;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "ctx"

    aput-object v3, v2, v10

    sget-object v3, Lcom/snda/woa/l;->r:Ljava/lang/String;

    aput-object v3, v2, v5

    sget-object v3, Lcom/snda/woa/l;->s:Ljava/lang/String;

    aput-object v3, v2, v6

    sget-object v3, Lcom/snda/woa/l;->t:Ljava/lang/String;

    aput-object v3, v2, v7

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p0, v3, v10

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    aput-object p3, v3, v7

    invoke-static {v0, v1, v10, v2, v3}, Lcom/snda/woa/l;->a(Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;[Ljava/lang/Object;)V

    sget v0, Lcom/snda/woa/cm;->a:I

    sparse-switch v0, :sswitch_data_0

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sget-object v2, Lcom/snda/woa/cm;->e:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long v7, v0, v2

    new-instance v0, Lcom/snda/woa/bw;

    sget v2, Lcom/snda/woa/cm;->a:I

    const-string v3, "199"

    sget-object v1, Lcom/snda/woa/cm;->e:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    move-object v1, p0

    move v6, p2

    move-object v9, p3

    invoke-direct/range {v0 .. v9}, Lcom/snda/woa/bw;-><init>(Landroid/content/Context;ILjava/lang/String;JIJLjava/lang/String;)V

    invoke-static {p0, v0}, Lcom/snda/woa/bc;->b(Landroid/content/Context;Lcom/snda/woa/bw;)V

    new-instance v0, Lcom/snda/woa/al;

    sget v5, Lcom/snda/woa/cm;->a:I

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/snda/woa/al;-><init>(Landroid/content/Context;ZILjava/lang/String;I)V

    new-array v1, v10, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/snda/woa/al;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x46 -> :sswitch_0
        0x50 -> :sswitch_0
        0x5a -> :sswitch_0
    .end sparse-switch
.end method

.method public static mobileAutoLogin(Lcom/snda/woa/android/callback/AutoLoginCallBack;ZLandroid/content/Context;Ljava/lang/String;)V
    .locals 9

    const/4 v6, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-object v0, Lcom/snda/woa/l;->b:Ljava/lang/String;

    sget-object v1, Lcom/snda/woa/l;->n:Ljava/lang/String;

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "callBack"

    aput-object v3, v2, v4

    const-string v3, "needUI"

    aput-object v3, v2, v5

    const-string v3, "ctx"

    aput-object v3, v2, v7

    const-string v3, "attributes"

    aput-object v3, v2, v8

    new-array v3, v6, [Ljava/lang/Object;

    aput-object p0, v3, v4

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v3, v5

    aput-object p2, v3, v7

    aput-object p3, v3, v8

    invoke-static {v0, v1, p1, v2, v3}, Lcom/snda/woa/l;->a(Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcom/snda/woa/android/OpenAPI;->a(Lcom/snda/woa/android/callback/AutoLoginCallBack;ZLandroid/content/Context;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public static mobileAutoLogin(Lcom/snda/woa/android/callback/AutoLoginCallBack;ZLjava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .locals 9

    const/4 v6, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-object v0, Lcom/snda/woa/l;->a:Ljava/lang/String;

    sget-object v1, Lcom/snda/woa/l;->n:Ljava/lang/String;

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "callBack"

    aput-object v3, v2, v4

    const-string v3, "needUI"

    aput-object v3, v2, v5

    const-string v3, "ctx"

    aput-object v3, v2, v7

    const-string v3, "attributes"

    aput-object v3, v2, v8

    new-array v3, v6, [Ljava/lang/Object;

    aput-object p0, v3, v4

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v3, v5

    aput-object p3, v3, v7

    aput-object p4, v3, v8

    invoke-static {v0, v1, p1, v2, v3}, Lcom/snda/woa/l;->a(Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p3}, Lcom/snda/woa/ax;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/snda/woa/ax;->e(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/snda/woa/ax;->a(Ljava/lang/String;)V

    move-object v0, p0

    move v1, p1

    move-object v2, p3

    move-object v3, p4

    invoke-static/range {v0 .. v5}, Lcom/snda/woa/android/OpenAPI;->a(Lcom/snda/woa/android/callback/AutoLoginCallBack;ZLandroid/content/Context;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public static mobileLogin(Lcom/snda/woa/android/callback/MobileLoginCallBack;ZLandroid/content/Context;Ljava/lang/String;)V
    .locals 11

    const v10, -0xa4cfcb

    const v9, -0xa4d097

    const v8, -0xa4d09d

    const/4 v7, 0x0

    const/4 v4, 0x0

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/snda/woa/l;->c:Ljava/lang/String;

    sget-object v1, Lcom/snda/woa/l;->n:Ljava/lang/String;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "callBack"

    aput-object v3, v2, v4

    const/4 v3, 0x1

    const-string v5, "needUI"

    aput-object v5, v2, v3

    const/4 v3, 0x2

    const-string v5, "ctx"

    aput-object v5, v2, v3

    const/4 v3, 0x3

    const-string v5, "attributes"

    aput-object v5, v2, v3

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v4

    const/4 v5, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x2

    aput-object p2, v3, v5

    const/4 v5, 0x3

    aput-object p3, v3, v5

    invoke-static {v0, v1, p1, v2, v3}, Lcom/snda/woa/l;->a(Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v2, Lcom/snda/woa/bh;

    invoke-direct {v2, p0}, Lcom/snda/woa/bh;-><init>(Lcom/snda/woa/android/callback/MobileLoginCallBack;)V

    invoke-static {}, Lcom/snda/woa/cm;->b()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v10}, Lcom/snda/woa/android/OpenAPI;->getStatusText(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v10, v0, v7}, Lcom/snda/woa/android/callback/MobileLoginCallBack;->callBack(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {p2}, Lcom/snda/woa/at;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/snda/woa/cn;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p2}, Lcom/snda/woa/at;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v8}, Lcom/snda/woa/android/OpenAPI;->getStatusText(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v8, v0, v7}, Lcom/snda/woa/android/callback/MobileLoginCallBack;->callBack(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {v9}, Lcom/snda/woa/android/OpenAPI;->getStatusText(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v9, v0, v7}, Lcom/snda/woa/android/callback/MobileLoginCallBack;->callBack(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    sget v0, Lcom/snda/woa/cm;->a:I

    const/16 v1, 0xf

    if-eq v0, v1, :cond_4

    const/16 v0, 0x21

    sput v0, Lcom/snda/woa/cm;->a:I

    invoke-static {}, Lcom/snda/woa/cm;->a()V

    :cond_4
    new-instance v0, Lcom/snda/woa/cl;

    move-object v1, p2

    move v3, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/snda/woa/cl;-><init>(Landroid/content/Context;Lcom/snda/woa/android/callback/MobileLoginCallBack;ZZLjava/lang/String;)V

    new-array v1, v4, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/snda/woa/cl;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public static needSendSms(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/snda/woa/cm;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Lcom/snda/woa/cf;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/snda/woa/cn;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p0}, Lcom/snda/woa/cf;->A(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/snda/woa/cn;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    invoke-static {p0}, Lcom/snda/woa/cf;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/snda/woa/cn;->c(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/snda/woa/cf;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/snda/woa/cn;->c(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static pwdAutoLogin(Lcom/snda/woa/android/callback/AutoLoginCallBack;ZLandroid/content/Context;Ljava/lang/String;)V
    .locals 9

    const/4 v6, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    sget-object v0, Lcom/snda/woa/l;->b:Ljava/lang/String;

    sget-object v1, Lcom/snda/woa/l;->n:Ljava/lang/String;

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "callBack"

    aput-object v3, v2, v5

    const-string v3, "needUI"

    aput-object v3, v2, v4

    const-string v3, "ctx"

    aput-object v3, v2, v7

    const-string v3, "attributes"

    aput-object v3, v2, v8

    new-array v3, v6, [Ljava/lang/Object;

    aput-object p0, v3, v5

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v3, v4

    aput-object p2, v3, v7

    aput-object p3, v3, v8

    invoke-static {v0, v1, p1, v2, v3}, Lcom/snda/woa/l;->a(Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcom/snda/woa/android/OpenAPI;->a(Lcom/snda/woa/android/callback/AutoLoginCallBack;ZLandroid/content/Context;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public static pwdLogin(Lcom/snda/woa/android/callback/PwdLoginCallBack;Ljava/lang/String;Ljava/lang/String;ZZLandroid/content/Context;Ljava/lang/String;)V
    .locals 14

    sget-object v1, Lcom/snda/woa/l;->h:Ljava/lang/String;

    sget-object v2, Lcom/snda/woa/l;->n:Ljava/lang/String;

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "callBack"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "ctx"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "attributes"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "userId"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "password"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string v5, "autologin"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "needUI"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    aput-object p5, v4, v5

    const/4 v5, 0x2

    aput-object p6, v4, v5

    const/4 v5, 0x3

    aput-object p1, v4, v5

    const/4 v5, 0x4

    aput-object p2, v4, v5

    const/4 v5, 0x5

    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    move/from16 v0, p4

    invoke-static {v1, v2, v0, v3, v4}, Lcom/snda/woa/l;->a(Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v10, Lcom/snda/woa/ab;

    invoke-direct {v10, p0}, Lcom/snda/woa/ab;-><init>(Lcom/snda/woa/android/callback/PwdLoginCallBack;)V

    invoke-static {}, Lcom/snda/woa/cm;->b()Z

    move-result v1

    if-nez v1, :cond_1

    const v1, -0xa4cfcb

    const v2, -0xa4cfcb

    invoke-static {v2}, Lcom/snda/woa/android/OpenAPI;->getStatusText(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v10, v1, v2, v3}, Lcom/snda/woa/android/callback/PwdLoginCallBack;->callBack(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/snda/woa/cm;->a()V

    const/16 v1, 0x32

    sput v1, Lcom/snda/woa/cm;->a:I

    invoke-static/range {p5 .. p5}, Lcom/snda/woa/cf;->h(Landroid/content/Context;)Ljava/lang/String;

    new-instance v11, Lcom/snda/woa/bg;

    const/4 v12, 0x0

    const/4 v13, 0x0

    new-instance v1, Lcom/snda/woa/f;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p3

    invoke-direct/range {v1 .. v9}, Lcom/snda/woa/f;-><init>(Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;Ljava/lang/String;ZZZ)V

    move-object v2, v11

    move-object/from16 v3, p5

    move/from16 v4, p4

    move-object v5, v10

    move v6, v12

    move v7, v13

    move/from16 v8, p3

    move-object v9, v1

    invoke-direct/range {v2 .. v9}, Lcom/snda/woa/bg;-><init>(Landroid/content/Context;ZLcom/snda/woa/android/callback/PwdLoginCallBack;ZZZLcom/snda/woa/f;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v11, v1}, Lcom/snda/woa/bg;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public static pwdVerifyCodeLogin(Lcom/snda/woa/android/callback/PwdLoginCallBack;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;ZZ)V
    .locals 13

    sget-object v1, Lcom/snda/woa/l;->k:Ljava/lang/String;

    sget-object v2, Lcom/snda/woa/l;->n:Ljava/lang/String;

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "callBack"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "ctx"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "guid"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "code"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "autologin"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string v5, "needUI"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    aput-object p3, v4, v5

    const/4 v5, 0x2

    aput-object p1, v4, v5

    const/4 v5, 0x3

    aput-object p2, v4, v5

    const/4 v5, 0x4

    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    move/from16 v0, p4

    invoke-static {v1, v2, v0, v3, v4}, Lcom/snda/woa/l;->a(Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v9, Lcom/snda/woa/ab;

    invoke-direct {v9, p0}, Lcom/snda/woa/ab;-><init>(Lcom/snda/woa/android/callback/PwdLoginCallBack;)V

    invoke-static {}, Lcom/snda/woa/cm;->b()Z

    move-result v1

    if-nez v1, :cond_1

    const v1, -0xa4cfcb

    const v2, -0xa4cfcb

    invoke-static {v2}, Lcom/snda/woa/android/OpenAPI;->getStatusText(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v9, v1, v2, v3}, Lcom/snda/woa/android/callback/PwdLoginCallBack;->callBack(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v10, Lcom/snda/woa/bg;

    const/4 v11, 0x0

    const/4 v12, 0x1

    new-instance v1, Lcom/snda/woa/f;

    const-string v6, ""

    const/4 v8, 0x1

    move-object v2, p1

    move-object v3, p2

    move/from16 v4, p4

    move-object/from16 v5, p3

    move/from16 v7, p5

    invoke-direct/range {v1 .. v8}, Lcom/snda/woa/f;-><init>(Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;Ljava/lang/String;ZZ)V

    move-object v2, v10

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object v5, v9

    move v6, v11

    move v7, v12

    move/from16 v8, p5

    move-object v9, v1

    invoke-direct/range {v2 .. v9}, Lcom/snda/woa/bg;-><init>(Landroid/content/Context;ZLcom/snda/woa/android/callback/PwdLoginCallBack;ZZZLcom/snda/woa/f;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v10, v1}, Lcom/snda/woa/bg;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public static saveUserId(Ljava/lang/String;Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x1

    const-string v0, "SndaID"

    const/4 v1, 0x0

    invoke-static {p0, v1, p1}, Lcom/snda/woa/ap;->a(Ljava/lang/String;Lcom/snda/woa/bk;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1, v2, v2}, Lcom/snda/woa/cf;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public static setAppId(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/snda/woa/ax;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static setAreaId(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/snda/woa/ax;->d(Ljava/lang/String;)V

    return-void
.end method

.method public static setChannelId(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/snda/woa/ax;->b(Ljava/lang/String;)V

    return-void
.end method

.method public static setFCM(Lcom/snda/woa/android/callback/CallBack;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    const v2, -0xa4cf7f

    const v1, -0xa4cfcb

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p4, :cond_1

    invoke-static {p1}, Lcom/snda/woa/cn;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p3}, Lcom/snda/woa/cn;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Lcom/snda/woa/cn;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-static {v2}, Lcom/snda/woa/android/OpenAPI;->getStatusText(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v2, v0}, Lcom/snda/woa/android/callback/CallBack;->callBack(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/snda/woa/cm;->b()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {v1}, Lcom/snda/woa/android/OpenAPI;->getStatusText(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v1, v0}, Lcom/snda/woa/android/callback/CallBack;->callBack(ILjava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/snda/woa/cm;->a()V

    new-instance v0, Lcom/snda/woa/cd;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p2

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/snda/woa/cd;-><init>(Lcom/snda/woa/android/callback/CallBack;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/snda/woa/cd;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public static setFastCallBack(Landroid/content/Context;Z)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "1"

    invoke-static {p0, v0}, Lcom/snda/woa/cf;->i(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "0"

    invoke-static {p0, v0}, Lcom/snda/woa/cf;->i(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setGetIsNetworkAvailable(Z)V
    .locals 0

    invoke-static {p0}, Lcom/snda/woa/at;->a(Z)V

    return-void
.end method

.method public static setProductId(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/snda/woa/ax;->c(Ljava/lang/String;)V

    return-void
.end method

.method public static setSaveToSD(Z)V
    .locals 0

    invoke-static {p0}, Lcom/snda/woa/cf;->a(Z)V

    return-void
.end method

.method public static simLogin(Lcom/snda/woa/android/callback/MobileLoginCallBack;ZLandroid/content/Context;Ljava/lang/String;)V
    .locals 10

    const v9, -0xa4d097

    const v8, -0xa4d09d

    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/snda/woa/l;->d:Ljava/lang/String;

    sget-object v1, Lcom/snda/woa/l;->n:Ljava/lang/String;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "callBack"

    aput-object v3, v2, v6

    const-string v3, "needUI"

    aput-object v3, v2, v4

    const/4 v3, 0x2

    const-string v5, "ctx"

    aput-object v5, v2, v3

    const/4 v3, 0x3

    const-string v5, "attributes"

    aput-object v5, v2, v3

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v6

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v5, 0x2

    aput-object p2, v3, v5

    const/4 v5, 0x3

    aput-object p3, v3, v5

    invoke-static {v0, v1, p1, v2, v3}, Lcom/snda/woa/l;->a(Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v2, Lcom/snda/woa/bh;

    invoke-direct {v2, p0}, Lcom/snda/woa/bh;-><init>(Lcom/snda/woa/android/callback/MobileLoginCallBack;)V

    invoke-static {}, Lcom/snda/woa/cm;->b()Z

    move-result v0

    if-nez v0, :cond_1

    const v0, -0xa4cfcb

    const v1, -0xa4cfcb

    invoke-static {v1}, Lcom/snda/woa/android/OpenAPI;->getStatusText(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1, v7}, Lcom/snda/woa/android/callback/MobileLoginCallBack;->callBack(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {p2}, Lcom/snda/woa/at;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/snda/woa/cn;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p2}, Lcom/snda/woa/at;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v8}, Lcom/snda/woa/android/OpenAPI;->getStatusText(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v8, v0, v7}, Lcom/snda/woa/android/callback/MobileLoginCallBack;->callBack(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {v9}, Lcom/snda/woa/android/OpenAPI;->getStatusText(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v9, v0, v7}, Lcom/snda/woa/android/callback/MobileLoginCallBack;->callBack(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/16 v0, 0x27

    sput v0, Lcom/snda/woa/cm;->a:I

    invoke-static {}, Lcom/snda/woa/cm;->a()V

    new-instance v0, Lcom/snda/woa/cl;

    move-object v1, p2

    move v3, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/snda/woa/cl;-><init>(Landroid/content/Context;Lcom/snda/woa/android/callback/MobileLoginCallBack;ZZLjava/lang/String;)V

    new-array v1, v6, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/snda/woa/cl;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public static userNameExists(Lcom/snda/woa/android/callback/UsernameExistsCallBack;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    const v1, -0xa4cf7f

    const v3, -0xa4cfcb

    const/4 v4, 0x0

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p2, :cond_1

    invoke-static {p1}, Lcom/snda/woa/cn;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-static {v1}, Lcom/snda/woa/android/OpenAPI;->getStatusText(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v3, p1

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/snda/woa/android/callback/UsernameExistsCallBack;->callBack(ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/snda/woa/cm;->b()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {v3}, Lcom/snda/woa/android/OpenAPI;->getStatusText(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move v1, v3

    move-object v3, p1

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/snda/woa/android/callback/UsernameExistsCallBack;->callBack(ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/snda/woa/cm;->a()V

    new-instance v0, Lcom/snda/woa/ae;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/snda/woa/ae;-><init>(Lcom/snda/woa/android/callback/UsernameExistsCallBack;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    new-array v1, v4, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/snda/woa/ae;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public static userNameRegister(Lcom/snda/woa/android/callback/UsernameRegisterCallBack;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    const v3, -0xa4cf7f

    const v2, -0xa4cfcb

    const/4 v1, 0x0

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p3, :cond_1

    invoke-static {p1}, Lcom/snda/woa/cn;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Lcom/snda/woa/cn;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-static {v3}, Lcom/snda/woa/android/OpenAPI;->getStatusText(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v3, v0, v1, v1}, Lcom/snda/woa/android/callback/UsernameRegisterCallBack;->callBack(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/snda/woa/cm;->b()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {v2}, Lcom/snda/woa/android/OpenAPI;->getStatusText(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v2, v0, v1, v1}, Lcom/snda/woa/android/callback/UsernameRegisterCallBack;->callBack(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/snda/woa/cm;->a()V

    new-instance v0, Lcom/snda/woa/bq;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/snda/woa/bq;-><init>(Lcom/snda/woa/android/callback/UsernameRegisterCallBack;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/snda/woa/bq;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public static validateCodeBind(Lcom/snda/woa/android/callback/CustomMobileLoginCallBack;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcom/snda/woa/android/OpenAPI;->a(Lcom/snda/woa/android/callback/CustomMobileLoginCallBack;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;ZZ)V

    return-void
.end method

.method public static validateCodeLogin(Lcom/snda/woa/android/callback/CustomMobileLoginCallBack;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Z)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/snda/woa/android/OpenAPI;->a(Lcom/snda/woa/android/callback/CustomMobileLoginCallBack;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;ZZ)V

    return-void
.end method
