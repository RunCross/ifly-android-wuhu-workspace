.class public Lcom/unipay/wostore/tabledata/ByteProcess;
.super Ljava/lang/Object;


# static fields
.field public static final CHARSIZE:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final appendToByteArray([B[BI)[B
    .locals 3

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    add-int v1, p2, v0

    aget-byte v2, p1, v0

    aput-byte v2, p0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public static final booleanToByteArray(Z)[B
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-array v2, v0, [B

    if-eqz p0, :cond_0

    :goto_0
    int-to-byte v0, v0

    aput-byte v0, v2, v1

    return-object v2

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static final byteArrayToChar([B)C
    .locals 2

    const/4 v0, 0x0

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    const/4 v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x0

    or-int/2addr v0, v1

    int-to-char v0, v0

    return v0
.end method

.method public static final byteArrayToCharArray([B)[C
    .locals 5

    array-length v0, p0

    div-int/lit8 v1, v0, 0x2

    new-array v2, v1, [C

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v4, v0, 0x1

    mul-int/lit8 v4, v4, 0x2

    invoke-static {p0, v3, v4}, Lcom/unipay/wostore/tabledata/ByteProcess;->getSubByteArray([BII)[B

    move-result-object v3

    invoke-static {v3}, Lcom/unipay/wostore/tabledata/ByteProcess;->byteArrayToChar([B)C

    move-result v3

    aput-char v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public static final byteArrayToInt([BI)I
    .locals 2

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x0

    or-int/2addr v0, v1

    return v0
.end method

.method public static final byteArrayToLong([BI)J
    .locals 6

    const-wide/16 v1, 0x0

    array-length v3, p0

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v4, v3, -0x1

    if-ge v0, v4, :cond_0

    aget-byte v4, p0, v0

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    add-long/2addr v1, v4

    const/16 v4, 0x8

    shl-long/2addr v1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v3, -0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v3, v0

    add-long v0, v1, v3

    return-wide v0
.end method

.method public static final byteArrayToShort([BI)S
    .locals 2

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x0

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public static final byteArrayToString([B)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static final charArrayToByteArray([C)[B
    .locals 4

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v1, v0, [B

    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    aget-char v2, p0, v0

    invoke-static {v2}, Lcom/unipay/wostore/tabledata/ByteProcess;->charToByteArray(C)[B

    move-result-object v2

    mul-int/lit8 v3, v0, 0x2

    invoke-static {v1, v2, v3}, Lcom/unipay/wostore/tabledata/ByteProcess;->appendToByteArray([B[BI)[B

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static final charToByteArray(C)[B
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    shr-int/lit8 v2, p0, 0x0

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-object v0
.end method

.method public static final compareByteArray([B[B)Z
    .locals 1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final getIntFromString(Ljava/lang/String;I)I
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x2

    new-array v0, v0, [C

    add-int/lit8 v1, p1, 0x2

    invoke-virtual {p0, p1, v1, v0, v2}, Ljava/lang/String;->getChars(II[CI)V

    invoke-static {v0}, Lcom/unipay/wostore/tabledata/ByteProcess;->charArrayToByteArray([C)[B

    move-result-object v0

    invoke-static {v0, v2}, Lcom/unipay/wostore/tabledata/ByteProcess;->byteArrayToInt([BI)I

    move-result v0

    return v0
.end method

.method public static final getSubByteArray([BII)[B
    .locals 4

    sub-int v0, p2, p1

    new-array v1, v0, [B

    move v0, p1

    :goto_0
    if-ge v0, p2, :cond_0

    sub-int v2, v0, p1

    aget-byte v3, p0, v0

    aput-byte v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static final intToByteArray(I)[B
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [B

    const/4 v1, 0x0

    shr-int/lit8 v2, p0, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    shr-int/lit8 v2, p0, 0x0

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-object v0
.end method

.method public static final longToByteArray(J)[B
    .locals 8

    const/16 v7, 0x8

    const/4 v6, 0x0

    const-wide/16 v4, 0xff

    new-array v0, v7, [B

    const/16 v1, 0x38

    shr-long v1, p0, v1

    and-long/2addr v1, v4

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, v0, v6

    const/4 v1, 0x1

    const/16 v2, 0x30

    shr-long v2, p0, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x28

    shr-long v2, p0, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0x20

    shr-long v2, p0, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0x18

    shr-long v2, p0, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0x10

    shr-long v2, p0, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x6

    shr-long v2, p0, v7

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x7

    shr-long v2, p0, v6

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-object v0
.end method

.method public static final stringToByteArray(Ljava/lang/String;)[B
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0
.end method

.method public static final stringToCharArray(Ljava/lang/String;)[C
    .locals 1

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public _finalize()V
    .locals 0

    return-void
.end method
