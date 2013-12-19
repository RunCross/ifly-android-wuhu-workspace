.class public Lcom/test/Helper;
.super Ljava/lang/Object;


# static fields
.field public static _urlCDN:Ljava/lang/String;

.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/test/Helper;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()[Ljava/lang/String;
    .locals 10

    const/4 v9, -0x1

    const/4 v2, 0x0

    const/4 v8, 0x3

    :try_start_0
    invoke-static {}, Lcom/test/RooneyJActivity;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "dtool.txt"

    invoke-virtual {v0, v1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v0

    new-array v0, v0, [B

    :cond_0
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-ne v9, v1, :cond_0

    sget-object v1, Lcom/test/Helper;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/square_enix/million/util/Crypt;->decode([B[B)[B

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    move v1, v2

    :goto_0
    array-length v4, v0

    if-lt v1, v4, :cond_8

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    sget-object v1, Lcom/test/enter/EnterDef;->PhoneNumber_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v8, :cond_1

    const/4 v1, 0x0

    aget-object v1, v0, v1

    sput-object v1, Lcom/test/enter/EnterDef;->PhoneNumber_:Ljava/lang/String;

    :cond_1
    sget-object v1, Lcom/test/enter/EnterDef;->Password_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v8, :cond_2

    const/4 v1, 0x1

    aget-object v1, v0, v1

    sput-object v1, Lcom/test/enter/EnterDef;->Password_:Ljava/lang/String;

    :cond_2
    sget-object v1, Lcom/test/enter/EnterDef;->SelectUrlRoot_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v8, :cond_3

    const/4 v1, 0x3

    aget-object v1, v0, v1

    sput-object v1, Lcom/test/enter/EnterDef;->SelectUrlRoot_:Ljava/lang/String;

    :cond_3
    sget-object v1, Lcom/test/enter/EnterDef;->SelectUrlTop_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v8, :cond_4

    const/4 v1, 0x4

    aget-object v1, v0, v1

    sput-object v1, Lcom/test/enter/EnterDef;->SelectUrlTop_:Ljava/lang/String;

    :cond_4
    sget v1, Lcom/test/enter/EnterDef;->SelectWorld_:I

    if-ne v1, v9, :cond_5

    const/4 v1, 0x5

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/test/enter/EnterDef;->SelectWorld_:I

    :cond_5
    sget-object v1, Lcom/test/enter/EnterDef;->SelectUrlBilling_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v8, :cond_6

    const/4 v1, 0x6

    aget-object v1, v0, v1

    sput-object v1, Lcom/test/enter/EnterDef;->SelectUrlBilling_:Ljava/lang/String;

    :cond_6
    sget v1, Lcom/test/enter/EnterDef;->OpenBilling_:I

    if-nez v1, :cond_7

    const/4 v1, 0x7

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/test/enter/EnterDef;->OpenBilling_:I

    :cond_7
    :goto_1
    return-object v0

    :cond_8
    const-string v4, ">-> %d> [%s]"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aget-object v7, v0, v1

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/test/Debug;->log(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "\u30d5\u30a1\u30a4\u30eb\u304c\u958b\u3051\u307e\u305b\u3093:[dtool.txt]"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/test/Debug;->err(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static evidence(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "\u30ed\u30b0\u30a4\u30f3ID\u304c\u4e0d\u6b63\u3067\u3059"

    invoke-static {v0}, Lcom/test/Debug;->log(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const-string v0, "\u30ed\u30b0\u30a4\u30f3\u30d1\u30b9\u304c\u4e0d\u6b63\u3067\u3059"

    invoke-static {v0}, Lcom/test/Debug;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    move v0, v1

    :goto_1
    if-nez v0, :cond_9

    const-string v0, "\u66f4\u65b0\u306e\u5fc5\u8981\u306f\u3042\u308a\u307e\u305b\u3093 %s:%s %s:%s"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v1

    sget-object v1, Lcom/test/Helper;->a:Ljava/lang/String;

    aput-object v1, v3, v2

    aput-object p1, v3, v5

    sget-object v1, Lcom/test/Helper;->b:Ljava/lang/String;

    aput-object v1, v3, v4

    invoke-static {v0, v3}, Lcom/test/Debug;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    move v0, v1

    goto :goto_1

    :cond_7
    sget-object v0, Lcom/test/Helper;->a:Ljava/lang/String;

    if-eqz v0, :cond_8

    sget-object v0, Lcom/test/Helper;->a:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/test/Helper;->b:Ljava/lang/String;

    if-eqz v0, :cond_8

    sget-object v0, Lcom/test/Helper;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    goto :goto_1

    :cond_8
    move v0, v2

    goto :goto_1

    :cond_9
    sput-object p0, Lcom/test/Helper;->a:Ljava/lang/String;

    sput-object p1, Lcom/test/Helper;->b:Ljava/lang/String;

    const-string v0, ">evidence> loginId:[%s] loginPass:[%s]"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p0, v3, v1

    aput-object p1, v3, v2

    invoke-static {v0, v3}, Lcom/test/Debug;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, ">evidence> urlRoot:[%s] urlTop:[%s] selectWorld:[%d]"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {}, Lcom/test/enter/EnterDef;->GetUrlRoot()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {}, Lcom/test/enter/EnterDef;->GetUrlTop()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    sget v2, Lcom/test/enter/EnterDef;->SelectWorld_:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v5

    invoke-static {v0, v3}, Lcom/test/Debug;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    invoke-static {}, Lcom/test/RooneyJActivity;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "dtool.txt"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\n"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/test/enter/EnterDef;->GetUrlRoot()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/test/enter/EnterDef;->GetUrlTop()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/test/enter/EnterDef;->SelectWorld_:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/test/enter/EnterDef;->SelectUrlBilling_:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/test/enter/EnterDef;->OpenBilling_:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/test/Helper;->c:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v2, v3}, Lcom/square_enix/million/util/Crypt;->encode(Ljava/lang/String;[B)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v0, "\u66f8\u304d\u8fbc\u307f\u30a8\u30e9\u30fc\u304c\u767a\u751f\u3057\u307e\u3057\u305f:[dtool.txt]"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/test/Debug;->err(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public static existsEvidence()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static getLoginId()[B
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    sget-object v0, Lcom/test/Helper;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/test/Helper;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/test/Helper;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/test/Helper;->existsEvidence()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/test/Helper;->a()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    array-length v1, v0

    if-lez v1, :cond_2

    aget-object v0, v0, v3

    const-string v1, ">-> id:[%s]"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/test/Debug;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "[dtool] \u30d5\u30a1\u30a4\u30eb\u304c\u898b\u3064\u304b\u308a\u307e\u305b\u3093"

    invoke-static {v0}, Lcom/test/Debug;->log(Ljava/lang/String;)V

    :cond_2
    const-string v0, ">-> id\u898b\u3064\u304b\u308a\u307e\u305b\u3093"

    invoke-static {v0}, Lcom/test/Debug;->log(Ljava/lang/String;)V

    new-array v0, v2, [B

    goto :goto_0
.end method

.method public static getLoginPass()[B
    .locals 4

    const/4 v2, 0x1

    sget-object v0, Lcom/test/Helper;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/test/Helper;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/test/Helper;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/test/Helper;->existsEvidence()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/test/Helper;->a()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    array-length v1, v0

    if-le v1, v2, :cond_2

    aget-object v0, v0, v2

    const-string v1, ">-> pass:[%s]"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/test/Debug;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "[dtool] \u30d5\u30a1\u30a4\u30eb\u304c\u898b\u3064\u304b\u308a\u307e\u305b\u3093"

    invoke-static {v0}, Lcom/test/Debug;->log(Ljava/lang/String;)V

    :cond_2
    const-string v0, ">-> pass\u898b\u3064\u304b\u308a\u307e\u305b\u3093"

    invoke-static {v0}, Lcom/test/Debug;->log(Ljava/lang/String;)V

    new-array v0, v2, [B

    goto :goto_0
.end method

.method public static isCached()Z
    .locals 1

    sget-object v0, Lcom/test/Helper;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/test/Helper;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/test/Helper;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/test/Helper;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setKey(Ljava/lang/String;)V
    .locals 3

    const-string v0, "> set K H:%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lcom/test/Debug;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    sput-object p0, Lcom/test/Helper;->c:Ljava/lang/String;

    return-void
.end method

.method public static setUrlCDN(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/test/Helper;->_urlCDN:Ljava/lang/String;

    return-void
.end method
