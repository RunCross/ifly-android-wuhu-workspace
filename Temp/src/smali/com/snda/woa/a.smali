.class public Lcom/snda/woa/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "MFwwDQYJKoZIhvcNAQEBBQADSwAwSAJBANaXfXzDAON6GRKkk0G2FQVI/1MGjE7OEcDI8sv4EPhjhxon0a6oL//dDWuWwCSMUGfHY6xGwEvChO/LBY30Wo8CAwEAAQ=="

    sput-object v0, Lcom/snda/woa/a;->a:Ljava/lang/String;

    const-string v0, "1.0.1"

    sput-object v0, Lcom/snda/woa/a;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/snda/woa/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "RSA/ECB/PKCS1Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    sget-object v2, Lcom/snda/woa/a;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/snda/woa/a;->b(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/snda/woa/x;->a([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/snda/woa/a;->a:Ljava/lang/String;

    sput-object p1, Lcom/snda/woa/a;->b:Ljava/lang/String;

    return-void
.end method

.method private static b(Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 2

    invoke-static {p0}, Lcom/snda/woa/q;->a(Ljava/lang/String;)[B

    move-result-object v0

    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v1, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    const-string v0, "RSA"

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    return-object v0
.end method
