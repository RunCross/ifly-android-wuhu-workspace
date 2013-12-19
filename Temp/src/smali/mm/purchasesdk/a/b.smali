.class public Lmm/purchasesdk/a/b;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lmm/purchasesdk/a/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmm/purchasesdk/a/b;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lmm/purchasesdk/b/a;)Ljava/lang/Boolean;
    .locals 8

    const/4 v1, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lmm/purchasesdk/g/b;

    invoke-direct {v2}, Lmm/purchasesdk/g/b;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lmm/purchasesdk/g/e;

    invoke-direct {v2}, Lmm/purchasesdk/g/e;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lmm/purchasesdk/a/c;

    invoke-direct {v2}, Lmm/purchasesdk/a/c;-><init>()V

    new-instance v3, Lmm/purchasesdk/a/d;

    invoke-direct {v3}, Lmm/purchasesdk/a/d;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lmm/purchasesdk/l/d;->a()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lmm/purchasesdk/a/c;->a(Ljava/lang/String;)V

    invoke-static {}, Lmm/purchasesdk/l/d;->i()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v4}, Lmm/purchasesdk/a/c;->a(Ljava/lang/Boolean;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmm/purchasesdk/g/c;

    :try_start_0
    invoke-interface {v0, v2, v3}, Lmm/purchasesdk/g/c;->a(Lmm/purchasesdk/h/e;Lmm/purchasesdk/h/f;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v3}, Lmm/purchasesdk/a/d;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmm/purchasesdk/l/d;->U(Ljava/lang/String;)V

    invoke-virtual {v3}, Lmm/purchasesdk/a/d;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmm/purchasesdk/l/d;->T(Ljava/lang/String;)V

    invoke-virtual {v3}, Lmm/purchasesdk/a/d;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmm/purchasesdk/l/d;->b(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_1
    invoke-virtual {v3}, Lmm/purchasesdk/a/d;->w()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v3}, Lmm/purchasesdk/a/d;->b()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v3}, Lmm/purchasesdk/a/b;->a(Lmm/purchasesdk/a/d;)V

    invoke-virtual {v3}, Lmm/purchasesdk/a/d;->a()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3}, Lmm/purchasesdk/a/d;->i()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B
    :try_end_0
    .catch Lmm/purchasesdk/e; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    :try_start_1
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v5}, Ljava/lang/String;-><init>([B)V

    invoke-static {v6}, Lmm/purchasesdk/fingerprint/c;->base64decode(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lmm/purchasesdk/e; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    const/4 v6, 0x0

    :try_start_2
    array-length v7, v5

    invoke-static {v5, v6, v7}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {p0, v5}, Lmm/purchasesdk/b/a;->a(Landroid/graphics/Bitmap;)V

    invoke-virtual {v3}, Lmm/purchasesdk/a/d;->h()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lmm/purchasesdk/b/a;->l(Ljava/lang/String;)V

    invoke-virtual {v3}, Lmm/purchasesdk/a/d;->g()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lmm/purchasesdk/b/a;->j(Ljava/lang/String;)V

    invoke-virtual {v3}, Lmm/purchasesdk/a/d;->j()Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {p0, v5}, Lmm/purchasesdk/b/a;->b(Z)V

    invoke-virtual {v3}, Lmm/purchasesdk/a/d;->c()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p0, v5}, Lmm/purchasesdk/b/a;->b(Ljava/lang/Boolean;)V

    invoke-static {}, Lmm/purchasesdk/l/d;->H()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lmm/purchasesdk/b/a;->s(Ljava/lang/String;)V

    invoke-static {}, Lmm/purchasesdk/e/b;->a()Lmm/purchasesdk/e/a;

    move-result-object v5

    iget-object v5, v5, Lmm/purchasesdk/e/a;->a:Lmm/purchasesdk/e/a$a;

    iget-object v5, v5, Lmm/purchasesdk/e/a$a;->ab:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lmm/purchasesdk/b/a;->t(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lmm/purchasesdk/b/a;->c(Ljava/lang/Boolean;)V

    invoke-static {}, Lmm/purchasesdk/l/d;->d()Z

    move-result v0

    invoke-virtual {p0, v0}, Lmm/purchasesdk/b/a;->a(Z)V

    invoke-virtual {v3}, Lmm/purchasesdk/a/d;->a()Lmm/purchasesdk/b/e;

    move-result-object v0

    if-nez v0, :cond_2

    const/16 v0, 0x111

    invoke-static {v0}, Lmm/purchasesdk/PurchaseCode;->setStatusCode(I)V

    move-object v0, v1

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v5, Lmm/purchasesdk/a/b;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "base 64 decrypt license file failure"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lmm/purchasesdk/l/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_1

    :cond_2
    invoke-virtual {p0, v0}, Lmm/purchasesdk/b/a;->a(Lmm/purchasesdk/b/e;)V

    invoke-virtual {v3}, Lmm/purchasesdk/a/d;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmm/purchasesdk/b/a;->e(Ljava/lang/String;)V

    invoke-virtual {v3}, Lmm/purchasesdk/a/d;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmm/purchasesdk/b/a;->f(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_2
    .catch Lmm/purchasesdk/e; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    goto/16 :goto_1

    :cond_3
    move-object v0, v1

    goto/16 :goto_1

    :catch_1
    move-exception v0

    const/16 v5, 0x73

    invoke-static {v5}, Lmm/purchasesdk/PurchaseCode;->setStatusCode(I)V

    sget-object v5, Lmm/purchasesdk/a/b;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "checkAuth failure "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lmm/purchasesdk/e;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lmm/purchasesdk/l/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    move-object v0, v1

    goto/16 :goto_1
.end method

.method public static a(Lorg/xmlpull/v1/XmlPullParser;)Lmm/purchasesdk/a/a;
    .locals 6

    const/4 v1, 0x0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    move v2, v0

    move-object v0, v1

    :goto_0
    const/4 v3, 0x1

    if-eq v2, v3, :cond_e

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    goto :goto_0

    :pswitch_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MM_User_Authorization"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v0, Lmm/purchasesdk/a/a;

    invoke-direct {v0}, Lmm/purchasesdk/a/a;-><init>()V

    goto :goto_1

    :cond_1
    const-string v3, "IMEI"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lmm/purchasesdk/a/a;->c:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const-string v3, "IMSI"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lmm/purchasesdk/a/a;->d:Ljava/lang/String;

    goto :goto_1

    :cond_3
    const-string v3, "mobile_phone"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lmm/purchasesdk/a/a;->e:Ljava/lang/String;

    goto :goto_1

    :cond_4
    const-string v3, "APPUID"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lmm/purchasesdk/a/a;->f:Ljava/lang/String;

    goto :goto_1

    :cond_5
    const-string v3, "cotnentID"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lmm/purchasesdk/a/a;->g:Ljava/lang/String;

    goto :goto_1

    :cond_6
    const-string v3, "PayCode"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lmm/purchasesdk/a/a;->m:Ljava/lang/String;

    goto :goto_1

    :cond_7
    const-string v3, "order_time"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lmm/purchasesdk/a/a;->h:Ljava/lang/String;

    goto :goto_1

    :cond_8
    const-string v3, "notBeforetime"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyyMMddHHmmss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iput-wide v2, v0, Lmm/purchasesdk/a/a;->a:J

    const-string v2, "AUTH_XML"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "before: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, v0, Lmm/purchasesdk/a/a;->a:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lmm/purchasesdk/l/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_9
    const-string v3, "notAftertime"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyyMMddHHmmss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iput-wide v2, v0, Lmm/purchasesdk/a/a;->b:J

    const-string v2, "AUTH_XML"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "after: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, v0, Lmm/purchasesdk/a/a;->b:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lmm/purchasesdk/l/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_a
    const-string v3, "digestAlg"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lmm/purchasesdk/a/a;->i:Ljava/lang/String;

    goto/16 :goto_1

    :cond_b
    const-string v3, "digest"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lmm/purchasesdk/a/a;->j:Ljava/lang/String;

    goto/16 :goto_1

    :cond_c
    const-string v3, "timestamp"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lmm/purchasesdk/a/a;->k:Ljava/lang/String;

    goto/16 :goto_1

    :cond_d
    const-string v3, "SignatureValue"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lmm/purchasesdk/a/a;->l:Ljava/lang/String;

    goto/16 :goto_1

    :cond_e
    if-eqz v0, :cond_f

    iget-object v2, v0, Lmm/purchasesdk/a/a;->f:Ljava/lang/String;

    if-nez v2, :cond_f

    move-object v0, v1

    :cond_f
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public static a([BLjava/lang/String;)Lmm/purchasesdk/a/a;
    .locals 2

    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {v0, v1, p1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-static {v0}, Lmm/purchasesdk/a/b;->a(Lorg/xmlpull/v1/XmlPullParser;)Lmm/purchasesdk/a/a;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lmm/purchasesdk/a/d;)V
    .locals 4

    invoke-virtual {p0}, Lmm/purchasesdk/a/d;->f()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lmm/purchasesdk/a/b;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "dyQuestion-->"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmm/purchasesdk/l/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lmm/purchasesdk/fingerprint/c;->e:Ljava/lang/Boolean;

    invoke-virtual {p0}, Lmm/purchasesdk/a/d;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmm/purchasesdk/fingerprint/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lmm/purchasesdk/fingerprint/c;->e:Ljava/lang/Boolean;

    goto :goto_0
.end method
