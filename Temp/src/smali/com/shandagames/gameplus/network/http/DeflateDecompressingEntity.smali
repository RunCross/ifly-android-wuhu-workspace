.class public Lcom/shandagames/gameplus/network/http/DeflateDecompressingEntity;
.super Lcom/shandagames/gameplus/network/http/DecompressingEntity;


# direct methods
.method public constructor <init>(Lorg/apache/http/HttpEntity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/shandagames/gameplus/network/http/DecompressingEntity;-><init>(Lorg/apache/http/HttpEntity;)V

    return-void
.end method


# virtual methods
.method public getContent()Ljava/io/InputStream;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, -0x1

    iget-object v0, p0, Lcom/shandagames/gameplus/network/http/DeflateDecompressingEntity;->wrappedEntity:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    const/4 v1, 0x6

    new-array v1, v1, [B

    new-instance v2, Ljava/io/PushbackInputStream;

    array-length v3, v1

    invoke-direct {v2, v0, v3}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-virtual {v2, v1}, Ljava/io/PushbackInputStream;->read([B)I

    move-result v3

    if-ne v3, v7, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unable to read the response"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-array v0, v9, [B

    new-instance v4, Ljava/util/zip/Inflater;

    invoke-direct {v4}, Ljava/util/zip/Inflater;-><init>()V

    :cond_1
    :goto_0
    :try_start_0
    invoke-virtual {v4, v0}, Ljava/util/zip/Inflater;->inflate([B)I

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    if-ne v5, v7, :cond_5

    new-instance v0, Ljava/io/IOException;

    const-string v4, "Unable to read the response"

    invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v2, v1, v8, v3}, Ljava/io/PushbackInputStream;->unread([BII)V

    new-instance v0, Ljava/util/zip/InflaterInputStream;

    new-instance v1, Ljava/util/zip/Inflater;

    invoke-direct {v1, v9}, Ljava/util/zip/Inflater;-><init>(Z)V

    invoke-direct {v0, v2, v1}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V

    :goto_1
    return-object v0

    :cond_3
    :try_start_1
    invoke-virtual {v4}, Ljava/util/zip/Inflater;->finished()Z

    move-result v6

    if-eqz v6, :cond_4

    new-instance v0, Ljava/io/IOException;

    const-string v4, "Unable to read the response"

    invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-virtual {v4}, Ljava/util/zip/Inflater;->needsDictionary()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v4}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4, v1}, Ljava/util/zip/Inflater;->setInput([B)V

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0, v3}, Ljava/io/PushbackInputStream;->unread([BII)V

    new-instance v0, Ljava/util/zip/InflaterInputStream;

    invoke-direct {v0, v2}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/util/zip/DataFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public getContentEncoding()Lorg/apache/http/Header;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public bridge synthetic writeTo(Ljava/io/OutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/shandagames/gameplus/network/http/DecompressingEntity;->writeTo(Ljava/io/OutputStream;)V

    return-void
.end method
