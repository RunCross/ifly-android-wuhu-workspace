.class public Lcom/strumsoft/websocket/phonegap/WebSocket;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/strumsoft/websocket/phonegap/WebSocket$Draft;
    }
.end annotation


# static fields
.field public static final DATA_CR:B = 0xdt

.field public static final DATA_END_OF_FRAME:B = -0x1t

.field public static final DATA_LF:B = 0xat

.field public static final DATA_START_OF_FRAME:B = 0x0t

.field public static final DEFAULT_PORT:I = 0x50

.field public static final UTF8_CHARSET:Ljava/lang/String; = "UTF-8"

.field public static final WEBSOCKET_STATE_CLOSED:I = 0x3

.field public static final WEBSOCKET_STATE_CLOSING:I = 0x2

.field public static final WEBSOCKET_STATE_CONNECTING:I = 0x0

.field public static final WEBSOCKET_STATE_OPEN:I = 0x1

.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;


# instance fields
.field private final f:Landroid/webkit/WebView;

.field private g:Ljava/lang/String;

.field private h:Ljava/net/URI;

.field private i:I

.field private j:Lcom/strumsoft/websocket/phonegap/WebSocket$Draft;

.field private k:Ljava/nio/channels/SocketChannel;

.field private l:Ljava/nio/channels/Selector;

.field private m:Z

.field private n:Z

.field private o:Ljava/nio/ByteBuffer;

.field private p:Ljava/nio/ByteBuffer;

.field private q:Ljava/nio/ByteBuffer;

.field private r:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private s:Ljava/lang/Object;

.field private t:I

.field private u:I

.field private v:[B

.field private w:I

.field private final x:Lcom/strumsoft/websocket/phonegap/WebSocket;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ""

    sput-object v0, Lcom/strumsoft/websocket/phonegap/WebSocket;->a:Ljava/lang/String;

    const-string v0, "onopen"

    sput-object v0, Lcom/strumsoft/websocket/phonegap/WebSocket;->b:Ljava/lang/String;

    const-string v0, "onmessage"

    sput-object v0, Lcom/strumsoft/websocket/phonegap/WebSocket;->c:Ljava/lang/String;

    const-string v0, "onclose"

    sput-object v0, Lcom/strumsoft/websocket/phonegap/WebSocket;->d:Ljava/lang/String;

    const-string v0, "onerror"

    sput-object v0, Lcom/strumsoft/websocket/phonegap/WebSocket;->e:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/webkit/WebView;Ljava/net/URI;Lcom/strumsoft/websocket/phonegap/WebSocket$Draft;Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/strumsoft/websocket/phonegap/WebSocket;->s:Ljava/lang/Object;

    iput v2, p0, Lcom/strumsoft/websocket/phonegap/WebSocket;->t:I

    iput v2, p0, Lcom/strumsoft/websocket/phonegap/WebSocket;->u:I

    iput-object v3, p0, Lcom/strumsoft/websocket/phonegap/WebSocket;->v:[B

    iput v2, p0, Lcom/strumsoft/websocket/phonegap/WebSocket;->w:I

    iput-object p1, p0, Lcom/strumsoft/websocket/phonegap/WebSocket;->f:Landroid/webkit/WebView;

    iput-object p2, p0, Lcom/strumsoft/websocket/phonegap/WebSocket;->h:Ljava/net/URI;

    iput-object p3, p0, Lcom/strumsoft/websocket/phonegap/WebSocket;->j:Lcom/strumsoft/websocket/phonegap/WebSocket$Draft;

    invoke-virtual {p2}, Ljava/net/URI;->getPort()I

    move-result v0

    iput v0, p0, Lcom/strumsoft/websocket/phonegap/WebSocket;->i:I

    iget v0, p0, Lcom/strumsoft/websocket/phonegap/WebSocket;->i:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x50

    iput v0, p0, Lcom/strumsoft/websocket/phonegap/WebSocket;->i:I

    :cond_0
    iput-object p4, p0, Lcom/strumsoft/websocket/phonegap/WebSocket;->g:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/strumsoft/websocket/phonegap/WebSocket;->r:Ljava/util/concurrent/BlockingQueue;

    iput-boolean v2, p0, Lcom/strumsoft/websocket/phonegap/WebSocket;->n:Z

    iput-object v3, p0, Lcom/strumsoft/websocket/phonegap/WebSocket;->q:Ljava/nio/ByteBuffer;

    iput-object v3, p0, Lcom/strumsoft/websocket/phonegap/WebSocket;->p:Ljava/nio/ByteBuffer;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/strumsoft/websocket/phonegap/WebSocket;->o:Ljava/nio/ByteBuffer;

    iput-object p0, p0, Lcom/strumsoft/websocket/phonegap/WebSocket;->x:Lcom/strumsoft/websocket/phonegap/WebSocket;

    return-void
.end method

.method static synthetic a(Lcom/strumsoft/websocket/phonegap/WebSocket;)Lcom/strumsoft/websocket/phonegap/WebSocket;
    .locals 1

    iget-object v0, p0, Lcom/strumsoft/websocket/phonegap/WebSocket;->x:Lcom/strumsoft/websocket/phonegap/WebSocket;

    return-object v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/strumsoft/websocket/phonegap/WebSocket;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/strumsoft/websocket/phonegap/WebSocket;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "javascript:WebSocket."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "({\"_target\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/strumsoft/websocket/phonegap/WebSocket;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\",\"data\":\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    const-string v2, "\\\\\'"

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'})"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\n"

    const-string v2, "\\\\n"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/strumsoft/websocket/phonegap/WebSocket;->k:Ljava/nio/channels/SocketChannel;

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/channels/SocketChannel;->write(Ljava/nio/ByteBuffer;)I

    return-void
.end method

.method static synthetic a(Lcom/strumsoft/websocket/phonegap/WebSocket;Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/strumsoft/websocket/phonegap/WebSocket;->n:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/nio/channels/NotYetConnectedException;

    invoke-direct {v0}, Ljava/nio/channels/NotYetConnectedException;-><init>()V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Cannot send \'null\' data to a WebSocket."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string v1, "UTF-8"

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    array-length v2, v1

    add-int/lit8 v2, v2, 0x2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    const/4 v1, -0x1

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-direct {p0}, Lcom/strumsoft/websocket/phonegap/WebSocket;->f()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/strumsoft/websocket/phonegap/WebSocket;->k:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v1, v2}, Ljava/nio/channels/SocketChannel;->write(Ljava/nio/ByteBuffer;)I

    :cond_2
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/strumsoft/websocket/phonegap/WebSocket;->r:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v2}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Buffers are full, message could not be sent to"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/strumsoft/websocket/phonegap/WebSocket;->k:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v2}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const/4 v0, 0x1

    :cond_4
    return v0
.end method

.method static synthetic b(Lcom/strumsoft/websocket/phonegap/WebSocket;)I
    .locals 1

    iget v0, p0, Lcom/strumsoft/websocket/phonegap/WebSocket;->w:I

    return v0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/strumsoft/websocket/phonegap/WebSocket;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/strumsoft/websocket/phonegap/WebSocket;)Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lcom/strumsoft/websocket/phonegap/WebSocket;->f:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/strumsoft/websocket/phonegap/WebSocket;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/strumsoft/websocket/phonegap/WebSocket;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/strumsoft/websocket/phonegap/WebSocket;->e:Ljava/lang/String;

    return-object v0
.end method

.method private f()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lcom/strumsoft/websocket/phonegap/WebSocket;->s:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/strumsoft/websocket/phonegap/WebSocket;->r:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    :goto_0
    if-nez v0, :cond_0

    monitor-exit v1

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    iget-object v2, p0, Lcom/strumsoft/websocket/phonegap/WebSocket;->k:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v2, v0}, Ljava/nio/channels/SocketChannel;->write(Ljava/nio/ByteBuffer;)I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-lez v0, :cond_1

    monitor-exit v1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/strumsoft/websocket/phonegap/WebSocket;->r:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    iget-object v0, p0, Lcom/strumsoft/websocket/phonegap/WebSocket;->r:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private g()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/strumsoft/websocket/phonegap/WebSocket;->n:Z

    iget-object v0, p0, Lcom/strumsoft/websocket/phonegap/WebSocket;->j:Lcom/strumsoft/websocket/phonegap/WebSocket$Draft;

    sget-object v1, Lcom/strumsoft/websocket/phonegap/WebSocket$Draft;->DRAFT76:Lcom/strumsoft/websocket/phonegap/WebSocket$Draft;

    if-ne v0, v1, :cond_0

    const/16 v0, 0x10

    new-array v0, v0, [B

    iget v1, p0, Lcom/strumsoft/websocket/phonegap/WebSocket;->t:I

    shr-int/lit8 v1, v1, 0x18

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    iget v1, p0, Lcom/strumsoft/websocket/phonegap/WebSocket;->t:I

    shl-int/lit8 v1, v1, 0x8

    shr-int/lit8 v1, v1, 0x18

    int-to-byte v1, v1

    aput-byte v1, v0, v4

    iget v1, p0, Lcom/strumsoft/websocket/phonegap/WebSocket;->t:I

    shl-int/lit8 v1, v1, 0x10

    shr-int/lit8 v1, v1, 0x18

    int-to-byte v1, v1

    aput-byte v1, v0, v5

    iget v1, p0, Lcom/strumsoft/websocket/phonegap/WebSocket;->t:I

    shl-int/lit8 v1, v1, 0x18

    shr-int/lit8 v1, v1, 0x18

    int-to-byte v1, v1

    aput-byte v1, v0, v6

    iget v1, p0, Lcom/strumsoft/websocket/phonegap/WebSocket;->u:I

    shr-int/lit8 v1, v1, 0x18

    int-to-byte v1, v1

    aput-byte v1, v0, v7

    const/4 v1, 0x5

    iget v2, p0, Lcom/strumsoft/websocket/phonegap/WebSocket;->u:I

    shl-int/lit8 v2, v2, 0x8

    shr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x6

    iget v2, p0, Lcom/strumsoft/websocket/phonegap/WebSocket;->u:I

    shl-int/lit8 v2, v2, 0x10

    shr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x7

    iget v2, p0, Lcom/strumsoft/websocket/phonegap/WebSocket;->u:I

    shl-int/lit8 v2, v2, 0x18

    shr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/strumsoft/websocket/phonegap/WebSocket;->v:[B

    aget-byte v2, v2, v3

    aput-byte v2, v0, v1

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/strumsoft/websocket/phonegap/WebSocket;->v:[B

    aget-byte v2, v2, v4

    aput-byte v2, v0, v1

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/strumsoft/websocket/phonegap/WebSocket;->v:[B

    aget-byte v2, v2, v5

    aput-byte v2, v0, v1

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/strumsoft/websocket/phonegap/WebSocket;->v:[B

    aget-byte v2, v2, v6

    aput-byte v2, v0, v1

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/strumsoft/websocket/phonegap/WebSocket;->v:[B

    aget-byte v2, v2, v7

    aput-byte v2, v0, v1

    const/16 v1, 0xd

    iget-object v2, p0, Lcom/strumsoft/websocket/phonegap/WebSocket;->v:[B

    const/4 v3, 0x5

    aget-byte v2, v2, v3

    aput-byte v2, v0, v1

    const/16 v1, 0xe

    iget-object v2, p0, Lcom/strumsoft/websocket/phonegap/WebSocket;->v:[B

    const/4 v3, 0x6

    aget-byte v2, v2, v3

    aput-byte v2, v0, v1

    const/16 v1, 0xf

    iget-object v2, p0, Lcom/strumsoft/websocket/phonegap/WebSocket;->v:[B

    const/4 v3, 0x7

    aget-byte v2, v2, v3

    aput-byte v2, v0, v1

    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->digest([B)[B

    :cond_0
    iput v4, p0, Lcom/strumsoft/websocket/phonegap/WebSocket;->w:I

    invoke-virtual {p0}, Lcom/strumsoft/websocket/phonegap/WebSocket;->onOpen()V

    return-void
.end method

.method private h()Ljava/lang/String;
    .locals 10

    const/16 v7, 0xc

    const/4 v1, 0x0

    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    invoke-virtual {v4, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    int-to-long v5, v0

    new-instance v0, Ljava/lang/Long;

    const-wide v2, 0xffffffffL

    div-long/2addr v2, v5

    invoke-direct {v0, v2, v3}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget v2, p0, Lcom/strumsoft/websocket/phonegap/WebSocket;->t:I

    if-nez v2, :cond_0

    iput v0, p0, Lcom/strumsoft/websocket/phonegap/WebSocket;->t:I

    :goto_0
    int-to-long v2, v0

    mul-long/2addr v2, v5

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    move v3, v1

    :goto_1
    if-lt v3, v7, :cond_1

    move v0, v1

    move-object v1, v2

    :goto_2
    int-to-long v2, v0

    cmp-long v2, v2, v5

    if-ltz v2, :cond_3

    return-object v1

    :cond_0
    iput v0, p0, Lcom/strumsoft/websocket/phonegap/WebSocket;->u:I

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v8

    const/16 v0, 0x5f

    invoke-virtual {v4, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x21

    int-to-char v0, v0

    const/16 v9, 0x30

    if-lt v0, v9, :cond_2

    const/16 v9, 0x39

    if-gt v0, v9, :cond_2

    add-int/lit8 v0, v0, -0xf

    int-to-char v0, v0

    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8, v0}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v4, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v3, v2, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/strumsoft/websocket/phonegap/WebSocket;->w:I

    :try_start_0
    iget-object v0, p0, Lcom/strumsoft/websocket/phonegap/WebSocket;->k:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/strumsoft/websocket/phonegap/WebSocket;->m:Z

    iget-object v0, p0, Lcom/strumsoft/websocket/phonegap/WebSocket;->l:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    invoke-virtual {p0}, Lcom/strumsoft/websocket/phonegap/WebSocket;->onClose()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/strumsoft/websocket/phonegap/WebSocket;->w:I

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/strumsoft/websocket/phonegap/WebSocket;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public connect()Ljava/lang/Thread;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/strumsoft/websocket/phonegap/WebSocket;->m:Z

    iput v1, p0, Lcom/strumsoft/websocket/phonegap/WebSocket;->w:I

    invoke-static {}, Ljava/nio/channels/SocketChannel;->open()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/strumsoft/websocket/phonegap/WebSocket;->k:Ljava/nio/channels/SocketChannel;

    iget-object v0, p0, Lcom/strumsoft/websocket/phonegap/WebSocket;->k:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0, v1}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    iget-object v0, p0, Lcom/strumsoft/websocket/phonegap/WebSocket;->k:Ljava/nio/channels/SocketChannel;

    new-instance v1, Ljava/net/InetSocketAddress;

    iget-object v2, p0, Lcom/strumsoft/websocket/phonegap/WebSocket;->h:Ljava/net/URI;

    invoke-virtual {v2}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/strumsoft/websocket/phonegap/WebSocket;->i:I

    invoke-direct {v1, v2, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/nio/channels/SocketChannel;->connect(Ljava/net/SocketAddress;)Z

    const-string v0, "java.net.preferIPv4Stack"

    const-string v1, "true"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "java.net.preferIPv6Addresses"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object v0

    iput-object v0, p0, Lcom/strumsoft/websocket/phonegap/WebSocket;->l:Ljava/nio/channels/Selector;

    iget-object v0, p0, Lcom/strumsoft/websocket/phonegap/WebSocket;->k:Ljava/nio/channels/SocketChannel;

    iget-object v1, p0, Lcom/strumsoft/websocket/phonegap/WebSocket;->l:Ljava/nio/channels/Selector;

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Ljava/nio/channels/SocketChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    const-string v0, "websocket"

    const-string v1, "Starting a new thread to manage data reading/writing"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/strumsoft/websocket/phonegap/WebSocket;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getReadyState()I
    .locals 1

    iget v0, p0, Lcom/strumsoft/websocket/phonegap/WebSocket;->w:I

    return v0
.end method

.method public onClose()V
    .locals 2

    iget-object v0, p0, Lcom/strumsoft/websocket/phonegap/WebSocket;->f:Landroid/webkit/WebView;

    new-instance v1, Lcom/strumsoft/websocket/phonegap/d;

    invoke-direct {v1, p0}, Lcom/strumsoft/websocket/phonegap/d;-><init>(Lcom/strumsoft/websocket/phonegap/WebSocket;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lcom/strumsoft/websocket/phonegap/WebSocket;->f:Landroid/webkit/WebView;

    new-instance v1, Lcom/strumsoft/websocket/phonegap/e;

    invoke-direct {v1, p0, p1}, Lcom/strumsoft/websocket/phonegap/e;-><init>(Lcom/strumsoft/websocket/phonegap/WebSocket;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onMessage(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/strumsoft/websocket/phonegap/WebSocket;->f:Landroid/webkit/WebView;

    new-instance v1, Lcom/strumsoft/websocket/phonegap/b;

    invoke-direct {v1, p0, p1}, Lcom/strumsoft/websocket/phonegap/b;-><init>(Lcom/strumsoft/websocket/phonegap/WebSocket;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onOpen()V
    .locals 2

    iget-object v0, p0, Lcom/strumsoft/websocket/phonegap/WebSocket;->f:Landroid/webkit/WebView;

    new-instance v1, Lcom/strumsoft/websocket/phonegap/c;

    invoke-direct {v1, p0}, Lcom/strumsoft/websocket/phonegap/c;-><init>(Lcom/strumsoft/websocket/phonegap/WebSocket;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public run()V
    .locals 11

    const/4 v2, -0x1

    const/16 v10, 0xd

    const/16 v9, 0xa

    const/4 v1, 0x0

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/strumsoft/websocket/phonegap/WebSocket;->m:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/strumsoft/websocket/phonegap/WebSocket;->l:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->select()I

    iget-object v0, p0, Lcom/strumsoft/websocket/phonegap/WebSocket;->l:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SelectionKey;

    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isConnectable()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/strumsoft/websocket/phonegap/WebSocket;->k:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v3}, Ljava/nio/channels/SocketChannel;->isConnectionPending()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/strumsoft/websocket/phonegap/WebSocket;->k:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v3}, Ljava/nio/channels/SocketChannel;->finishConnect()Z

    :cond_3
    iget-object v3, p0, Lcom/strumsoft/websocket/phonegap/WebSocket;->k:Ljava/nio/channels/SocketChannel;

    iget-object v4, p0, Lcom/strumsoft/websocket/phonegap/WebSocket;->l:Ljava/nio/channels/Selector;

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v6}, Ljava/nio/channels/SocketChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    iget-object v3, p0, Lcom/strumsoft/websocket/phonegap/WebSocket;->h:Ljava/net/URI;

    invoke-virtual {v3}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_4
    iget-object v4, p0, Lcom/strumsoft/websocket/phonegap/WebSocket;->h:Ljava/net/URI;

    invoke-virtual {v4}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_15

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "?"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/strumsoft/websocket/phonegap/WebSocket;->h:Ljava/net/URI;

    invoke-virtual {v4}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/strumsoft/websocket/phonegap/WebSocket;->h:Ljava/net/URI;

    invoke-virtual {v3}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/strumsoft/websocket/phonegap/WebSocket;->i:I

    const/16 v7, 0x50

    if-eq v3, v7, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p0, Lcom/strumsoft/websocket/phonegap/WebSocket;->i:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_3
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "*"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "GET "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " HTTP/1.1\r\nUpgrade: WebSocket\r\nConnection: Upgrade\r\nHost: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\r\nOrigin: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/strumsoft/websocket/phonegap/WebSocket;->j:Lcom/strumsoft/websocket/phonegap/WebSocket$Draft;

    sget-object v6, Lcom/strumsoft/websocket/phonegap/WebSocket$Draft;->DRAFT76:Lcom/strumsoft/websocket/phonegap/WebSocket$Draft;

    if-ne v4, v6, :cond_7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "Sec-WebSocket-Key1: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/strumsoft/websocket/phonegap/WebSocket;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "Sec-WebSocket-Key2: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/strumsoft/websocket/phonegap/WebSocket;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\r\n"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x8

    new-array v4, v4, [B

    iput-object v4, p0, Lcom/strumsoft/websocket/phonegap/WebSocket;->v:[B

    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    iget-object v6, p0, Lcom/strumsoft/websocket/phonegap/WebSocket;->v:[B

    invoke-virtual {v4, v6}, Ljava/util/Random;->nextBytes([B)V

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    array-length v4, v3

    add-int/lit8 v4, v4, 0x8

    new-array v4, v4, [B

    const/4 v6, 0x0

    const/4 v7, 0x0

    array-length v8, v3

    invoke-static {v3, v6, v4, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v6, p0, Lcom/strumsoft/websocket/phonegap/WebSocket;->v:[B

    const/4 v7, 0x0

    array-length v3, v3

    iget-object v8, p0, Lcom/strumsoft/websocket/phonegap/WebSocket;->v:[B

    array-length v8, v8

    invoke-static {v6, v7, v4, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {p0, v4}, Lcom/strumsoft/websocket/phonegap/WebSocket;->a([B)V

    :cond_5
    :goto_4
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isReadable()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-eqz v0, :cond_2

    :try_start_1
    iget-object v0, p0, Lcom/strumsoft/websocket/phonegap/WebSocket;->o:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    iget-object v0, p0, Lcom/strumsoft/websocket/phonegap/WebSocket;->k:Ljava/nio/channels/SocketChannel;

    iget-object v3, p0, Lcom/strumsoft/websocket/phonegap/WebSocket;->o:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v0

    :goto_5
    if-ne v0, v2, :cond_8

    :try_start_3
    invoke-virtual {p0}, Lcom/strumsoft/websocket/phonegap/WebSocket;->close()V
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    :catch_0
    move-exception v0

    :try_start_4
    invoke-virtual {p0, v0}, Lcom/strumsoft/websocket/phonegap/WebSocket;->onError(Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/strumsoft/websocket/phonegap/WebSocket;->onError(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_6
    :try_start_5
    const-string v3, ""

    goto/16 :goto_3

    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\r\n"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/strumsoft/websocket/phonegap/WebSocket;->a([B)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_4

    :catch_2
    move-exception v0

    move v0, v2

    goto :goto_5

    :cond_8
    if-lez v0, :cond_2

    :try_start_6
    iget-object v0, p0, Lcom/strumsoft/websocket/phonegap/WebSocket;->o:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-boolean v0, p0, Lcom/strumsoft/websocket/phonegap/WebSocket;->n:Z

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/strumsoft/websocket/phonegap/WebSocket;->p:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/strumsoft/websocket/phonegap/WebSocket;->p:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    :goto_6
    iget-object v3, p0, Lcom/strumsoft/websocket/phonegap/WebSocket;->o:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    add-int/2addr v0, v3

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v3, p0, Lcom/strumsoft/websocket/phonegap/WebSocket;->p:Ljava/nio/ByteBuffer;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/strumsoft/websocket/phonegap/WebSocket;->p:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v3, p0, Lcom/strumsoft/websocket/phonegap/WebSocket;->p:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    :cond_9
    iget-object v3, p0, Lcom/strumsoft/websocket/phonegap/WebSocket;->o:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/strumsoft/websocket/phonegap/WebSocket;->p:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/strumsoft/websocket/phonegap/WebSocket;->p:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    array-length v3, v0

    const/16 v4, 0x14

    if-lt v3, v4, :cond_b

    array-length v3, v0

    add-int/lit8 v3, v3, -0x14

    aget-byte v3, v0, v3

    if-ne v3, v10, :cond_b

    array-length v3, v0

    add-int/lit8 v3, v3, -0x13

    aget-byte v3, v0, v3

    if-ne v3, v9, :cond_b

    array-length v3, v0

    add-int/lit8 v3, v3, -0x12

    aget-byte v3, v0, v3

    if-ne v3, v10, :cond_b

    array-length v3, v0

    add-int/lit8 v3, v3, -0x11

    aget-byte v3, v0, v3

    if-ne v3, v9, :cond_b

    const/16 v3, 0x10

    new-array v3, v3, [B

    const/4 v4, 0x0

    array-length v6, v0

    add-int/lit8 v6, v6, -0x10

    aget-byte v6, v0, v6

    aput-byte v6, v3, v4

    const/4 v4, 0x1

    array-length v6, v0

    add-int/lit8 v6, v6, -0xf

    aget-byte v6, v0, v6

    aput-byte v6, v3, v4

    const/4 v4, 0x2

    array-length v6, v0

    add-int/lit8 v6, v6, -0xe

    aget-byte v6, v0, v6

    aput-byte v6, v3, v4

    const/4 v4, 0x3

    array-length v6, v0

    add-int/lit8 v6, v6, -0xd

    aget-byte v6, v0, v6

    aput-byte v6, v3, v4

    const/4 v4, 0x4

    array-length v6, v0

    add-int/lit8 v6, v6, -0xc

    aget-byte v6, v0, v6

    aput-byte v6, v3, v4

    const/4 v4, 0x5

    array-length v6, v0

    add-int/lit8 v6, v6, -0xb

    aget-byte v6, v0, v6

    aput-byte v6, v3, v4

    const/4 v4, 0x6

    array-length v6, v0

    add-int/lit8 v6, v6, -0xa

    aget-byte v6, v0, v6

    aput-byte v6, v3, v4

    const/4 v4, 0x7

    array-length v6, v0

    add-int/lit8 v6, v6, -0x9

    aget-byte v6, v0, v6

    aput-byte v6, v3, v4

    const/16 v4, 0x8

    array-length v6, v0

    add-int/lit8 v6, v6, -0x8

    aget-byte v6, v0, v6

    aput-byte v6, v3, v4

    const/16 v4, 0x9

    array-length v6, v0

    add-int/lit8 v6, v6, -0x7

    aget-byte v6, v0, v6

    aput-byte v6, v3, v4

    const/16 v4, 0xa

    array-length v6, v0

    add-int/lit8 v6, v6, -0x6

    aget-byte v6, v0, v6

    aput-byte v6, v3, v4

    const/16 v4, 0xb

    array-length v6, v0

    add-int/lit8 v6, v6, -0x5

    aget-byte v6, v0, v6

    aput-byte v6, v3, v4

    const/16 v4, 0xc

    array-length v6, v0

    add-int/lit8 v6, v6, -0x4

    aget-byte v6, v0, v6

    aput-byte v6, v3, v4

    const/16 v4, 0xd

    array-length v6, v0

    add-int/lit8 v6, v6, -0x3

    aget-byte v6, v0, v6

    aput-byte v6, v3, v4

    const/16 v4, 0xe

    array-length v6, v0

    add-int/lit8 v6, v6, -0x2

    aget-byte v6, v0, v6

    aput-byte v6, v3, v4

    const/16 v4, 0xf

    array-length v6, v0

    add-int/lit8 v6, v6, -0x1

    aget-byte v0, v0, v6

    aput-byte v0, v3, v4

    invoke-direct {p0}, Lcom/strumsoft/websocket/phonegap/WebSocket;->g()V

    goto/16 :goto_1

    :cond_a
    move v0, v1

    goto/16 :goto_6

    :cond_b
    array-length v3, v0

    const/16 v4, 0xc

    if-lt v3, v4, :cond_c

    array-length v3, v0

    add-int/lit8 v3, v3, -0xc

    aget-byte v3, v0, v3

    if-ne v3, v10, :cond_c

    array-length v3, v0

    add-int/lit8 v3, v3, -0xb

    aget-byte v3, v0, v3

    if-ne v3, v9, :cond_c

    array-length v3, v0

    add-int/lit8 v3, v3, -0xa

    aget-byte v3, v0, v3

    if-ne v3, v10, :cond_c

    array-length v3, v0

    add-int/lit8 v3, v3, -0x9

    aget-byte v3, v0, v3

    if-ne v3, v9, :cond_c

    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/strumsoft/websocket/phonegap/WebSocket;->p:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    const-string v6, "UTF-8"

    invoke-direct {v3, v4, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string v4, "Sec-WebSocket-Key1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_c

    const/16 v3, 0x8

    new-array v3, v3, [B

    const/4 v4, 0x0

    array-length v6, v0

    add-int/lit8 v6, v6, -0x8

    aget-byte v6, v0, v6

    aput-byte v6, v3, v4

    const/4 v4, 0x1

    array-length v6, v0

    add-int/lit8 v6, v6, -0x7

    aget-byte v6, v0, v6

    aput-byte v6, v3, v4

    const/4 v4, 0x2

    array-length v6, v0

    add-int/lit8 v6, v6, -0x6

    aget-byte v6, v0, v6

    aput-byte v6, v3, v4

    const/4 v4, 0x3

    array-length v6, v0

    add-int/lit8 v6, v6, -0x5

    aget-byte v6, v0, v6

    aput-byte v6, v3, v4

    const/4 v4, 0x4

    array-length v6, v0

    add-int/lit8 v6, v6, -0x4

    aget-byte v6, v0, v6

    aput-byte v6, v3, v4

    const/4 v4, 0x5

    array-length v6, v0

    add-int/lit8 v6, v6, -0x3

    aget-byte v6, v0, v6

    aput-byte v6, v3, v4

    const/4 v4, 0x6

    array-length v6, v0

    add-int/lit8 v6, v6, -0x2

    aget-byte v6, v0, v6

    aput-byte v6, v3, v4

    const/4 v4, 0x7

    array-length v6, v0

    add-int/lit8 v6, v6, -0x1

    aget-byte v0, v0, v6

    aput-byte v0, v3, v4

    invoke-direct {p0}, Lcom/strumsoft/websocket/phonegap/WebSocket;->g()V

    goto/16 :goto_1

    :cond_c
    array-length v3, v0

    const/4 v4, 0x4

    if-lt v3, v4, :cond_d

    array-length v3, v0

    add-int/lit8 v3, v3, -0x4

    aget-byte v3, v0, v3

    if-ne v3, v10, :cond_d

    array-length v3, v0

    add-int/lit8 v3, v3, -0x3

    aget-byte v3, v0, v3

    if-ne v3, v9, :cond_d

    array-length v3, v0

    add-int/lit8 v3, v3, -0x2

    aget-byte v3, v0, v3

    if-ne v3, v10, :cond_d

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    aget-byte v3, v0, v3

    if-ne v3, v9, :cond_d

    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/strumsoft/websocket/phonegap/WebSocket;->p:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    const-string v6, "UTF-8"

    invoke-direct {v3, v4, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string v4, "Sec"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_e

    :cond_d
    array-length v3, v0

    const/16 v4, 0x17

    if-ne v3, v4, :cond_2

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    aget-byte v0, v0, v3

    if-nez v0, :cond_2

    :cond_e
    invoke-direct {p0}, Lcom/strumsoft/websocket/phonegap/WebSocket;->g()V

    goto/16 :goto_1

    :cond_f
    iget-object v0, p0, Lcom/strumsoft/websocket/phonegap/WebSocket;->o:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    if-nez v3, :cond_10

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/strumsoft/websocket/phonegap/WebSocket;->q:Ljava/nio/ByteBuffer;

    goto/16 :goto_1

    :cond_10
    if-ne v3, v2, :cond_12

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/strumsoft/websocket/phonegap/WebSocket;->q:Ljava/nio/ByteBuffer;

    if-eqz v3, :cond_11

    new-instance v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/strumsoft/websocket/phonegap/WebSocket;->q:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    :cond_11
    invoke-virtual {p0, v0}, Lcom/strumsoft/websocket/phonegap/WebSocket;->onMessage(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_12
    iget-object v0, p0, Lcom/strumsoft/websocket/phonegap/WebSocket;->q:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/strumsoft/websocket/phonegap/WebSocket;->q:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    :goto_7
    iget-object v4, p0, Lcom/strumsoft/websocket/phonegap/WebSocket;->o:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    add-int/2addr v0, v4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v4, p0, Lcom/strumsoft/websocket/phonegap/WebSocket;->q:Ljava/nio/ByteBuffer;

    if-eqz v4, :cond_13

    iget-object v4, p0, Lcom/strumsoft/websocket/phonegap/WebSocket;->q:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v4, p0, Lcom/strumsoft/websocket/phonegap/WebSocket;->q:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    :cond_13
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/strumsoft/websocket/phonegap/WebSocket;->q:Ljava/nio/ByteBuffer;
    :try_end_6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_1

    :cond_14
    move v0, v1

    goto :goto_7

    :cond_15
    move-object v4, v3

    goto/16 :goto_2
.end method

.method public send(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/strumsoft/websocket/phonegap/a;

    invoke-direct {v1, p0, p1}, Lcom/strumsoft/websocket/phonegap/a;-><init>(Lcom/strumsoft/websocket/phonegap/WebSocket;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
