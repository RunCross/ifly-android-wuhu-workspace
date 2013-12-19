.class public Lcom/snda/woa/ad;
.super Landroid/os/AsyncTask;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/snda/woa/android/callback/AutoLoginCallBack;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lcom/snda/woa/bw;

.field private f:Lcom/snda/woa/bw;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLcom/snda/woa/android/callback/AutoLoginCallBack;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object v0, p0, Lcom/snda/woa/ad;->e:Lcom/snda/woa/bw;

    iput-object v0, p0, Lcom/snda/woa/ad;->f:Lcom/snda/woa/bw;

    iput-object p1, p0, Lcom/snda/woa/ad;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/snda/woa/ad;->b:Lcom/snda/woa/android/callback/AutoLoginCallBack;

    iput-object p4, p0, Lcom/snda/woa/ad;->c:Ljava/lang/String;

    return-void
.end method

.method private a()I
    .locals 12

    const v0, -0xa4cf6d

    iget-object v1, p0, Lcom/snda/woa/ad;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/snda/woa/cm;->b(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/snda/woa/ad;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/snda/woa/cf;->r(Landroid/content/Context;)Lcom/snda/woa/u;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/snda/woa/k;->a()Lcom/snda/woa/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snda/woa/k;->b()Lcom/snda/woa/k;

    move-result-object v7

    iget-object v0, p0, Lcom/snda/woa/ad;->a:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/snda/woa/u;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/snda/woa/u;->c()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/snda/woa/ad;->c:Ljava/lang/String;

    invoke-static {v0, v2, v1, v3}, Lcom/snda/woa/cp;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/snda/woa/cq;

    move-result-object v11

    invoke-virtual {v7}, Lcom/snda/woa/k;->c()Lcom/snda/woa/k;

    iget v0, v11, Lcom/snda/woa/cq;->a:I

    if-nez v0, :cond_2

    iget-object v0, v11, Lcom/snda/woa/cq;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/snda/woa/ad;->d:Ljava/lang/String;

    :cond_2
    new-instance v0, Lcom/snda/woa/bw;

    iget-object v1, p0, Lcom/snda/woa/ad;->a:Landroid/content/Context;

    sget v2, Lcom/snda/woa/cm;->a:I

    const-string v3, "120"

    invoke-virtual {v7}, Lcom/snda/woa/k;->d()J

    move-result-wide v4

    iget-object v6, p0, Lcom/snda/woa/ad;->d:Ljava/lang/String;

    invoke-static {v6}, Lcom/snda/woa/cn;->b(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v6, -0x1

    :goto_1
    invoke-virtual {v7}, Lcom/snda/woa/k;->f()J

    move-result-wide v7

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/snda/woa/ad;->d:Ljava/lang/String;

    invoke-static {v10}, Lcom/snda/woa/cn;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct/range {v0 .. v10}, Lcom/snda/woa/bw;-><init>(Landroid/content/Context;ILjava/lang/String;JIJILjava/lang/String;)V

    iput-object v0, p0, Lcom/snda/woa/ad;->f:Lcom/snda/woa/bw;

    iget v0, v11, Lcom/snda/woa/cq;->a:I

    goto :goto_0

    :cond_3
    const/4 v6, 0x0

    goto :goto_1
.end method

.method private a(Lcom/snda/woa/bw;)V
    .locals 2

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v0, Lcom/snda/woa/cm;->a:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/snda/woa/bw;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "02"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/snda/woa/bw;->a(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2

    const-string v0, "E"

    const-string v1, "backg"

    invoke-static {v0, v1}, Lcom/snda/woa/au;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/snda/woa/bl;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const v0, -0xa4cf7b

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/snda/woa/ad;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method protected a(Ljava/lang/Integer;)V
    .locals 12

    const/4 v11, 0x0

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    invoke-static {}, Lcom/snda/woa/bl;->b()V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/snda/woa/ad;->b:Lcom/snda/woa/android/callback/AutoLoginCallBack;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/snda/woa/android/OpenAPI;->getStatusText(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/snda/woa/ad;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/snda/woa/android/callback/AutoLoginCallBack;->callBack(ILjava/lang/String;Ljava/lang/String;)V

    :goto_0
    sget v0, Lcom/snda/woa/cm;->a:I

    const/16 v1, 0xf

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sget-object v2, Lcom/snda/woa/cm;->e:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long v7, v0, v2

    new-instance v0, Lcom/snda/woa/bw;

    iget-object v1, p0, Lcom/snda/woa/ad;->a:Landroid/content/Context;

    sget v2, Lcom/snda/woa/cm;->a:I

    const-string v3, "0"

    sget-object v4, Lcom/snda/woa/cm;->e:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/snda/woa/ad;->d:Ljava/lang/String;

    invoke-static {v10}, Lcom/snda/woa/cn;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct/range {v0 .. v10}, Lcom/snda/woa/bw;-><init>(Landroid/content/Context;ILjava/lang/String;JIJILjava/lang/String;)V

    iput-object v0, p0, Lcom/snda/woa/ad;->e:Lcom/snda/woa/bw;

    :cond_0
    iget-object v0, p0, Lcom/snda/woa/ad;->e:Lcom/snda/woa/bw;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/snda/woa/ad;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/snda/woa/ad;->e:Lcom/snda/woa/bw;

    invoke-static {v0, v1}, Lcom/snda/woa/bc;->a(Landroid/content/Context;Lcom/snda/woa/bw;)V

    :cond_1
    iget-object v0, p0, Lcom/snda/woa/ad;->f:Lcom/snda/woa/bw;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/snda/woa/ad;->f:Lcom/snda/woa/bw;

    invoke-direct {p0, v0}, Lcom/snda/woa/ad;->a(Lcom/snda/woa/bw;)V

    iget-object v0, p0, Lcom/snda/woa/ad;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/snda/woa/ad;->f:Lcom/snda/woa/bw;

    invoke-static {v0, v1}, Lcom/snda/woa/bc;->a(Landroid/content/Context;Lcom/snda/woa/bw;)V

    :cond_2
    iget-object v0, p0, Lcom/snda/woa/ad;->a:Landroid/content/Context;

    invoke-static {v0, v11}, Lcom/snda/woa/bc;->b(Landroid/content/Context;Lcom/snda/woa/bw;)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/snda/woa/ad;->b:Lcom/snda/woa/android/callback/AutoLoginCallBack;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/snda/woa/android/OpenAPI;->getStatusText(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, v11}, Lcom/snda/woa/android/callback/AutoLoginCallBack;->callBack(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/snda/woa/ad;->a([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/snda/woa/ad;->a(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    const-string v0, "E"

    const-string v1, "pre"

    invoke-static {v0, v1}, Lcom/snda/woa/au;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
