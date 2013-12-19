.class public final Lcom/ccit/mmwlan/a/h;
.super Ljava/lang/Object;


# static fields
.field private static a:I

.field private static b:I

.field private static c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, -0x1020305

    sput v0, Lcom/ccit/mmwlan/a/h;->a:I

    const/16 v0, 0x6f

    sput v0, Lcom/ccit/mmwlan/a/h;->b:I

    const/4 v0, 0x0

    sput v0, Lcom/ccit/mmwlan/a/h;->c:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([B)Ljava/lang/String;
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x2

    const/4 v3, 0x0

    const/4 v1, 0x0

    new-array v0, v9, [B

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v5, v3}, Ljava/io/ByteArrayInputStream;->mark(I)V

    invoke-virtual {v5}, Ljava/io/ByteArrayInputStream;->reset()V

    array-length v2, v0

    invoke-virtual {v5, v0, v3, v2}, Ljava/io/ByteArrayInputStream;->read([BII)I

    const/4 v2, 0x1

    invoke-virtual {v5, v2}, Ljava/io/ByteArrayInputStream;->mark(I)V

    invoke-static {v0, v3}, Lcom/ccit/mmwlan/a/h;->b([BI)I

    move-result v2

    sget v4, Lcom/ccit/mmwlan/a/h;->a:I

    if-eq v2, v4, :cond_0

    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Protocol Version error! protocolVersion="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    array-length v2, v0

    invoke-virtual {v5, v0, v3, v2}, Ljava/io/ByteArrayInputStream;->read([BII)I

    invoke-virtual {v5, v8}, Ljava/io/ByteArrayInputStream;->mark(I)V

    array-length v2, v0

    invoke-virtual {v5, v0, v3, v2}, Ljava/io/ByteArrayInputStream;->read([BII)I

    const/4 v2, 0x3

    invoke-virtual {v5, v2}, Ljava/io/ByteArrayInputStream;->mark(I)V

    invoke-static {v0, v3}, Lcom/ccit/mmwlan/a/h;->b([BI)I

    move-result v2

    const-string v4, "MmClientSdk"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "MoServerHttpPostResponse() messageType -> "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    array-length v2, v0

    invoke-virtual {v5, v0, v3, v2}, Ljava/io/ByteArrayInputStream;->read([BII)I

    invoke-virtual {v5, v9}, Ljava/io/ByteArrayInputStream;->mark(I)V

    invoke-static {v0, v3}, Lcom/ccit/mmwlan/a/h;->b([BI)I

    move-result v2

    sget v4, Lcom/ccit/mmwlan/a/h;->b:I

    if-eq v2, v4, :cond_1

    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "TransactionID error! TransactionID="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-array v6, v8, [B

    array-length v2, v6

    invoke-virtual {v5, v6, v3, v2}, Ljava/io/ByteArrayInputStream;->read([BII)I

    const/4 v2, 0x5

    invoke-virtual {v5, v2}, Ljava/io/ByteArrayInputStream;->mark(I)V

    invoke-static {v6, v3}, Lcom/ccit/mmwlan/a/h;->a([BI)S

    move-result v2

    if-eqz v2, :cond_2

    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "ReturnCode error! returnCode="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    array-length v2, v6

    invoke-virtual {v5, v6, v3, v2}, Ljava/io/ByteArrayInputStream;->read([BII)I

    const/4 v2, 0x6

    invoke-virtual {v5, v2}, Ljava/io/ByteArrayInputStream;->mark(I)V

    invoke-static {v6, v3}, Lcom/ccit/mmwlan/a/h;->a([BI)S

    move-result v7

    move v2, v3

    :goto_0
    if-lt v2, v7, :cond_3

    return-object v1

    :cond_3
    array-length v4, v6

    invoke-virtual {v5, v6, v3, v4}, Ljava/io/ByteArrayInputStream;->read([BII)I

    const/4 v4, 0x7

    invoke-virtual {v5, v4}, Ljava/io/ByteArrayInputStream;->mark(I)V

    array-length v4, v6

    invoke-virtual {v5, v6, v3, v4}, Ljava/io/ByteArrayInputStream;->read([BII)I

    const/16 v4, 0x8

    invoke-virtual {v5, v4}, Ljava/io/ByteArrayInputStream;->mark(I)V

    array-length v4, v0

    invoke-virtual {v5, v0, v3, v4}, Ljava/io/ByteArrayInputStream;->read([BII)I

    const/16 v4, 0x9

    invoke-virtual {v5, v4}, Ljava/io/ByteArrayInputStream;->mark(I)V

    invoke-static {v0, v3}, Lcom/ccit/mmwlan/a/h;->b([BI)I

    move-result v0

    new-array v4, v0, [B

    array-length v0, v4

    invoke-virtual {v5, v4, v3, v0}, Ljava/io/ByteArrayInputStream;->read([BII)I

    const/16 v0, 0xa

    invoke-virtual {v5, v0}, Ljava/io/ByteArrayInputStream;->mark(I)V

    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v8, "utf-8"

    invoke-direct {v0, v4, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    move-object v0, v1

    goto :goto_1
.end method

.method private static a([BI)S
    .locals 2

    const/4 v0, 0x0

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    shl-int/lit8 v0, v0, 0x8

    const/4 v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    int-to-short v1, v1

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method private static b([BI)I
    .locals 2

    const/4 v0, 0x0

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    const/4 v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    const/4 v1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const/4 v1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method
