.class public Lcom/snda/woa/cl;
.super Lcom/snda/woa/as;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/snda/woa/android/callback/MobileLoginCallBack;

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Lcom/snda/woa/bw;

.field private f:Lcom/snda/woa/bw;

.field private g:Lcom/snda/woa/bw;

.field private h:Lcom/snda/woa/bw;

.field private i:Lcom/snda/woa/bw;

.field private j:Lcom/snda/woa/bw;

.field private k:Lcom/snda/woa/bw;

.field private l:Lcom/snda/woa/bw;

.field private m:Lcom/snda/woa/bw;

.field private n:Lcom/snda/woa/bw;

.field private o:Lcom/snda/woa/bw;

.field private p:Lcom/snda/woa/bw;

.field private q:Lcom/snda/woa/bw;

.field private r:Z

.field private s:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/snda/woa/android/callback/MobileLoginCallBack;ZZLjava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/snda/woa/as;-><init>()V

    iput-object v0, p0, Lcom/snda/woa/cl;->e:Lcom/snda/woa/bw;

    iput-object v0, p0, Lcom/snda/woa/cl;->f:Lcom/snda/woa/bw;

    iput-object v0, p0, Lcom/snda/woa/cl;->g:Lcom/snda/woa/bw;

    iput-object v0, p0, Lcom/snda/woa/cl;->h:Lcom/snda/woa/bw;

    iput-object v0, p0, Lcom/snda/woa/cl;->i:Lcom/snda/woa/bw;

    iput-object v0, p0, Lcom/snda/woa/cl;->j:Lcom/snda/woa/bw;

    iput-object v0, p0, Lcom/snda/woa/cl;->k:Lcom/snda/woa/bw;

    iput-object v0, p0, Lcom/snda/woa/cl;->l:Lcom/snda/woa/bw;

    iput-object v0, p0, Lcom/snda/woa/cl;->m:Lcom/snda/woa/bw;

    iput-object v0, p0, Lcom/snda/woa/cl;->n:Lcom/snda/woa/bw;

    iput-object v0, p0, Lcom/snda/woa/cl;->o:Lcom/snda/woa/bw;

    iput-object v0, p0, Lcom/snda/woa/cl;->p:Lcom/snda/woa/bw;

    iput-object v0, p0, Lcom/snda/woa/cl;->q:Lcom/snda/woa/bw;

    iput-object p1, p0, Lcom/snda/woa/cl;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/snda/woa/cl;->b:Lcom/snda/woa/android/callback/MobileLoginCallBack;

    iput-boolean p4, p0, Lcom/snda/woa/cl;->c:Z

    iput-object p5, p0, Lcom/snda/woa/cl;->d:Ljava/lang/String;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/snda/woa/cl;->s:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/snda/woa/cl;)Lcom/snda/woa/android/callback/MobileLoginCallBack;
    .locals 1

    iget-object v0, p0, Lcom/snda/woa/cl;->b:Lcom/snda/woa/android/callback/MobileLoginCallBack;

    return-object v0
.end method

.method private a(Landroid/content/Context;ILjava/lang/String;)V
    .locals 11

    invoke-static {}, Lcom/snda/woa/bl;->b()V

    iget-object v0, p0, Lcom/snda/woa/cl;->s:Landroid/os/Handler;

    new-instance v1, Lcom/snda/woa/cg;

    invoke-direct {v1, p0, p2, p3}, Lcom/snda/woa/cg;-><init>(Lcom/snda/woa/cl;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sget-object v2, Lcom/snda/woa/cm;->e:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long v7, v0, v2

    new-instance v0, Lcom/snda/woa/bw;

    iget-object v1, p0, Lcom/snda/woa/cl;->a:Landroid/content/Context;

    const/16 v2, 0x27

    const-string v3, "0"

    sget-object v4, Lcom/snda/woa/cm;->e:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const/4 v9, 0x1

    invoke-static {p3}, Lcom/snda/woa/cn;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move v6, p2

    invoke-direct/range {v0 .. v10}, Lcom/snda/woa/bw;-><init>(Landroid/content/Context;ILjava/lang/String;JIJILjava/lang/String;)V

    iput-object v0, p0, Lcom/snda/woa/cl;->g:Lcom/snda/woa/bw;

    return-void
.end method

.method private a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    invoke-static/range {p5 .. p5}, Lcom/snda/woa/cn;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2}, Lcom/snda/woa/android/OpenAPI;->getStatusText(I)Ljava/lang/String;

    move-result-object p5

    :cond_0
    invoke-static {}, Lcom/snda/woa/bl;->b()V

    if-nez p2, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/snda/woa/cl;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    move-object/from16 v0, p4

    invoke-static {p1, v1, v0, v2}, Lcom/snda/woa/cp;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/snda/woa/cq;

    move-result-object v1

    iget v2, v1, Lcom/snda/woa/cq;->a:I

    invoke-static {v2}, Lcom/snda/woa/android/OpenAPI;->getStatusText(I)Ljava/lang/String;

    move-result-object v3

    if-nez v2, :cond_2

    iget-object v1, v1, Lcom/snda/woa/cq;->b:Ljava/lang/String;

    :goto_0
    iget-object v4, p0, Lcom/snda/woa/cl;->s:Landroid/os/Handler;

    new-instance v5, Lcom/snda/woa/ch;

    invoke-direct {v5, p0, v2, v3, v1}, Lcom/snda/woa/ch;-><init>(Lcom/snda/woa/cl;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-object v7, v1

    :goto_1
    sget v1, Lcom/snda/woa/cm;->a:I

    const/16 v2, 0xf

    if-eq v1, v2, :cond_1

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    sget-object v3, Lcom/snda/woa/cm;->e:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    sub-long v8, v1, v3

    iget-boolean v1, p0, Lcom/snda/woa/cl;->r:Z

    if-eqz v1, :cond_4

    new-instance v1, Lcom/snda/woa/bw;

    iget-object v2, p0, Lcom/snda/woa/cl;->a:Landroid/content/Context;

    const/16 v3, 0x23

    const-string v4, "0"

    sget-object v5, Lcom/snda/woa/cm;->e:Ljava/util/Date;

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    const/4 v10, 0x0

    invoke-static {v7}, Lcom/snda/woa/cn;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move v7, p2

    invoke-direct/range {v1 .. v11}, Lcom/snda/woa/bw;-><init>(Landroid/content/Context;ILjava/lang/String;JIJILjava/lang/String;)V

    iput-object v1, p0, Lcom/snda/woa/cl;->m:Lcom/snda/woa/bw;

    :cond_1
    :goto_2
    return-void

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/snda/woa/cl;->s:Landroid/os/Handler;

    new-instance v3, Lcom/snda/woa/ck;

    move-object/from16 v0, p5

    invoke-direct {v3, p0, p2, v0}, Lcom/snda/woa/ck;-><init>(Lcom/snda/woa/cl;ILjava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-object v7, v1

    goto :goto_1

    :cond_4
    new-instance v1, Lcom/snda/woa/bw;

    iget-object v2, p0, Lcom/snda/woa/cl;->a:Landroid/content/Context;

    const/16 v3, 0x1e

    const-string v4, "0"

    sget-object v5, Lcom/snda/woa/cm;->e:Ljava/util/Date;

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    const/4 v10, 0x0

    invoke-static {v7}, Lcom/snda/woa/cn;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move v7, p2

    invoke-direct/range {v1 .. v11}, Lcom/snda/woa/bw;-><init>(Landroid/content/Context;ILjava/lang/String;JIJILjava/lang/String;)V

    iput-object v1, p0, Lcom/snda/woa/cl;->i:Lcom/snda/woa/bw;

    goto :goto_2
.end method

.method private a(Lcom/snda/woa/bw;)V
    .locals 3

    const/16 v2, 0xf

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v0, Lcom/snda/woa/cm;->a:I

    if-ne v0, v2, :cond_0

    invoke-virtual {p1}, Lcom/snda/woa/bw;->a()I

    move-result v0

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/snda/woa/bw;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "03"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/snda/woa/bw;->a(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p1, v2}, Lcom/snda/woa/bw;->a(I)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/snda/woa/bw;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "05"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/snda/woa/bw;->a(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 13

    invoke-static {}, Lcom/snda/woa/k;->a()Lcom/snda/woa/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snda/woa/k;->b()Lcom/snda/woa/k;

    move-result-object v7

    iget-object v0, p0, Lcom/snda/woa/cl;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/snda/woa/cl;->d:Ljava/lang/String;

    invoke-static {v0, p1, p2, v1}, Lcom/snda/woa/cp;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/snda/woa/cq;

    move-result-object v12

    invoke-virtual {v7}, Lcom/snda/woa/k;->c()Lcom/snda/woa/k;

    const/4 v0, 0x0

    iget v1, v12, Lcom/snda/woa/cq;->a:I

    if-nez v1, :cond_0

    iget-object v0, v12, Lcom/snda/woa/cq;->b:Ljava/lang/String;

    move-object v11, v0

    :goto_0
    new-instance v0, Lcom/snda/woa/bw;

    iget-object v1, p0, Lcom/snda/woa/cl;->a:Landroid/content/Context;

    const/16 v2, 0x21

    const-string v3, "120"

    invoke-virtual {v7}, Lcom/snda/woa/k;->d()J

    move-result-wide v4

    iget v6, v12, Lcom/snda/woa/cq;->a:I

    invoke-virtual {v7}, Lcom/snda/woa/k;->f()J

    move-result-wide v7

    const/4 v9, 0x1

    invoke-static {v11}, Lcom/snda/woa/cn;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct/range {v0 .. v10}, Lcom/snda/woa/bw;-><init>(Landroid/content/Context;ILjava/lang/String;JIJILjava/lang/String;)V

    iput-object v0, p0, Lcom/snda/woa/cl;->h:Lcom/snda/woa/bw;

    iget-object v0, p0, Lcom/snda/woa/cl;->a:Landroid/content/Context;

    iget v1, v12, Lcom/snda/woa/cq;->a:I

    invoke-direct {p0, v0, v1, v11}, Lcom/snda/woa/cl;->b(Landroid/content/Context;ILjava/lang/String;)V

    return-void

    :cond_0
    move-object v11, v0

    goto :goto_0
.end method

.method private b()I
    .locals 21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/snda/woa/cl;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/snda/woa/cf;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/snda/woa/cl;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/snda/woa/cf;->t(Landroid/content/Context;)Lcom/snda/woa/u;

    move-result-object v3

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/snda/woa/cl;->c:Z

    if-eqz v4, :cond_0

    invoke-static {v2}, Lcom/snda/woa/cn;->d(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    sget v2, Lcom/snda/woa/cm;->a:I

    const/16 v4, 0xf

    if-eq v2, v4, :cond_1

    const/16 v2, 0x21

    sput v2, Lcom/snda/woa/cm;->a:I

    :cond_1
    invoke-virtual {v3}, Lcom/snda/woa/u;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Lcom/snda/woa/u;->c()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/snda/woa/cl;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    :goto_0
    return v4

    :cond_2
    invoke-static {v2}, Lcom/snda/woa/cn;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/snda/woa/cl;->a:Landroid/content/Context;

    const v4, -0xa4cf6c

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/snda/woa/cl;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const v4, -0xa4cf6c

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/snda/woa/cl;->c:Z

    if-eqz v2, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    :goto_1
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    const-wide/16 v6, 0x4e20

    cmp-long v4, v4, v6

    if-gez v4, :cond_4

    const-string v4, "1"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/snda/woa/cl;->a:Landroid/content/Context;

    invoke-static {v5}, Lcom/snda/woa/cf;->o(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {}, Lcom/snda/woa/cm;->d()Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "MobileLoginTask"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "VarControlTools.getLoadConfStatus() "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/snda/woa/cm;->f()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/snda/woa/au;->b(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v4, 0x64

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    :cond_4
    const-string v2, "MobileLoginTask"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "VarControlTools.getLoadConfStatus() "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/snda/woa/cm;->f()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/snda/woa/au;->b(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "1"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/snda/woa/cl;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/snda/woa/cf;->o(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v2, 0x27

    sput v2, Lcom/snda/woa/cm;->a:I

    invoke-direct/range {p0 .. p0}, Lcom/snda/woa/cl;->c()V

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_5
    invoke-static {}, Lcom/snda/woa/cm;->f()I

    move-result v2

    const/16 v3, 0x64

    if-eq v2, v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/snda/woa/cl;->a:Landroid/content/Context;

    const v4, -0xa4cf7a

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/snda/woa/cl;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const v4, -0xa4cf7a

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/snda/woa/cl;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/snda/woa/ai;->a(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/snda/woa/cl;->a:Landroid/content/Context;

    const v4, -0xa4cf75

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/snda/woa/cl;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const v4, -0xa4cf75

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/snda/woa/cl;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/snda/woa/ai;->i(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/snda/woa/cl;->a:Landroid/content/Context;

    const v4, -0xa4cf76

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/snda/woa/cl;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const v4, -0xa4cf76

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/snda/woa/cl;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/snda/woa/ai;->g(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/snda/woa/cl;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/snda/woa/ai;->e(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/snda/woa/cl;->a:Landroid/content/Context;

    const v4, -0xa4cf78

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/snda/woa/cl;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const v4, -0xa4cf78

    goto/16 :goto_0

    :cond_9
    const v2, -0xa4cf69

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/snda/woa/cl;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/snda/woa/cf;->j(Landroid/content/Context;)Z

    move-result v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/snda/woa/cl;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/snda/woa/cf;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "MobileLoginTask"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "uuid="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/snda/woa/au;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3}, Lcom/snda/woa/cn;->d(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    if-eqz v4, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/snda/woa/cl;->a:Landroid/content/Context;

    const-string v4, ""

    const-string v5, ""

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Lcom/snda/woa/cp;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/snda/woa/cq;

    move-result-object v2

    iget v2, v2, Lcom/snda/woa/cq;->a:I

    const-string v4, "MobileLoginTask"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "code="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/snda/woa/au;->c(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/snda/woa/ce;->s:Ljava/util/Set;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/snda/woa/cl;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/snda/woa/cf;->m(Landroid/content/Context;)V

    :cond_a
    invoke-static {v3}, Lcom/snda/woa/cn;->c(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-static {}, Lcom/snda/woa/k;->a()Lcom/snda/woa/k;

    move-result-object v2

    invoke-virtual {v2}, Lcom/snda/woa/k;->b()Lcom/snda/woa/k;

    move-result-object v8

    const/4 v2, 0x0

    invoke-static {}, Lcom/snda/woa/cm;->f()I

    move-result v3

    const/16 v4, 0x64

    if-ne v3, v4, :cond_b

    invoke-static {}, Lcom/snda/woa/cf;->a()Lcom/snda/woa/bk;

    move-result-object v2

    :cond_b
    if-eqz v2, :cond_d

    invoke-virtual {v2}, Lcom/snda/woa/bk;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/snda/woa/cn;->d(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual {v2}, Lcom/snda/woa/bk;->a()Ljava/lang/String;

    move-result-object v10

    :goto_2
    invoke-virtual {v8}, Lcom/snda/woa/k;->c()Lcom/snda/woa/k;

    sget v2, Lcom/snda/woa/cm;->a:I

    const/16 v3, 0xf

    if-eq v2, v3, :cond_c

    const/16 v2, 0x1e

    sput v2, Lcom/snda/woa/cm;->a:I

    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/snda/woa/cl;->a:Landroid/content/Context;

    const/16 v3, 0x1e

    const-string v4, "110"

    invoke-virtual {v8}, Lcom/snda/woa/k;->d()J

    move-result-wide v5

    const/4 v7, 0x0

    invoke-virtual {v8}, Lcom/snda/woa/k;->f()J

    move-result-wide v8

    invoke-static/range {v2 .. v10}, Lcom/snda/woa/bw;->a(Landroid/content/Context;ILjava/lang/String;JIJLjava/lang/String;)Lcom/snda/woa/bw;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/snda/woa/cl;->j:Lcom/snda/woa/bw;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/snda/woa/cl;->a:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-static {v2, v10, v3}, Lcom/snda/woa/cp;->a(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/snda/woa/k;->a()Lcom/snda/woa/k;

    move-result-object v3

    invoke-virtual {v3}, Lcom/snda/woa/k;->b()Lcom/snda/woa/k;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/snda/woa/cl;->a:Landroid/content/Context;

    invoke-static {v4, v2}, Lcom/snda/woa/cp;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v17

    invoke-virtual {v3}, Lcom/snda/woa/k;->c()Lcom/snda/woa/k;

    const/16 v4, 0x64

    move/from16 v0, v17

    if-ne v0, v4, :cond_e

    const/4 v4, 0x0

    new-instance v11, Lcom/snda/woa/bw;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/snda/woa/cl;->a:Landroid/content/Context;

    const/16 v13, 0x1e

    const-string v14, "121"

    invoke-virtual {v3}, Lcom/snda/woa/k;->d()J

    move-result-wide v15

    const/16 v17, 0x0

    invoke-virtual {v3}, Lcom/snda/woa/k;->f()J

    move-result-wide v18

    invoke-direct/range {v11 .. v19}, Lcom/snda/woa/bw;-><init>(Landroid/content/Context;ILjava/lang/String;JIJ)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/snda/woa/cl;->k:Lcom/snda/woa/bw;

    :goto_3
    if-eqz v4, :cond_f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/snda/woa/cl;->a:Landroid/content/Context;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/snda/woa/cl;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/snda/woa/cl;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/snda/woa/aw;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    goto :goto_2

    :cond_e
    new-instance v11, Lcom/snda/woa/bw;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/snda/woa/cl;->a:Landroid/content/Context;

    const/16 v13, 0x1e

    const-string v14, "120"

    invoke-virtual {v3}, Lcom/snda/woa/k;->d()J

    move-result-wide v15

    invoke-virtual {v3}, Lcom/snda/woa/k;->f()J

    move-result-wide v18

    invoke-direct/range {v11 .. v19}, Lcom/snda/woa/bw;-><init>(Landroid/content/Context;ILjava/lang/String;JIJ)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/snda/woa/cl;->k:Lcom/snda/woa/bw;

    move/from16 v4, v17

    goto :goto_3

    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/snda/woa/cl;->a:Landroid/content/Context;

    invoke-static {v3, v10}, Lcom/snda/woa/cf;->d(Landroid/content/Context;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/snda/woa/cl;->a:Landroid/content/Context;

    const/4 v5, 0x6

    invoke-static {v3, v5, v10}, Lcom/snda/woa/cf;->a(Landroid/content/Context;ILjava/lang/String;)V

    const-string v3, "MobileLoginTask"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u53d1\u9001\u77ed\u4fe1\u6210\u529f, \u77ed\u4fe1\u5185\u5bb9: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/snda/woa/au;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v10

    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/snda/woa/cl;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/snda/woa/cf;->q(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/snda/woa/cl;->a:Landroid/content/Context;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/snda/woa/cl;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    const v12, -0xa4cf69

    invoke-static {}, Lcom/snda/woa/k;->a()Lcom/snda/woa/k;

    move-result-object v2

    invoke-virtual {v2}, Lcom/snda/woa/k;->b()Lcom/snda/woa/k;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-string v2, "MobileLoginTask"

    const-string v3, "\u51c6\u5907\u767b\u5f55"

    invoke-static {v2, v3}, Lcom/snda/woa/au;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/snda/woa/cl;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/snda/woa/az;->a(Landroid/content/Context;)J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/snda/woa/cl;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/snda/woa/az;->c(Landroid/content/Context;)J

    move-result-wide v10

    new-instance v16, Ljava/util/ArrayList;

    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/snda/woa/cl;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/snda/woa/az;->b(Landroid/content/Context;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_5
    const-string v3, ""

    const-string v2, ""

    :goto_6
    if-eqz v12, :cond_11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/snda/woa/cl;->a:Landroid/content/Context;

    const-string v14, ""

    const-string v17, ""

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-static {v2, v5, v14, v0, v1}, Lcom/snda/woa/cp;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/snda/woa/cq;

    move-result-object v14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    sub-long v12, v19, v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v14, Lcom/snda/woa/cq;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v12, v14, Lcom/snda/woa/cq;->a:I

    iget-object v2, v14, Lcom/snda/woa/cq;->c:Ljava/lang/String;

    if-eqz v12, :cond_11

    sget-object v13, Lcom/snda/woa/ce;->s:Ljava/util/Set;

    iget v14, v14, Lcom/snda/woa/cq;->a:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    sub-long/2addr v13, v6

    cmp-long v13, v13, v8

    if-lez v13, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/snda/woa/cl;->a:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/snda/woa/cl;->a:Landroid/content/Context;

    invoke-static {v6}, Lcom/snda/woa/cf;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/snda/woa/cf;->c(Landroid/content/Context;Ljava/lang/String;)V

    const-string v2, "\u8d85\u65f6"

    :cond_11
    invoke-virtual {v4}, Lcom/snda/woa/k;->c()Lcom/snda/woa/k;

    new-instance v6, Lcom/snda/woa/bw;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/snda/woa/cl;->a:Landroid/content/Context;

    const/16 v8, 0x1e

    const-string v9, "150"

    invoke-virtual {v4}, Lcom/snda/woa/k;->d()J

    move-result-wide v10

    invoke-virtual {v4}, Lcom/snda/woa/k;->f()J

    move-result-wide v13

    invoke-static {v3}, Lcom/snda/woa/cn;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v6 .. v17}, Lcom/snda/woa/bw;-><init>(Landroid/content/Context;ILjava/lang/String;JIJILjava/util/List;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/snda/woa/cl;->l:Lcom/snda/woa/bw;

    if-nez v18, :cond_12

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/snda/woa/cl;->a:Landroid/content/Context;

    const/4 v14, 0x0

    move-object/from16 v10, p0

    move-object v13, v5

    move-object v15, v2

    invoke-direct/range {v10 .. v15}, Lcom/snda/woa/cl;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    move v4, v12

    goto/16 :goto_0

    :cond_13
    add-int/lit8 v15, v15, 0x1

    :try_start_2
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_6

    :catch_1
    move-exception v13

    goto/16 :goto_6

    :catch_2
    move-exception v2

    goto/16 :goto_5

    :cond_14
    move v4, v2

    move-object v5, v3

    goto/16 :goto_4
.end method

.method private b(Landroid/content/Context;ILjava/lang/String;)V
    .locals 11

    invoke-static {}, Lcom/snda/woa/bl;->b()V

    iget-object v0, p0, Lcom/snda/woa/cl;->s:Landroid/os/Handler;

    new-instance v1, Lcom/snda/woa/cj;

    invoke-direct {v1, p0, p2, p3}, Lcom/snda/woa/cj;-><init>(Lcom/snda/woa/cl;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

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

    iget-object v1, p0, Lcom/snda/woa/cl;->a:Landroid/content/Context;

    const/16 v2, 0x21

    const-string v3, "0"

    sget-object v4, Lcom/snda/woa/cm;->e:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const/4 v9, 0x1

    invoke-static {p3}, Lcom/snda/woa/cn;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move v6, p2

    invoke-direct/range {v0 .. v10}, Lcom/snda/woa/bw;-><init>(Landroid/content/Context;ILjava/lang/String;JIJILjava/lang/String;)V

    iput-object v0, p0, Lcom/snda/woa/cl;->g:Lcom/snda/woa/bw;

    :cond_0
    return-void
.end method

.method private b(Lcom/snda/woa/bw;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/snda/woa/cl;->a(Lcom/snda/woa/bw;)V

    iget-object v0, p0, Lcom/snda/woa/cl;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/snda/woa/bc;->a(Landroid/content/Context;Lcom/snda/woa/bw;)V

    :cond_0
    return-void
.end method

.method private c()V
    .locals 13

    invoke-static {}, Lcom/snda/woa/k;->a()Lcom/snda/woa/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snda/woa/k;->b()Lcom/snda/woa/k;

    move-result-object v7

    iget-object v0, p0, Lcom/snda/woa/cl;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/snda/woa/cp;->a(Landroid/content/Context;)Lcom/snda/woa/cq;

    move-result-object v12

    invoke-virtual {v7}, Lcom/snda/woa/k;->c()Lcom/snda/woa/k;

    const/4 v0, 0x0

    iget v1, v12, Lcom/snda/woa/cq;->a:I

    if-nez v1, :cond_0

    iget-object v0, v12, Lcom/snda/woa/cq;->b:Ljava/lang/String;

    move-object v11, v0

    :goto_0
    const-string v0, "MobileLoginTask"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sessionId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snda/woa/au;->b(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/snda/woa/bw;

    iget-object v1, p0, Lcom/snda/woa/cl;->a:Landroid/content/Context;

    const/16 v2, 0x27

    const-string v3, "120"

    invoke-virtual {v7}, Lcom/snda/woa/k;->d()J

    move-result-wide v4

    iget v6, v12, Lcom/snda/woa/cq;->a:I

    invoke-virtual {v7}, Lcom/snda/woa/k;->f()J

    move-result-wide v7

    const/4 v9, 0x1

    invoke-static {v11}, Lcom/snda/woa/cn;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct/range {v0 .. v10}, Lcom/snda/woa/bw;-><init>(Landroid/content/Context;ILjava/lang/String;JIJILjava/lang/String;)V

    iput-object v0, p0, Lcom/snda/woa/cl;->f:Lcom/snda/woa/bw;

    iget-object v0, p0, Lcom/snda/woa/cl;->a:Landroid/content/Context;

    iget v1, v12, Lcom/snda/woa/cq;->a:I

    invoke-direct {p0, v0, v1, v11}, Lcom/snda/woa/cl;->a(Landroid/content/Context;ILjava/lang/String;)V

    return-void

    :cond_0
    move-object v11, v0

    goto :goto_0
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 6

    const v2, -0xa4cf7b

    const/4 v3, 0x0

    invoke-static {}, Lcom/snda/woa/bl;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/snda/woa/cl;->a:Landroid/content/Context;

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/snda/woa/cl;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/snda/woa/cl;->b()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/snda/woa/cr;->a()V

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/snda/woa/cr;->a(Z)V

    goto :goto_1
.end method

.method protected a(Ljava/lang/Integer;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/snda/woa/as;->onPostExecute(Ljava/lang/Object;)V

    invoke-static {}, Lcom/snda/woa/bl;->b()V

    const-string v0, "MobileLoginTask"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mobilelogin onPostExecute code "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snda/woa/au;->c(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/snda/woa/cl;->e:Lcom/snda/woa/bw;

    invoke-direct {p0, v0}, Lcom/snda/woa/cl;->b(Lcom/snda/woa/bw;)V

    iget-object v0, p0, Lcom/snda/woa/cl;->f:Lcom/snda/woa/bw;

    invoke-direct {p0, v0}, Lcom/snda/woa/cl;->b(Lcom/snda/woa/bw;)V

    iget-object v0, p0, Lcom/snda/woa/cl;->g:Lcom/snda/woa/bw;

    invoke-direct {p0, v0}, Lcom/snda/woa/cl;->b(Lcom/snda/woa/bw;)V

    iget-object v0, p0, Lcom/snda/woa/cl;->h:Lcom/snda/woa/bw;

    invoke-direct {p0, v0}, Lcom/snda/woa/cl;->b(Lcom/snda/woa/bw;)V

    iget-object v0, p0, Lcom/snda/woa/cl;->i:Lcom/snda/woa/bw;

    invoke-direct {p0, v0}, Lcom/snda/woa/cl;->b(Lcom/snda/woa/bw;)V

    iget-object v0, p0, Lcom/snda/woa/cl;->j:Lcom/snda/woa/bw;

    invoke-direct {p0, v0}, Lcom/snda/woa/cl;->b(Lcom/snda/woa/bw;)V

    iget-object v0, p0, Lcom/snda/woa/cl;->k:Lcom/snda/woa/bw;

    invoke-direct {p0, v0}, Lcom/snda/woa/cl;->b(Lcom/snda/woa/bw;)V

    iget-object v0, p0, Lcom/snda/woa/cl;->l:Lcom/snda/woa/bw;

    invoke-direct {p0, v0}, Lcom/snda/woa/cl;->b(Lcom/snda/woa/bw;)V

    iget-object v0, p0, Lcom/snda/woa/cl;->m:Lcom/snda/woa/bw;

    invoke-direct {p0, v0}, Lcom/snda/woa/cl;->b(Lcom/snda/woa/bw;)V

    iget-object v0, p0, Lcom/snda/woa/cl;->n:Lcom/snda/woa/bw;

    invoke-direct {p0, v0}, Lcom/snda/woa/cl;->b(Lcom/snda/woa/bw;)V

    iget-object v0, p0, Lcom/snda/woa/cl;->o:Lcom/snda/woa/bw;

    invoke-direct {p0, v0}, Lcom/snda/woa/cl;->b(Lcom/snda/woa/bw;)V

    iget-object v0, p0, Lcom/snda/woa/cl;->p:Lcom/snda/woa/bw;

    invoke-direct {p0, v0}, Lcom/snda/woa/cl;->b(Lcom/snda/woa/bw;)V

    iget-object v0, p0, Lcom/snda/woa/cl;->q:Lcom/snda/woa/bw;

    invoke-direct {p0, v0}, Lcom/snda/woa/cl;->b(Lcom/snda/woa/bw;)V

    iget-object v0, p0, Lcom/snda/woa/cl;->a:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/snda/woa/bc;->b(Landroid/content/Context;Lcom/snda/woa/bw;)V

    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/snda/woa/cl;->a([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/snda/woa/cl;->a(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    invoke-super {p0}, Lcom/snda/woa/as;->onPreExecute()V

    return-void
.end method
