.class public Lcom/unipay/wostore/tabledata/DataUtil;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getByte(Lcom/unipay/wostore/tabledata/WoRowData;Ljava/lang/String;)B
    .locals 7

    const/4 v1, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/unipay/wostore/tabledata/WoRowData;->_$1:Ljava/util/Vector;

    move v2, v1

    :goto_0
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unipay/wostore/tabledata/WoColumnData;

    new-instance v4, Ljava/lang/String;

    iget-object v5, v0, Lcom/unipay/wostore/tabledata/WoColumnData;->_$5:[B

    const-string v6, "UTF-8"

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v0, v0, Lcom/unipay/wostore/tabledata/WoColumnData;->_$3:[B

    const/4 v2, 0x0

    aget-byte v0, v0, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_1
.end method

.method public static getByteArray(Lcom/unipay/wostore/tabledata/WoRowData;Ljava/lang/String;)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v2, p0, Lcom/unipay/wostore/tabledata/WoRowData;->_$1:Ljava/util/Vector;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unipay/wostore/tabledata/WoColumnData;

    new-instance v3, Ljava/lang/String;

    iget-object v4, v0, Lcom/unipay/wostore/tabledata/WoColumnData;->_$5:[B

    const-string v5, "UTF-8"

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v0, v0, Lcom/unipay/wostore/tabledata/WoColumnData;->_$1:[B

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static getByteArraySP(Lcom/unipay/wostore/tabledata/WoRowData;Ljava/lang/String;)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v2, p0, Lcom/unipay/wostore/tabledata/WoRowData;->_$1:Ljava/util/Vector;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unipay/wostore/tabledata/WoColumnData;

    new-instance v3, Ljava/lang/String;

    iget-object v4, v0, Lcom/unipay/wostore/tabledata/WoColumnData;->_$5:[B

    const-string v5, "UTF-8"

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v0, v0, Lcom/unipay/wostore/tabledata/WoColumnData;->_$3:[B

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static getInt(Lcom/unipay/wostore/tabledata/WoRowData;Ljava/lang/String;)I
    .locals 7

    const/4 v0, 0x0

    const/4 v1, -0x1

    :try_start_0
    iget-object v3, p0, Lcom/unipay/wostore/tabledata/WoRowData;->_$1:Ljava/util/Vector;

    move v2, v0

    :goto_0
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unipay/wostore/tabledata/WoColumnData;

    new-instance v4, Ljava/lang/String;

    iget-object v5, v0, Lcom/unipay/wostore/tabledata/WoColumnData;->_$5:[B

    const-string v6, "UTF-8"

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v0, v0, Lcom/unipay/wostore/tabledata/WoColumnData;->_$3:[B

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/unipay/wostore/tabledata/ByteProcess;->byteArrayToInt([BI)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    goto :goto_1
.end method

.method public static getLong(Lcom/unipay/wostore/tabledata/WoRowData;Ljava/lang/String;)J
    .locals 8

    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/unipay/wostore/tabledata/WoRowData;->_$1:Ljava/util/Vector;

    move v3, v0

    :goto_0
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v3, v0, :cond_1

    invoke-virtual {v4, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unipay/wostore/tabledata/WoColumnData;

    new-instance v5, Ljava/lang/String;

    iget-object v6, v0, Lcom/unipay/wostore/tabledata/WoColumnData;->_$5:[B

    const-string v7, "UTF-8"

    invoke-direct {v5, v6, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v0, v0, Lcom/unipay/wostore/tabledata/WoColumnData;->_$3:[B

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/unipay/wostore/tabledata/ByteProcess;->byteArrayToLong([BI)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :goto_1
    return-wide v0

    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_1
    move-wide v0, v1

    goto :goto_1

    :catch_0
    move-exception v0

    move-wide v0, v1

    goto :goto_1
.end method

.method public static getString(Lcom/unipay/wostore/tabledata/WoRowData;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/unipay/wostore/tabledata/WoRowData;->_$1:Ljava/util/Vector;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unipay/wostore/tabledata/WoColumnData;

    new-instance v4, Ljava/lang/String;

    iget-object v5, v0, Lcom/unipay/wostore/tabledata/WoColumnData;->_$5:[B

    const-string v6, "UTF-8"

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v1, Ljava/lang/String;

    iget-object v0, v0, Lcom/unipay/wostore/tabledata/WoColumnData;->_$3:[B

    const-string v3, "UTF-8"

    invoke-direct {v1, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    move-object v0, v2

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v0, v2

    goto :goto_1
.end method

.method public static getTableData(Lcom/unipay/wostore/tabledata/DataAdapter;Ljava/lang/String;)Lcom/unipay/wostore/tabledata/WoTableData;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p0, :cond_1

    iget-object v2, p0, Lcom/unipay/wostore/tabledata/DataAdapter;->_$1:Ljava/util/Vector;

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unipay/wostore/tabledata/WoTableData;

    new-instance v3, Ljava/lang/String;

    iget-object v4, v0, Lcom/unipay/wostore/tabledata/WoTableData;->_$1:[B

    const-string v5, "UTF-8"

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
