.class public Lmm/purchasesdk/e/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmm/purchasesdk/e/a$b;,
        Lmm/purchasesdk/e/a$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field public W:Ljava/lang/String;

.field public a:Lmm/purchasesdk/e/a$a;

.field public a:Lmm/purchasesdk/e/a$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lmm/purchasesdk/e/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmm/purchasesdk/e/a;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmm/purchasesdk/e/a;->a:Lmm/purchasesdk/e/a$a;

    iput-object v0, p0, Lmm/purchasesdk/e/a;->a:Lmm/purchasesdk/e/a$b;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lmm/purchasesdk/e/a;
    .locals 4

    new-instance v1, Lmm/purchasesdk/e/a;

    invoke-direct {v1}, Lmm/purchasesdk/e/a;-><init>()V

    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v3, "utf-8"

    invoke-interface {v2, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    :goto_0
    const/4 v3, 0x1

    if-eq v0, v3, :cond_3

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_1
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0

    :pswitch_0
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "APPID"

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lmm/purchasesdk/e/a;->W:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const-string v3, "contentSignature"

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v1, v2}, Lmm/purchasesdk/e/a;->a(Lmm/purchasesdk/e/a;Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1

    :cond_2
    const-string v3, "copyrightSignature"

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v1, v2}, Lmm/purchasesdk/e/a;->b(Lmm/purchasesdk/e/a;Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1

    :cond_3
    return-object v1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private static a(Lmm/purchasesdk/e/a;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    :goto_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0

    :pswitch_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmm/purchasesdk/e/a;->a:Lmm/purchasesdk/e/a$a;

    if-nez v1, :cond_1

    new-instance v1, Lmm/purchasesdk/e/a$a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, p0}, Lmm/purchasesdk/e/a$a;-><init>(Lmm/purchasesdk/e/a;)V

    iput-object v1, p0, Lmm/purchasesdk/e/a;->a:Lmm/purchasesdk/e/a$a;

    :cond_1
    const-string v1, "time"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    iget-object v0, p0, Lmm/purchasesdk/e/a;->a:Lmm/purchasesdk/e/a$a;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmm/purchasesdk/e/a$a;->X:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const-string v1, "programID"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3

    iget-object v0, p0, Lmm/purchasesdk/e/a;->a:Lmm/purchasesdk/e/a$a;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmm/purchasesdk/e/a$a;->Y:Ljava/lang/String;

    goto :goto_1

    :cond_3
    const-string v1, "digestAlg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_4

    iget-object v0, p0, Lmm/purchasesdk/e/a;->a:Lmm/purchasesdk/e/a$a;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmm/purchasesdk/e/a$a;->Z:Ljava/lang/String;

    goto :goto_1

    :cond_4
    const-string v1, "digest"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_5

    iget-object v0, p0, Lmm/purchasesdk/e/a;->a:Lmm/purchasesdk/e/a$a;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmm/purchasesdk/e/a$a;->aa:Ljava/lang/String;

    goto :goto_1

    :cond_5
    const-string v1, "certificate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_6

    iget-object v0, p0, Lmm/purchasesdk/e/a;->a:Lmm/purchasesdk/e/a$a;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmm/purchasesdk/e/a$a;->ab:Ljava/lang/String;

    goto :goto_1

    :cond_6
    const-string v1, "signature"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmm/purchasesdk/e/a;->a:Lmm/purchasesdk/e/a$a;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmm/purchasesdk/e/a$a;->ac:Ljava/lang/String;

    goto :goto_1

    :pswitch_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "contentSignature"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_7
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;Lmm/purchasesdk/e/a;)Z
    .locals 9

    const/4 v2, 0x0

    const/4 v1, 0x1

    const-string v3, "<APPID>"

    const-string v0, "</APPID>"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    sget-object v6, Lmm/purchasesdk/e/a;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "localCopyright-->"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lmm/purchasesdk/l/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-ltz v4, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v6

    add-int/lit8 v0, v0, 0x6

    if-ge v5, v0, :cond_2

    :cond_0
    move v1, v2

    :cond_1
    :goto_0
    return v1

    :cond_2
    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lmm/purchasesdk/e/a;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "CIDC content is: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lmm/purchasesdk/l/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x103

    :try_start_0
    iget-object v5, p1, Lmm/purchasesdk/e/a;->a:Lmm/purchasesdk/e/a$a;

    iget-object v5, v5, Lmm/purchasesdk/e/a$a;->ab:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iget-object v6, p1, Lmm/purchasesdk/e/a;->a:Lmm/purchasesdk/e/a$a;

    iget-object v6, v6, Lmm/purchasesdk/e/a$a;->ac:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-static {v4, v5, v0, v6}, Lmm/purchasesdk/fingerprint/a;->a(I[B[B[B)I
    :try_end_0
    .catch Lmm/purchasesdk/fingerprint/b; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    :goto_1
    sget-object v4, Lmm/purchasesdk/e/a;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "CIDC verifyWithCert result is: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lmm/purchasesdk/l/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_3

    move v1, v2

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v4, Lmm/purchasesdk/e/a;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lmm/purchasesdk/fingerprint/b;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lmm/purchasesdk/l/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_1

    :catch_1
    move-exception v0

    sget-object v0, Lmm/purchasesdk/e/a;->TAG:Ljava/lang/String;

    const-string v4, "base 64 decrypt license file failure"

    invoke-static {v0, v4}, Lmm/purchasesdk/l/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_1

    :cond_3
    const-string v0, "</contentSignature>"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v4

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lmm/purchasesdk/e/a;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "TAAC content is: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lmm/purchasesdk/l/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x103

    :try_start_1
    invoke-static {}, Lmm/purchasesdk/l/d;->V()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iget-object v5, p1, Lmm/purchasesdk/e/a;->a:Lmm/purchasesdk/e/a$b;

    iget-object v5, v5, Lmm/purchasesdk/e/a$b;->ac:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-static {v3, v4, v0, v5}, Lmm/purchasesdk/fingerprint/a;->a(I[B[B[B)I
    :try_end_1
    .catch Lmm/purchasesdk/fingerprint/b; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-result v0

    :goto_2
    sget-object v3, Lmm/purchasesdk/e/a;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "TAAC verifyWithCert result is: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lmm/purchasesdk/l/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    move v1, v2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    sget-object v3, Lmm/purchasesdk/e/a;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lmm/purchasesdk/fingerprint/b;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lmm/purchasesdk/l/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_2

    :catch_3
    move-exception v0

    sget-object v0, Lmm/purchasesdk/e/a;->TAG:Ljava/lang/String;

    const-string v3, "base 64 decrypt license file failure"

    invoke-static {v0, v3}, Lmm/purchasesdk/l/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_2
.end method

.method private static b(Lmm/purchasesdk/e/a;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    :goto_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0

    :pswitch_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmm/purchasesdk/e/a;->a:Lmm/purchasesdk/e/a$b;

    if-nez v1, :cond_1

    new-instance v1, Lmm/purchasesdk/e/a$b;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, p0}, Lmm/purchasesdk/e/a$b;-><init>(Lmm/purchasesdk/e/a;)V

    iput-object v1, p0, Lmm/purchasesdk/e/a;->a:Lmm/purchasesdk/e/a$b;

    :cond_1
    const-string v1, "copyrightID"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    iget-object v0, p0, Lmm/purchasesdk/e/a;->a:Lmm/purchasesdk/e/a$b;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmm/purchasesdk/e/a$b;->ad:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const-string v1, "copyRightType"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3

    iget-object v0, p0, Lmm/purchasesdk/e/a;->a:Lmm/purchasesdk/e/a$b;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmm/purchasesdk/e/a$b;->ae:Ljava/lang/String;

    goto :goto_1

    :cond_3
    const-string v1, "digestAlg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_4

    iget-object v0, p0, Lmm/purchasesdk/e/a;->a:Lmm/purchasesdk/e/a$b;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmm/purchasesdk/e/a$b;->Z:Ljava/lang/String;

    goto :goto_1

    :cond_4
    const-string v1, "digest"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_5

    iget-object v0, p0, Lmm/purchasesdk/e/a;->a:Lmm/purchasesdk/e/a$b;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmm/purchasesdk/e/a$b;->aa:Ljava/lang/String;

    goto :goto_1

    :cond_5
    const-string v1, "timestamp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_6

    iget-object v0, p0, Lmm/purchasesdk/e/a;->a:Lmm/purchasesdk/e/a$b;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmm/purchasesdk/e/a$b;->af:Ljava/lang/String;

    goto :goto_1

    :cond_6
    const-string v1, "signature"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmm/purchasesdk/e/a;->a:Lmm/purchasesdk/e/a$b;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmm/purchasesdk/e/a$b;->ac:Ljava/lang/String;

    goto :goto_1

    :pswitch_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "copyrightSignature"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_7
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
