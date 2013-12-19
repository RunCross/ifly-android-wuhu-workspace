.class public Lcom/snda/woa/bf;
.super Lcom/snda/woa/as;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/snda/woa/android/callback/CustomMobileLoginCallBack;

.field private e:Lcom/snda/woa/bw;

.field private f:Lcom/snda/woa/bw;

.field private g:Ljava/lang/String;

.field private h:Landroid/os/Handler;

.field private i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Lcom/snda/woa/android/callback/CustomMobileLoginCallBack;Z)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/snda/woa/as;-><init>()V

    iput-object v0, p0, Lcom/snda/woa/bf;->e:Lcom/snda/woa/bw;

    iput-object v0, p0, Lcom/snda/woa/bf;->f:Lcom/snda/woa/bw;

    iput-object p1, p0, Lcom/snda/woa/bf;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/snda/woa/bf;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/snda/woa/bf;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/snda/woa/bf;->d:Lcom/snda/woa/android/callback/CustomMobileLoginCallBack;

    iput-boolean p6, p0, Lcom/snda/woa/bf;->i:Z

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/snda/woa/bf;->h:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/snda/woa/bf;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/snda/woa/bf;->c:Ljava/lang/String;

    return-object v0
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

    const-string v1, "04"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/snda/woa/bw;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private b()Lcom/snda/woa/cq;
    .locals 11

    iget-boolean v0, p0, Lcom/snda/woa/bf;->i:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/snda/woa/bf;->c()V

    :cond_0
    invoke-static {}, Lcom/snda/woa/k;->a()Lcom/snda/woa/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snda/woa/k;->b()Lcom/snda/woa/k;

    move-result-object v7

    iget-object v0, p0, Lcom/snda/woa/bf;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/snda/woa/bf;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/snda/woa/bf;->b:Ljava/lang/String;

    const-string v3, ""

    iget-boolean v4, p0, Lcom/snda/woa/bf;->i:Z

    invoke-static {v0, v1, v2, v3, v4}, Lcom/snda/woa/cp;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/snda/woa/cq;

    move-result-object v10

    invoke-virtual {v7}, Lcom/snda/woa/k;->c()Lcom/snda/woa/k;

    new-instance v0, Lcom/snda/woa/bw;

    iget-object v1, p0, Lcom/snda/woa/bf;->a:Landroid/content/Context;

    sget v2, Lcom/snda/woa/cm;->a:I

    const-string v3, "120"

    invoke-virtual {v7}, Lcom/snda/woa/k;->d()J

    move-result-wide v4

    iget v6, v10, Lcom/snda/woa/cq;->a:I

    invoke-virtual {v7}, Lcom/snda/woa/k;->e()J

    move-result-wide v7

    iget v9, v10, Lcom/snda/woa/cq;->a:I

    if-eqz v9, :cond_1

    iget-object v9, v10, Lcom/snda/woa/cq;->b:Ljava/lang/String;

    :goto_0
    invoke-direct/range {v0 .. v9}, Lcom/snda/woa/bw;-><init>(Landroid/content/Context;ILjava/lang/String;JIJLjava/lang/String;)V

    iput-object v0, p0, Lcom/snda/woa/bf;->f:Lcom/snda/woa/bw;

    return-object v10

    :cond_1
    const-string v9, ""

    goto :goto_0
.end method

.method static synthetic b(Lcom/snda/woa/bf;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/snda/woa/bf;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/snda/woa/bf;)Lcom/snda/woa/android/callback/CustomMobileLoginCallBack;
    .locals 1

    iget-object v0, p0, Lcom/snda/woa/bf;->d:Lcom/snda/woa/android/callback/CustomMobileLoginCallBack;

    return-object v0
.end method

.method private c()V
    .locals 11

    invoke-static {}, Lcom/snda/woa/bl;->b()V

    iget-object v0, p0, Lcom/snda/woa/bf;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/snda/woa/bf;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/snda/woa/bf;->b:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/snda/woa/cp;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/snda/woa/cq;

    move-result-object v0

    iget v6, v0, Lcom/snda/woa/cq;->a:I

    if-nez v6, :cond_0

    iget-object v0, v0, Lcom/snda/woa/cq;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/snda/woa/bf;->g:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/snda/woa/bf;->h:Landroid/os/Handler;

    new-instance v1, Lcom/snda/woa/j;

    invoke-direct {v1, p0, v6}, Lcom/snda/woa/j;-><init>(Lcom/snda/woa/bf;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget v0, Lcom/snda/woa/cm;->a:I

    const/16 v1, 0xf

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sget-object v2, Lcom/snda/woa/cm;->e:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long v7, v0, v2

    new-instance v0, Lcom/snda/woa/bw;

    iget-object v1, p0, Lcom/snda/woa/bf;->a:Landroid/content/Context;

    sget v2, Lcom/snda/woa/cm;->a:I

    const-string v3, "0"

    sget-object v4, Lcom/snda/woa/cm;->e:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/snda/woa/bf;->g:Ljava/lang/String;

    invoke-static {v10}, Lcom/snda/woa/cn;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct/range {v0 .. v10}, Lcom/snda/woa/bw;-><init>(Landroid/content/Context;ILjava/lang/String;JIJILjava/lang/String;)V

    iput-object v0, p0, Lcom/snda/woa/bf;->e:Lcom/snda/woa/bw;

    :cond_1
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Lcom/snda/woa/cq;
    .locals 2

    invoke-static {}, Lcom/snda/woa/bl;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snda/woa/bf;->h:Landroid/os/Handler;

    new-instance v1, Lcom/snda/woa/g;

    invoke-direct {v1, p0}, Lcom/snda/woa/g;-><init>(Lcom/snda/woa/bf;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    new-instance v0, Lcom/snda/woa/cq;

    const v1, -0xa4cf7b

    invoke-direct {v0, v1}, Lcom/snda/woa/cq;-><init>(I)V

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/snda/woa/bf;->b()Lcom/snda/woa/cq;

    move-result-object v0

    goto :goto_0
.end method

.method protected a(Lcom/snda/woa/cq;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/snda/woa/as;->onPostExecute(Ljava/lang/Object;)V

    invoke-static {}, Lcom/snda/woa/bl;->b()V

    iget-object v0, p0, Lcom/snda/woa/bf;->e:Lcom/snda/woa/bw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snda/woa/bf;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/snda/woa/bf;->e:Lcom/snda/woa/bw;

    invoke-static {v0, v1}, Lcom/snda/woa/bc;->a(Landroid/content/Context;Lcom/snda/woa/bw;)V

    :cond_0
    iget-object v0, p0, Lcom/snda/woa/bf;->f:Lcom/snda/woa/bw;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/snda/woa/bf;->f:Lcom/snda/woa/bw;

    invoke-direct {p0, v0}, Lcom/snda/woa/bf;->a(Lcom/snda/woa/bw;)V

    iget-object v0, p0, Lcom/snda/woa/bf;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/snda/woa/bf;->f:Lcom/snda/woa/bw;

    invoke-static {v0, v1}, Lcom/snda/woa/bc;->a(Landroid/content/Context;Lcom/snda/woa/bw;)V

    :cond_1
    iget-object v0, p0, Lcom/snda/woa/bf;->a:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/snda/woa/bc;->b(Landroid/content/Context;Lcom/snda/woa/bw;)V

    iget-boolean v0, p0, Lcom/snda/woa/bf;->i:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/snda/woa/bf;->d:Lcom/snda/woa/android/callback/CustomMobileLoginCallBack;

    iget v1, p1, Lcom/snda/woa/cq;->a:I

    iget-object v2, p1, Lcom/snda/woa/cq;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3, v3}, Lcom/snda/woa/android/callback/CustomMobileLoginCallBack;->callBack(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/snda/woa/bf;->a([Ljava/lang/String;)Lcom/snda/woa/cq;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/snda/woa/cq;

    invoke-virtual {p0, p1}, Lcom/snda/woa/bf;->a(Lcom/snda/woa/cq;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    invoke-super {p0}, Lcom/snda/woa/as;->onPreExecute()V

    return-void
.end method
