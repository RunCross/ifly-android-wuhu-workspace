.class public Lcom/unipay/errormsg/ErrorMsgHttpRequest;
.super Ljava/lang/Object;


# static fields
.field private static final _$3:Ljava/lang/String; = "1.0.0"

.field private static final _$4:I = 0x2710

.field private static final _$5:Ljava/lang/String; = "http://uniview.wostore.cn/log-app/updateErrorMsg"


# instance fields
.field private _$1:Landroid/content/Context;

.field private _$2:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unipay/errormsg/ErrorMsgHttpRequest;->_$2:Lorg/json/JSONObject;

    iput-object p1, p0, Lcom/unipay/errormsg/ErrorMsgHttpRequest;->_$1:Landroid/content/Context;

    return-void
.end method

.method static synthetic _$1(Lcom/unipay/errormsg/ErrorMsgHttpRequest;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/unipay/errormsg/ErrorMsgHttpRequest;->_$1:Landroid/content/Context;

    return-object v0
.end method

.method private _$1()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/unipay/errormsg/ErrorMsgHttpRequest;->_$1:Landroid/content/Context;

    const-string v1, "errormsgClinetVersion"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "clinetVersion"

    const-string v2, "1.0.0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic _$1(Lcom/unipay/errormsg/ErrorMsgHttpRequest;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1

    invoke-direct {p0, p1}, Lcom/unipay/errormsg/ErrorMsgHttpRequest;->_$3(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic _$1(Lcom/unipay/errormsg/ErrorMsgHttpRequest;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 0

    iput-object p1, p0, Lcom/unipay/errormsg/ErrorMsgHttpRequest;->_$2:Lorg/json/JSONObject;

    return-object p1
.end method

.method private _$1(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/unipay/errormsg/ErrorMsgHttpRequest;->_$1:Landroid/content/Context;

    const-string v1, "errormsgClinetVersion"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "clinetVersion"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method static synthetic _$2(Lcom/unipay/errormsg/ErrorMsgHttpRequest;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/unipay/errormsg/ErrorMsgHttpRequest;->_$1()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private _$2(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    const/16 v2, 0x2710

    invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    const/16 v2, 0x2710

    invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpGet;->setParams(Lorg/apache/http/params/HttpParams;)V

    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    invoke-interface {v1, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method static synthetic _$2(Lcom/unipay/errormsg/ErrorMsgHttpRequest;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/unipay/errormsg/ErrorMsgHttpRequest;->_$1(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic _$3(Lcom/unipay/errormsg/ErrorMsgHttpRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/unipay/errormsg/ErrorMsgHttpRequest;->_$4(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private _$3(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/unipay/errormsg/ErrorMsgBean;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    new-instance v4, Lcom/unipay/errormsg/ErrorMsgBean;

    const-string v5, "errorCode"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const-string v6, "errorMsg"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "errorNotice"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "errorAdv"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v5, v6, v7, v3}, Lcom/unipay/errormsg/ErrorMsgBean;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-object v1
.end method

.method static synthetic _$3(Lcom/unipay/errormsg/ErrorMsgHttpRequest;)Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/unipay/errormsg/ErrorMsgHttpRequest;->_$2:Lorg/json/JSONObject;

    return-object v0
.end method

.method static synthetic _$4(Lcom/unipay/errormsg/ErrorMsgHttpRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/unipay/errormsg/ErrorMsgHttpRequest;->_$2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private _$4(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/unipay/errormsg/ErrorMsgHttpRequest;->_$2:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, ""

    goto :goto_0
.end method


# virtual methods
.method public requestUpdateMsg()V
    .locals 1

    :try_start_0
    new-instance v0, Lcom/unipay/errormsg/IllIIllIlllllIII;

    invoke-direct {v0, p0}, Lcom/unipay/errormsg/IllIIllIlllllIII;-><init>(Lcom/unipay/errormsg/ErrorMsgHttpRequest;)V

    invoke-virtual {v0}, Lcom/unipay/errormsg/IllIIllIlllllIII;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
