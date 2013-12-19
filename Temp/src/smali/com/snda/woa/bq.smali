.class public Lcom/snda/woa/bq;
.super Lcom/snda/woa/as;


# instance fields
.field private a:Lcom/snda/woa/android/callback/UsernameRegisterCallBack;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Landroid/content/Context;

.field private e:Ljava/lang/String;

.field private f:J

.field private g:Lcom/snda/woa/bw;

.field private h:Lcom/snda/woa/bw;

.field private i:Lcom/snda/woa/bw;


# direct methods
.method public constructor <init>(Lcom/snda/woa/android/callback/UsernameRegisterCallBack;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/snda/woa/as;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/snda/woa/bq;->e:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/snda/woa/bq;->f:J

    iput-object v2, p0, Lcom/snda/woa/bq;->g:Lcom/snda/woa/bw;

    iput-object v2, p0, Lcom/snda/woa/bq;->h:Lcom/snda/woa/bw;

    iput-object v2, p0, Lcom/snda/woa/bq;->i:Lcom/snda/woa/bw;

    iput-object p1, p0, Lcom/snda/woa/bq;->a:Lcom/snda/woa/android/callback/UsernameRegisterCallBack;

    iput-object p2, p0, Lcom/snda/woa/bq;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/snda/woa/bq;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/snda/woa/bq;->d:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snda/woa/bq;->f:J

    return-void
.end method

.method private a(Lcom/snda/woa/bk;)I
    .locals 5

    const-string v0, "UserNameRegisterTask"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u52a0\u5bc6Key: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/snda/woa/bk;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snda/woa/au;->c(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/snda/woa/ce;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/username/register.shtm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "guid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/snda/woa/bk;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&username="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/snda/woa/bq;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/snda/woa/bq;->d:Landroid/content/Context;

    invoke-static {v2, p1, v3}, Lcom/snda/woa/ap;->a(Ljava/lang/String;Lcom/snda/woa/bk;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&password="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/snda/woa/bq;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/snda/woa/bq;->d:Landroid/content/Context;

    invoke-static {v2, p1, v3}, Lcom/snda/woa/ap;->a(Ljava/lang/String;Lcom/snda/woa/bk;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&extParamIn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/snda/woa/bq;->d:Landroid/content/Context;

    sget-object v3, Lcom/snda/woa/ce;->o:[Ljava/lang/String;

    sget v4, Lcom/snda/woa/ce;->b:I

    aget-object v3, v3, v4

    sget-object v4, Lcom/snda/woa/bj;->a:Ljava/lang/String;

    invoke-static {v2, v3, v0, v1, v4}, Lcom/snda/woa/av;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/snda/woa/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snda/woa/bz;->c()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/snda/woa/bz;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/snda/woa/bq;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snda/woa/bz;->a()I

    move-result v1

    invoke-static {v1}, Lcom/snda/woa/android/OpenAPI;->getStatusText(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/snda/woa/bq;->e:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/snda/woa/bz;->a()I

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {v0}, Lcom/snda/woa/bz;->b()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "resultCode"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v3, "resultMsg"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/snda/woa/bq;->e:Ljava/lang/String;

    const v2, -0x9c7ee7

    if-ne v0, v2, :cond_0

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/snda/woa/cf;->a(Lcom/snda/woa/bk;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "UserNameRegisterTask"

    const-string v3, "\u8c03\u7528\u63a5\u53e3\u8fdb\u884c\u4e2a\u6027\u5316\u8d26\u53f7\u6ce8\u518c\u51fa\u9519: "

    invoke-static {v2, v3, v0}, Lcom/snda/woa/au;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0, v1}, Lcom/snda/woa/bq;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/snda/woa/bq;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/snda/woa/av;->a(Landroid/content/Context;)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 12

    const/16 v2, 0x5b

    const v10, -0xa4cf6b

    invoke-static {}, Lcom/snda/woa/bl;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const v0, -0xa4cf7b

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/snda/woa/bq;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/snda/woa/at;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/snda/woa/cn;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/snda/woa/bq;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/snda/woa/at;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, -0xa4d09d

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_1
    const v0, -0xa4d097

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/snda/woa/bq;->b:Ljava/lang/String;

    const-string v1, "[0-9]*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, -0xa4d036

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v6, 0x0

    invoke-static {}, Lcom/snda/woa/k;->a()Lcom/snda/woa/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snda/woa/k;->b()Lcom/snda/woa/k;

    move-result-object v7

    invoke-static {}, Lcom/snda/woa/cf;->a()Lcom/snda/woa/bk;

    move-result-object v11

    invoke-virtual {v7}, Lcom/snda/woa/k;->c()Lcom/snda/woa/k;

    if-nez v11, :cond_4

    move v6, v10

    :cond_4
    new-instance v0, Lcom/snda/woa/bw;

    iget-object v1, p0, Lcom/snda/woa/bq;->d:Landroid/content/Context;

    const-string v3, "110"

    invoke-virtual {v7}, Lcom/snda/woa/k;->d()J

    move-result-wide v4

    invoke-virtual {v7}, Lcom/snda/woa/k;->f()J

    move-result-wide v7

    invoke-virtual {p0}, Lcom/snda/woa/bq;->a()Ljava/lang/String;

    move-result-object v9

    invoke-direct/range {v0 .. v9}, Lcom/snda/woa/bw;-><init>(Landroid/content/Context;ILjava/lang/String;JIJLjava/lang/String;)V

    iput-object v0, p0, Lcom/snda/woa/bq;->h:Lcom/snda/woa/bw;

    if-nez v11, :cond_5

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_5
    const-string v0, "UserNameRegisterTask"

    const-string v1, "\u83b7\u53d6GUID\u6210\u529f"

    invoke-static {v0, v1}, Lcom/snda/woa/au;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/snda/woa/k;->a()Lcom/snda/woa/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snda/woa/k;->b()Lcom/snda/woa/k;

    move-result-object v7

    invoke-direct {p0, v11}, Lcom/snda/woa/bq;->a(Lcom/snda/woa/bk;)I

    move-result v6

    invoke-virtual {v7}, Lcom/snda/woa/k;->c()Lcom/snda/woa/k;

    new-instance v0, Lcom/snda/woa/bw;

    iget-object v1, p0, Lcom/snda/woa/bq;->d:Landroid/content/Context;

    const-string v3, "120"

    invoke-virtual {v7}, Lcom/snda/woa/k;->d()J

    move-result-wide v4

    invoke-virtual {v7}, Lcom/snda/woa/k;->f()J

    move-result-wide v7

    invoke-virtual {p0}, Lcom/snda/woa/bq;->a()Ljava/lang/String;

    move-result-object v9

    invoke-direct/range {v0 .. v9}, Lcom/snda/woa/bw;-><init>(Landroid/content/Context;ILjava/lang/String;JIJLjava/lang/String;)V

    iput-object v0, p0, Lcom/snda/woa/bq;->i:Lcom/snda/woa/bw;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0
.end method

.method protected a(Ljava/lang/Integer;)V
    .locals 10

    const/4 v9, 0x0

    invoke-super {p0, p1}, Lcom/snda/woa/as;->onPostExecute(Ljava/lang/Object;)V

    invoke-static {}, Lcom/snda/woa/bl;->b()V

    const-string v0, "UserNameRegisterTask"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "errCode: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snda/woa/au;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/snda/woa/bq;->f:J

    sub-long v7, v0, v2

    new-instance v0, Lcom/snda/woa/bw;

    iget-object v1, p0, Lcom/snda/woa/bq;->d:Landroid/content/Context;

    const/16 v2, 0x5b

    const-string v3, "0"

    iget-wide v4, p0, Lcom/snda/woa/bq;->f:J

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct/range {v0 .. v8}, Lcom/snda/woa/bw;-><init>(Landroid/content/Context;ILjava/lang/String;JIJ)V

    iput-object v0, p0, Lcom/snda/woa/bq;->g:Lcom/snda/woa/bw;

    iget-object v0, p0, Lcom/snda/woa/bq;->g:Lcom/snda/woa/bw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snda/woa/bq;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/snda/woa/bq;->g:Lcom/snda/woa/bw;

    invoke-static {v0, v1}, Lcom/snda/woa/bc;->a(Landroid/content/Context;Lcom/snda/woa/bw;)V

    :cond_0
    iget-object v0, p0, Lcom/snda/woa/bq;->h:Lcom/snda/woa/bw;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/snda/woa/bq;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/snda/woa/bq;->h:Lcom/snda/woa/bw;

    invoke-static {v0, v1}, Lcom/snda/woa/bc;->a(Landroid/content/Context;Lcom/snda/woa/bw;)V

    :cond_1
    iget-object v0, p0, Lcom/snda/woa/bq;->i:Lcom/snda/woa/bw;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/snda/woa/bq;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/snda/woa/bq;->i:Lcom/snda/woa/bw;

    invoke-static {v0, v1}, Lcom/snda/woa/bc;->a(Landroid/content/Context;Lcom/snda/woa/bw;)V

    :cond_2
    iget-object v0, p0, Lcom/snda/woa/bq;->d:Landroid/content/Context;

    invoke-static {v0, v9}, Lcom/snda/woa/bc;->b(Landroid/content/Context;Lcom/snda/woa/bw;)V

    iget-object v0, p0, Lcom/snda/woa/bq;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/snda/woa/cn;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/snda/woa/android/OpenAPI;->getStatusText(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snda/woa/bq;->e:Ljava/lang/String;

    :cond_3
    iget-object v0, p0, Lcom/snda/woa/bq;->a:Lcom/snda/woa/android/callback/UsernameRegisterCallBack;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/snda/woa/bq;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/snda/woa/bq;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3, v9}, Lcom/snda/woa/android/callback/UsernameRegisterCallBack;->callBack(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/snda/woa/bq;->a([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/snda/woa/bq;->a(Ljava/lang/Integer;)V

    return-void
.end method
