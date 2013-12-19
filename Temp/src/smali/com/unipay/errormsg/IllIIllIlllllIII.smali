.class Lcom/unipay/errormsg/IllIIllIlllllIII;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic _$1:Lcom/unipay/errormsg/ErrorMsgHttpRequest;


# direct methods
.method constructor <init>(Lcom/unipay/errormsg/ErrorMsgHttpRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/errormsg/IllIIllIlllllIII;->_$1:Lcom/unipay/errormsg/ErrorMsgHttpRequest;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/unipay/errormsg/IllIIllIlllllIII;->_$1:Lcom/unipay/errormsg/ErrorMsgHttpRequest;

    const-string v2, "http://uniview.wostore.cn/log-app/updateErrorMsg"

    invoke-static {v0, v2}, Lcom/unipay/errormsg/ErrorMsgHttpRequest;->_$4(Lcom/unipay/errormsg/ErrorMsgHttpRequest;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "UTF-8"

    invoke-static {v0, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    :try_start_1
    iget-object v1, p0, Lcom/unipay/errormsg/IllIIllIlllllIII;->_$1:Lcom/unipay/errormsg/ErrorMsgHttpRequest;

    invoke-static {v1}, Lcom/unipay/errormsg/ErrorMsgHttpRequest;->_$3(Lcom/unipay/errormsg/ErrorMsgHttpRequest;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/unipay/errormsg/IllIIllIlllllIII;->_$1:Lcom/unipay/errormsg/ErrorMsgHttpRequest;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/unipay/errormsg/ErrorMsgHttpRequest;->_$1(Lcom/unipay/errormsg/ErrorMsgHttpRequest;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/unipay/errormsg/IllIIllIlllllIII;->_$1:Lcom/unipay/errormsg/ErrorMsgHttpRequest;

    const-string v1, "version"

    invoke-static {v0, v1}, Lcom/unipay/errormsg/ErrorMsgHttpRequest;->_$3(Lcom/unipay/errormsg/ErrorMsgHttpRequest;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/unipay/errormsg/IllIIllIlllllIII;->_$1:Lcom/unipay/errormsg/ErrorMsgHttpRequest;

    invoke-static {v1}, Lcom/unipay/errormsg/ErrorMsgHttpRequest;->_$2(Lcom/unipay/errormsg/ErrorMsgHttpRequest;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/unipay/errormsg/IllIIllIlllllIII;->_$1:Lcom/unipay/errormsg/ErrorMsgHttpRequest;

    iget-object v1, p0, Lcom/unipay/errormsg/IllIIllIlllllIII;->_$1:Lcom/unipay/errormsg/ErrorMsgHttpRequest;

    const-string v2, "version"

    invoke-static {v1, v2}, Lcom/unipay/errormsg/ErrorMsgHttpRequest;->_$3(Lcom/unipay/errormsg/ErrorMsgHttpRequest;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unipay/errormsg/ErrorMsgHttpRequest;->_$2(Lcom/unipay/errormsg/ErrorMsgHttpRequest;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unipay/errormsg/IllIIllIlllllIII;->_$1:Lcom/unipay/errormsg/ErrorMsgHttpRequest;

    const-string v1, "MENO"

    invoke-static {v0, v1}, Lcom/unipay/errormsg/ErrorMsgHttpRequest;->_$3(Lcom/unipay/errormsg/ErrorMsgHttpRequest;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/unipay/errormsg/IllIIllIlllllIII;->_$1:Lcom/unipay/errormsg/ErrorMsgHttpRequest;

    invoke-static {v1, v0}, Lcom/unipay/errormsg/ErrorMsgHttpRequest;->_$1(Lcom/unipay/errormsg/ErrorMsgHttpRequest;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    new-instance v1, Lcom/unipay/errormsg/SqliteUtils;

    iget-object v2, p0, Lcom/unipay/errormsg/IllIIllIlllllIII;->_$1:Lcom/unipay/errormsg/ErrorMsgHttpRequest;

    invoke-static {v2}, Lcom/unipay/errormsg/ErrorMsgHttpRequest;->_$1(Lcom/unipay/errormsg/ErrorMsgHttpRequest;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/unipay/errormsg/SqliteUtils;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/unipay/errormsg/SqliteUtils;->initDatabase(Z)V

    invoke-virtual {v1}, Lcom/unipay/errormsg/SqliteUtils;->clearDB()V

    invoke-virtual {v1, v0}, Lcom/unipay/errormsg/SqliteUtils;->insertToDB(Ljava/util/ArrayList;)V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method
