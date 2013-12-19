.class public Lcom/baidu/game/service/BaiduGameProxy;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static F:Lcom/baidu/game/model/UserInfo; = null

.field private static P:Ljava/lang/String; = null

.field private static Q:Ljava/lang/String; = null

.field public static S:Ljava/lang/String; = null

.field private static V:Landroid/content/Context; = null

.field private static W:Lcom/baidu/game/service/BaiduGameProxy; = null

.field private static X:Ljava/lang/String; = null

.field private static Y:Ljava/lang/String; = null

.field private static Z:Lcom/baidu/game/util/a; = null

.field private static ab:Ljava/lang/String; = null

.field private static ae:Lcom/baidu/game/module/a; = null

.field public static ag:Ljava/lang/String; = null

.field private static final serialVersionUID:J = -0x730c5aef3a231a60L


# instance fields
.field private aa:Ljava/lang/String;

.field private ac:Lcom/baidu/game/listener/PayCallbackListener;

.field private ad:Landroid/app/ProgressDialog;

.field private af:Ljava/util/Properties;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/game/service/BaiduGameProxy;->W:Lcom/baidu/game/service/BaiduGameProxy;

    const-string v0, ""

    sput-object v0, Lcom/baidu/game/service/BaiduGameProxy;->X:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/baidu/game/service/BaiduGameProxy;->ab:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/baidu/game/service/BaiduGameProxy;->P:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/baidu/game/service/BaiduGameProxy;->Q:Ljava/lang/String;

    const-string v0, "hdpi/"

    sput-object v0, Lcom/baidu/game/service/BaiduGameProxy;->ag:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "10315700406_82213"

    iput-object v0, p0, Lcom/baidu/game/service/BaiduGameProxy;->aa:Ljava/lang/String;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/baidu/game/service/BaiduGameProxy;->F:Lcom/baidu/game/model/UserInfo;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/baidu/game/util/d;->a([Ljava/lang/Object;)V

    sput-object p1, Lcom/baidu/game/service/BaiduGameProxy;->V:Landroid/content/Context;

    sput-object p2, Lcom/baidu/game/service/BaiduGameProxy;->S:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/baidu/game/service/BaiduGameProxy;->a(Landroid/content/Context;)Ljava/util/Properties;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/game/service/BaiduGameProxy;->af:Ljava/util/Properties;

    iget-object v0, p0, Lcom/baidu/game/service/BaiduGameProxy;->af:Ljava/util/Properties;

    const-string v1, "pmId"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/game/service/BaiduGameProxy;->aa:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-static {v0}, Lcom/baidu/game/service/BaiduGameProxy;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/game/service/BaiduGameProxy;->ag:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/game/model/UserInfo;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "10315700406_82213"

    iput-object v0, p0, Lcom/baidu/game/service/BaiduGameProxy;->aa:Ljava/lang/String;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    invoke-static {v0}, Lcom/baidu/game/util/d;->a([Ljava/lang/Object;)V

    sput-object p1, Lcom/baidu/game/service/BaiduGameProxy;->V:Landroid/content/Context;

    sput-object p2, Lcom/baidu/game/service/BaiduGameProxy;->S:Ljava/lang/String;

    sput-object p3, Lcom/baidu/game/service/BaiduGameProxy;->F:Lcom/baidu/game/model/UserInfo;

    invoke-virtual {p3}, Lcom/baidu/game/model/UserInfo;->getSid()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/game/service/BaiduGameProxy;->ab:Ljava/lang/String;

    return-void
.end method

.method private static a(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x78

    if-gt p0, v0, :cond_0

    const-string v0, "ldpi/"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "hdpi/"

    goto :goto_0
.end method

.method private static a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Comparable;

    const/4 v1, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    invoke-static {v0}, Lcom/baidu/game/util/d;->a([Ljava/lang/Object;)V

    sget-object v0, Lcom/baidu/game/service/BaiduGameProxy;->W:Lcom/baidu/game/service/BaiduGameProxy;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/baidu/game/service/BaiduGameProxy;->W:Lcom/baidu/game/service/BaiduGameProxy;

    invoke-virtual {v0}, Lcom/baidu/game/service/BaiduGameProxy;->n()Lcom/baidu/game/model/UserInfo;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    :try_start_0
    sget-object v1, Lcom/baidu/game/service/BaiduGameProxy;->ae:Lcom/baidu/game/module/a;

    invoke-virtual {v1}, Lcom/baidu/game/module/a;->getUid()Ljava/lang/String;

    move-result-object v1

    const-string v2, "userId"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "apiKey"

    invoke-static {}, Lcom/baidu/game/service/BaiduGameProxy;->getApiKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "serverId"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "serverName"

    const-string v2, "UTF-8"

    invoke-static {p2, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "timestamp"

    sget-object v2, Lcom/baidu/game/service/BaiduGameProxy;->W:Lcom/baidu/game/service/BaiduGameProxy;

    invoke-virtual {v2}, Lcom/baidu/game/service/BaiduGameProxy;->n()Lcom/baidu/game/model/UserInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/game/model/UserInfo;->getTimestamp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "amount"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "customInfo"

    const-string v2, "UTF-8"

    invoke-static {p3, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "defaultSID"

    invoke-static {}, Lcom/baidu/game/service/BaiduGameProxy;->l()Lcom/baidu/game/model/ServerInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/game/model/ServerInfo;->getServerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "orderInfo"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const-string v4, "baidugam"

    invoke-static {v0, v4}, Lcom/baidu/game/util/c;->a([BLjava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/game/util/c;->b([B)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "sign"

    sget-object v3, Lcom/baidu/game/service/BaiduGameProxy;->W:Lcom/baidu/game/service/BaiduGameProxy;

    invoke-virtual {v3}, Lcom/baidu/game/service/BaiduGameProxy;->n()Lcom/baidu/game/model/UserInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/game/model/UserInfo;->getSign()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "payType"

    const-string v3, "BWYSW"

    invoke-direct {v0, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/baidu/game/service/BaiduGameProxy;->Z:Lcom/baidu/game/util/a;

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/baidu/game/util/i;->aD:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/baidu/game/util/i;->aJ:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/baidu/game/util/a;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "baidu.proxy"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/baidu/game/util/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "1"

    const-string v2, "result"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_2

    const-string v0, ""

    goto/16 :goto_0

    :cond_2
    :try_start_1
    const-string v0, "message"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/game/util/c;->g(Ljava/lang/String;)[B

    move-result-object v0

    const-string v2, "baidugam"

    invoke-static {v0, v2}, Lcom/baidu/game/util/c;->b([BLjava/lang/String;)[B

    move-result-object v2

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    const-string v2, "message"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v1, "baidu.proxy"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/baidu/game/service/BaiduGameProxy;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/game/service/BaiduGameProxy;->aa:Ljava/lang/String;

    return-object v0
.end method

.method private a(Lcom/baidu/game/model/UserInfo;)Ljava/util/Map;
    .locals 7

    const/4 v0, 0x1

    const/4 v2, 0x0

    new-array v0, v0, [Lcom/baidu/game/model/UserInfo;

    sget-object v1, Lcom/baidu/game/service/BaiduGameProxy;->F:Lcom/baidu/game/model/UserInfo;

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/baidu/game/util/d;->a([Ljava/lang/Object;)V

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/baidu/game/model/UserInfo;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/game/util/g;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "result"

    const-string v1, "-1"

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "message"

    const-string v1, "null phoneNumber"

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v6

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1}, Lcom/baidu/game/model/UserInfo;->getTimestamp()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/game/util/g;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "result"

    const-string v1, "-2"

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "message"

    const-string v1, "null timestamp"

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v6

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/baidu/game/model/UserInfo;->getSign()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/game/util/g;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "result"

    const-string v1, "-3"

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "message"

    const-string v1, "null sign"

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v6

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/baidu/game/model/UserInfo;->getSid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/game/util/g;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "result"

    const-string v1, "-4"

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "message"

    const-string v1, "no serverId"

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v6

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/baidu/game/model/UserInfo;->getUserName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/game/util/g;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/baidu/game/model/UserInfo;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/baidu/game/model/UserInfo;->setUserName(Ljava/lang/String;)V

    :cond_5
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    const-string v1, "phoneNum"

    invoke-virtual {p1}, Lcom/baidu/game/model/UserInfo;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "userName"

    invoke-virtual {p1}, Lcom/baidu/game/model/UserInfo;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "apiKey"

    sget-object v2, Lcom/baidu/game/service/BaiduGameProxy;->S:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "serverId"

    invoke-virtual {p1}, Lcom/baidu/game/model/UserInfo;->getSid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "timestamp"

    invoke-virtual {p1}, Lcom/baidu/game/model/UserInfo;->getTimestamp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "pmId"

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/baidu/game/service/BaiduGameProxy;->aa:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "loginInfo"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "utf-8"

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    const-string v4, "baidugam"

    invoke-static {v0, v4}, Lcom/baidu/game/util/c;->a([BLjava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/game/util/c;->b([B)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "clientFlag"

    const-string v3, "android"

    invoke-direct {v0, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "uniqueId"

    sget-object v3, Lcom/baidu/game/service/BaiduGameProxy;->Y:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "sign"

    invoke-virtual {p1}, Lcom/baidu/game/model/UserInfo;->getSign()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/baidu/game/service/BaiduGameProxy;->Z:Lcom/baidu/game/util/a;

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/baidu/game/util/i;->aD:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/baidu/game/util/i;->aE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/baidu/game/util/a;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/game/util/g;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v0, "result"

    const-string v1, "-1"

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "message"

    const-string v1, "\u8fde\u63a5\u5f02\u5e38"

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v6

    goto/16 :goto_0

    :cond_6
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "result"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "message"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {v1}, Lcom/baidu/game/util/g;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {v1}, Lcom/baidu/game/util/c;->g(Ljava/lang/String;)[B

    move-result-object v0

    sget-object v1, Lcom/baidu/game/service/BaiduGameProxy;->S:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/baidu/game/util/c;->b([BLjava/lang/String;)[B

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "apiKey"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/baidu/game/service/BaiduGameProxy;->S:Ljava/lang/String;

    const-string v1, "userId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sign"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    const-string v2, "timestamp"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "result"

    const-string v2, "1"

    invoke-interface {v6, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/baidu/game/module/a;

    invoke-virtual {p1}, Lcom/baidu/game/model/UserInfo;->getSid()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/baidu/game/service/BaiduGameProxy;->S:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/baidu/game/model/UserInfo;->getSign()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/baidu/game/module/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "userInfo"

    invoke-virtual {v0}, Lcom/baidu/game/module/a;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sput-object v0, Lcom/baidu/game/service/BaiduGameProxy;->ae:Lcom/baidu/game/module/a;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "login success:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/baidu/game/util/d;->a([Ljava/lang/Object;)V

    sget-object v0, Lcom/baidu/game/service/BaiduGameProxy;->W:Lcom/baidu/game/service/BaiduGameProxy;

    sget-object v1, Lcom/baidu/game/service/BaiduGameProxy;->V:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/baidu/game/service/BaiduGameProxy;->d(Landroid/content/Context;)V

    :goto_1
    move-object v0, v6

    goto/16 :goto_0

    :cond_7
    const-string v0, "result"

    const-string v2, "-1"

    invoke-interface {v6, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "message"

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "result"

    const-string v1, "-1"

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "message"

    const-string v1, "\u51fa\u73b0\u5f02\u5e38"

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v6

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/baidu/game/service/BaiduGameProxy;Lcom/baidu/game/model/UserInfo;)Ljava/util/Map;
    .locals 1

    invoke-direct {p0, p1}, Lcom/baidu/game/service/BaiduGameProxy;->a(Lcom/baidu/game/model/UserInfo;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/content/Context;)Ljava/util/Properties;
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/content/Context;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/baidu/game/util/d;->a([Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    :try_start_0
    const-string v2, "BaiduConfig.xml"

    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Properties;->loadFromXML(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string v2, "baidu.proxy"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "initConfig error:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/game/listener/PayCallbackListener;)V
    .locals 7

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    const/4 v1, 0x5

    aput-object p5, v0, v1

    invoke-static {v0}, Lcom/baidu/game/util/d;->a([Ljava/lang/Object;)V

    new-instance v0, Lcom/alipay/android/b;

    invoke-direct {v0, p0}, Lcom/alipay/android/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/alipay/android/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/baidu/game/service/BaiduGameProxy;->W:Lcom/baidu/game/service/BaiduGameProxy;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/baidu/game/service/BaiduGameProxy;->W:Lcom/baidu/game/service/BaiduGameProxy;

    invoke-virtual {v0}, Lcom/baidu/game/service/BaiduGameProxy;->c()V

    :cond_1
    :try_start_0
    new-instance v0, Lcom/baidu/game/service/BaiduGameProxy$3;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p0

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/baidu/game/service/BaiduGameProxy$3;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Lcom/baidu/game/listener/PayCallbackListener;)V

    invoke-virtual {v0}, Lcom/baidu/game/service/BaiduGameProxy$3;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/baidu/game/service/BaiduGameProxy;->W:Lcom/baidu/game/service/BaiduGameProxy;

    invoke-virtual {v0}, Lcom/baidu/game/service/BaiduGameProxy;->c()V

    goto :goto_0
.end method

.method static synthetic b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1, p2, p3}, Lcom/baidu/game/service/BaiduGameProxy;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method private static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {p0}, Lcom/baidu/game/service/BaiduGameProxy;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic f(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {p0}, Lcom/baidu/game/service/BaiduGameProxy;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static f(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/baidu/game/service/BaiduGameProxy;->X:Ljava/lang/String;

    return-void
.end method

.method public static getApiKey()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/baidu/game/service/BaiduGameProxy;->S:Ljava/lang/String;

    return-object v0
.end method

.method public static initSDK(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x1

    invoke-static {p0}, Lcom/baidu/game/util/i;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/game/service/BaiduGameProxy;->Y:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/game/util/a;->u()Lcom/baidu/game/util/a;

    move-result-object v0

    sput-object v0, Lcom/baidu/game/service/BaiduGameProxy;->Z:Lcom/baidu/game/util/a;

    const-class v1, Lcom/baidu/game/service/BaiduGameProxy;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/baidu/game/service/BaiduGameProxy;->W:Lcom/baidu/game/service/BaiduGameProxy;

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/game/service/BaiduGameProxy;

    invoke-direct {v0, p0, p1}, Lcom/baidu/game/service/BaiduGameProxy;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/baidu/game/service/BaiduGameProxy;->W:Lcom/baidu/game/service/BaiduGameProxy;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "BaiduConfig"

    invoke-static {v0, p0}, Lcom/baidu/game/util/f;->a(Ljava/lang/String;Landroid/content/Context;)V

    const-string v0, "REMEMB_PSD_ISCHECK"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/game/util/f;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "baidugame_firstStart"

    invoke-static {v0, v2}, Lcom/baidu/game/util/f;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "baidugame_firstStart"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/game/util/f;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    invoke-static {}, Lcom/baidu/game/service/BaiduGameProxy;->k()V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static initUserInfo(Landroid/content/Context;Lcom/baidu/game/model/UserInfo;Landroid/os/Handler;)V
    .locals 3

    const-class v1, Lcom/baidu/game/service/BaiduGameProxy;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/baidu/game/service/BaiduGameProxy;->W:Lcom/baidu/game/service/BaiduGameProxy;

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/game/service/BaiduGameProxy;

    sget-object v2, Lcom/baidu/game/service/BaiduGameProxy;->S:Ljava/lang/String;

    invoke-direct {v0, p0, v2, p1}, Lcom/baidu/game/service/BaiduGameProxy;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/game/model/UserInfo;)V

    sput-object v0, Lcom/baidu/game/service/BaiduGameProxy;->W:Lcom/baidu/game/service/BaiduGameProxy;

    :cond_0
    sput-object p1, Lcom/baidu/game/service/BaiduGameProxy;->F:Lcom/baidu/game/model/UserInfo;

    sput-object p0, Lcom/baidu/game/service/BaiduGameProxy;->V:Landroid/content/Context;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/baidu/game/service/BaiduGameProxy;->W:Lcom/baidu/game/service/BaiduGameProxy;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/game/service/BaiduGameProxy;->a(Lcom/baidu/game/model/UserInfo;Landroid/os/Handler;)V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static j()Lcom/baidu/game/service/BaiduGameProxy;
    .locals 1

    sget-object v0, Lcom/baidu/game/service/BaiduGameProxy;->W:Lcom/baidu/game/service/BaiduGameProxy;

    return-object v0
.end method

.method public static k()V
    .locals 1

    new-instance v0, Lcom/baidu/game/service/BaiduGameProxy$1;

    invoke-direct {v0}, Lcom/baidu/game/service/BaiduGameProxy$1;-><init>()V

    invoke-virtual {v0}, Lcom/baidu/game/service/BaiduGameProxy$1;->start()V

    return-void
.end method

.method public static l()Lcom/baidu/game/model/ServerInfo;
    .locals 2

    new-instance v0, Lcom/baidu/game/model/ServerInfo;

    invoke-direct {v0}, Lcom/baidu/game/model/ServerInfo;-><init>()V

    sget-object v1, Lcom/baidu/game/service/BaiduGameProxy;->ab:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/game/model/ServerInfo;->setServerId(Ljava/lang/String;)V

    const-string v1, "\u6d4b\u8bd5\u670d\u52a1\u5668"

    invoke-virtual {v0, v1}, Lcom/baidu/game/model/ServerInfo;->setServerName(Ljava/lang/String;)V

    return-object v0
.end method

.method public static m()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/baidu/game/service/BaiduGameProxy;->X:Ljava/lang/String;

    return-object v0
.end method

.method public static p()Lcom/baidu/game/module/a;
    .locals 1

    sget-object v0, Lcom/baidu/game/service/BaiduGameProxy;->ae:Lcom/baidu/game/module/a;

    return-object v0
.end method

.method static synthetic q()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/baidu/game/service/BaiduGameProxy;->V:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic r()Lcom/baidu/game/service/BaiduGameProxy;
    .locals 1

    sget-object v0, Lcom/baidu/game/service/BaiduGameProxy;->W:Lcom/baidu/game/service/BaiduGameProxy;

    return-object v0
.end method

.method static synthetic s()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/baidu/game/service/BaiduGameProxy;->Y:Ljava/lang/String;

    return-object v0
.end method

.method public static showPayView(Landroid/content/Context;Lcom/baidu/game/model/PaymentInfo;Lcom/baidu/game/model/UserInfo;Lcom/baidu/game/listener/PayCallbackListener;)V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/baidu/game/service/BaiduGameProxy;->F:Lcom/baidu/game/model/UserInfo;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    invoke-static {v0}, Lcom/baidu/game/util/d;->a([Ljava/lang/Object;)V

    sget-object v0, Lcom/baidu/game/service/BaiduGameProxy;->W:Lcom/baidu/game/service/BaiduGameProxy;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/baidu/game/service/BaiduGameProxy;->W:Lcom/baidu/game/service/BaiduGameProxy;

    invoke-virtual {v0, p3}, Lcom/baidu/game/service/BaiduGameProxy;->a(Lcom/baidu/game/listener/PayCallbackListener;)V

    :cond_0
    if-nez p1, :cond_1

    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/baidu/game/service/BaiduGameProxy;->ae:Lcom/baidu/game/module/a;

    if-nez v0, :cond_2

    sput-object p2, Lcom/baidu/game/service/BaiduGameProxy;->F:Lcom/baidu/game/model/UserInfo;

    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "userInfo"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "payInfo"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-class v1, Lcom/baidu/game/activity/PaymentActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method static synthetic t()Lcom/baidu/game/util/a;
    .locals 1

    sget-object v0, Lcom/baidu/game/service/BaiduGameProxy;->Z:Lcom/baidu/game/util/a;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/baidu/game/listener/PayCallbackListener;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/game/service/BaiduGameProxy;->ac:Lcom/baidu/game/listener/PayCallbackListener;

    return-void
.end method

.method public a(Lcom/baidu/game/model/UserInfo;Landroid/os/Handler;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    aput-object p2, v0, v5

    invoke-static {v0}, Lcom/baidu/game/util/d;->a([Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    if-eqz v2, :cond_0

    move v0, v1

    :goto_0
    array-length v3, v2

    if-lt v0, v3, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/baidu/game/service/BaiduGameProxy$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/baidu/game/service/BaiduGameProxy$2;-><init>(Lcom/baidu/game/service/BaiduGameProxy;Lcom/baidu/game/model/UserInfo;Landroid/os/Handler;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :cond_1
    new-array v3, v5, [Ljava/lang/String;

    aget-object v4, v2, v0

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v3}, Lcom/baidu/game/util/d;->a([Ljava/lang/Object;)V

    new-array v3, v5, [Ljava/lang/String;

    aget-object v4, v2, v0

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v3}, Lcom/baidu/game/util/d;->a([Ljava/lang/Object;)V

    new-array v3, v5, [Ljava/lang/Integer;

    aget-object v4, v2, v0

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v3}, Lcom/baidu/game/util/d;->a([Ljava/lang/Object;)V

    new-array v3, v5, [Ljava/lang/String;

    aget-object v4, v2, v0

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v3}, Lcom/baidu/game/util/d;->a([Ljava/lang/Object;)V

    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "-----------------------------------"

    aput-object v4, v3, v1

    invoke-static {v3}, Lcom/baidu/game/util/d;->a([Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public c()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/baidu/game/service/BaiduGameProxy;->ad:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/game/service/BaiduGameProxy;->ad:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/game/service/BaiduGameProxy;->ad:Landroid/app/ProgressDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "baidu.proxy"

    const-string v1, "\u5173\u95ed\u5bf9\u8bdd\u6846\u5f02\u5e38"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public d(Landroid/content/Context;)V
    .locals 3

    invoke-static {p1}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    sget-object v1, Lcom/baidu/game/util/i;->aD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    sget-object v1, Lcom/baidu/game/util/i;->aD:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/game/service/BaiduGameProxy;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    return-void
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/game/service/BaiduGameProxy;->af:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public n()Lcom/baidu/game/model/UserInfo;
    .locals 1

    sget-object v0, Lcom/baidu/game/service/BaiduGameProxy;->F:Lcom/baidu/game/model/UserInfo;

    return-object v0
.end method

.method public o()Lcom/baidu/game/listener/PayCallbackListener;
    .locals 1

    iget-object v0, p0, Lcom/baidu/game/service/BaiduGameProxy;->ac:Lcom/baidu/game/listener/PayCallbackListener;

    return-object v0
.end method
