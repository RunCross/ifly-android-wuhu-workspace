.class public Lcom/shandagames/gameplus/network/ConnectionChangeReceiver;
.super Landroid/content/BroadcastReceiver;


# static fields
.field public static isConnected:Z

.field public static isDisConnected:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/shandagames/gameplus/network/ConnectionChangeReceiver;->isConnected:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/shandagames/gameplus/network/ConnectionChangeReceiver;->isDisConnected:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const/4 v3, 0x1

    const/4 v1, 0x0

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v4

    if-eqz v4, :cond_4

    move v0, v1

    move v2, v1

    :goto_0
    array-length v5, v4

    if-ge v0, v5, :cond_0

    if-eqz v2, :cond_1

    :cond_0
    :goto_1
    if-eqz v2, :cond_3

    sput-boolean v3, Lcom/shandagames/gameplus/network/ConnectionChangeReceiver;->isConnected:Z

    invoke-static {p1}, Lcom/shandagames/gameplus/push/SocketPushService;->actionQuickReStart(Landroid/content/Context;)V

    :goto_2
    return-void

    :cond_1
    aget-object v5, v4, v0

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v5

    sget-object v6, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v5, v6, :cond_2

    move v2, v3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    sput-boolean v1, Lcom/shandagames/gameplus/network/ConnectionChangeReceiver;->isConnected:Z

    sput-boolean v1, Lcom/shandagames/gameplus/network/ConnectionChangeReceiver;->isDisConnected:Z

    goto :goto_2

    :cond_4
    move v2, v1

    goto :goto_1
.end method
