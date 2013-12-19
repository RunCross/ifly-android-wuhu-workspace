.class public Lmm/purchasesdk/fingerprint/a;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I[B[B[B)I
    .locals 3

    const v2, -0x7ffffff9

    if-nez p1, :cond_0

    new-instance v0, Lmm/purchasesdk/fingerprint/b;

    const-string v1, "Verify failed! Key cann\'t be null!"

    invoke-direct {v0, v2, v1}, Lmm/purchasesdk/fingerprint/b;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Lmm/purchasesdk/fingerprint/b;

    const-string v1, "Verify failed! The data to be signed cann\'t be null!"

    invoke-direct {v0, v2, v1}, Lmm/purchasesdk/fingerprint/b;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_1
    if-nez p3, :cond_2

    new-instance v0, Lmm/purchasesdk/fingerprint/b;

    const-string v1, "Verify failed! The signed data cann\'t be null!"

    invoke-direct {v0, v2, v1}, Lmm/purchasesdk/fingerprint/b;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {p1}, Lmm/purchasesdk/fingerprint/a;->a([B)[B

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    invoke-static {v1}, Lmm/purchasesdk/fingerprint/c;->base64decode(Ljava/lang/String;)[B

    move-result-object p1

    :cond_3
    invoke-static {p3}, Lmm/purchasesdk/fingerprint/a;->a([B)[B

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    invoke-static {v1}, Lmm/purchasesdk/fingerprint/c;->base64decode(Ljava/lang/String;)[B

    move-result-object p3

    :cond_4
    const/16 v0, 0x101

    if-ne p0, v0, :cond_5

    const-string v0, "MD2WITHRSA"

    :goto_0
    invoke-static {v0, p1, p2, p3}, Lmm/purchasesdk/fingerprint/a;->a(Ljava/lang/String;[B[B[B)I

    move-result v0

    return v0

    :cond_5
    const/16 v0, 0x102

    if-ne p0, v0, :cond_6

    const-string v0, "MD5WITHRSA"

    goto :goto_0

    :cond_6
    const/16 v0, 0x103

    if-ne p0, v0, :cond_7

    const-string v0, "SHA1WITHRSA"

    goto :goto_0

    :cond_7
    new-instance v0, Lmm/purchasesdk/fingerprint/b;

    const v1, -0x7ffffffb

    const-string v2, "Don\'t Support Your Algorithms"

    invoke-direct {v0, v1, v2}, Lmm/purchasesdk/fingerprint/b;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public static a(Ljava/lang/String;[B[B[B)I
    .locals 3

    const/4 v0, 0x1

    :try_start_0
    invoke-static {p1}, Lmm/purchasesdk/fingerprint/a;->a([B)Ljava/security/PublicKey;

    move-result-object v1

    invoke-static {p0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    invoke-virtual {v2, p2}, Ljava/security/Signature;->update([B)V

    invoke-virtual {v2, p3}, Ljava/security/Signature;->verify([B)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static a([B)Ljava/security/PublicKey;
    .locals 2

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v1, "X.509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    return-object v0
.end method

.method public static a([B)[B
    .locals 5

    const/4 v1, 0x0

    const-string v2, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789/+= \r\n-"

    move v0, v1

    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_1

    aget-byte v3, p0, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    array-length v2, p0

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p0}, Ljava/lang/String;-><init>([B)V

    :goto_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_3

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-eq v3, v4, :cond_2

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0xd

    if-eq v3, v4, :cond_2

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0xa

    if-eq v3, v4, :cond_2

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_1
.end method
