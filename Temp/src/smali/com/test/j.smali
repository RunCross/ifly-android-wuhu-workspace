.class final Lcom/test/j;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/test/RooneyJActivity;


# direct methods
.method constructor <init>(Lcom/test/RooneyJActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/test/j;->a:Lcom/test/RooneyJActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.shandagames.gameplus.push.DISPLAY_MESSAGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "message"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/test/Utils;->notificationVibrate()V

    invoke-static {v0}, Lcom/test/RooneyJActivity;->nativeDidReceiveRemoteNotification(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
