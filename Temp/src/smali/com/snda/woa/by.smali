.class public Lcom/snda/woa/by;
.super Landroid/os/AsyncTask;


# instance fields
.field private a:Lcom/snda/woa/android/callback/CustomMobileLoginCallBack;

.field private b:Landroid/content/Context;

.field private c:J

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Lcom/snda/woa/bw;

.field private h:Lcom/snda/woa/bw;

.field private i:Lcom/snda/woa/bw;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Z

.field private m:Z

.field private n:Ljava/util/TimerTask;


# direct methods
.method public constructor <init>(Lcom/snda/woa/android/callback/CustomMobileLoginCallBack;Landroid/content/Context;ZLjava/lang/String;ZLjava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object v0, p0, Lcom/snda/woa/by;->g:Lcom/snda/woa/bw;

    iput-object v0, p0, Lcom/snda/woa/by;->h:Lcom/snda/woa/bw;

    iput-object v0, p0, Lcom/snda/woa/by;->i:Lcom/snda/woa/bw;

    new-instance v0, Lcom/snda/woa/cc;

    invoke-direct {v0, p0}, Lcom/snda/woa/cc;-><init>(Lcom/snda/woa/by;)V

    iput-object v0, p0, Lcom/snda/woa/by;->n:Ljava/util/TimerTask;

    iput-object p1, p0, Lcom/snda/woa/by;->a:Lcom/snda/woa/android/callback/CustomMobileLoginCallBack;

    iput-object p2, p0, Lcom/snda/woa/by;->b:Landroid/content/Context;

    const-string v0, "CustomMobileLoginTask"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mobileNum "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snda/woa/au;->b(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p4, p0, Lcom/snda/woa/by;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/snda/woa/by;->e:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/snda/woa/by;->l:Z

    return-void
.end method

.method static synthetic a(Lcom/snda/woa/by;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/snda/woa/by;->b:Landroid/content/Context;

    return-object v0
.end method

.method private a()V
    .locals 6

    const-wide/16 v2, 0x3e8

    iget-object v0, p0, Lcom/snda/woa/by;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/snda/woa/s;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/snda/woa/by;->m:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snda/woa/by;->m:Z

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iget-object v1, p0, Lcom/snda/woa/by;->n:Ljava/util/TimerTask;

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_0
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

.method static synthetic a(Lcom/snda/woa/by;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/snda/woa/by;->m:Z

    return p1
.end method

.method private b()I
    .locals 12

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/snda/woa/by;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/snda/woa/cn;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CustomMobileLoginTask"

    const-string v1, "\u9700\u8981\u8f93\u5165\u624b\u673a\u53f7\u7801"

    invoke-static {v0, v1}, Lcom/snda/woa/au;->c(Ljava/lang/String;Ljava/lang/String;)I

    const v0, -0xa4cfcd

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/snda/woa/k;->a()Lcom/snda/woa/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snda/woa/k;->b()Lcom/snda/woa/k;

    move-result-object v6

    iget-boolean v0, p0, Lcom/snda/woa/by;->l:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/snda/woa/by;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/snda/woa/cf;->s(Landroid/content/Context;)Lcom/snda/woa/u;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "CustomMobileLoginTask"

    const-string v1, "\u6ca1\u6709\u7528\u4f53\u9a8c\u8d26\u53f7\u767b\u5f55"

    invoke-static {v0, v1}, Lcom/snda/woa/au;->c(Ljava/lang/String;Ljava/lang/String;)I

    const v0, -0xa4cf88

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "w!o2a#r4e%g6i&n8(0)^_-=="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/snda/woa/ax;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/snda/woa/p;->a(Ljava/lang/String;)Lcom/snda/woa/p;

    move-result-object v1

    invoke-virtual {v0}, Lcom/snda/woa/u;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v5}, Lcom/snda/woa/p;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snda/woa/by;->f:Ljava/lang/String;

    :goto_1
    invoke-virtual {v6}, Lcom/snda/woa/k;->c()Lcom/snda/woa/k;

    iget-object v0, p0, Lcom/snda/woa/by;->b:Landroid/content/Context;

    sget v1, Lcom/snda/woa/cm;->a:I

    const-string v2, "105"

    invoke-virtual {v6}, Lcom/snda/woa/k;->d()J

    move-result-wide v3

    invoke-virtual {v6}, Lcom/snda/woa/k;->f()J

    move-result-wide v6

    iget-object v8, p0, Lcom/snda/woa/by;->f:Ljava/lang/String;

    invoke-static/range {v0 .. v8}, Lcom/snda/woa/bw;->a(Landroid/content/Context;ILjava/lang/String;JIJLjava/lang/String;)Lcom/snda/woa/bw;

    move-result-object v0

    iput-object v0, p0, Lcom/snda/woa/by;->h:Lcom/snda/woa/bw;

    invoke-static {}, Lcom/snda/woa/k;->a()Lcom/snda/woa/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snda/woa/k;->b()Lcom/snda/woa/k;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snda/woa/by;->c:J

    iget-object v0, p0, Lcom/snda/woa/by;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/snda/woa/by;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/snda/woa/by;->f:Ljava/lang/String;

    const/4 v3, 0x1

    iget-boolean v4, p0, Lcom/snda/woa/by;->l:Z

    invoke-static {v0, v1, v2, v3, v4}, Lcom/snda/woa/cp;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/snda/woa/cq;

    move-result-object v10

    invoke-virtual {v7}, Lcom/snda/woa/k;->c()Lcom/snda/woa/k;

    new-instance v0, Lcom/snda/woa/bw;

    iget-object v1, p0, Lcom/snda/woa/by;->b:Landroid/content/Context;

    sget v2, Lcom/snda/woa/cm;->a:I

    const-string v3, "110"

    invoke-virtual {v7}, Lcom/snda/woa/k;->d()J

    move-result-wide v4

    iget v6, v10, Lcom/snda/woa/cq;->a:I

    invoke-virtual {v7}, Lcom/snda/woa/k;->f()J

    move-result-wide v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/snda/woa/by;->d:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "|"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, p0, Lcom/snda/woa/by;->f:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "|"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v9, v10, Lcom/snda/woa/cq;->a:I

    if-eqz v9, :cond_3

    iget-object v9, v10, Lcom/snda/woa/cq;->b:Ljava/lang/String;

    :goto_2
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct/range {v0 .. v9}, Lcom/snda/woa/bw;-><init>(Landroid/content/Context;ILjava/lang/String;JIJLjava/lang/String;)V

    iput-object v0, p0, Lcom/snda/woa/by;->i:Lcom/snda/woa/bw;

    iget v0, v10, Lcom/snda/woa/cq;->a:I

    if-eqz v0, :cond_4

    iget-object v0, v10, Lcom/snda/woa/cq;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/snda/woa/by;->k:Ljava/lang/String;

    iget v0, v10, Lcom/snda/woa/cq;->a:I

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/snda/woa/by;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/snda/woa/aw;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snda/woa/by;->f:Ljava/lang/String;

    goto/16 :goto_1

    :cond_3
    const-string v9, "success"

    goto :goto_2

    :cond_4
    const v0, -0xa4cfce

    goto/16 :goto_0
.end method

.method static synthetic b(Lcom/snda/woa/by;)J
    .locals 2

    iget-wide v0, p0, Lcom/snda/woa/by;->c:J

    return-wide v0
.end method

.method static synthetic c(Lcom/snda/woa/by;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/snda/woa/by;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/snda/woa/by;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/snda/woa/by;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/snda/woa/by;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/snda/woa/by;->d:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2

    invoke-static {}, Lcom/snda/woa/bl;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const v0, -0xa4cf7b

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/snda/woa/by;->d:Ljava/lang/String;

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, -0xa4d037

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/snda/woa/by;->d:Ljava/lang/String;

    const-string v1, "-0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, -0xa4d034

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/snda/woa/by;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x9

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lcom/snda/woa/by;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x19

    if-le v0, v1, :cond_4

    :cond_3
    const v0, -0xa4d035

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/snda/woa/by;->b()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method protected a(Ljava/lang/Integer;)V
    .locals 18

    invoke-super/range {p0 .. p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    invoke-static {}, Lcom/snda/woa/bl;->b()V

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const v2, -0xa4cfce

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/snda/woa/by;->f:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/snda/woa/by;->d:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/snda/woa/cr;->a(ZLjava/lang/String;Ljava/lang/String;)V

    :cond_0
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

    new-instance v1, Lcom/snda/woa/bw;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/snda/woa/by;->b:Landroid/content/Context;

    sget v3, Lcom/snda/woa/cm;->a:I

    const-string v4, "0"

    sget-object v5, Lcom/snda/woa/cm;->e:Ljava/util/Date;

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v12, ""

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/snda/woa/by;->j:Ljava/lang/String;

    const-string v14, ""

    const-string v15, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/snda/woa/by;->f:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/snda/woa/by;->d:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-direct/range {v1 .. v17}, Lcom/snda/woa/bw;-><init>(Landroid/content/Context;ILjava/lang/String;JIJILjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/snda/woa/by;->g:Lcom/snda/woa/bw;

    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/snda/woa/by;->g:Lcom/snda/woa/bw;

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/snda/woa/by;->b:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/snda/woa/by;->g:Lcom/snda/woa/bw;

    invoke-static {v1, v2}, Lcom/snda/woa/bc;->a(Landroid/content/Context;Lcom/snda/woa/bw;)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/snda/woa/by;->h:Lcom/snda/woa/bw;

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/snda/woa/by;->h:Lcom/snda/woa/bw;

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/snda/woa/by;->a(Lcom/snda/woa/bw;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/snda/woa/by;->b:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/snda/woa/by;->h:Lcom/snda/woa/bw;

    invoke-static {v1, v2}, Lcom/snda/woa/bc;->a(Landroid/content/Context;Lcom/snda/woa/bw;)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/snda/woa/by;->i:Lcom/snda/woa/bw;

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/snda/woa/by;->i:Lcom/snda/woa/bw;

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/snda/woa/by;->a(Lcom/snda/woa/bw;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/snda/woa/by;->b:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/snda/woa/by;->i:Lcom/snda/woa/bw;

    invoke-static {v1, v2}, Lcom/snda/woa/bc;->a(Landroid/content/Context;Lcom/snda/woa/bw;)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/snda/woa/by;->b:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/snda/woa/bc;->b(Landroid/content/Context;Lcom/snda/woa/bw;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/snda/woa/by;->k:Ljava/lang/String;

    invoke-static {v1}, Lcom/snda/woa/cn;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/snda/woa/android/OpenAPI;->getStatusText(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/snda/woa/by;->k:Ljava/lang/String;

    :cond_5
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const v2, -0xa4cfce

    if-ne v1, v2, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/snda/woa/by;->a:Lcom/snda/woa/android/callback/CustomMobileLoginCallBack;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/snda/woa/by;->k:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/snda/woa/by;->f:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/snda/woa/by;->e:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/snda/woa/android/callback/CustomMobileLoginCallBack;->callBack(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/snda/woa/by;->a()V

    :goto_0
    return-void

    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/snda/woa/by;->a:Lcom/snda/woa/android/callback/CustomMobileLoginCallBack;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/snda/woa/by;->k:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/snda/woa/android/callback/CustomMobileLoginCallBack;->callBack(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "CustomMobileLoginTask"

    const-string v3, "custom mobile login error"

    invoke-static {v2, v3, v1}, Lcom/snda/woa/au;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/snda/woa/by;->a:Lcom/snda/woa/android/callback/CustomMobileLoginCallBack;

    const v2, -0xa4cf6a

    const v3, -0xa4cf6a

    invoke-static {v3}, Lcom/snda/woa/android/OpenAPI;->getStatusText(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/snda/woa/android/callback/CustomMobileLoginCallBack;->callBack(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/snda/woa/by;->a([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/snda/woa/by;->a(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method
