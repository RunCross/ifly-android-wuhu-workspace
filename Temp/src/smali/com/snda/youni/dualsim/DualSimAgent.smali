.class public Lcom/snda/youni/dualsim/DualSimAgent;
.super Ljava/lang/Object;


# instance fields
.field a:Landroid/content/Context;

.field b:Lcom/snda/youni/dualsim/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/snda/youni/dualsim/DualSimAgent;->b:Lcom/snda/youni/dualsim/a;

    iput-object p1, p0, Lcom/snda/youni/dualsim/DualSimAgent;->a:Landroid/content/Context;

    iput-object v0, p0, Lcom/snda/youni/dualsim/DualSimAgent;->b:Lcom/snda/youni/dualsim/a;

    iget-object v0, p0, Lcom/snda/youni/dualsim/DualSimAgent;->b:Lcom/snda/youni/dualsim/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/snda/youni/dualsim/a/a;

    iget-object v1, p0, Lcom/snda/youni/dualsim/DualSimAgent;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/snda/youni/dualsim/a/a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0}, Lcom/snda/youni/dualsim/a;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/snda/youni/dualsim/DualSimAgent;->b:Lcom/snda/youni/dualsim/a;

    :cond_0
    iget-object v0, p0, Lcom/snda/youni/dualsim/DualSimAgent;->b:Lcom/snda/youni/dualsim/a;

    if-nez v0, :cond_1

    new-instance v0, Lcom/snda/youni/dualsim/a/b;

    iget-object v1, p0, Lcom/snda/youni/dualsim/DualSimAgent;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/snda/youni/dualsim/a/b;-><init>(Landroid/content/Context;)V

    invoke-interface {v0}, Lcom/snda/youni/dualsim/a;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object v0, p0, Lcom/snda/youni/dualsim/DualSimAgent;->b:Lcom/snda/youni/dualsim/a;

    :cond_1
    iget-object v0, p0, Lcom/snda/youni/dualsim/DualSimAgent;->b:Lcom/snda/youni/dualsim/a;

    if-nez v0, :cond_2

    new-instance v0, Lcom/snda/youni/dualsim/a/c;

    iget-object v1, p0, Lcom/snda/youni/dualsim/DualSimAgent;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/snda/youni/dualsim/a/c;-><init>(Landroid/content/Context;)V

    invoke-interface {v0}, Lcom/snda/youni/dualsim/a;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    iput-object v0, p0, Lcom/snda/youni/dualsim/DualSimAgent;->b:Lcom/snda/youni/dualsim/a;

    :cond_2
    iget-object v0, p0, Lcom/snda/youni/dualsim/DualSimAgent;->b:Lcom/snda/youni/dualsim/a;

    if-nez v0, :cond_3

    new-instance v0, Lcom/snda/youni/dualsim/a/d;

    iget-object v1, p0, Lcom/snda/youni/dualsim/DualSimAgent;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/snda/youni/dualsim/a/d;-><init>(Landroid/content/Context;)V

    invoke-interface {v0}, Lcom/snda/youni/dualsim/a;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    iput-object v0, p0, Lcom/snda/youni/dualsim/DualSimAgent;->b:Lcom/snda/youni/dualsim/a;

    :cond_3
    iget-object v0, p0, Lcom/snda/youni/dualsim/DualSimAgent;->b:Lcom/snda/youni/dualsim/a;

    if-nez v0, :cond_4

    new-instance v0, Lcom/snda/youni/dualsim/a/e;

    iget-object v1, p0, Lcom/snda/youni/dualsim/DualSimAgent;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/snda/youni/dualsim/a/e;-><init>(Landroid/content/Context;)V

    invoke-interface {v0}, Lcom/snda/youni/dualsim/a;->a()Z

    move-result v1

    if-eqz v1, :cond_4

    iput-object v0, p0, Lcom/snda/youni/dualsim/DualSimAgent;->b:Lcom/snda/youni/dualsim/a;

    :cond_4
    return-void
.end method


# virtual methods
.method public getDeviceId(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/snda/youni/dualsim/DualSimAgent;->b:Lcom/snda/youni/dualsim/a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/snda/youni/dualsim/DualSimAgent;->b:Lcom/snda/youni/dualsim/a;

    invoke-interface {v0, p1}, Lcom/snda/youni/dualsim/a;->g(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getLine1Number(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/snda/youni/dualsim/DualSimAgent;->b:Lcom/snda/youni/dualsim/a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/snda/youni/dualsim/DualSimAgent;->b:Lcom/snda/youni/dualsim/a;

    invoke-interface {v0, p1}, Lcom/snda/youni/dualsim/a;->h(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getNetworkOperator(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/snda/youni/dualsim/DualSimAgent;->b:Lcom/snda/youni/dualsim/a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/snda/youni/dualsim/DualSimAgent;->b:Lcom/snda/youni/dualsim/a;

    invoke-interface {v0, p1}, Lcom/snda/youni/dualsim/a;->d(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getNetworkOperatorName(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/snda/youni/dualsim/DualSimAgent;->b:Lcom/snda/youni/dualsim/a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/snda/youni/dualsim/DualSimAgent;->b:Lcom/snda/youni/dualsim/a;

    invoke-interface {v0, p1}, Lcom/snda/youni/dualsim/a;->e(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getNetworkType(I)I
    .locals 1

    iget-object v0, p0, Lcom/snda/youni/dualsim/DualSimAgent;->b:Lcom/snda/youni/dualsim/a;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/snda/youni/dualsim/DualSimAgent;->b:Lcom/snda/youni/dualsim/a;

    invoke-interface {v0, p1}, Lcom/snda/youni/dualsim/a;->f(I)I

    move-result v0

    goto :goto_0
.end method

.method public getSimSerialNumber(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/snda/youni/dualsim/DualSimAgent;->b:Lcom/snda/youni/dualsim/a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/snda/youni/dualsim/DualSimAgent;->b:Lcom/snda/youni/dualsim/a;

    invoke-interface {v0, p1}, Lcom/snda/youni/dualsim/a;->c(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSimState(I)I
    .locals 1

    iget-object v0, p0, Lcom/snda/youni/dualsim/DualSimAgent;->b:Lcom/snda/youni/dualsim/a;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/snda/youni/dualsim/DualSimAgent;->b:Lcom/snda/youni/dualsim/a;

    invoke-interface {v0, p1}, Lcom/snda/youni/dualsim/a;->b(I)I

    move-result v0

    goto :goto_0
.end method

.method public getSubscriberId(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/snda/youni/dualsim/DualSimAgent;->b:Lcom/snda/youni/dualsim/a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/snda/youni/dualsim/DualSimAgent;->b:Lcom/snda/youni/dualsim/a;

    invoke-interface {v0, p1}, Lcom/snda/youni/dualsim/a;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isDualSimSupported()Z
    .locals 1

    iget-object v0, p0, Lcom/snda/youni/dualsim/DualSimAgent;->b:Lcom/snda/youni/dualsim/a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;I)V
    .locals 7

    iget-object v0, p0, Lcom/snda/youni/dualsim/DualSimAgent;->b:Lcom/snda/youni/dualsim/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snda/youni/dualsim/DualSimAgent;->b:Lcom/snda/youni/dualsim/a;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/snda/youni/dualsim/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;I)V

    :cond_0
    return-void
.end method
