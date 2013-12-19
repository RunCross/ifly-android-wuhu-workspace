.class public Lcom/snda/woa/bg;
.super Landroid/os/AsyncTask;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/snda/woa/android/callback/PwdLoginCallBack;

.field private c:Z

.field private d:Z

.field private e:Lcom/snda/woa/f;

.field private f:Lcom/snda/woa/bw;

.field private g:Lcom/snda/woa/bw;

.field private h:Lcom/snda/woa/bw;

.field private i:Lcom/snda/woa/bw;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLcom/snda/woa/android/callback/PwdLoginCallBack;ZZZLcom/snda/woa/f;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object v0, p0, Lcom/snda/woa/bg;->e:Lcom/snda/woa/f;

    iput-object v0, p0, Lcom/snda/woa/bg;->f:Lcom/snda/woa/bw;

    iput-object v0, p0, Lcom/snda/woa/bg;->g:Lcom/snda/woa/bw;

    iput-object v0, p0, Lcom/snda/woa/bg;->h:Lcom/snda/woa/bw;

    iput-object v0, p0, Lcom/snda/woa/bg;->i:Lcom/snda/woa/bw;

    iput-object p1, p0, Lcom/snda/woa/bg;->a:Landroid/content/Context;

    iput-object p7, p0, Lcom/snda/woa/bg;->e:Lcom/snda/woa/f;

    iput-object p3, p0, Lcom/snda/woa/bg;->b:Lcom/snda/woa/android/callback/PwdLoginCallBack;

    iput-boolean p4, p0, Lcom/snda/woa/bg;->c:Z

    iput-boolean p5, p0, Lcom/snda/woa/bg;->d:Z

    return-void
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

    const-string v1, "01"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/snda/woa/bw;->a(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Lcom/snda/woa/bm;
    .locals 2

    invoke-static {}, Lcom/snda/woa/bl;->a()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/snda/woa/bm;

    const v1, -0xa4cf7b

    invoke-direct {v0, v1}, Lcom/snda/woa/bm;-><init>(I)V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/snda/woa/bg;->e:Lcom/snda/woa/f;

    invoke-virtual {v0}, Lcom/snda/woa/f;->a()Lcom/snda/woa/bm;

    move-result-object v0

    goto :goto_0
.end method

.method protected a(Lcom/snda/woa/bm;)V
    .locals 13

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    invoke-static {}, Lcom/snda/woa/bl;->b()V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sget-object v2, Lcom/snda/woa/cm;->e:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long v7, v0, v2

    iget-boolean v0, p0, Lcom/snda/woa/bg;->c:Z

    if-eqz v0, :cond_4

    new-instance v0, Lcom/snda/woa/bw;

    iget-object v1, p0, Lcom/snda/woa/bg;->a:Landroid/content/Context;

    sget v2, Lcom/snda/woa/cm;->a:I

    const-string v3, "130"

    sget-object v4, Lcom/snda/woa/cm;->e:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    iget v6, p1, Lcom/snda/woa/bm;->a:I

    const/4 v9, 0x1

    iget-object v10, p1, Lcom/snda/woa/bm;->e:Ljava/lang/String;

    iget-object v11, p1, Lcom/snda/woa/bm;->c:Ljava/lang/String;

    iget-object v12, p1, Lcom/snda/woa/bm;->d:Ljava/lang/String;

    invoke-direct/range {v0 .. v12}, Lcom/snda/woa/bw;-><init>(Landroid/content/Context;ILjava/lang/String;JIJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/snda/woa/bg;->h:Lcom/snda/woa/bw;

    :goto_0
    new-instance v0, Lcom/snda/woa/bw;

    iget-object v1, p0, Lcom/snda/woa/bg;->a:Landroid/content/Context;

    sget v2, Lcom/snda/woa/cm;->a:I

    const-string v3, "0"

    sget-object v4, Lcom/snda/woa/cm;->e:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    iget v6, p1, Lcom/snda/woa/bm;->a:I

    const/4 v9, 0x1

    iget-object v10, p1, Lcom/snda/woa/bm;->e:Ljava/lang/String;

    iget-object v11, p1, Lcom/snda/woa/bm;->c:Ljava/lang/String;

    iget-object v12, p1, Lcom/snda/woa/bm;->d:Ljava/lang/String;

    invoke-direct/range {v0 .. v12}, Lcom/snda/woa/bw;-><init>(Landroid/content/Context;ILjava/lang/String;JIJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/snda/woa/bg;->f:Lcom/snda/woa/bw;

    iget-object v0, p0, Lcom/snda/woa/bg;->f:Lcom/snda/woa/bw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snda/woa/bg;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/snda/woa/bg;->f:Lcom/snda/woa/bw;

    invoke-static {v0, v1}, Lcom/snda/woa/bc;->a(Landroid/content/Context;Lcom/snda/woa/bw;)V

    :cond_0
    iget-object v0, p0, Lcom/snda/woa/bg;->g:Lcom/snda/woa/bw;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/snda/woa/bg;->g:Lcom/snda/woa/bw;

    invoke-direct {p0, v0}, Lcom/snda/woa/bg;->a(Lcom/snda/woa/bw;)V

    iget-object v0, p0, Lcom/snda/woa/bg;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/snda/woa/bg;->g:Lcom/snda/woa/bw;

    invoke-static {v0, v1}, Lcom/snda/woa/bc;->a(Landroid/content/Context;Lcom/snda/woa/bw;)V

    :cond_1
    iget-object v0, p0, Lcom/snda/woa/bg;->h:Lcom/snda/woa/bw;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/snda/woa/bg;->h:Lcom/snda/woa/bw;

    invoke-direct {p0, v0}, Lcom/snda/woa/bg;->a(Lcom/snda/woa/bw;)V

    iget-object v0, p0, Lcom/snda/woa/bg;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/snda/woa/bg;->h:Lcom/snda/woa/bw;

    invoke-static {v0, v1}, Lcom/snda/woa/bc;->a(Landroid/content/Context;Lcom/snda/woa/bw;)V

    :cond_2
    iget-object v0, p0, Lcom/snda/woa/bg;->i:Lcom/snda/woa/bw;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/snda/woa/bg;->i:Lcom/snda/woa/bw;

    invoke-direct {p0, v0}, Lcom/snda/woa/bg;->a(Lcom/snda/woa/bw;)V

    iget-object v0, p0, Lcom/snda/woa/bg;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/snda/woa/bg;->i:Lcom/snda/woa/bw;

    invoke-static {v0, v1}, Lcom/snda/woa/bc;->a(Landroid/content/Context;Lcom/snda/woa/bw;)V

    :cond_3
    iget-object v0, p0, Lcom/snda/woa/bg;->a:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/snda/woa/bc;->b(Landroid/content/Context;Lcom/snda/woa/bw;)V

    :try_start_0
    iget v0, p1, Lcom/snda/woa/bm;->a:I

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/snda/woa/bg;->a:Landroid/content/Context;

    iget-object v1, p1, Lcom/snda/woa/bm;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/snda/woa/cp;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/snda/woa/cq;

    move-result-object v0

    iget-object v1, p0, Lcom/snda/woa/bg;->b:Lcom/snda/woa/android/callback/PwdLoginCallBack;

    iget v2, v0, Lcom/snda/woa/cq;->a:I

    iget v3, v0, Lcom/snda/woa/cq;->a:I

    invoke-static {v3}, Lcom/snda/woa/android/OpenAPI;->getStatusText(I)Ljava/lang/String;

    move-result-object v3

    iget v4, v0, Lcom/snda/woa/cq;->a:I

    if-nez v4, :cond_6

    iget-object v0, v0, Lcom/snda/woa/cq;->b:Ljava/lang/String;

    :goto_1
    invoke-interface {v1, v2, v3, v0}, Lcom/snda/woa/android/callback/PwdLoginCallBack;->callBack(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return-void

    :cond_4
    iget-boolean v0, p0, Lcom/snda/woa/bg;->d:Z

    if-eqz v0, :cond_5

    new-instance v0, Lcom/snda/woa/bw;

    iget-object v1, p0, Lcom/snda/woa/bg;->a:Landroid/content/Context;

    sget v2, Lcom/snda/woa/cm;->a:I

    const-string v3, "120"

    sget-object v4, Lcom/snda/woa/cm;->e:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    iget v6, p1, Lcom/snda/woa/bm;->a:I

    const/4 v9, 0x1

    iget-object v10, p1, Lcom/snda/woa/bm;->e:Ljava/lang/String;

    iget-object v11, p1, Lcom/snda/woa/bm;->c:Ljava/lang/String;

    iget-object v12, p1, Lcom/snda/woa/bm;->d:Ljava/lang/String;

    invoke-direct/range {v0 .. v12}, Lcom/snda/woa/bw;-><init>(Landroid/content/Context;ILjava/lang/String;JIJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/snda/woa/bg;->i:Lcom/snda/woa/bw;

    goto/16 :goto_0

    :cond_5
    new-instance v0, Lcom/snda/woa/bw;

    iget-object v1, p0, Lcom/snda/woa/bg;->a:Landroid/content/Context;

    sget v2, Lcom/snda/woa/cm;->a:I

    const-string v3, "110"

    sget-object v4, Lcom/snda/woa/cm;->e:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    iget v6, p1, Lcom/snda/woa/bm;->a:I

    const/4 v9, 0x1

    iget-object v10, p1, Lcom/snda/woa/bm;->e:Ljava/lang/String;

    iget-object v11, p1, Lcom/snda/woa/bm;->c:Ljava/lang/String;

    iget-object v12, p1, Lcom/snda/woa/bm;->d:Ljava/lang/String;

    invoke-direct/range {v0 .. v12}, Lcom/snda/woa/bw;-><init>(Landroid/content/Context;ILjava/lang/String;JIJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/snda/woa/bg;->g:Lcom/snda/woa/bw;

    goto/16 :goto_0

    :cond_6
    const/4 v0, 0x0

    goto :goto_1

    :cond_7
    :try_start_1
    iget v0, p1, Lcom/snda/woa/bm;->a:I

    const v1, -0xa4cf86

    if-ne v0, v1, :cond_9

    iget-object v0, p1, Lcom/snda/woa/bm;->b:Ljava/lang/String;

    if-nez v0, :cond_8

    iget v0, p1, Lcom/snda/woa/bm;->a:I

    invoke-static {v0}, Lcom/snda/woa/android/OpenAPI;->getStatusText(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/snda/woa/bm;->b:Ljava/lang/String;

    :goto_3
    iget-object v0, p0, Lcom/snda/woa/bg;->b:Lcom/snda/woa/android/callback/PwdLoginCallBack;

    iget v1, p1, Lcom/snda/woa/bm;->a:I

    iget-object v2, p1, Lcom/snda/woa/bm;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/snda/woa/bm;->e:Ljava/lang/String;

    iget-object v4, p1, Lcom/snda/woa/bm;->f:[Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/snda/woa/android/callback/PwdLoginCallBack;->eCardCallBack(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v1, "PtLoginTask"

    const-string v2, "error"

    invoke-static {v1, v2, v0}, Lcom/snda/woa/au;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/snda/woa/bg;->b:Lcom/snda/woa/android/callback/PwdLoginCallBack;

    const v1, -0xa4cf6a

    const v2, -0xa4cf6a

    invoke-static {v2}, Lcom/snda/woa/android/OpenAPI;->getStatusText(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/snda/woa/android/callback/PwdLoginCallBack;->callBack(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    :try_start_2
    iget v0, p1, Lcom/snda/woa/bm;->a:I

    add-int/lit16 v0, v0, -0x384

    iput v0, p1, Lcom/snda/woa/bm;->a:I

    goto :goto_3

    :cond_9
    iget v0, p1, Lcom/snda/woa/bm;->a:I

    const v1, -0xa4cf7c

    if-eq v0, v1, :cond_a

    iget v0, p1, Lcom/snda/woa/bm;->a:I

    const v1, -0xa4cf72

    if-ne v0, v1, :cond_d

    :cond_a
    iget v0, p1, Lcom/snda/woa/bm;->a:I

    const v1, -0xa4cf7c

    if-ne v0, v1, :cond_b

    iget-object v0, p1, Lcom/snda/woa/bm;->h:Ljava/lang/String;

    :goto_4
    iget-object v1, p1, Lcom/snda/woa/bm;->b:Ljava/lang/String;

    if-nez v1, :cond_c

    iget v1, p1, Lcom/snda/woa/bm;->a:I

    invoke-static {v1}, Lcom/snda/woa/android/OpenAPI;->getStatusText(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/snda/woa/bm;->b:Ljava/lang/String;

    :goto_5
    iget-object v1, p0, Lcom/snda/woa/bg;->b:Lcom/snda/woa/android/callback/PwdLoginCallBack;

    iget v2, p1, Lcom/snda/woa/bm;->a:I

    iget-object v3, p1, Lcom/snda/woa/bm;->b:Ljava/lang/String;

    iget-object v4, p1, Lcom/snda/woa/bm;->e:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/snda/woa/android/callback/PwdLoginCallBack;->eKeyCallBack(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_b
    iget-object v0, p1, Lcom/snda/woa/bm;->g:Ljava/lang/String;

    goto :goto_4

    :cond_c
    iget v1, p1, Lcom/snda/woa/bm;->a:I

    add-int/lit16 v1, v1, -0x384

    iput v1, p1, Lcom/snda/woa/bm;->a:I

    goto :goto_5

    :cond_d
    iget v0, p1, Lcom/snda/woa/bm;->a:I

    const v1, -0xa4cf90

    if-ne v0, v1, :cond_f

    iget-object v0, p1, Lcom/snda/woa/bm;->b:Ljava/lang/String;

    if-nez v0, :cond_e

    iget v0, p1, Lcom/snda/woa/bm;->a:I

    invoke-static {v0}, Lcom/snda/woa/android/OpenAPI;->getStatusText(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/snda/woa/bm;->b:Ljava/lang/String;

    :goto_6
    iget-object v0, p0, Lcom/snda/woa/bg;->b:Lcom/snda/woa/android/callback/PwdLoginCallBack;

    iget v1, p1, Lcom/snda/woa/bm;->a:I

    iget-object v2, p1, Lcom/snda/woa/bm;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/snda/woa/bm;->e:Ljava/lang/String;

    iget-object v4, p1, Lcom/snda/woa/bm;->i:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/snda/woa/android/callback/PwdLoginCallBack;->verifyCodeCallBack(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_e
    iget v0, p1, Lcom/snda/woa/bm;->a:I

    add-int/lit16 v0, v0, -0x384

    iput v0, p1, Lcom/snda/woa/bm;->a:I

    goto :goto_6

    :cond_f
    iget-object v0, p1, Lcom/snda/woa/bm;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget v0, p1, Lcom/snda/woa/bm;->a:I

    invoke-static {v0}, Lcom/snda/woa/android/OpenAPI;->getStatusText(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/snda/woa/bm;->b:Ljava/lang/String;

    :cond_10
    iget-object v0, p0, Lcom/snda/woa/bg;->b:Lcom/snda/woa/android/callback/PwdLoginCallBack;

    iget v1, p1, Lcom/snda/woa/bm;->a:I

    iget-object v2, p1, Lcom/snda/woa/bm;->b:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/snda/woa/android/callback/PwdLoginCallBack;->callBack(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/snda/woa/bg;->a([Ljava/lang/String;)Lcom/snda/woa/bm;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/snda/woa/bm;

    invoke-virtual {p0, p1}, Lcom/snda/woa/bg;->a(Lcom/snda/woa/bm;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method
