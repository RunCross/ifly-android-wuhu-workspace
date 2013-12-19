.class public Lmm/purchasesdk/a/e;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lmm/purchasesdk/a/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmm/purchasesdk/a/e;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 10

    const/16 v4, 0xf1

    const/16 v3, 0xf2

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v0, Lmm/purchasesdk/g/b;

    invoke-direct {v0}, Lmm/purchasesdk/g/b;-><init>()V

    invoke-static {}, Lmm/purchasesdk/l/d;->L()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lmm/purchasesdk/l/d;->F()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lmm/purchasesdk/a/e;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "KEY--\u3009"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lmm/purchasesdk/l/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {p0}, Lmm/purchasesdk/fingerprint/c;->base64decode(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {v6, v7}, Lmm/purchasesdk/fingerprint/IdentifyApp;->decrypt([BLjava/lang/String;)[B

    move-result-object v5

    if-nez v5, :cond_0

    sget-object v5, Lmm/purchasesdk/a/e;->TAG:Ljava/lang/String;

    const-string v6, "Base64 decrypt license file failure,auth file is null,code=241"

    invoke-static {v5, v6}, Lmm/purchasesdk/l/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, p0

    :goto_0
    :try_start_1
    sget-object v6, Lmm/purchasesdk/a/e;->TAG:Ljava/lang/String;

    invoke-static {v6, v5}, Lmm/purchasesdk/l/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    const-string v7, "utf-8"

    invoke-static {v6, v7}, Lmm/purchasesdk/a/b;->a([BLjava/lang/String;)Lmm/purchasesdk/a/a;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    if-eqz v6, :cond_8

    invoke-static {}, Lmm/purchasesdk/l/d;->H()Ljava/lang/String;

    move-result-object v4

    iget-object v7, v6, Lmm/purchasesdk/a/a;->m:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Lmm/purchasesdk/l/d;->F()Ljava/lang/String;

    move-result-object v4

    iget-object v7, v6, Lmm/purchasesdk/a/a;->f:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Lmm/purchasesdk/l/d;->L()Ljava/lang/String;

    move-result-object v4

    iget-object v7, v6, Lmm/purchasesdk/a/a;->d:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v1

    :goto_1
    if-nez v4, :cond_2

    invoke-static {}, Lmm/purchasesdk/l/d;->F()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lmm/purchasesdk/l/d;->H()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lmm/purchasesdk/l/d;->L()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v4}, Lmm/purchasesdk/g/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lmm/purchasesdk/a/e;->TAG:Ljava/lang/String;

    const-string v1, "Auth validate failed! paycode or appid or imsi error,code=242"

    invoke-static {v0, v1}, Lmm/purchasesdk/l/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v3

    :goto_2
    return v0

    :catch_0
    move-exception v0

    sget-object v0, Lmm/purchasesdk/a/e;->TAG:Ljava/lang/String;

    const-string v1, "base64 decrypt license file failure"

    invoke-static {v0, v1}, Lmm/purchasesdk/l/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v4

    goto :goto_2

    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "<MM_User_Authorization>"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</MM_User_Authorization>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lmm/purchasesdk/a/e;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "after ndk decode: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lmm/purchasesdk/l/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_1
    move-exception v1

    sget-object v2, Lmm/purchasesdk/a/e;->TAG:Ljava/lang/String;

    const-string v3, "parsed auth xml file failed!"

    invoke-static {v2, v3, v1}, Lmm/purchasesdk/l/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    const/4 v1, 0x0

    invoke-static {v1}, Lmm/purchasesdk/l/d;->setErrMsg(Ljava/lang/String;)V

    invoke-static {}, Lmm/purchasesdk/l/d;->F()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lmm/purchasesdk/l/d;->H()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lmm/purchasesdk/l/d;->L()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lmm/purchasesdk/g/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v4

    goto :goto_2

    :cond_1
    move v4, v2

    goto :goto_1

    :cond_2
    invoke-static {v5, p1}, Lmm/purchasesdk/a/e;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {}, Lmm/purchasesdk/l/d;->F()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lmm/purchasesdk/l/d;->H()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lmm/purchasesdk/l/d;->L()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v4}, Lmm/purchasesdk/g/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lmm/purchasesdk/a/e;->TAG:Ljava/lang/String;

    const-string v1, "Auth validate failed! verify auth failed,code=242"

    invoke-static {v0, v1}, Lmm/purchasesdk/l/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v3

    goto :goto_2

    :cond_3
    iget-wide v3, v6, Lmm/purchasesdk/a/a;->b:J

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    invoke-static {v3, v4}, Lmm/purchasesdk/a/e;->a(J)V

    invoke-static {v7, v8}, Lmm/purchasesdk/a/e;->a(J)V

    cmp-long v3, v7, v3

    if-gez v3, :cond_6

    move v3, v1

    :goto_3
    if-eqz v3, :cond_4

    invoke-static {}, Lmm/purchasesdk/l/d;->F()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lmm/purchasesdk/l/d;->H()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lmm/purchasesdk/l/d;->L()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5}, Lmm/purchasesdk/g/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-wide v3, v6, Lmm/purchasesdk/a/a;->b:J

    iget-wide v7, v6, Lmm/purchasesdk/a/a;->a:J

    sub-long/2addr v3, v7

    const-wide/16 v7, 0x2710

    cmp-long v3, v3, v7

    if-lez v3, :cond_7

    :goto_4
    iget-wide v2, v6, Lmm/purchasesdk/a/a;->b:J

    invoke-static {v2, v3}, Lmm/purchasesdk/a/e;->a(J)V

    iget-wide v2, v6, Lmm/purchasesdk/a/a;->a:J

    invoke-static {v2, v3}, Lmm/purchasesdk/a/e;->a(J)V

    invoke-static {}, Lmm/purchasesdk/l/d;->e()Z

    move-result v2

    if-eqz v2, :cond_5

    if-eqz v1, :cond_5

    invoke-static {}, Lmm/purchasesdk/l/d;->F()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lmm/purchasesdk/l/d;->H()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Lmm/purchasesdk/a/a;->b()J

    move-result-wide v4

    invoke-virtual {v6}, Lmm/purchasesdk/a/a;->a()J

    move-result-wide v6

    invoke-static {}, Lmm/purchasesdk/l/d;->L()Ljava/lang/String;

    move-result-object v9

    move-object v3, p0

    move-object v8, p2

    invoke-virtual/range {v0 .. v9}, Lmm/purchasesdk/g/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V

    :cond_5
    const/16 v0, 0x68

    goto/16 :goto_2

    :cond_6
    move v3, v2

    goto :goto_3

    :cond_7
    move v1, v2

    goto :goto_4

    :cond_8
    move v0, v3

    goto/16 :goto_2
.end method

.method public static a(J)V
    .locals 5

    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1}, Ljava/text/SimpleDateFormat;-><init>()V

    sget-object v2, Lmm/purchasesdk/a/e;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "timer: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lmm/purchasesdk/l/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    sget-object v1, Lmm/purchasesdk/a/e;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "verificationAuthSign certificate is: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmm/purchasesdk/l/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "<Signature_content>"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const-string v2, "</Signature_content>"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x14

    if-gez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lmm/purchasesdk/a/e;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "verificationAuthSign signContent is: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lmm/purchasesdk/l/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "<SignatureValue>"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_0

    add-int/lit8 v2, v2, 0x10

    const-string v3, "</SignatureValue>"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lmm/purchasesdk/a/e;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "verificationAuthSign signValue is: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lmm/purchasesdk/l/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x103

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v3, v4, v1, v2}, Lmm/purchasesdk/fingerprint/a;->a(I[B[B[B)I
    :try_end_0
    .catch Lmm/purchasesdk/fingerprint/b; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    sget-object v2, Lmm/purchasesdk/a/e;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "verificationAuthSign verifyWithCert result is: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lmm/purchasesdk/l/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lmm/purchasesdk/a/e;->TAG:Ljava/lang/String;

    const-string v3, "verify failed"

    invoke-static {v2, v3, v1}, Lmm/purchasesdk/l/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    :catch_1
    move-exception v1

    sget-object v1, Lmm/purchasesdk/a/e;->TAG:Ljava/lang/String;

    const-string v2, "base64 decrypt license file failure"

    invoke-static {v1, v2}, Lmm/purchasesdk/l/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "<MM_User_Authorization>"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v1

    const-string v1, "</MM_User_Authorization>"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lmm/purchasesdk/a/e;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "before ndk decode: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmm/purchasesdk/l/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
