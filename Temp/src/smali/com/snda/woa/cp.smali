.class public Lcom/snda/woa/cp;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1

    invoke-static {p0}, Lcom/snda/woa/ai;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, -0xa4cf75

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/snda/woa/cf;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/snda/woa/cu;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Lcom/snda/woa/cq;
    .locals 11

    const/4 v1, 0x0

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v0, p0

    :try_start_0
    invoke-static/range {v0 .. v10}, Lcom/snda/woa/cp;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/snda/woa/cq;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/snda/woa/cq;-><init>(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Lcom/snda/woa/cq;

    const v1, -0xa4cf85

    invoke-direct {v0, v1}, Lcom/snda/woa/cq;-><init>(I)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/snda/woa/cq;
    .locals 11

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    :try_start_0
    invoke-static/range {v0 .. v10}, Lcom/snda/woa/cp;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/snda/woa/cq;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/snda/woa/cq;-><init>(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Lcom/snda/woa/cq;

    const v1, -0xa4cf85

    invoke-direct {v0, v1}, Lcom/snda/woa/cq;-><init>(I)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/snda/woa/cq;
    .locals 11

    const-string v0, "MobileService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "phone="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snda/woa/au;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, p3}, Lcom/snda/woa/cf;->j(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    :try_start_0
    invoke-static {v10}, Lcom/snda/woa/cn;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "|"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v0, p0

    move-object v4, p1

    invoke-static/range {v0 .. v10}, Lcom/snda/woa/cp;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_0
    new-instance v0, Lcom/snda/woa/cq;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/snda/woa/cq;-><init>(ILjava/lang/String;)V

    :goto_1
    return-object v0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v4, p1

    invoke-static/range {v0 .. v10}, Lcom/snda/woa/cp;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {p0}, Lcom/snda/woa/cf;->w(Landroid/content/Context;)V

    new-instance v0, Lcom/snda/woa/cq;

    const v1, -0xa4cf85

    invoke-direct {v0, v1}, Lcom/snda/woa/cq;-><init>(I)V

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/snda/woa/cq;
    .locals 7

    const/4 v3, 0x0

    sget-object v0, Lcom/snda/woa/ce;->e:Ljava/lang/String;

    if-eqz p4, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/autologin/verifyClientExp.shtm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v0, 0x8

    invoke-static {v0}, Lcom/snda/woa/ay;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/snda/woa/ap;->c(Ljava/lang/String;)V

    const-string v0, "signature="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :try_start_0
    invoke-static {}, Lcom/snda/woa/ap;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/snda/woa/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    if-eqz p4, :cond_5

    const-string v0, "&sndaId="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "&hasSDCard="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/snda/woa/cf;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/snda/woa/bp;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "1"

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_3
    invoke-static {p2}, Lcom/snda/woa/cn;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "&smsCode="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p4, :cond_7

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    :goto_4
    :try_start_1
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    const-string v3, "&imei="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/snda/woa/ap;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_5
    invoke-static {p3}, Lcom/snda/woa/cn;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "&extParamIn="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    sget-object v0, Lcom/snda/woa/ce;->o:[Ljava/lang/String;

    sget v3, Lcom/snda/woa/ce;->b:I

    aget-object v0, v0, v3

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/snda/woa/bj;->a:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2, v3}, Lcom/snda/woa/av;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/snda/woa/bz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snda/woa/bz;->c()Z

    move-result v0

    if-nez v0, :cond_8

    new-instance v0, Lcom/snda/woa/cq;

    invoke-virtual {v1}, Lcom/snda/woa/bz;->a()I

    move-result v2

    invoke-virtual {v1}, Lcom/snda/woa/bz;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/snda/woa/bz;->a()I

    move-result v1

    invoke-static {v1}, Lcom/snda/woa/android/OpenAPI;->getStatusText(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v3, v1}, Lcom/snda/woa/cq;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    :goto_6
    return-object v0

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/autologin/verifyClientEx.shtm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_0

    :cond_4
    const-string v0, "0"

    goto :goto_2

    :cond_5
    const-string v0, "&pubKeyVersion="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/snda/woa/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "&uuid="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v0, 0x7c

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_6

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_6
    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_3

    :cond_7
    invoke-static {p2}, Lcom/snda/woa/ap;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_4

    :catch_0
    move-exception v0

    const-string v3, "MobileService"

    const-string v4, "\u83b7\u53d6imei\u5361\u51fa\u9519: "

    invoke-static {v3, v4, v0}, Lcom/snda/woa/au;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    :cond_8
    invoke-virtual {v1}, Lcom/snda/woa/bz;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_c

    :try_start_2
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "resultCode"

    const/16 v3, -0x3e7

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    const-string v0, "resultMsg"

    const-string v4, "NAN"

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v3, :cond_9

    new-instance v0, Lcom/snda/woa/cq;

    invoke-direct {v0, v3, v4, v4}, Lcom/snda/woa/cq;-><init>(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_6

    :catch_1
    move-exception v0

    const-string v2, "MobileService"

    const-string v3, "\u83b7\u53d6\u624b\u673a\u53f7\u7801\u5e76\u767b\u5f55\u51fa\u73b0\u5f02\u5e38: "

    invoke-static {v2, v3, v0}, Lcom/snda/woa/au;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Lcom/snda/woa/cq;

    invoke-static {p0}, Lcom/snda/woa/av;->a(Landroid/content/Context;)I

    move-result v2

    invoke-direct {v0, v2, v1}, Lcom/snda/woa/cq;-><init>(ILjava/lang/String;)V

    goto/16 :goto_6

    :cond_9
    :try_start_3
    const-string v0, ""

    const-string v3, "phoneNo"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "MobileService"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "key="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/snda/woa/ap;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/snda/woa/au;->c(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "MobileService"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "phoneNoDes="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/snda/woa/au;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3}, Lcom/snda/woa/cn;->c(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a

    invoke-static {v3}, Lcom/snda/woa/ap;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "MobileService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "phoneNo="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/snda/woa/au;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, v0}, Lcom/snda/woa/cf;->b(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/snda/woa/cf;->e(Landroid/content/Context;)Ljava/lang/String;

    :cond_a
    const-string v3, "token"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "MobileService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "tokenDes="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/snda/woa/au;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Lcom/snda/woa/cn;->d(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-static {v2}, Lcom/snda/woa/ap;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "MobileService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "token="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/snda/woa/au;->c(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v3, 0x0

    invoke-static {v0, v2, v3, v4}, Lcom/snda/woa/u;->c(Ljava/lang/String;Ljava/lang/String;J)Lcom/snda/woa/u;

    move-result-object v3

    invoke-static {p0, v0, v3}, Lcom/snda/woa/cf;->a(Landroid/content/Context;Ljava/lang/String;Lcom/snda/woa/u;)V

    invoke-static {p0, v2}, Lcom/snda/woa/cf;->k(Landroid/content/Context;Ljava/lang/String;)V

    :cond_b
    new-instance v0, Lcom/snda/woa/cq;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/snda/woa/cq;-><init>(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_6

    :cond_c
    new-instance v0, Lcom/snda/woa/cq;

    invoke-static {p0}, Lcom/snda/woa/av;->a(Landroid/content/Context;)I

    move-result v1

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/snda/woa/cq;-><init>(ILjava/lang/String;)V

    goto/16 :goto_6

    :catch_2
    move-exception v0

    goto/16 :goto_1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/snda/woa/cq;
    .locals 11

    const/4 v10, 0x0

    :try_start_0
    invoke-static {}, Lcom/snda/woa/ax;->f()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {}, Lcom/snda/woa/cf;->a()Lcom/snda/woa/bk;

    move-result-object v0

    const-string v1, "1"

    invoke-static {v1, v0, p0}, Lcom/snda/woa/ap;->a(Ljava/lang/String;Lcom/snda/woa/bk;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v7, p2

    move v8, p3

    invoke-static/range {v0 .. v10}, Lcom/snda/woa/cp;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/snda/woa/cq;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/snda/woa/cq;-><init>(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Lcom/snda/woa/cq;

    const v1, -0xa4cf85

    invoke-direct {v0, v1}, Lcom/snda/woa/cq;-><init>(I)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/snda/woa/cq;
    .locals 5

    invoke-static {p0, p2, p3, p4}, Lcom/snda/woa/cp;->a(Landroid/content/Context;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/snda/woa/ce;->o:[Ljava/lang/String;

    sget v2, Lcom/snda/woa/ce;->b:I

    aget-object v1, v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/snda/woa/ce;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/autologin/receiveVerificationSms.shtm"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "phone="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    invoke-static {p1, v4, p0}, Lcom/snda/woa/ap;->a(Ljava/lang/String;Lcom/snda/woa/bk;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "&msg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/snda/woa/bj;->a:Ljava/lang/String;

    invoke-static {p0, v1, v2, v0, v3}, Lcom/snda/woa/av;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/snda/woa/bz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snda/woa/bz;->c()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/snda/woa/cq;

    invoke-virtual {v1}, Lcom/snda/woa/bz;->a()I

    move-result v2

    invoke-virtual {v1}, Lcom/snda/woa/bz;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/snda/woa/cq;-><init>(ILjava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v1}, Lcom/snda/woa/bz;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/snda/woa/cn;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "resultCode"

    const/16 v2, -0x3e7

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    const-string v0, "resultMsg"

    const-string v3, "NAN"

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v2, :cond_1

    new-instance v0, Lcom/snda/woa/cq;

    invoke-direct {v0, v2}, Lcom/snda/woa/cq;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MobileService"

    const-string v2, "receiveVerificationSms\u51fa\u73b0\u5f02\u5e38: "

    invoke-static {v1, v2, v0}, Lcom/snda/woa/au;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Lcom/snda/woa/cq;

    invoke-static {p0}, Lcom/snda/woa/av;->a(Landroid/content/Context;)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/snda/woa/cq;-><init>(I)V

    goto :goto_0

    :cond_1
    :try_start_1
    new-instance v0, Lcom/snda/woa/cq;

    invoke-direct {v0, v2, v1}, Lcom/snda/woa/cq;-><init>(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/snda/woa/cq;

    invoke-static {p0}, Lcom/snda/woa/av;->a(Landroid/content/Context;)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/snda/woa/cq;-><init>(I)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;J)Ljava/lang/String;
    .locals 8

    const-wide/16 v2, 0x3e8

    const/4 v6, 0x0

    div-long v0, p1, v2

    mul-long v3, v0, v2

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://sms/inbox"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v7, "_id"

    aput-object v7, v2, v5

    const/4 v5, 0x1

    const-string v7, "address"

    aput-object v7, v2, v5

    const/4 v5, 0x2

    const-string v7, "body"

    aput-object v7, v2, v5

    const/4 v5, 0x3

    const-string v7, "service_center"

    aput-object v7, v2, v5

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, " date>="

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "date desc"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_4

    :cond_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x2

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "\u76db\u5927\u7f51\u7edc"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "snda"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    const-string v2, "\u9a8c\u8bc1\u7801"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "code"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    const/4 v2, 0x0

    const/16 v3, 0x28

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "[0-9]*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    const/16 v3, 0x28

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_0
    return-object v0

    :cond_4
    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    :goto_1
    move-object v0, v6

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v6

    :goto_2
    if-eqz v0, :cond_5

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v6, :cond_6

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0

    :catchall_1
    move-exception v0

    move-object v6, v1

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_2
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)Ljava/lang/String;
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/snda/woa/cf;->a()Lcom/snda/woa/bk;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "optype"

    invoke-static {v2, v0, p2}, Lcom/snda/woa/ao;->a(Lorg/json/JSONObject;Ljava/lang/String;I)V

    const-string v3, "hasSDCard"

    invoke-static {}, Lcom/snda/woa/cf;->b()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {}, Lcom/snda/woa/bp;->a()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, v3, v0}, Lcom/snda/woa/ao;->a(Lorg/json/JSONObject;Ljava/lang/String;I)V

    invoke-static {p3}, Lcom/snda/woa/cn;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "sessionId"

    invoke-static {v2, v0, p3}, Lcom/snda/woa/ao;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {p1}, Lcom/snda/woa/cn;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "uuid"

    invoke-static {p1, v1, p0}, Lcom/snda/woa/ap;->a(Ljava/lang/String;Lcom/snda/woa/bk;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/snda/woa/ao;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz v1, :cond_2

    const-string v3, "guid"

    if-nez v1, :cond_b

    const-string v0, ""

    :goto_1
    invoke-static {v2, v3, v0}, Lcom/snda/woa/ao;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-static {p4}, Lcom/snda/woa/cn;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "phoneNo"

    invoke-static {p4, v1, p0}, Lcom/snda/woa/ap;->a(Ljava/lang/String;Lcom/snda/woa/bk;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/snda/woa/ao;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-static {p5}, Lcom/snda/woa/cn;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "sndaId"

    invoke-static {p5, v1, p0}, Lcom/snda/woa/ap;->a(Ljava/lang/String;Lcom/snda/woa/bk;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/snda/woa/ao;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-static {p6}, Lcom/snda/woa/cn;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "token"

    invoke-static {p6, v1, p0}, Lcom/snda/woa/ap;->a(Ljava/lang/String;Lcom/snda/woa/bk;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/snda/woa/ao;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-static {p10}, Lcom/snda/woa/cn;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "seq"

    invoke-static {v2, v0, p10}, Lcom/snda/woa/ao;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    const-string v0, "clientVersion"

    const-string v3, "2.5.1"

    invoke-static {v2, v0, v3}, Lcom/snda/woa/ao;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "endpointOS"

    const-string v3, "android"

    invoke-static {v2, v0, v3}, Lcom/snda/woa/ao;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p8, :cond_7

    const-string v0, "imsi"

    invoke-static {p0}, Lcom/snda/woa/cf;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1, p0}, Lcom/snda/woa/ap;->a(Ljava/lang/String;Lcom/snda/woa/bk;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/snda/woa/ao;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_7
    if-eqz p9, :cond_8

    :try_start_1
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_8

    const-string v3, "imei"

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1, p0}, Lcom/snda/woa/ap;->a(Ljava/lang/String;Lcom/snda/woa/bk;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/snda/woa/ao;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_8
    :goto_2
    :try_start_2
    const-string v0, "appId"

    invoke-static {p0}, Lcom/snda/woa/ax;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/snda/woa/ao;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "areaId"

    invoke-static {}, Lcom/snda/woa/ax;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/snda/woa/ao;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p7}, Lcom/snda/woa/cn;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "smsCode"

    invoke-static {v2, v0, p7}, Lcom/snda/woa/ao;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MobileService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " sessionid json \uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/snda/woa/au;->c(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    invoke-static {v2, v0}, Lcom/snda/woa/q;->a([BI)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const-string v0, "MobileService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " sessionIdBase64 \uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/snda/woa/au;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_a
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_b
    invoke-virtual {v1}, Lcom/snda/woa/bk;->a()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    const-string v1, "MobileService"

    const-string v3, "\u83b7\u53d6imei\u5361\u51fa\u9519: "

    invoke-static {v1, v3, v0}, Lcom/snda/woa/au;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    const-string v1, "MobileService"

    const-string v2, "\u751f\u6210sessionid\u51fa\u9519"

    invoke-static {v1, v2, v0}, Lcom/snda/woa/au;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "\u751f\u6210sessionid\u51fa\u9519"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/snda/woa/cp;->a(Landroid/content/Context;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/snda/woa/ce;->o:[Ljava/lang/String;

    sget-object v2, Lcom/snda/woa/ce;->j:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "TEST"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    :goto_0
    sget-object v1, Lcom/snda/woa/ce;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p3, :cond_3

    const-string v1, "EM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p2, :cond_4

    const-string v1, "-0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_2
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p0}, Lcom/snda/woa/ax;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/snda/woa/ax;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    sget-object v1, Lcom/snda/woa/ce;->o:[Ljava/lang/String;

    sget-object v2, Lcom/snda/woa/ce;->l:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "PREP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/snda/woa/ce;->o:[Ljava/lang/String;

    sget-object v2, Lcom/snda/woa/ce;->m:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "GREY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_3
    const-string v1, "SL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_4
    const-string v1, "-3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Lcom/snda/woa/cq;
    .locals 2

    :try_start_0
    new-instance v0, Lcom/snda/woa/cq;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lcom/snda/woa/cq;-><init>(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Lcom/snda/woa/cq;

    const v1, -0xa4cf85

    invoke-direct {v0, v1}, Lcom/snda/woa/cq;-><init>(I)V

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/snda/woa/cq;
    .locals 11

    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v5, p1

    move-object v6, p2

    :try_start_0
    invoke-static/range {v0 .. v10}, Lcom/snda/woa/cp;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/snda/woa/cq;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/snda/woa/cq;-><init>(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {p0}, Lcom/snda/woa/cf;->w(Landroid/content/Context;)V

    new-instance v0, Lcom/snda/woa/cq;

    const v1, -0xa4cf85

    invoke-direct {v0, v1}, Lcom/snda/woa/cq;-><init>(I)V

    goto :goto_0
.end method
