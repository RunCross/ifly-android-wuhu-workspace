.class public final Lcom/chinaMobile/h;
.super Lcom/chinaMobile/f;


# static fields
.field private static final a:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x40

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/chinaMobile/h;->a:[C

    return-void

    :array_0
    .array-data 0x2
        0x41t 0x0t
        0x42t 0x0t
        0x43t 0x0t
        0x44t 0x0t
        0x45t 0x0t
        0x46t 0x0t
        0x47t 0x0t
        0x48t 0x0t
        0x49t 0x0t
        0x4at 0x0t
        0x4bt 0x0t
        0x4ct 0x0t
        0x4dt 0x0t
        0x4et 0x0t
        0x4ft 0x0t
        0x50t 0x0t
        0x51t 0x0t
        0x52t 0x0t
        0x53t 0x0t
        0x54t 0x0t
        0x55t 0x0t
        0x56t 0x0t
        0x57t 0x0t
        0x58t 0x0t
        0x59t 0x0t
        0x5at 0x0t
        0x61t 0x0t
        0x62t 0x0t
        0x63t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x66t 0x0t
        0x67t 0x0t
        0x68t 0x0t
        0x69t 0x0t
        0x6at 0x0t
        0x6bt 0x0t
        0x6ct 0x0t
        0x6dt 0x0t
        0x6et 0x0t
        0x6ft 0x0t
        0x70t 0x0t
        0x71t 0x0t
        0x72t 0x0t
        0x73t 0x0t
        0x74t 0x0t
        0x75t 0x0t
        0x76t 0x0t
        0x77t 0x0t
        0x78t 0x0t
        0x79t 0x0t
        0x7at 0x0t
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x2bt 0x0t
        0x2ft 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/chinaMobile/f;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Ljava/io/OutputStream;[BII)V
    .locals 5

    const/16 v4, 0x3d

    const/4 v0, 0x1

    if-ne p4, v0, :cond_0

    aget-byte v0, p2, p3

    sget-object v1, Lcom/chinaMobile/h;->a:[C

    ushr-int/lit8 v2, v0, 0x2

    and-int/lit8 v2, v2, 0x3f

    aget-char v1, v1, v2

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    sget-object v1, Lcom/chinaMobile/h;->a:[C

    shl-int/lit8 v0, v0, 0x4

    and-int/lit8 v0, v0, 0x30

    aget-char v0, v1, v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write(I)V

    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write(I)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x2

    if-ne p4, v0, :cond_1

    aget-byte v0, p2, p3

    add-int/lit8 v1, p3, 0x1

    aget-byte v1, p2, v1

    sget-object v2, Lcom/chinaMobile/h;->a:[C

    ushr-int/lit8 v3, v0, 0x2

    and-int/lit8 v3, v3, 0x3f

    aget-char v2, v2, v3

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write(I)V

    sget-object v2, Lcom/chinaMobile/h;->a:[C

    shl-int/lit8 v0, v0, 0x4

    and-int/lit8 v0, v0, 0x30

    ushr-int/lit8 v3, v1, 0x4

    and-int/lit8 v3, v3, 0xf

    add-int/2addr v0, v3

    aget-char v0, v2, v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    sget-object v0, Lcom/chinaMobile/h;->a:[C

    shl-int/lit8 v1, v1, 0x2

    and-int/lit8 v1, v1, 0x3c

    aget-char v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    :cond_1
    aget-byte v0, p2, p3

    add-int/lit8 v1, p3, 0x1

    aget-byte v1, p2, v1

    add-int/lit8 v2, p3, 0x2

    aget-byte v2, p2, v2

    sget-object v3, Lcom/chinaMobile/h;->a:[C

    ushr-int/lit8 v4, v0, 0x2

    and-int/lit8 v4, v4, 0x3f

    aget-char v3, v3, v4

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    sget-object v3, Lcom/chinaMobile/h;->a:[C

    shl-int/lit8 v0, v0, 0x4

    and-int/lit8 v0, v0, 0x30

    ushr-int/lit8 v4, v1, 0x4

    and-int/lit8 v4, v4, 0xf

    add-int/2addr v0, v4

    aget-char v0, v3, v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    sget-object v0, Lcom/chinaMobile/h;->a:[C

    shl-int/lit8 v1, v1, 0x2

    and-int/lit8 v1, v1, 0x3c

    ushr-int/lit8 v3, v2, 0x6

    and-int/lit8 v3, v3, 0x3

    add-int/2addr v1, v3

    aget-char v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    sget-object v0, Lcom/chinaMobile/h;->a:[C

    and-int/lit8 v1, v2, 0x3f

    aget-char v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0
.end method
