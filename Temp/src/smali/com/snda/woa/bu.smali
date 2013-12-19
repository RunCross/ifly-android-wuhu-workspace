.class Lcom/snda/woa/bu;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/snda/woa/w;

.field private b:Lcom/snda/woa/w;


# direct methods
.method public constructor <init>(Lcom/snda/woa/w;Lcom/snda/woa/w;)V
    .locals 0

    iput-object p1, p0, Lcom/snda/woa/bu;->a:Lcom/snda/woa/w;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p2, p0, Lcom/snda/woa/bu;->b:Lcom/snda/woa/w;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    :try_start_0
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/snda/woa/bu;->a:Lcom/snda/woa/w;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/snda/woa/w;->a(Lcom/snda/woa/w;Z)Z

    const-string v0, "key_command"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "key_data"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "woa_app_status"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "command : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " data : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/snda/woa/au;->b(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Lcom/snda/woa/cn;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_1
    :pswitch_0
    iget-object v2, p0, Lcom/snda/woa/bu;->b:Lcom/snda/woa/w;

    invoke-virtual {v2, v0, v1}, Lcom/snda/woa/w;->b(ILjava/lang/String;)V

    return-void

    :pswitch_1
    sput-object v1, Lcom/snda/woa/cf;->b:Ljava/lang/String;

    goto :goto_1

    :pswitch_2
    sput-object v1, Lcom/snda/woa/cf;->c:Ljava/lang/String;

    goto :goto_1

    :pswitch_3
    sput-object v1, Lcom/snda/woa/cf;->a:Ljava/lang/String;

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
