.class public Lcom/unipay/log/LogNet;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unipay/log/LogNet$LogResult;
    }
.end annotation


# static fields
.field public static final URLSTR:Ljava/lang/String; = "http://uniview.wostore.cn/log-app/sendLog"

.field private static _$1:Lcom/unipay/log/Parameters; = null

.field private static _$2:Lcom/unipay/log/LogNet; = null

.field public static final publicURL:Ljava/lang/String; = "http://uniview.wostore.cn/log-app/"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic _$1()Lcom/unipay/log/Parameters;
    .locals 1

    sget-object v0, Lcom/unipay/log/LogNet;->_$1:Lcom/unipay/log/Parameters;

    return-object v0
.end method

.method static synthetic _$1(Lcom/unipay/log/LogNet;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/unipay/log/LogNet;->_$1(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private _$1(Ljava/lang/String;)Z
    .locals 2

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "success"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic _$2(Lcom/unipay/log/LogNet;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/unipay/log/LogNet;->_$2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private _$2(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "success"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "false"

    goto :goto_0
.end method

.method public static getInstance()Lcom/unipay/log/LogNet;
    .locals 1

    sget-object v0, Lcom/unipay/log/LogNet;->_$2:Lcom/unipay/log/LogNet;

    if-nez v0, :cond_0

    new-instance v0, Lcom/unipay/log/LogNet;

    invoke-direct {v0}, Lcom/unipay/log/LogNet;-><init>()V

    sput-object v0, Lcom/unipay/log/LogNet;->_$2:Lcom/unipay/log/LogNet;

    :cond_0
    sget-object v0, Lcom/unipay/log/LogNet;->_$2:Lcom/unipay/log/LogNet;

    return-object v0
.end method

.method public static initParams(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Lcom/unipay/log/Parameters;

    invoke-direct {v0}, Lcom/unipay/log/Parameters;-><init>()V

    sput-object v0, Lcom/unipay/log/LogNet;->_$1:Lcom/unipay/log/Parameters;

    invoke-virtual {v0}, Lcom/unipay/log/Parameters;->clear()V

    sget-object v0, Lcom/unipay/log/LogNet;->_$1:Lcom/unipay/log/Parameters;

    const-string v1, "imei"

    invoke-static {p0}, Lcom/unipay/tools/PhoneInfoTools;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/unipay/log/Parameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/unipay/log/LogNet;->_$1:Lcom/unipay/log/Parameters;

    const-string v1, "imsi"

    invoke-static {}, Lcom/unipay/tools/MultimodeConfig;->getImsi()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/unipay/log/Parameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/unipay/log/LogNet;->_$1:Lcom/unipay/log/Parameters;

    const-string v1, "os"

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/unipay/log/Parameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/unipay/log/LogNet;->_$1:Lcom/unipay/log/Parameters;

    const-string v1, "phone_company"

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/unipay/log/Parameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/unipay/log/LogNet;->_$1:Lcom/unipay/log/Parameters;

    const-string v1, "phone_type"

    invoke-static {p0}, Lcom/unipay/tools/PhoneInfoTools;->getUA(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/unipay/log/Parameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/unipay/log/LogNet;->_$1:Lcom/unipay/log/Parameters;

    const-string v1, "tel"

    invoke-static {}, Lcom/unipay/tools/MultimodeConfig;->getPhone()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/unipay/log/Parameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static isNetWorkAvaible(Landroid/content/Context;)Z
    .locals 3

    const/4 v1, 0x0

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public RequestLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    new-instance v0, Lcom/unipay/log/lIllIlIIlIlllllI;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/unipay/log/lIllIlIIlIlllllI;-><init>(Lcom/unipay/log/LogNet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/unipay/log/lIllIlIIlIlllllI;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "xyf"

    invoke-static {p2, v0, p3}, Lcom/unipay/log/LogUtils;->myLog_i2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public UpdateHttpLog(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 3

    :try_start_0
    new-instance v0, Lcom/unipay/log/llllIlIIlIlllllI;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/unipay/log/llllIlIIlIlllllI;-><init>(Lcom/unipay/log/LogNet;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/unipay/log/llllIlIIlIlllllI;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "xyf"

    const-string v2, "log upload failed"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public UpdateHttpMessage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 3

    :try_start_0
    new-instance v0, Lcom/unipay/log/IIIlIlIIlIlllllI;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/unipay/log/IIIlIlIIlIlllllI;-><init>(Lcom/unipay/log/LogNet;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/unipay/log/IIIlIlIIlIlllllI;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "xyf"

    const-string v2, "log upload failed"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public outlineMsg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    new-instance v0, Lcom/unipay/log/IlllIlIIlIlllllI;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/unipay/log/IlllIlIIlIlllllI;-><init>(Lcom/unipay/log/LogNet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/unipay/log/IlllIlIIlIlllllI;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
