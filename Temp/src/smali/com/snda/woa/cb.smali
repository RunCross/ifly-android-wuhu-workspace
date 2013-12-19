.class public final Lcom/snda/woa/cb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Z

.field final synthetic c:Lcom/snda/woa/bo;

.field final synthetic d:Z

.field final synthetic e:Z

.field final synthetic f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLcom/snda/woa/bo;ZZLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/snda/woa/cb;->a:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/snda/woa/cb;->b:Z

    iput-object p3, p0, Lcom/snda/woa/cb;->c:Lcom/snda/woa/bo;

    iput-boolean p4, p0, Lcom/snda/woa/cb;->d:Z

    iput-boolean p5, p0, Lcom/snda/woa/cb;->e:Z

    iput-object p6, p0, Lcom/snda/woa/cb;->f:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    const/4 v10, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/snda/woa/cb;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/snda/woa/cf;->h(Landroid/content/Context;)Ljava/lang/String;

    iget-object v0, p0, Lcom/snda/woa/cb;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/snda/woa/cm;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/snda/woa/h;

    iget-boolean v2, p0, Lcom/snda/woa/cb;->b:Z

    iget-object v3, p0, Lcom/snda/woa/cb;->c:Lcom/snda/woa/bo;

    iget-object v5, p0, Lcom/snda/woa/cb;->a:Landroid/content/Context;

    iget-boolean v6, p0, Lcom/snda/woa/cb;->d:Z

    iget-boolean v7, p0, Lcom/snda/woa/cb;->e:Z

    iget-object v8, p0, Lcom/snda/woa/cb;->f:Ljava/lang/String;

    move v4, v1

    invoke-direct/range {v0 .. v8}, Lcom/snda/woa/h;-><init>(IZLcom/snda/woa/android/callback/FastLoginCallBack;ILandroid/content/Context;ZZLjava/lang/String;)V

    new-instance v1, Lcom/snda/woa/ad;

    iget-object v2, p0, Lcom/snda/woa/cb;->a:Landroid/content/Context;

    iget-boolean v3, p0, Lcom/snda/woa/cb;->d:Z

    iget-object v4, p0, Lcom/snda/woa/cb;->f:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/snda/woa/ad;-><init>(Landroid/content/Context;ZLcom/snda/woa/android/callback/AutoLoginCallBack;Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/snda/woa/ad;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/snda/woa/cb;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/snda/woa/cm;->d(Landroid/content/Context;)I

    move-result v9

    new-instance v0, Lcom/snda/woa/h;

    iget-boolean v2, p0, Lcom/snda/woa/cb;->b:Z

    iget-object v3, p0, Lcom/snda/woa/cb;->c:Lcom/snda/woa/bo;

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/snda/woa/cb;->a:Landroid/content/Context;

    iget-boolean v6, p0, Lcom/snda/woa/cb;->d:Z

    iget-boolean v7, p0, Lcom/snda/woa/cb;->e:Z

    iget-object v8, p0, Lcom/snda/woa/cb;->f:Ljava/lang/String;

    invoke-direct/range {v0 .. v8}, Lcom/snda/woa/h;-><init>(IZLcom/snda/woa/android/callback/FastLoginCallBack;ILandroid/content/Context;ZZLjava/lang/String;)V

    invoke-static {v9}, Lcom/snda/woa/android/OpenAPI;->getStatusText(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v9, v1, v10, v10}, Lcom/snda/woa/android/callback/FastLoginCallBack;->callBack(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
