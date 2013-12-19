.class public Lcom/unipay/wostore/tabledata/WoTableData;
.super Ljava/lang/Object;


# instance fields
.field _$1:[B

.field _$2:I

.field public rows:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/unipay/wostore/tabledata/WoRowData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/unipay/wostore/tabledata/WoTableData;->_$2:I

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/unipay/wostore/tabledata/WoTableData;->rows:Ljava/util/Vector;

    return-void
.end method

.method public static parser(Ljava/io/DataInputStream;)Lcom/unipay/wostore/tabledata/WoTableData;
    .locals 5

    const/4 v1, 0x0

    new-instance v0, Lcom/unipay/wostore/tabledata/WoTableData;

    invoke-direct {v0}, Lcom/unipay/wostore/tabledata/WoTableData;-><init>()V

    :try_start_0
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    iput v2, v0, Lcom/unipay/wostore/tabledata/WoTableData;->_$2:I

    iget v2, v0, Lcom/unipay/wostore/tabledata/WoTableData;->_$2:I

    new-array v2, v2, [B

    iput-object v2, v0, Lcom/unipay/wostore/tabledata/WoTableData;->_$1:[B

    iget-object v2, v0, Lcom/unipay/wostore/tabledata/WoTableData;->_$1:[B

    invoke-virtual {p0, v2}, Ljava/io/DataInputStream;->read([B)I

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    const/16 v2, 0x3e8

    if-le v3, v2, :cond_0

    :goto_0
    return-object v1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_2

    invoke-static {p0}, Lcom/unipay/wostore/tabledata/WoRowData;->parser(Ljava/io/DataInputStream;)Lcom/unipay/wostore/tabledata/WoRowData;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v0, v4}, Lcom/unipay/wostore/tabledata/WoTableData;->addRow(Lcom/unipay/wostore/tabledata/WoRowData;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    :cond_2
    move-object v1, v0

    goto :goto_0
.end method


# virtual methods
.method public _finalize()V
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/unipay/wostore/tabledata/WoTableData;->_$1:[B

    iget-object v0, p0, Lcom/unipay/wostore/tabledata/WoTableData;->rows:Ljava/util/Vector;

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/unipay/wostore/tabledata/WoTableData;->rows:Ljava/util/Vector;

    :cond_0
    return-void
.end method

.method public addRow(Lcom/unipay/wostore/tabledata/WoRowData;)V
    .locals 1

    iget-object v0, p0, Lcom/unipay/wostore/tabledata/WoTableData;->rows:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public encode(Ljava/io/DataOutputStream;)V
    .locals 3

    :try_start_0
    iget v0, p0, Lcom/unipay/wostore/tabledata/WoTableData;->_$2:I

    invoke-static {v0}, Lcom/unipay/wostore/tabledata/ByteProcess;->intToByteArray(I)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write([B)V

    iget-object v0, p0, Lcom/unipay/wostore/tabledata/WoTableData;->_$1:[B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write([B)V

    iget-object v0, p0, Lcom/unipay/wostore/tabledata/WoTableData;->rows:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-static {v2}, Lcom/unipay/wostore/tabledata/ByteProcess;->intToByteArray(I)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write([B)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v0, p0, Lcom/unipay/wostore/tabledata/WoTableData;->rows:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unipay/wostore/tabledata/WoRowData;

    invoke-virtual {v0, p1}, Lcom/unipay/wostore/tabledata/WoRowData;->encode(Ljava/io/DataOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public setname(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/unipay/wostore/tabledata/WoTableData;->_$1:[B

    iget-object v0, p0, Lcom/unipay/wostore/tabledata/WoTableData;->_$1:[B

    array-length v0, v0

    iput v0, p0, Lcom/unipay/wostore/tabledata/WoTableData;->_$2:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    const-string v2, ""

    const-string v1, ""

    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/unipay/wostore/tabledata/WoTableData;->_$1:[B

    const-string v4, "UTF-8"

    invoke-direct {v0, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "tablenamesize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/unipay/wostore/tabledata/WoTableData;->_$2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "tablename = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "rowcount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/unipay/wostore/tabledata/WoTableData;->rows:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    move v5, v0

    move-object v0, v1

    move v1, v5

    :goto_1
    iget-object v2, p0, Lcom/unipay/wostore/tabledata/WoTableData;->rows:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "rowindex = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/unipay/wostore/tabledata/WoTableData;->rows:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unipay/wostore/tabledata/WoRowData;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/unipay/wostore/tabledata/WoRowData;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v2

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    move-object v0, v1

    goto/16 :goto_0

    :cond_0
    return-object v0
.end method
