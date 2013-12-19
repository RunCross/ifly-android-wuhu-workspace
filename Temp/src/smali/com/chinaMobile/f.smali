.class public abstract Lcom/chinaMobile/f;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/io/PrintStream;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/io/InputStream;[B)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    :goto_1
    return v0

    :cond_0
    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    array-length v0, p1

    goto :goto_1
.end method

.method private a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 5

    const/16 v4, 0x39

    new-array v1, v4, [B

    new-instance v0, Ljava/io/PrintStream;

    invoke-direct {v0, p2}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/chinaMobile/f;->a:Ljava/io/PrintStream;

    :goto_0
    invoke-static {p1, v1}, Lcom/chinaMobile/f;->a(Ljava/io/InputStream;[B)I

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_1

    add-int/lit8 v3, v0, 0x3

    if-gt v3, v2, :cond_0

    const/4 v3, 0x3

    invoke-virtual {p0, p2, v1, v0, v3}, Lcom/chinaMobile/f;->a(Ljava/io/OutputStream;[BII)V

    :goto_2
    add-int/lit8 v0, v0, 0x3

    goto :goto_1

    :cond_0
    sub-int v3, v2, v0

    invoke-virtual {p0, p2, v1, v0, v3}, Lcom/chinaMobile/f;->a(Ljava/io/OutputStream;[BII)V

    goto :goto_2

    :cond_1
    if-lt v2, v4, :cond_2

    iget-object v0, p0, Lcom/chinaMobile/f;->a:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public final a([B)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :try_start_0
    invoke-direct {p0, v1, v0}, Lcom/chinaMobile/f;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    const-string v1, "8859_1"

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/Error;

    const-string v1, "CharacterEncoder.encode internal error"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract a(Ljava/io/OutputStream;[BII)V
.end method
