.class Lcom/snda/woa/t;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Lcom/snda/woa/v;


# direct methods
.method constructor <init>(Lcom/snda/woa/v;)V
    .locals 0

    iput-object p1, p0, Lcom/snda/woa/t;->a:Lcom/snda/woa/v;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/snda/woa/t;->a:Lcom/snda/woa/v;

    invoke-static {v0}, Lcom/snda/woa/v;->a(Lcom/snda/woa/v;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snda/woa/t;->a:Lcom/snda/woa/v;

    const/16 v1, 0x64

    invoke-static {v0, v1}, Lcom/snda/woa/v;->a(Lcom/snda/woa/v;I)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "SENT_SMS_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/snda/woa/t;->a:Lcom/snda/woa/v;

    invoke-static {v1}, Lcom/snda/woa/v;->b(Lcom/snda/woa/v;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
