.class public Lcom/snda/woa/bv;
.super Landroid/os/AsyncTask;


# instance fields
.field private a:Lcom/snda/woa/android/callback/ChkSmsInterceptCallback;

.field private b:Landroid/content/Context;

.field private c:I

.field private d:Z

.field private e:Ljava/util/Map;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/snda/woa/android/callback/ChkSmsInterceptCallback;Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput v1, p0, Lcom/snda/woa/bv;->c:I

    iput-boolean v1, p0, Lcom/snda/woa/bv;->d:Z

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/snda/woa/bv;->e:Ljava/util/Map;

    const-string v0, ""

    iput-object v0, p0, Lcom/snda/woa/bv;->f:Ljava/lang/String;

    iput-object p1, p0, Lcom/snda/woa/bv;->a:Lcom/snda/woa/android/callback/ChkSmsInterceptCallback;

    iput-object p2, p0, Lcom/snda/woa/bv;->b:Landroid/content/Context;

    return-void
.end method

.method private a(Landroid/content/Context;)Ljava/util/List;
    .locals 7

    const/4 v0, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    new-instance v6, Lcom/snda/woa/af;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-direct {v6, v5, v4, v0}, Lcom/snda/woa/af;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "\\."

    const-string v1, "\\\\."

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\*"

    const-string v2, ".*"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/snda/woa/bv;->a:Lcom/snda/woa/android/callback/ChkSmsInterceptCallback;

    if-nez v0, :cond_0

    :goto_0
    return-object v8

    :cond_0
    iget-object v0, p0, Lcom/snda/woa/bv;->b:Landroid/content/Context;

    if-nez v0, :cond_1

    const v0, -0xa4cf7f

    iput v0, p0, Lcom/snda/woa/bv;->c:I

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/snda/woa/cm;->f()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/snda/woa/bv;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/snda/woa/bi;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    sget-object v0, Lcom/snda/woa/b;->a:Ljava/util/List;

    :cond_4
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snda/woa/ak;

    invoke-virtual {v0}, Lcom/snda/woa/ak;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v0}, Lcom/snda/woa/ak;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/snda/woa/bv;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snda/woa/bv;->d:Z

    :cond_6
    iget-object v0, p0, Lcom/snda/woa/bv;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/snda/woa/n;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c

    :cond_7
    sget-object v0, Lcom/snda/woa/b;->b:Ljava/util/List;

    move-object v2, v0

    :goto_2
    iget-object v0, p0, Lcom/snda/woa/bv;->b:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/snda/woa/bv;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snda/woa/af;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/snda/woa/af;

    invoke-virtual {v1}, Lcom/snda/woa/af;->a()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_9

    invoke-virtual {v1}, Lcom/snda/woa/af;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/snda/woa/af;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {v1}, Lcom/snda/woa/af;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/snda/woa/bv;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v0}, Lcom/snda/woa/af;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/snda/woa/bv;->e:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/snda/woa/af;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/snda/woa/af;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :sswitch_0
    const v0, -0xa4cfcb

    iput v0, p0, Lcom/snda/woa/bv;->c:I

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "timeout"

    iput-object v0, p0, Lcom/snda/woa/bv;->f:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    :cond_a
    sub-long v4, v2, v0

    const-wide/16 v6, 0xbb8

    cmp-long v4, v4, v6

    if-gtz v4, :cond_2

    const-wide/16 v4, 0x64

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_4
    invoke-static {}, Lcom/snda/woa/cm;->f()I

    move-result v4

    const/16 v5, 0x64

    if-ne v4, v5, :cond_a

    const-string v0, ""

    iput-object v0, p0, Lcom/snda/woa/bv;->f:Ljava/lang/String;

    goto/16 :goto_1

    :cond_b
    const/4 v0, 0x0

    iput v0, p0, Lcom/snda/woa/bv;->c:I

    goto/16 :goto_0

    :catch_0
    move-exception v4

    goto :goto_4

    :cond_c
    move-object v2, v0

    goto/16 :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method protected a(Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/snda/woa/bv;->a:Lcom/snda/woa/android/callback/ChkSmsInterceptCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snda/woa/bv;->a:Lcom/snda/woa/android/callback/ChkSmsInterceptCallback;

    iget v1, p0, Lcom/snda/woa/bv;->c:I

    iget v2, p0, Lcom/snda/woa/bv;->c:I

    invoke-static {v2}, Lcom/snda/woa/android/OpenAPI;->getStatusText(I)Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/snda/woa/bv;->d:Z

    iget-object v4, p0, Lcom/snda/woa/bv;->e:Ljava/util/Map;

    iget-object v5, p0, Lcom/snda/woa/bv;->f:Ljava/lang/String;

    invoke-interface/range {v0 .. v5}, Lcom/snda/woa/android/callback/ChkSmsInterceptCallback;->callBack(ILjava/lang/String;ZLjava/util/Map;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/snda/woa/bv;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/snda/woa/bv;->a(Ljava/lang/String;)V

    return-void
.end method
