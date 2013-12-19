.class Lcom/snda/woa/br;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/snda/woa/v;


# direct methods
.method public constructor <init>(Lcom/snda/woa/v;)V
    .locals 0

    iput-object p1, p0, Lcom/snda/woa/br;->a:Lcom/snda/woa/v;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/snda/woa/br;->a:Lcom/snda/woa/v;

    invoke-static {v0, v4}, Lcom/snda/woa/v;->a(Lcom/snda/woa/v;Z)Z

    invoke-virtual {p0}, Lcom/snda/woa/br;->getResultCode()I

    move-result v0

    const-string v1, "SmsSender"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "result code : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/snda/woa/au;->b(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/snda/woa/br;->a:Lcom/snda/woa/v;

    invoke-static {v0}, Lcom/snda/woa/v;->c(Lcom/snda/woa/v;)I

    move-result v0

    const/16 v1, 0x64

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/snda/woa/br;->a:Lcom/snda/woa/v;

    const v1, -0xa4cf78

    invoke-static {v0, v1}, Lcom/snda/woa/v;->a(Lcom/snda/woa/v;I)I

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :pswitch_0
    const-string v0, "SmsSender"

    const-string v1, "send sms is success!"

    invoke-static {v0, v1}, Lcom/snda/woa/au;->c(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/snda/woa/br;->a:Lcom/snda/woa/v;

    invoke-static {v0, v4}, Lcom/snda/woa/v;->a(Lcom/snda/woa/v;I)I

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method
