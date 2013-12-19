.class public Lcom/unipay/wostore/tabledata/WoColumnData;
.super Ljava/lang/Object;


# instance fields
.field _$1:[B

.field _$2:I

.field _$3:[B

.field _$4:I

.field _$5:[B

.field _$6:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/unipay/wostore/tabledata/WoColumnData;->_$6:I

    iput v0, p0, Lcom/unipay/wostore/tabledata/WoColumnData;->_$4:I

    iput v0, p0, Lcom/unipay/wostore/tabledata/WoColumnData;->_$2:I

    return-void
.end method

.method public static parser(Ljava/io/DataInputStream;)Lcom/unipay/wostore/tabledata/WoColumnData;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/unipay/wostore/tabledata/WoColumnData;

    invoke-direct {v0}, Lcom/unipay/wostore/tabledata/WoColumnData;-><init>()V

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, v0, Lcom/unipay/wostore/tabledata/WoColumnData;->_$6:I

    iget v1, v0, Lcom/unipay/wostore/tabledata/WoColumnData;->_$6:I

    new-array v1, v1, [B

    iput-object v1, v0, Lcom/unipay/wostore/tabledata/WoColumnData;->_$5:[B

    iget-object v1, v0, Lcom/unipay/wostore/tabledata/WoColumnData;->_$5:[B

    invoke-virtual {p0, v1}, Ljava/io/DataInputStream;->read([B)I

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, v0, Lcom/unipay/wostore/tabledata/WoColumnData;->_$4:I

    iget v1, v0, Lcom/unipay/wostore/tabledata/WoColumnData;->_$4:I

    new-array v1, v1, [B

    iput-object v1, v0, Lcom/unipay/wostore/tabledata/WoColumnData;->_$3:[B

    iget-object v1, v0, Lcom/unipay/wostore/tabledata/WoColumnData;->_$3:[B

    invoke-virtual {p0, v1}, Ljava/io/DataInputStream;->read([B)I

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, v0, Lcom/unipay/wostore/tabledata/WoColumnData;->_$2:I

    iget v1, v0, Lcom/unipay/wostore/tabledata/WoColumnData;->_$2:I

    if-lez v1, :cond_0

    iget v1, v0, Lcom/unipay/wostore/tabledata/WoColumnData;->_$2:I

    new-array v1, v1, [B

    iput-object v1, v0, Lcom/unipay/wostore/tabledata/WoColumnData;->_$1:[B

    iget-object v1, v0, Lcom/unipay/wostore/tabledata/WoColumnData;->_$1:[B

    invoke-virtual {p0, v1}, Ljava/io/DataInputStream;->read([B)I

    :cond_0
    return-object v0
.end method


# virtual methods
.method public encode(Ljava/io/DataOutputStream;)V
    .locals 1

    :try_start_0
    iget v0, p0, Lcom/unipay/wostore/tabledata/WoColumnData;->_$6:I

    invoke-static {v0}, Lcom/unipay/wostore/tabledata/ByteProcess;->intToByteArray(I)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write([B)V

    iget-object v0, p0, Lcom/unipay/wostore/tabledata/WoColumnData;->_$5:[B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write([B)V

    iget v0, p0, Lcom/unipay/wostore/tabledata/WoColumnData;->_$4:I

    invoke-static {v0}, Lcom/unipay/wostore/tabledata/ByteProcess;->intToByteArray(I)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write([B)V

    iget-object v0, p0, Lcom/unipay/wostore/tabledata/WoColumnData;->_$3:[B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write([B)V

    iget v0, p0, Lcom/unipay/wostore/tabledata/WoColumnData;->_$2:I

    invoke-static {v0}, Lcom/unipay/wostore/tabledata/ByteProcess;->intToByteArray(I)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write([B)V

    iget v0, p0, Lcom/unipay/wostore/tabledata/WoColumnData;->_$2:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/unipay/wostore/tabledata/WoColumnData;->_$1:[B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public setname(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/unipay/wostore/tabledata/WoColumnData;->_$5:[B

    iget-object v0, p0, Lcom/unipay/wostore/tabledata/WoColumnData;->_$5:[B

    array-length v0, v0

    iput v0, p0, Lcom/unipay/wostore/tabledata/WoColumnData;->_$6:I
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public setres([B)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/unipay/wostore/tabledata/WoColumnData;->_$1:[B

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unipay/wostore/tabledata/WoColumnData;->_$1:[B

    goto :goto_0

    :cond_1
    array-length v0, p1

    if-nez v0, :cond_2

    new-array v0, v2, [B

    iput-object v0, p0, Lcom/unipay/wostore/tabledata/WoColumnData;->_$1:[B

    :goto_1
    array-length v0, p1

    iput v0, p0, Lcom/unipay/wostore/tabledata/WoColumnData;->_$2:I

    goto :goto_0

    :cond_2
    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/unipay/wostore/tabledata/WoColumnData;->_$1:[B

    iget-object v0, p0, Lcom/unipay/wostore/tabledata/WoColumnData;->_$1:[B

    array-length v1, p1

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1
.end method

.method public setvalue(B)V
    .locals 3

    const/4 v2, 0x1

    new-array v0, v2, [B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    iput-object v0, p0, Lcom/unipay/wostore/tabledata/WoColumnData;->_$3:[B

    iput v2, p0, Lcom/unipay/wostore/tabledata/WoColumnData;->_$4:I

    return-void
.end method

.method public setvalue(I)V
    .locals 1

    invoke-static {p1}, Lcom/unipay/wostore/tabledata/ByteProcess;->intToByteArray(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/unipay/wostore/tabledata/WoColumnData;->_$3:[B

    iget-object v0, p0, Lcom/unipay/wostore/tabledata/WoColumnData;->_$3:[B

    array-length v0, v0

    iput v0, p0, Lcom/unipay/wostore/tabledata/WoColumnData;->_$4:I

    return-void
.end method

.method public setvalue(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/unipay/wostore/tabledata/WoColumnData;->_$3:[B

    iget-object v0, p0, Lcom/unipay/wostore/tabledata/WoColumnData;->_$3:[B

    array-length v0, v0

    iput v0, p0, Lcom/unipay/wostore/tabledata/WoColumnData;->_$4:I
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method
