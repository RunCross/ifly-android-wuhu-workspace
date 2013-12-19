.class public Lcom/snda/woa/al;
.super Landroid/os/AsyncTask;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Z

.field private c:I

.field private d:Ljava/lang/String;

.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ZILjava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p4, p0, Lcom/snda/woa/al;->d:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/snda/woa/al;->b:Z

    iput p3, p0, Lcom/snda/woa/al;->c:I

    iput-object p1, p0, Lcom/snda/woa/al;->a:Landroid/content/Context;

    iput p5, p0, Lcom/snda/woa/al;->e:I

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    const-string v0, "|"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_3

    const-string v0, "|"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/snda/woa/cn;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/snda/woa/cf;->a()Lcom/snda/woa/bk;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/snda/woa/bk;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    const-string v0, "LoginFeedBackTask"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "not found guid "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/snda/woa/au;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v1

    :cond_1
    move-object v0, v1

    :cond_2
    const/4 v1, 0x0

    const-string v2, "|"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :goto_1
    iget-object v1, p0, Lcom/snda/woa/al;->a:Landroid/content/Context;

    invoke-static {p1, v0, v1}, Lcom/snda/woa/ap;->b(Ljava/lang/String;Lcom/snda/woa/bk;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method private a()V
    .locals 2

    iget v0, p0, Lcom/snda/woa/al;->c:I

    invoke-static {v0}, Lcom/snda/woa/cm;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snda/woa/al;->a:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/snda/woa/cf;->a(Landroid/content/Context;Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v1, 0x0

    const/4 v6, 0x0

    iget v0, p0, Lcom/snda/woa/al;->c:I

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/snda/woa/cr;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/snda/woa/cr;->a()V

    :cond_0
    invoke-static {}, Lcom/snda/woa/cr;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/snda/woa/cr;->d()V

    :cond_1
    invoke-static {v1}, Lcom/snda/woa/cr;->a(Z)V

    invoke-static {v1, v6, v6}, Lcom/snda/woa/cr;->a(ZLjava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/snda/woa/al;->e:I

    const/16 v1, 0x28

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/snda/woa/al;->e:I

    const/16 v1, 0x191

    if-ne v0, v1, :cond_6

    :cond_2
    iget v0, p0, Lcom/snda/woa/al;->c:I

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/snda/woa/al;->a()V

    :cond_3
    :goto_0
    iget v0, p0, Lcom/snda/woa/al;->c:I

    const v1, -0x9c7ee7

    if-ne v0, v1, :cond_4

    invoke-static {v6}, Lcom/snda/woa/cf;->a(Lcom/snda/woa/bk;)V

    :cond_4
    iget-object v0, p0, Lcom/snda/woa/al;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/snda/woa/cn;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    :try_start_0
    iget-object v0, p0, Lcom/snda/woa/al;->d:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/snda/woa/al;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/snda/woa/cn;->c(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_a

    :cond_5
    :goto_1
    return-object v6

    :cond_6
    iget v0, p0, Lcom/snda/woa/al;->e:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_8

    iget v0, p0, Lcom/snda/woa/al;->c:I

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/snda/woa/al;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/snda/woa/cm;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/snda/woa/al;->a()V

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/snda/woa/al;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/snda/woa/cf;->z(Landroid/content/Context;)V

    goto :goto_0

    :cond_8
    iget v0, p0, Lcom/snda/woa/al;->e:I

    const/16 v1, 0x21

    if-ne v0, v1, :cond_9

    iget v0, p0, Lcom/snda/woa/al;->c:I

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/snda/woa/al;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/snda/woa/cf;->z(Landroid/content/Context;)V

    goto :goto_0

    :cond_9
    iget v0, p0, Lcom/snda/woa/al;->e:I

    const/16 v1, 0x2b

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/snda/woa/al;->c:I

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/snda/woa/al;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/snda/woa/cf;->w(Landroid/content/Context;)V

    goto :goto_0

    :cond_a
    :try_start_1
    const-string v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    const/4 v2, 0x1

    aget-object v2, v0, v2

    const/4 v3, 0x2

    aget-object v0, v0, v3

    const-string v3, "LoginFeedBackTask"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "token "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mobile "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " tokentimestamp "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/snda/woa/au;->a(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "s"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    const-wide/16 v3, 0x0

    invoke-static {v0, v3, v4}, Lcom/snda/woa/cf;->a(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-static {v2, v1, v3, v4}, Lcom/snda/woa/u;->a(Ljava/lang/String;Ljava/lang/String;J)Lcom/snda/woa/u;

    move-result-object v0

    :goto_2
    iget-object v1, p0, Lcom/snda/woa/al;->a:Landroid/content/Context;

    invoke-static {v1, v2, v0}, Lcom/snda/woa/cf;->a(Landroid/content/Context;Ljava/lang/String;Lcom/snda/woa/u;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    const-string v1, "LoginFeedBackTask"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "LoginFeedBackTask error token "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/snda/woa/al;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/snda/woa/au;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    :cond_b
    const-wide/16 v3, 0x0

    :try_start_2
    invoke-static {v0, v3, v4}, Lcom/snda/woa/cf;->a(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-static {v2, v1, v3, v4}, Lcom/snda/woa/u;->c(Ljava/lang/String;Ljava/lang/String;J)Lcom/snda/woa/u;

    move-result-object v0

    iget-object v1, p0, Lcom/snda/woa/al;->a:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/snda/woa/cf;->b(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/snda/woa/al;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
