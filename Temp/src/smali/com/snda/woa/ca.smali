.class public final Lcom/snda/woa/ca;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Z

.field final synthetic c:Lcom/snda/woa/android/callback/AutoLoginCallBack;

.field final synthetic d:Z

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLcom/snda/woa/android/callback/AutoLoginCallBack;ZLjava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/snda/woa/ca;->a:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/snda/woa/ca;->b:Z

    iput-object p3, p0, Lcom/snda/woa/ca;->c:Lcom/snda/woa/android/callback/AutoLoginCallBack;

    iput-boolean p4, p0, Lcom/snda/woa/ca;->d:Z

    iput-object p5, p0, Lcom/snda/woa/ca;->e:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/snda/woa/ca;->f:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/snda/woa/ca;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/snda/woa/cf;->h(Landroid/content/Context;)Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/snda/woa/ca;->b:Z

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/snda/woa/ca;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/snda/woa/cm;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "OpenAPI"

    const-string v2, "pwdauto"

    invoke-static {v1, v2}, Lcom/snda/woa/au;->b(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/snda/woa/l;->a()V

    const/16 v1, 0x192

    sput v1, Lcom/snda/woa/cm;->a:I

    new-instance v10, Lcom/snda/woa/aa;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/snda/woa/ca;->c:Lcom/snda/woa/android/callback/AutoLoginCallBack;

    invoke-direct {v10, v1}, Lcom/snda/woa/aa;-><init>(Lcom/snda/woa/android/callback/AutoLoginCallBack;)V

    new-instance v11, Lcom/snda/woa/bg;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/snda/woa/ca;->a:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/snda/woa/ca;->d:Z

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    new-instance v1, Lcom/snda/woa/f;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/snda/woa/ca;->d:Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/snda/woa/ca;->a:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/snda/woa/ca;->e:Ljava/lang/String;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v1 .. v9}, Lcom/snda/woa/f;-><init>(Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;Ljava/lang/String;ZZZ)V

    move-object v2, v11

    move-object v3, v12

    move v4, v13

    move-object v5, v10

    move v6, v14

    move v7, v15

    move/from16 v8, v16

    move-object v9, v1

    invoke-direct/range {v2 .. v9}, Lcom/snda/woa/bg;-><init>(Landroid/content/Context;ZLcom/snda/woa/android/callback/PwdLoginCallBack;ZZZLcom/snda/woa/f;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v11, v1}, Lcom/snda/woa/bg;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/snda/woa/ca;->f:Z

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/snda/woa/ca;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/snda/woa/cm;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "OpenAPI"

    const-string v2, "mobileauto"

    invoke-static {v1, v2}, Lcom/snda/woa/au;->b(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x191

    sput v1, Lcom/snda/woa/cm;->a:I

    new-instance v1, Lcom/snda/woa/ad;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/snda/woa/ca;->a:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/snda/woa/ca;->d:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/snda/woa/ca;->c:Lcom/snda/woa/android/callback/AutoLoginCallBack;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/snda/woa/ca;->e:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/snda/woa/ad;-><init>(Landroid/content/Context;ZLcom/snda/woa/android/callback/AutoLoginCallBack;Ljava/lang/String;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/snda/woa/ad;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/snda/woa/ca;->f:Z

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/snda/woa/ca;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/snda/woa/cm;->c(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "OpenAPI"

    const-string v2, "expauto"

    invoke-static {v1, v2}, Lcom/snda/woa/au;->b(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x2b

    sput v1, Lcom/snda/woa/cm;->a:I

    new-instance v1, Lcom/snda/woa/r;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/snda/woa/ca;->a:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/snda/woa/ca;->d:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/snda/woa/ca;->c:Lcom/snda/woa/android/callback/AutoLoginCallBack;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/snda/woa/ca;->e:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/snda/woa/r;-><init>(Landroid/content/Context;ZLcom/snda/woa/android/callback/AutoLoginCallBack;Ljava/lang/String;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/snda/woa/r;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_3
    const-string v1, "OpenAPI"

    const-string v2, "noauto"

    invoke-static {v1, v2}, Lcom/snda/woa/au;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/snda/woa/ca;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/snda/woa/cm;->d(Landroid/content/Context;)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/snda/woa/ca;->c:Lcom/snda/woa/android/callback/AutoLoginCallBack;

    invoke-static {v7}, Lcom/snda/woa/android/OpenAPI;->getStatusText(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v7, v2, v3}, Lcom/snda/woa/android/callback/AutoLoginCallBack;->callBack(ILjava/lang/String;Ljava/lang/String;)V

    sget v1, Lcom/snda/woa/cm;->a:I

    const/16 v2, 0xf

    if-eq v1, v2, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/snda/woa/ca;->a:Landroid/content/Context;

    new-instance v1, Lcom/snda/woa/bw;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/snda/woa/ca;->a:Landroid/content/Context;

    const/16 v3, 0x28

    const-string v4, "0"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/snda/woa/bw;-><init>(Landroid/content/Context;ILjava/lang/String;JIJI)V

    invoke-static {v11, v1}, Lcom/snda/woa/bc;->b(Landroid/content/Context;Lcom/snda/woa/bw;)V

    goto/16 :goto_0
.end method
