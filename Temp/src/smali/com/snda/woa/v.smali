.class public Lcom/snda/woa/v;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/app/PendingIntent;

.field private c:Landroid/app/PendingIntent;

.field private d:Z

.field private e:I

.field private f:Ljava/util/TimerTask;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snda/woa/v;->d:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/snda/woa/v;->e:I

    new-instance v0, Lcom/snda/woa/t;

    invoke-direct {v0, p0}, Lcom/snda/woa/t;-><init>(Lcom/snda/woa/v;)V

    iput-object v0, p0, Lcom/snda/woa/v;->f:Ljava/util/TimerTask;

    iput-object p1, p0, Lcom/snda/woa/v;->a:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "SENT_SMS_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v2, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/snda/woa/v;->b:Landroid/app/PendingIntent;

    new-instance v0, Lcom/snda/woa/br;

    invoke-direct {v0, p0}, Lcom/snda/woa/br;-><init>(Lcom/snda/woa/v;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "SENT_SMS_ACTION"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic a(Lcom/snda/woa/v;I)I
    .locals 0

    iput p1, p0, Lcom/snda/woa/v;->e:I

    return p1
.end method

.method static synthetic a(Lcom/snda/woa/v;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/snda/woa/v;->d:Z

    return v0
.end method

.method static synthetic a(Lcom/snda/woa/v;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/snda/woa/v;->d:Z

    return p1
.end method

.method static synthetic b(Lcom/snda/woa/v;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/snda/woa/v;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lcom/snda/woa/v;)I
    .locals 1

    iget v0, p0, Lcom/snda/woa/v;->e:I

    return v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/snda/woa/v;->e:I

    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v3, 0x1

    :try_start_0
    const-string v0, "SmsSender"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "phone:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ;data:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snda/woa/au;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v0, p0, Lcom/snda/woa/v;->a:Landroid/content/Context;

    const-string v1, "key_selected_card"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/snda/woa/cf;->b(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v6

    :goto_0
    :try_start_2
    new-instance v0, Lcom/snda/youni/dualsim/DualSimAgent;

    iget-object v1, p0, Lcom/snda/woa/v;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/snda/youni/dualsim/DualSimAgent;-><init>(Landroid/content/Context;)V

    if-ltz v6, :cond_0

    if-gt v6, v3, :cond_0

    invoke-virtual {v0}, Lcom/snda/youni/dualsim/DualSimAgent;->isDualSimSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v6}, Lcom/snda/youni/dualsim/DualSimAgent;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;I)V

    :goto_1
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iget-object v1, p0, Lcom/snda/woa/v;->f:Ljava/util/TimerTask;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void

    :catch_0
    move-exception v0

    const/4 v6, -0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/telephony/gsm/SmsManager;->getDefault()Landroid/telephony/gsm/SmsManager;

    move-result-object v0

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/snda/woa/v;->b:Landroid/app/PendingIntent;

    iget-object v5, p0, Lcom/snda/woa/v;->c:Landroid/app/PendingIntent;

    move-object v1, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/gsm/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    throw v0
.end method
