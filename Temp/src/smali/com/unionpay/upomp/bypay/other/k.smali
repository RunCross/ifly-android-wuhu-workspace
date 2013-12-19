.class public Lcom/unionpay/upomp/bypay/other/k;
.super Ljava/lang/Object;


# instance fields
.field private a:J

.field private a:Landroid/widget/Button;

.field private a:Lcom/unionpay/upomp/bypay/other/bg;

.field private a:Lcom/unionpay/upomp/bypay/other/q;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/other/k;->a:Landroid/widget/Button;

    return-void
.end method

.method static synthetic a(Lcom/unionpay/upomp/bypay/other/k;)J
    .locals 2

    iget-wide v0, p0, Lcom/unionpay/upomp/bypay/other/k;->a:J

    return-wide v0
.end method

.method static synthetic a(Lcom/unionpay/upomp/bypay/other/k;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/k;->a:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic a(Lcom/unionpay/upomp/bypay/other/k;)Lcom/unionpay/upomp/bypay/other/bg;
    .locals 1

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/k;->a:Lcom/unionpay/upomp/bypay/other/bg;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/k;->a:Lcom/unionpay/upomp/bypay/other/q;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/k;->a:Lcom/unionpay/upomp/bypay/other/q;

    invoke-static {v0, v1}, Lcom/unionpay/upomp/bypay/other/q;->a(Lcom/unionpay/upomp/bypay/other/q;Z)V

    sput-boolean v1, Lcom/unionpay/upomp/bypay/other/aC;->w:Z

    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Landroid/widget/Button;)V
    .locals 0

    iput-object p1, p0, Lcom/unionpay/upomp/bypay/other/k;->a:Landroid/widget/Button;

    return-void
.end method

.method public b()V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/unionpay/upomp/bypay/other/k;->a:J

    const/4 v0, 0x0

    sput-boolean v0, Lcom/unionpay/upomp/bypay/other/aC;->w:Z

    iput-object v2, p0, Lcom/unionpay/upomp/bypay/other/k;->a:Landroid/widget/Button;

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/k;->a:Lcom/unionpay/upomp/bypay/other/q;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/k;->a:Lcom/unionpay/upomp/bypay/other/q;

    invoke-virtual {v0}, Lcom/unionpay/upomp/bypay/other/q;->a()V

    iput-object v2, p0, Lcom/unionpay/upomp/bypay/other/k;->a:Lcom/unionpay/upomp/bypay/other/q;

    :cond_0
    new-instance v0, Lcom/unionpay/upomp/bypay/other/bg;

    invoke-direct {v0, p0}, Lcom/unionpay/upomp/bypay/other/bg;-><init>(Lcom/unionpay/upomp/bypay/other/k;)V

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/other/k;->a:Lcom/unionpay/upomp/bypay/other/bg;

    new-instance v0, Lcom/unionpay/upomp/bypay/other/q;

    invoke-direct {v0, p0}, Lcom/unionpay/upomp/bypay/other/q;-><init>(Lcom/unionpay/upomp/bypay/other/k;)V

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/other/k;->a:Lcom/unionpay/upomp/bypay/other/q;

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/unionpay/upomp/bypay/other/k;->a:Lcom/unionpay/upomp/bypay/other/q;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
