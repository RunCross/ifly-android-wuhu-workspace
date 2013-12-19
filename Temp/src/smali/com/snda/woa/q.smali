.class public Lcom/snda/woa/q;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([BI)Ljava/lang/String;
    .locals 9

    const/16 v8, 0x3d

    const/4 v1, 0x0

    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/ "

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    new-instance v5, Ljava/lang/StringBuffer;

    const-string v0, ""

    invoke-direct {v5, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move v3, v1

    :goto_1
    if-ge v3, p1, :cond_5

    aget-byte v6, p0, v3

    add-int/lit8 v0, v3, 0x1

    if-lt v0, p1, :cond_1

    move v2, v1

    :goto_2
    add-int/lit8 v0, v3, 0x2

    if-lt v0, p1, :cond_2

    move v0, v1

    :goto_3
    shr-int/lit8 v7, v6, 0x2

    and-int/lit8 v7, v7, 0x3f

    aget-char v7, v4, v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    shl-int/lit8 v6, v6, 0x4

    and-int/lit8 v6, v6, 0x30

    shr-int/lit8 v7, v2, 0x4

    and-int/lit8 v7, v7, 0xf

    add-int/2addr v6, v7

    aget-char v6, v4, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v6, v3, 0x2

    if-ge v6, p1, :cond_3

    shl-int/lit8 v2, v2, 0x2

    and-int/lit8 v2, v2, 0x3c

    shr-int/lit8 v6, v0, 0x6

    and-int/lit8 v6, v6, 0x3

    add-int/2addr v2, v6

    aget-char v2, v4, v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    and-int/lit8 v0, v0, 0x3f

    aget-char v0, v4, v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_4
    add-int/lit8 v0, v3, 0x3

    move v3, v0

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v3, 0x1

    aget-byte v0, p0, v0

    move v2, v0

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v3, 0x2

    aget-byte v0, p0, v0

    goto :goto_3

    :cond_3
    add-int/lit8 v6, v3, 0x1

    if-ge v6, p1, :cond_4

    shl-int/lit8 v2, v2, 0x2

    and-int/lit8 v2, v2, 0x3c

    shr-int/lit8 v0, v0, 0x6

    and-int/lit8 v0, v0, 0x3

    add-int/2addr v0, v2

    aget-char v0, v4, v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    :cond_4
    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    :cond_5
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static a([B[BI)V
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v0, 0x0

    aget-byte v0, p0, v0

    shl-int/lit8 v0, v0, 0x2

    aget-byte v1, p0, v2

    ushr-int/lit8 v1, v1, 0x4

    or-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    add-int/lit8 v0, p2, 0x1

    array-length v1, p1

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, p2, 0x1

    aget-byte v1, p0, v2

    and-int/lit8 v1, v1, 0xf

    shl-int/lit8 v1, v1, 0x4

    aget-byte v2, p0, v3

    ushr-int/lit8 v2, v2, 0x2

    or-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    :cond_0
    add-int/lit8 v0, p2, 0x2

    array-length v1, p1

    if-ge v0, v1, :cond_1

    add-int/lit8 v0, p2, 0x2

    aget-byte v1, p0, v3

    and-int/lit8 v1, v1, 0x3

    shl-int/lit8 v1, v1, 0x6

    const/4 v2, 0x3

    aget-byte v2, p0, v2

    or-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    :cond_1
    return-void
.end method

.method public static a(Ljava/lang/String;)[B
    .locals 8

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "valid   Base64   codes   have   a   multiple   of   4   characters "

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v3, v0, 0x4

    const-string v0, "=="

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    :goto_0
    mul-int/lit8 v2, v3, 0x3

    sub-int v0, v2, v0

    new-array v4, v0, [B

    const/4 v0, 0x4

    new-array v5, v0, [B

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_4

    move v0, v1

    :goto_2
    array-length v6, v5

    if-ge v0, v6, :cond_3

    const-string v6, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/ "

    mul-int/lit8 v7, v2, 0x4

    add-int/2addr v7, v0

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    const-string v0, "="

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    mul-int/lit8 v0, v2, 0x3

    invoke-static {v5, v4, v0}, Lcom/snda/woa/q;->a([B[BI)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_4
    return-object v4
.end method
