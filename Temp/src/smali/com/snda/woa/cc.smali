.class Lcom/snda/woa/cc;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Lcom/snda/woa/by;


# direct methods
.method constructor <init>(Lcom/snda/woa/by;)V
    .locals 0

    iput-object p1, p0, Lcom/snda/woa/cc;->a:Lcom/snda/woa/by;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/snda/woa/cc;->a:Lcom/snda/woa/by;

    invoke-static {v1}, Lcom/snda/woa/by;->a(Lcom/snda/woa/by;)Landroid/content/Context;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/snda/woa/cc;->a:Lcom/snda/woa/by;

    invoke-static {v2}, Lcom/snda/woa/by;->b(Lcom/snda/woa/by;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/snda/woa/cp;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/snda/woa/cn;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "CustomMobileLoginTask"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "smsCode "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/snda/woa/au;->c(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/snda/woa/cc;->a:Lcom/snda/woa/by;

    invoke-static {v3}, Lcom/snda/woa/by;->b(Lcom/snda/woa/by;)J

    move-result-wide v3

    sub-long v8, v1, v3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/snda/woa/cc;->a:Lcom/snda/woa/by;

    invoke-static {v1}, Lcom/snda/woa/by;->a(Lcom/snda/woa/by;)Landroid/content/Context;

    move-result-object v18

    new-instance v1, Lcom/snda/woa/bw;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/snda/woa/cc;->a:Lcom/snda/woa/by;

    invoke-static {v2}, Lcom/snda/woa/by;->a(Lcom/snda/woa/by;)Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/snda/woa/cm;->a:I

    const-string v4, "130"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/snda/woa/cc;->a:Lcom/snda/woa/by;

    invoke-static {v5}, Lcom/snda/woa/by;->b(Lcom/snda/woa/by;)J

    move-result-wide v5

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v12, ""

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/snda/woa/cc;->a:Lcom/snda/woa/by;

    invoke-static {v15}, Lcom/snda/woa/by;->c(Lcom/snda/woa/by;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, ""

    const-string v15, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/snda/woa/cc;->a:Lcom/snda/woa/by;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/snda/woa/by;->d(Lcom/snda/woa/by;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/snda/woa/cc;->a:Lcom/snda/woa/by;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/snda/woa/by;->e(Lcom/snda/woa/by;)Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v1 .. v17}, Lcom/snda/woa/bw;-><init>(Landroid/content/Context;ILjava/lang/String;JIJILjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-static {v0, v1}, Lcom/snda/woa/bc;->b(Landroid/content/Context;Lcom/snda/woa/bw;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/snda/woa/cc;->a:Lcom/snda/woa/by;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/snda/woa/by;->a(Lcom/snda/woa/by;Z)Z

    invoke-virtual/range {p0 .. p0}, Lcom/snda/woa/cc;->cancel()Z

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/snda/woa/cc;->a:Lcom/snda/woa/by;

    invoke-static {v3}, Lcom/snda/woa/by;->b(Lcom/snda/woa/by;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x1b7740

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/snda/woa/cc;->a:Lcom/snda/woa/by;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/snda/woa/by;->a(Lcom/snda/woa/by;Z)Z

    invoke-virtual/range {p0 .. p0}, Lcom/snda/woa/cc;->cancel()Z

    :cond_1
    return-void
.end method
