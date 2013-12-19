.class public Lcom/unipay/Alipay/ResultChecker;
.super Ljava/lang/Object;


# static fields
.field public static final RESULT_CHECK_SIGN_FAILED:I = 0x1

.field public static final RESULT_CHECK_SIGN_SUCCEED:I = 0x2

.field public static final RESULT_INVALID_PARAM:I


# instance fields
.field _$1:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unipay/Alipay/ResultChecker;->_$1:Ljava/lang/String;

    return-void
.end method

.method private _$1()Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/unipay/Alipay/ResultChecker;->_$1:Ljava/lang/String;

    const-string v2, ";"

    invoke-static {v0, v2}, Lcom/unipay/Alipay/BaseHelper;->string2JSON(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "result"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v2, "&"

    invoke-static {v0, v2}, Lcom/unipay/Alipay/BaseHelper;->string2JSON(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "success"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :try_start_1
    const-string v0, "\""

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    :goto_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    goto :goto_1
.end method


# virtual methods
.method public checkSign()I
    .locals 8

    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x2

    :try_start_0
    iget-object v3, p0, Lcom/unipay/Alipay/ResultChecker;->_$1:Ljava/lang/String;

    const-string v4, ";"

    invoke-static {v3, v4}, Lcom/unipay/Alipay/BaseHelper;->string2JSON(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "result"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "&sign_type="

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, "&"

    invoke-static {v3, v5}, Lcom/unipay/Alipay/BaseHelper;->string2JSON(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v5, "sign_type"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "\""

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "sign"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "\""

    const-string v7, ""

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "RSA"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCC8rm3WEf3BOk0wfnCTMtWPiEVlmI0Yzej9E8H/wzDtRm/PhukWKD2lwkAyaV5EkJseKkRaGv9VxKWJ5GVYiRGWj3wwBdIrp8KXTenQMxACFwdZLrLv1Tmu1pV58E6YCrVIRobaWCNc1eIXugzbjvC2VUCPyhafZ4SplLYGDO5+wIDAQAB"

    invoke-static {v4, v3, v5}, Lcom/unipay/Alipay/Rsa;->doCheck(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isPayOk()Z
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/unipay/Alipay/ResultChecker;->_$1()Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/unipay/Alipay/ResultChecker;->checkSign()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
