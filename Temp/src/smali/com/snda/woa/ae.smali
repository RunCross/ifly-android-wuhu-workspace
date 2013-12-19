.class public Lcom/snda/woa/ae;
.super Lcom/snda/woa/as;


# instance fields
.field private a:Lcom/snda/woa/android/callback/UsernameExistsCallBack;

.field private b:Ljava/lang/String;

.field private c:Landroid/content/Context;

.field private d:J

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:Lcom/snda/woa/bw;


# direct methods
.method public constructor <init>(Lcom/snda/woa/android/callback/UsernameExistsCallBack;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lcom/snda/woa/as;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/snda/woa/ae;->d:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snda/woa/ae;->e:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/snda/woa/ae;->f:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snda/woa/ae;->g:Lcom/snda/woa/bw;

    iput-object p1, p0, Lcom/snda/woa/ae;->a:Lcom/snda/woa/android/callback/UsernameExistsCallBack;

    iput-object p2, p0, Lcom/snda/woa/ae;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/snda/woa/ae;->c:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snda/woa/ae;->d:J

    return-void
.end method

.method private b()I
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/snda/woa/ae;->b:Ljava/lang/String;

    sget-object v1, Lcom/snda/woa/bj;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/snda/woa/ce;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/username/existence.shtm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "username="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&extParamIn="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/snda/woa/ae;->c:Landroid/content/Context;

    sget-object v3, Lcom/snda/woa/ce;->o:[Ljava/lang/String;

    sget v4, Lcom/snda/woa/ce;->b:I

    aget-object v3, v3, v4

    sget-object v4, Lcom/snda/woa/bj;->a:Ljava/lang/String;

    invoke-static {v2, v3, v1, v0, v4}, Lcom/snda/woa/av;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/snda/woa/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snda/woa/bz;->c()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/snda/woa/bz;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/snda/woa/ae;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snda/woa/bz;->a()I

    move-result v1

    invoke-static {v1}, Lcom/snda/woa/android/OpenAPI;->getStatusText(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/snda/woa/ae;->f:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/snda/woa/bz;->a()I

    move-result v0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v1, "UserNameExistTask"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "URLEncoder.encode("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/snda/woa/ae;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")\u51fa\u9519: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/snda/woa/au;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const v0, -0xa4cf7f

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/snda/woa/bz;->b()Ljava/lang/String;

    move-result-object v2

    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "resultCode"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v3, "resultMsg"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/snda/woa/ae;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v3, "existing"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p0, Lcom/snda/woa/ae;->e:Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "UserNameExistTask"

    const-string v3, "\u8c03\u7528\u63a5\u53e3\u5224\u65ad\u8d26\u53f7\u662f\u5426\u5b58\u5728\u51fa\u9519: "

    invoke-static {v1, v3, v0}, Lcom/snda/woa/au;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0, v2}, Lcom/snda/woa/ae;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/snda/woa/ae;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/snda/woa/av;->a(Landroid/content/Context;)I

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1

    invoke-static {}, Lcom/snda/woa/bl;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const v0, -0xa4cf7b

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/snda/woa/ae;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/snda/woa/at;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/snda/woa/cn;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/snda/woa/ae;->c:Landroid/content/Context;

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
    invoke-direct {p0}, Lcom/snda/woa/ae;->b()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method protected a(Ljava/lang/Integer;)V
    .locals 11

    const/4 v10, 0x0

    invoke-super {p0, p1}, Lcom/snda/woa/as;->onPostExecute(Ljava/lang/Object;)V

    invoke-static {}, Lcom/snda/woa/bl;->b()V

    const-string v0, "UserNameExistTask"

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

    iget-wide v2, p0, Lcom/snda/woa/ae;->d:J

    sub-long v7, v0, v2

    new-instance v0, Lcom/snda/woa/bw;

    iget-object v1, p0, Lcom/snda/woa/ae;->c:Landroid/content/Context;

    const/16 v2, 0x5c

    const-string v3, "0"

    iget-wide v4, p0, Lcom/snda/woa/ae;->d:J

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p0}, Lcom/snda/woa/ae;->a()Ljava/lang/String;

    move-result-object v9

    invoke-direct/range {v0 .. v9}, Lcom/snda/woa/bw;-><init>(Landroid/content/Context;ILjava/lang/String;JIJLjava/lang/String;)V

    iput-object v0, p0, Lcom/snda/woa/ae;->g:Lcom/snda/woa/bw;

    iget-object v0, p0, Lcom/snda/woa/ae;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/snda/woa/ae;->g:Lcom/snda/woa/bw;

    invoke-static {v0, v1}, Lcom/snda/woa/bc;->a(Landroid/content/Context;Lcom/snda/woa/bw;)V

    iget-object v0, p0, Lcom/snda/woa/ae;->c:Landroid/content/Context;

    invoke-static {v0, v10}, Lcom/snda/woa/bc;->b(Landroid/content/Context;Lcom/snda/woa/bw;)V

    iget-object v0, p0, Lcom/snda/woa/ae;->a:Lcom/snda/woa/android/callback/UsernameExistsCallBack;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/snda/woa/ae;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/snda/woa/cn;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/snda/woa/android/OpenAPI;->getStatusText(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snda/woa/ae;->f:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/snda/woa/ae;->a:Lcom/snda/woa/android/callback/UsernameExistsCallBack;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/snda/woa/ae;->f:Ljava/lang/String;

    iget-object v3, p0, Lcom/snda/woa/ae;->b:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/snda/woa/ae;->e:Z

    move-object v5, v10

    invoke-interface/range {v0 .. v5}, Lcom/snda/woa/android/callback/UsernameExistsCallBack;->callBack(ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/snda/woa/ae;->a([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/snda/woa/ae;->a(Ljava/lang/Integer;)V

    return-void
.end method
