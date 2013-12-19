.class public Lcom/snda/woa/w;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Z

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/util/TimerTask;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snda/woa/w;->b:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/snda/woa/w;->c:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snda/woa/w;->d:Ljava/lang/String;

    new-instance v0, Lcom/snda/woa/y;

    invoke-direct {v0, p0}, Lcom/snda/woa/y;-><init>(Lcom/snda/woa/w;)V

    iput-object v0, p0, Lcom/snda/woa/w;->e:Ljava/util/TimerTask;

    iput-object p1, p0, Lcom/snda/woa/w;->a:Landroid/content/Context;

    new-instance v0, Lcom/snda/woa/bu;

    invoke-direct {v0, p0, p0}, Lcom/snda/woa/bu;-><init>(Lcom/snda/woa/w;Lcom/snda/woa/w;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "woa_app_status"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic a(Lcom/snda/woa/w;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/snda/woa/w;->b:Z

    return v0
.end method

.method static synthetic a(Lcom/snda/woa/w;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/snda/woa/w;->b:Z

    return p1
.end method

.method static synthetic b(Lcom/snda/woa/w;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/snda/woa/w;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/snda/woa/w;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/snda/woa/w;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lcom/snda/woa/w;)I
    .locals 1

    iget v0, p0, Lcom/snda/woa/w;->c:I

    return v0
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 4

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "key_command"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "key_data"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "woa_login_status"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/snda/woa/w;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v0, "woa_app_status"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "command:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ;data:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snda/woa/au;->b(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iget-object v1, p0, Lcom/snda/woa/w;->e:Ljava/util/TimerTask;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public b(ILjava/lang/String;)V
    .locals 3

    const-string v0, "woa_app_status"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "command : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snda/woa/au;->b(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/snda/woa/w;->c:I

    iput-object p2, p0, Lcom/snda/woa/w;->d:Ljava/lang/String;

    return-void
.end method
