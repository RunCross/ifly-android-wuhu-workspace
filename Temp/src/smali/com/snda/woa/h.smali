.class public Lcom/snda/woa/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/snda/woa/android/callback/AutoLoginCallBack;
.implements Lcom/snda/woa/android/callback/CustomMobileLoginCallBack;
.implements Lcom/snda/woa/android/callback/FastLoginCallBack;
.implements Lcom/snda/woa/android/callback/MobileLoginCallBack;


# instance fields
.field private a:I

.field private b:Z

.field private c:Lcom/snda/woa/android/callback/FastLoginCallBack;

.field private d:I

.field private e:I

.field private f:Landroid/content/Context;

.field private g:Z

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>(IZLcom/snda/woa/android/callback/FastLoginCallBack;ILandroid/content/Context;ZZLjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/snda/woa/h;->b:Z

    iput v0, p0, Lcom/snda/woa/h;->e:I

    iput p1, p0, Lcom/snda/woa/h;->a:I

    iput-boolean p2, p0, Lcom/snda/woa/h;->b:Z

    iput-object p3, p0, Lcom/snda/woa/h;->c:Lcom/snda/woa/android/callback/FastLoginCallBack;

    iput p4, p0, Lcom/snda/woa/h;->d:I

    iput v0, p0, Lcom/snda/woa/h;->e:I

    iput-object p5, p0, Lcom/snda/woa/h;->f:Landroid/content/Context;

    iput-boolean p6, p0, Lcom/snda/woa/h;->g:Z

    iput-object p8, p0, Lcom/snda/woa/h;->h:Ljava/lang/String;

    return-void
.end method

.method private a()V
    .locals 3

    const/4 v2, 0x0

    const v1, -0xa4cfcd

    invoke-static {v1}, Lcom/snda/woa/android/OpenAPI;->getStatusText(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0, v2, v2}, Lcom/snda/woa/h;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(I)V
    .locals 10

    const-string v0, "FastLoginCallBack"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " FastLoginCallBack.doRealCallBack(), errCode = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snda/woa/au;->c(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sget-object v2, Lcom/snda/woa/cm;->e:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long v7, v0, v2

    new-instance v0, Lcom/snda/woa/bw;

    iget-object v1, p0, Lcom/snda/woa/h;->f:Landroid/content/Context;

    const/16 v2, 0xf

    const-string v3, "0"

    sget-object v4, Lcom/snda/woa/cm;->e:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const/4 v9, 0x0

    move v6, p1

    invoke-direct/range {v0 .. v9}, Lcom/snda/woa/bw;-><init>(Landroid/content/Context;ILjava/lang/String;JIJI)V

    iget-object v1, p0, Lcom/snda/woa/h;->f:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/snda/woa/bc;->a(Landroid/content/Context;Lcom/snda/woa/bw;)V

    iget-object v0, p0, Lcom/snda/woa/h;->f:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/snda/woa/bc;->b(Landroid/content/Context;Lcom/snda/woa/bw;)V

    return-void
.end method

.method private a(ILjava/lang/String;)V
    .locals 6

    const/4 v4, 0x0

    iget v0, p0, Lcom/snda/woa/h;->a:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/snda/woa/h;->a:I

    iget v1, p0, Lcom/snda/woa/h;->e:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/snda/woa/h;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/snda/woa/h;->e:I

    new-instance v0, Lcom/snda/woa/cl;

    iget-object v1, p0, Lcom/snda/woa/h;->f:Landroid/content/Context;

    iget-boolean v3, p0, Lcom/snda/woa/h;->g:Z

    iget-object v5, p0, Lcom/snda/woa/h;->h:Ljava/lang/String;

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/snda/woa/cl;-><init>(Landroid/content/Context;Lcom/snda/woa/android/callback/MobileLoginCallBack;ZZLjava/lang/String;)V

    new-array v1, v4, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/snda/woa/cl;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/snda/woa/h;->b:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    iput v0, p0, Lcom/snda/woa/h;->d:I

    invoke-direct {p0}, Lcom/snda/woa/h;->a()V

    goto :goto_0

    :cond_1
    const-string v0, ""

    const-string v1, ""

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/snda/woa/h;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/snda/woa/h;->a(I)V

    iget-object v0, p0, Lcom/snda/woa/h;->c:Lcom/snda/woa/android/callback/FastLoginCallBack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snda/woa/h;->c:Lcom/snda/woa/android/callback/FastLoginCallBack;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/snda/woa/android/callback/FastLoginCallBack;->callBack(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public callBack(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/snda/woa/h;->callBack(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public callBack(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v0, "FastLoginCallBack"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " FastLoginCallBack.doCallBack(), errCode = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", nowCallLogin: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/snda/woa/h;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snda/woa/au;->c(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/snda/woa/h;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/snda/woa/cm;->d(Landroid/content/Context;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget v0, p0, Lcom/snda/woa/h;->d:I

    if-ne v0, v4, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/snda/woa/l;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/snda/woa/l;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    sget-object v1, Lcom/snda/woa/l;->m:Ljava/lang/String;

    new-array v2, v4, [Ljava/lang/String;

    sget-object v3, Lcom/snda/woa/l;->q:Ljava/lang/String;

    aput-object v3, v2, v5

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v0, v5, v2, v3}, Lcom/snda/woa/l;->a(Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    if-nez p1, :cond_4

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/snda/woa/h;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_1
    iget v0, p0, Lcom/snda/woa/h;->d:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/snda/woa/l;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/snda/woa/l;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/snda/woa/h;->d:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/snda/woa/l;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/snda/woa/l;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "n/a "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/snda/woa/l;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    const v0, -0xa4cf79

    if-ne p1, v0, :cond_5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/snda/woa/h;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    iget v0, p0, Lcom/snda/woa/h;->d:I

    packed-switch v0, :pswitch_data_0

    const v0, -0xa4cf82

    const v1, -0xa4cf83

    invoke-static {v1}, Lcom/snda/woa/android/OpenAPI;->getStatusText(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, v6, v6}, Lcom/snda/woa/h;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/snda/woa/h;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/snda/woa/h;->a(ILjava/lang/String;)V

    goto :goto_1

    :pswitch_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/snda/woa/h;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
