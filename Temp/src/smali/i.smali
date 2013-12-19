.class public Li;
.super Ljava/lang/Object;


# static fields
.field public static a:Li;


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Li;->a:Li;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li;->b:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;)Li;
    .locals 1

    sget-object v0, Li;->a:Li;

    if-nez v0, :cond_0

    new-instance v0, Li;

    invoke-direct {v0, p0}, Li;-><init>(Landroid/content/Context;)V

    sput-object v0, Li;->a:Li;

    :cond_0
    sget-object v0, Li;->a:Li;

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    move v2, v1

    :goto_1
    array-length v3, v4

    if-lt v2, v3, :cond_2

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    array-length v3, v5

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    aget-char v3, v5, v0

    add-int/lit8 v0, v0, 0x1

    :goto_2
    aget-char v7, v4, v2

    xor-int/2addr v3, v7

    neg-int v3, v3

    add-int/lit8 v3, v3, -0x1

    int-to-char v3, v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    aget-char v3, v5, v1

    int-to-char v7, v2

    add-int/2addr v3, v7

    int-to-char v3, v3

    goto :goto_2
.end method

.method public static a([B)[B
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    :cond_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    move-object v1, v0

    goto :goto_0
.end method

.method private b()Ljavax/crypto/Cipher;
    .locals 4

    :try_start_0
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    new-instance v0, Ljavax/crypto/spec/DESKeySpec;

    invoke-virtual {p0}, Li;->a()[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljavax/crypto/spec/DESKeySpec;-><init>([B)V

    const-string v2, "DES"

    invoke-static {v2}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v2

    const-string v0, "DES"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 3

    :try_start_0
    iget-object v0, p0, Li;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    new-instance v0, Ljavax/crypto/CipherInputStream;

    invoke-direct {p0}, Li;->b()Ljavax/crypto/Cipher;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()[B
    .locals 3

    const-string v0, "\u5211\u1994\u0ac9\u0462"

    const/16 v1, 0xa

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    invoke-static {v2, v0}, Li;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Li;->a([B)[B

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 0x2
        0x9ct 0xadt
        0x0t 0xe6t
        0x5ft 0xf5t
        0x9at 0xadt
        0x9at 0xadt
        0xcat 0xadt
        0xcet 0xadt
        0xc2t 0xadt
        0x88t 0xadt
        0x86t 0xadt
    .end array-data
.end method
