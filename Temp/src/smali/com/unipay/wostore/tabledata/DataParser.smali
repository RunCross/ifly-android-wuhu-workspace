.class public Lcom/unipay/wostore/tabledata/DataParser;
.super Ljava/lang/Object;


# static fields
.field public static final DEFAULT_TIME:I = 0x3e8


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static encode(Lcom/unipay/wostore/tabledata/DataAdapter;)[B
    .locals 2

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/unipay/wostore/tabledata/DataAdapter;->encode(Ljava/io/DataOutputStream;)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static parser([B)Lcom/unipay/wostore/tabledata/DataAdapter;
    .locals 6

    new-instance v0, Lcom/unipay/wostore/tabledata/DataAdapter;

    invoke-direct {v0}, Lcom/unipay/wostore/tabledata/DataAdapter;-><init>()V

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    :try_start_0
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    const/16 v1, 0x3e8

    if-le v4, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v4, :cond_2

    invoke-static {v3}, Lcom/unipay/wostore/tabledata/WoTableData;->parser(Ljava/io/DataInputStream;)Lcom/unipay/wostore/tabledata/WoTableData;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v0, v5}, Lcom/unipay/wostore/tabledata/DataAdapter;->addTable(Lcom/unipay/wostore/tabledata/WoTableData;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V

    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public _finalize()V
    .locals 0

    return-void
.end method
