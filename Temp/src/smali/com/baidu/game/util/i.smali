.class public Lcom/baidu/game/util/i;
.super Ljava/lang/Object;


# static fields
.field public static aD:Ljava/lang/String;

.field public static aE:Ljava/lang/String;

.field public static aF:Ljava/lang/String;

.field public static aG:Ljava/lang/String;

.field public static aH:Ljava/lang/String;

.field public static aI:Ljava/lang/String;

.field public static aJ:Ljava/lang/String;

.field public static aK:Ljava/lang/String;

.field public static aL:Ljava/lang/String;

.field public static aM:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "http://sgame.baidu.com"

    sput-object v0, Lcom/baidu/game/util/i;->aD:Ljava/lang/String;

    const-string v0, "/ajax_mobile_login.xhtml?c=bw_login"

    sput-object v0, Lcom/baidu/game/util/i;->aE:Ljava/lang/String;

    const-string v0, "/ajax_mobile_register.xhtml?c=newRegister"

    sput-object v0, Lcom/baidu/game/util/i;->aF:Ljava/lang/String;

    const-string v0, "/non_bankcard_payment.xhtml?c=doPay"

    sput-object v0, Lcom/baidu/game/util/i;->aG:Ljava/lang/String;

    const-string v0, "/ajax_mobile_enter_game.xhtml?c=initGameWithVersion"

    sput-object v0, Lcom/baidu/game/util/i;->aH:Ljava/lang/String;

    const-string v0, "/ajax_mobile_enter_game.xhtml?c=enterGame"

    sput-object v0, Lcom/baidu/game/util/i;->aI:Ljava/lang/String;

    const-string v0, "/ajax_create_mobile_order.xhtml?c=createOrder"

    sput-object v0, Lcom/baidu/game/util/i;->aJ:Ljava/lang/String;

    const-string v0, "http://passport.baidu.com/cgi-bin/genimage"

    sput-object v0, Lcom/baidu/game/util/i;->aK:Ljava/lang/String;

    const-string v0, "#555555"

    sput-object v0, Lcom/baidu/game/util/i;->aL:Ljava/lang/String;

    const-string v0, "#9c9c9c"

    sput-object v0, Lcom/baidu/game/util/i;->aM:Ljava/lang/String;

    return-void
.end method

.method public static g(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/game/util/g;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Lcom/baidu/game/util/g;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "no"

    :cond_1
    return-object v0
.end method

.method public static getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/baidu/game/service/BaiduGameProxy;->j()Lcom/baidu/game/service/BaiduGameProxy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/game/service/BaiduGameProxy;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
