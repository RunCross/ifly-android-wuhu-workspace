.class public Lcom/unipay/tools/Utilities;
.super Ljava/lang/Object;


# static fields
.field public static final Month:[Ljava/lang/String;

.field private static _$1:[B

.field private static _$10:I

.field private static _$11:I

.field private static _$12:I

.field private static _$13:I

.field private static _$14:I

.field private static _$15:I

.field private static _$16:I

.field private static _$17:I

.field private static _$18:I

.field private static _$19:I

.field private static _$2:Ljava/lang/String;

.field private static _$20:I

.field private static _$21:I

.field private static _$22:I

.field private static _$28:Lcom/unipay/tools/Utilities;

.field private static _$3:[B

.field private static _$32:Ljava/io/DataOutputStream;

.field private static _$33:Ljava/io/ByteArrayOutputStream;

.field private static _$4:[J

.field private static _$5:[J

.field private static _$6:[B

.field private static _$7:I

.field private static _$8:I

.field private static _$9:I


# instance fields
.field private _$23:Ljava/lang/String;

.field private _$24:Ljava/lang/String;

.field private _$25:Ljava/lang/String;

.field private _$26:Ljava/lang/String;

.field private _$27:Ljava/lang/String;

.field private _$29:Ljava/lang/String;

.field private _$30:Ljava/lang/String;

.field private _$31:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x6

    const/4 v6, 0x5

    const/4 v5, 0x2

    const/4 v4, 0x4

    const/4 v3, 0x0

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sput-object v0, Lcom/unipay/tools/Utilities;->_$33:Ljava/io/ByteArrayOutputStream;

    new-instance v0, Ljava/io/DataOutputStream;

    sget-object v1, Lcom/unipay/tools/Utilities;->_$33:Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    sput-object v0, Lcom/unipay/tools/Utilities;->_$32:Ljava/io/DataOutputStream;

    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Jan"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "Feb"

    aput-object v2, v0, v1

    const-string v1, "Mar"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "Apr"

    aput-object v2, v0, v1

    const-string v1, "May"

    aput-object v1, v0, v4

    const-string v1, "Jun"

    aput-object v1, v0, v6

    const-string v1, "Jul"

    aput-object v1, v0, v7

    const/4 v1, 0x7

    const-string v2, "Aug"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Sep"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Oct"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Nov"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Dec"

    aput-object v2, v0, v1

    sput-object v0, Lcom/unipay/tools/Utilities;->Month:[Ljava/lang/String;

    const/4 v0, 0x7

    sput v0, Lcom/unipay/tools/Utilities;->_$22:I

    const/16 v0, 0xc

    sput v0, Lcom/unipay/tools/Utilities;->_$21:I

    const/16 v0, 0x11

    sput v0, Lcom/unipay/tools/Utilities;->_$20:I

    const/16 v0, 0x16

    sput v0, Lcom/unipay/tools/Utilities;->_$19:I

    sput v6, Lcom/unipay/tools/Utilities;->_$18:I

    const/16 v0, 0x9

    sput v0, Lcom/unipay/tools/Utilities;->_$17:I

    const/16 v0, 0xe

    sput v0, Lcom/unipay/tools/Utilities;->_$16:I

    const/16 v0, 0x14

    sput v0, Lcom/unipay/tools/Utilities;->_$15:I

    sput v4, Lcom/unipay/tools/Utilities;->_$14:I

    const/16 v0, 0xb

    sput v0, Lcom/unipay/tools/Utilities;->_$13:I

    const/16 v0, 0x10

    sput v0, Lcom/unipay/tools/Utilities;->_$12:I

    const/16 v0, 0x17

    sput v0, Lcom/unipay/tools/Utilities;->_$11:I

    sput v7, Lcom/unipay/tools/Utilities;->_$10:I

    const/16 v0, 0xa

    sput v0, Lcom/unipay/tools/Utilities;->_$9:I

    const/16 v0, 0xf

    sput v0, Lcom/unipay/tools/Utilities;->_$8:I

    const/16 v0, 0x15

    sput v0, Lcom/unipay/tools/Utilities;->_$7:I

    const/16 v0, 0x40

    new-array v0, v0, [B

    const/16 v1, -0x80

    aput-byte v1, v0, v3

    const/4 v1, 0x1

    aput-byte v3, v0, v1

    aput-byte v3, v0, v5

    const/4 v1, 0x3

    aput-byte v3, v0, v1

    aput-byte v3, v0, v4

    aput-byte v3, v0, v6

    aput-byte v3, v0, v7

    const/4 v1, 0x7

    aput-byte v3, v0, v1

    const/16 v1, 0x8

    aput-byte v3, v0, v1

    const/16 v1, 0x9

    aput-byte v3, v0, v1

    const/16 v1, 0xa

    aput-byte v3, v0, v1

    const/16 v1, 0xb

    aput-byte v3, v0, v1

    const/16 v1, 0xc

    aput-byte v3, v0, v1

    const/16 v1, 0xd

    aput-byte v3, v0, v1

    const/16 v1, 0xe

    aput-byte v3, v0, v1

    const/16 v1, 0xf

    aput-byte v3, v0, v1

    const/16 v1, 0x10

    aput-byte v3, v0, v1

    const/16 v1, 0x11

    aput-byte v3, v0, v1

    const/16 v1, 0x12

    aput-byte v3, v0, v1

    const/16 v1, 0x13

    aput-byte v3, v0, v1

    const/16 v1, 0x14

    aput-byte v3, v0, v1

    const/16 v1, 0x15

    aput-byte v3, v0, v1

    const/16 v1, 0x16

    aput-byte v3, v0, v1

    const/16 v1, 0x17

    aput-byte v3, v0, v1

    const/16 v1, 0x18

    aput-byte v3, v0, v1

    const/16 v1, 0x19

    aput-byte v3, v0, v1

    const/16 v1, 0x1a

    aput-byte v3, v0, v1

    const/16 v1, 0x1b

    aput-byte v3, v0, v1

    const/16 v1, 0x1c

    aput-byte v3, v0, v1

    const/16 v1, 0x1d

    aput-byte v3, v0, v1

    const/16 v1, 0x1e

    aput-byte v3, v0, v1

    const/16 v1, 0x1f

    aput-byte v3, v0, v1

    const/16 v1, 0x20

    aput-byte v3, v0, v1

    const/16 v1, 0x21

    aput-byte v3, v0, v1

    const/16 v1, 0x22

    aput-byte v3, v0, v1

    const/16 v1, 0x23

    aput-byte v3, v0, v1

    const/16 v1, 0x24

    aput-byte v3, v0, v1

    const/16 v1, 0x25

    aput-byte v3, v0, v1

    const/16 v1, 0x26

    aput-byte v3, v0, v1

    const/16 v1, 0x27

    aput-byte v3, v0, v1

    const/16 v1, 0x28

    aput-byte v3, v0, v1

    const/16 v1, 0x29

    aput-byte v3, v0, v1

    const/16 v1, 0x2a

    aput-byte v3, v0, v1

    const/16 v1, 0x2b

    aput-byte v3, v0, v1

    const/16 v1, 0x2c

    aput-byte v3, v0, v1

    const/16 v1, 0x2d

    aput-byte v3, v0, v1

    const/16 v1, 0x2e

    aput-byte v3, v0, v1

    const/16 v1, 0x2f

    aput-byte v3, v0, v1

    const/16 v1, 0x30

    aput-byte v3, v0, v1

    const/16 v1, 0x31

    aput-byte v3, v0, v1

    const/16 v1, 0x32

    aput-byte v3, v0, v1

    const/16 v1, 0x33

    aput-byte v3, v0, v1

    const/16 v1, 0x34

    aput-byte v3, v0, v1

    const/16 v1, 0x35

    aput-byte v3, v0, v1

    const/16 v1, 0x36

    aput-byte v3, v0, v1

    const/16 v1, 0x37

    aput-byte v3, v0, v1

    const/16 v1, 0x38

    aput-byte v3, v0, v1

    const/16 v1, 0x39

    aput-byte v3, v0, v1

    const/16 v1, 0x3a

    aput-byte v3, v0, v1

    const/16 v1, 0x3b

    aput-byte v3, v0, v1

    const/16 v1, 0x3c

    aput-byte v3, v0, v1

    const/16 v1, 0x3d

    aput-byte v3, v0, v1

    const/16 v1, 0x3e

    aput-byte v3, v0, v1

    const/16 v1, 0x3f

    aput-byte v3, v0, v1

    sput-object v0, Lcom/unipay/tools/Utilities;->_$6:[B

    new-array v0, v4, [J

    sput-object v0, Lcom/unipay/tools/Utilities;->_$5:[J

    new-array v0, v5, [J

    sput-object v0, Lcom/unipay/tools/Utilities;->_$4:[J

    const/16 v0, 0x40

    new-array v0, v0, [B

    sput-object v0, Lcom/unipay/tools/Utilities;->_$3:[B

    const/16 v0, 0x10

    new-array v0, v0, [B

    sput-object v0, Lcom/unipay/tools/Utilities;->_$1:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/unipay/tools/Utilities;->_$31:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unipay/tools/Utilities;->_$30:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unipay/tools/Utilities;->_$29:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unipay/tools/Utilities;->_$27:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unipay/tools/Utilities;->_$26:Ljava/lang/String;

    const-string v0, "01"

    iput-object v0, p0, Lcom/unipay/tools/Utilities;->_$25:Ljava/lang/String;

    const-string v0, "12"

    iput-object v0, p0, Lcom/unipay/tools/Utilities;->_$24:Ljava/lang/String;

    const-string v0, "000000000000"

    iput-object v0, p0, Lcom/unipay/tools/Utilities;->_$23:Ljava/lang/String;

    return-void
.end method

.method public static MD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/unipay/tools/Utilities;->_$1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static UTF8_decode([B)Ljava/lang/String;
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v0, p0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method

.method public static UTF8_decode(Ljava/lang/String;)[B
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private static _$1(JJJ)J
    .locals 2

    const-wide/16 v0, -0x1

    xor-long/2addr v0, p4

    or-long/2addr v0, p0

    xor-long/2addr v0, p2

    return-wide v0
.end method

.method private static _$1(JJJJJJJ)J
    .locals 5

    invoke-static/range {p2 .. p7}, Lcom/unipay/tools/Utilities;->_$1(JJJ)J

    move-result-wide v0

    add-long/2addr v0, p8

    add-long v0, v0, p12

    add-long/2addr v0, p0

    long-to-int v2, v0

    long-to-int v3, p10

    shl-int/2addr v2, v3

    long-to-int v0, v0

    const-wide/16 v3, 0x20

    sub-long/2addr v3, p10

    long-to-int v1, v3

    ushr-int/2addr v0, v1

    or-int/2addr v0, v2

    int-to-long v0, v0

    add-long/2addr v0, p2

    return-wide v0
.end method

.method private static _$1(B)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0x10

    new-array v0, v0, [C

    const/16 v1, 0x30

    aput-char v1, v0, v3

    const/16 v1, 0x31

    aput-char v1, v0, v4

    const/16 v1, 0x32

    aput-char v1, v0, v5

    const/4 v1, 0x3

    const/16 v2, 0x33

    aput-char v2, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0x34

    aput-char v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0x35

    aput-char v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x36

    aput-char v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x37

    aput-char v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x38

    aput-char v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x39

    aput-char v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x61

    aput-char v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x62

    aput-char v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x63

    aput-char v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x64

    aput-char v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x65

    aput-char v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x66

    aput-char v2, v0, v1

    new-array v1, v5, [C

    ushr-int/lit8 v2, p0, 0x4

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v0, v2

    aput-char v2, v1, v3

    and-int/lit8 v2, p0, 0xf

    aget-char v0, v0, v2

    aput-char v0, v1, v4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    aget-char v2, v1, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    aget-char v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static _$1(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/unipay/tools/Utilities;->_$2()V

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Lcom/unipay/tools/Utilities;->_$1([BI)V

    invoke-static {}, Lcom/unipay/tools/Utilities;->_$1()V

    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v0, 0x20

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0x10

    if-ge v0, v2, :cond_0

    sget-object v2, Lcom/unipay/tools/Utilities;->_$1:[B

    aget-byte v2, v2, v0

    invoke-static {v2}, Lcom/unipay/tools/Utilities;->_$1(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unipay/tools/Utilities;->_$2:Ljava/lang/String;

    return-object v0
.end method

.method private static _$1()V
    .locals 5

    const/16 v4, 0x8

    new-array v1, v4, [B

    sget-object v0, Lcom/unipay/tools/Utilities;->_$4:[J

    invoke-static {v1, v0, v4}, Lcom/unipay/tools/Utilities;->_$1([B[JI)V

    sget-object v0, Lcom/unipay/tools/Utilities;->_$4:[J

    const/4 v2, 0x0

    aget-wide v2, v0, v2

    const/4 v0, 0x3

    ushr-long/2addr v2, v0

    long-to-int v0, v2

    and-int/lit8 v0, v0, 0x3f

    const/16 v2, 0x38

    if-ge v0, v2, :cond_0

    rsub-int/lit8 v0, v0, 0x38

    :goto_0
    sget-object v2, Lcom/unipay/tools/Utilities;->_$6:[B

    invoke-static {v2, v0}, Lcom/unipay/tools/Utilities;->_$1([BI)V

    invoke-static {v1, v4}, Lcom/unipay/tools/Utilities;->_$1([BI)V

    sget-object v0, Lcom/unipay/tools/Utilities;->_$1:[B

    sget-object v1, Lcom/unipay/tools/Utilities;->_$5:[J

    const/16 v2, 0x10

    invoke-static {v0, v1, v2}, Lcom/unipay/tools/Utilities;->_$1([B[JI)V

    return-void

    :cond_0
    rsub-int/lit8 v0, v0, 0x78

    goto :goto_0
.end method

.method private static _$1([B)V
    .locals 63

    sget-object v2, Lcom/unipay/tools/Utilities;->_$5:[J

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    sget-object v4, Lcom/unipay/tools/Utilities;->_$5:[J

    const/4 v5, 0x1

    aget-wide v4, v4, v5

    sget-object v6, Lcom/unipay/tools/Utilities;->_$5:[J

    const/4 v7, 0x2

    aget-wide v6, v6, v7

    sget-object v8, Lcom/unipay/tools/Utilities;->_$5:[J

    const/4 v9, 0x3

    aget-wide v8, v8, v9

    const/16 v10, 0x10

    new-array v0, v10, [J

    move-object/from16 v62, v0

    const/16 v10, 0x40

    move-object/from16 v0, v62

    move-object/from16 v1, p0

    invoke-static {v0, v1, v10}, Lcom/unipay/tools/Utilities;->_$1([J[BI)V

    const/4 v10, 0x0

    aget-wide v10, v62, v10

    sget v12, Lcom/unipay/tools/Utilities;->_$22:I

    int-to-long v12, v12

    const-wide v14, 0xd76aa478L

    invoke-static/range {v2 .. v15}, Lcom/unipay/tools/Utilities;->_$4(JJJJJJJ)J

    move-result-wide v10

    const/4 v2, 0x1

    aget-wide v16, v62, v2

    sget v2, Lcom/unipay/tools/Utilities;->_$21:I

    int-to-long v0, v2

    move-wide/from16 v18, v0

    const-wide v20, 0xe8c7b756L

    move-wide v12, v4

    move-wide v14, v6

    invoke-static/range {v8 .. v21}, Lcom/unipay/tools/Utilities;->_$4(JJJJJJJ)J

    move-result-wide v8

    const/4 v2, 0x2

    aget-wide v14, v62, v2

    sget v2, Lcom/unipay/tools/Utilities;->_$20:I

    int-to-long v0, v2

    move-wide/from16 v16, v0

    const-wide/32 v18, 0x242070db

    move-wide v12, v4

    invoke-static/range {v6 .. v19}, Lcom/unipay/tools/Utilities;->_$4(JJJJJJJ)J

    move-result-wide v6

    const/4 v2, 0x3

    aget-wide v12, v62, v2

    sget v2, Lcom/unipay/tools/Utilities;->_$19:I

    int-to-long v14, v2

    const-wide v16, 0xc1bdceeeL

    invoke-static/range {v4 .. v17}, Lcom/unipay/tools/Utilities;->_$4(JJJJJJJ)J

    move-result-wide v12

    const/4 v2, 0x4

    aget-wide v18, v62, v2

    sget v2, Lcom/unipay/tools/Utilities;->_$22:I

    int-to-long v0, v2

    move-wide/from16 v20, v0

    const-wide v22, 0xf57c0fafL

    move-wide v14, v6

    move-wide/from16 v16, v8

    invoke-static/range {v10 .. v23}, Lcom/unipay/tools/Utilities;->_$4(JJJJJJJ)J

    move-result-wide v10

    const/4 v2, 0x5

    aget-wide v16, v62, v2

    sget v2, Lcom/unipay/tools/Utilities;->_$21:I

    int-to-long v0, v2

    move-wide/from16 v18, v0

    const-wide/32 v20, 0x4787c62a

    move-wide v14, v6

    invoke-static/range {v8 .. v21}, Lcom/unipay/tools/Utilities;->_$4(JJJJJJJ)J

    move-result-wide v8

    const/4 v2, 0x6

    aget-wide v14, v62, v2

    sget v2, Lcom/unipay/tools/Utilities;->_$20:I

    int-to-long v0, v2

    move-wide/from16 v16, v0

    const-wide v18, 0xa8304613L

    invoke-static/range {v6 .. v19}, Lcom/unipay/tools/Utilities;->_$4(JJJJJJJ)J

    move-result-wide v14

    const/4 v2, 0x7

    aget-wide v20, v62, v2

    sget v2, Lcom/unipay/tools/Utilities;->_$19:I

    int-to-long v0, v2

    move-wide/from16 v22, v0

    const-wide v24, 0xfd469501L

    move-wide/from16 v16, v8

    move-wide/from16 v18, v10

    invoke-static/range {v12 .. v25}, Lcom/unipay/tools/Utilities;->_$4(JJJJJJJ)J

    move-result-wide v12

    const/16 v2, 0x8

    aget-wide v18, v62, v2

    sget v2, Lcom/unipay/tools/Utilities;->_$22:I

    int-to-long v0, v2

    move-wide/from16 v20, v0

    const-wide/32 v22, 0x698098d8

    move-wide/from16 v16, v8

    invoke-static/range {v10 .. v23}, Lcom/unipay/tools/Utilities;->_$4(JJJJJJJ)J

    move-result-wide v10

    const/16 v2, 0x9

    aget-wide v16, v62, v2

    sget v2, Lcom/unipay/tools/Utilities;->_$21:I

    int-to-long v0, v2

    move-wide/from16 v18, v0

    const-wide v20, 0x8b44f7afL

    invoke-static/range {v8 .. v21}, Lcom/unipay/tools/Utilities;->_$4(JJJJJJJ)J

    move-result-wide v16

    const/16 v2, 0xa

    aget-wide v22, v62, v2

    sget v2, Lcom/unipay/tools/Utilities;->_$20:I

    int-to-long v0, v2

    move-wide/from16 v24, v0

    const-wide v26, 0xffff5bb1L

    move-wide/from16 v18, v10

    move-wide/from16 v20, v12

    invoke-static/range {v14 .. v27}, Lcom/unipay/tools/Utilities;->_$4(JJJJJJJ)J

    move-result-wide v14

    const/16 v2, 0xb

    aget-wide v20, v62, v2

    sget v2, Lcom/unipay/tools/Utilities;->_$19:I

    int-to-long v0, v2

    move-wide/from16 v22, v0

    const-wide v24, 0x895cd7beL

    move-wide/from16 v18, v10

    invoke-static/range {v12 .. v25}, Lcom/unipay/tools/Utilities;->_$4(JJJJJJJ)J

    move-result-wide v12

    const/16 v2, 0xc

    aget-wide v18, v62, v2

    sget v2, Lcom/unipay/tools/Utilities;->_$22:I

    int-to-long v0, v2

    move-wide/from16 v20, v0

    const-wide/32 v22, 0x6b901122

    invoke-static/range {v10 .. v23}, Lcom/unipay/tools/Utilities;->_$4(JJJJJJJ)J

    move-result-wide v18

    const/16 v2, 0xd

    aget-wide v24, v62, v2

    sget v2, Lcom/unipay/tools/Utilities;->_$21:I

    int-to-long v0, v2

    move-wide/from16 v26, v0

    const-wide v28, 0xfd987193L

    move-wide/from16 v20, v12

    move-wide/from16 v22, v14

    invoke-static/range {v16 .. v29}, Lcom/unipay/tools/Utilities;->_$4(JJJJJJJ)J

    move-result-wide v16

    const/16 v2, 0xe

    aget-wide v22, v62, v2

    sget v2, Lcom/unipay/tools/Utilities;->_$20:I

    int-to-long v0, v2

    move-wide/from16 v24, v0

    const-wide v26, 0xa679438eL

    move-wide/from16 v20, v12

    invoke-static/range {v14 .. v27}, Lcom/unipay/tools/Utilities;->_$4(JJJJJJJ)J

    move-result-wide v14

    const/16 v2, 0xf

    aget-wide v20, v62, v2

    sget v2, Lcom/unipay/tools/Utilities;->_$19:I

    int-to-long v0, v2

    move-wide/from16 v22, v0

    const-wide/32 v24, 0x49b40821

    invoke-static/range {v12 .. v25}, Lcom/unipay/tools/Utilities;->_$4(JJJJJJJ)J

    move-result-wide v20

    const/4 v2, 0x1

    aget-wide v26, v62, v2

    sget v2, Lcom/unipay/tools/Utilities;->_$18:I

    int-to-long v0, v2

    move-wide/from16 v28, v0

    const-wide v30, 0xf61e2562L

    move-wide/from16 v22, v14

    move-wide/from16 v24, v16

    invoke-static/range {v18 .. v31}, Lcom/unipay/tools/Utilities;->_$3(JJJJJJJ)J

    move-result-wide v18

    const/4 v2, 0x6

    aget-wide v24, v62, v2

    sget v2, Lcom/unipay/tools/Utilities;->_$17:I

    int-to-long v0, v2

    move-wide/from16 v26, v0

    const-wide v28, 0xc040b340L

    move-wide/from16 v22, v14

    invoke-static/range {v16 .. v29}, Lcom/unipay/tools/Utilities;->_$3(JJJJJJJ)J

    move-result-wide v16

    const/16 v2, 0xb

    aget-wide v22, v62, v2

    sget v2, Lcom/unipay/tools/Utilities;->_$16:I

    int-to-long v0, v2

    move-wide/from16 v24, v0

    const-wide/32 v26, 0x265e5a51

    invoke-static/range {v14 .. v27}, Lcom/unipay/tools/Utilities;->_$3(JJJJJJJ)J

    move-result-wide v22

    const/4 v2, 0x0

    aget-wide v28, v62, v2

    sget v2, Lcom/unipay/tools/Utilities;->_$15:I

    int-to-long v0, v2

    move-wide/from16 v30, v0

    const-wide v32, 0xe9b6c7aaL

    move-wide/from16 v24, v16

    move-wide/from16 v26, v18

    invoke-static/range {v20 .. v33}, Lcom/unipay/tools/Utilities;->_$3(JJJJJJJ)J

    move-result-wide v20

    const/4 v2, 0x5

    aget-wide v26, v62, v2

    sget v2, Lcom/unipay/tools/Utilities;->_$18:I

    int-to-long v0, v2

    move-wide/from16 v28, v0

    const-wide v30, 0xd62f105dL

    move-wide/from16 v24, v16

    invoke-static/range {v18 .. v31}, Lcom/unipay/tools/Utilities;->_$3(JJJJJJJ)J

    move-result-wide v18

    const/16 v2, 0xa

    aget-wide v24, v62, v2

    sget v2, Lcom/unipay/tools/Utilities;->_$17:I

    int-to-long v0, v2

    move-wide/from16 v26, v0

    const-wide/32 v28, 0x2441453

    invoke-static/range {v16 .. v29}, Lcom/unipay/tools/Utilities;->_$3(JJJJJJJ)J

    move-result-wide v24

    const/16 v2, 0xf

    aget-wide v30, v62, v2

    sget v2, Lcom/unipay/tools/Utilities;->_$16:I

    int-to-long v0, v2

    move-wide/from16 v32, v0

    const-wide v34, 0xd8a1e681L

    move-wide/from16 v26, v18

    move-wide/from16 v28, v20

    invoke-static/range {v22 .. v35}, Lcom/unipay/tools/Utilities;->_$3(JJJJJJJ)J

    move-result-wide v22

    const/4 v2, 0x4

    aget-wide v28, v62, v2

    sget v2, Lcom/unipay/tools/Utilities;->_$15:I

    int-to-long v0, v2

    move-wide/from16 v30, v0

    const-wide v32, 0xe7d3fbc8L

    move-wide/from16 v26, v18

    invoke-static/range {v20 .. v33}, Lcom/unipay/tools/Utilities;->_$3(JJJJJJJ)J

    move-result-wide v20

    const/16 v2, 0x9

    aget-wide v26, v62, v2

    sget v2, Lcom/unipay/tools/Utilities;->_$18:I

    int-to-long v0, v2

    move-wide/from16 v28, v0

    const-wide/32 v30, 0x21e1cde6

    invoke-static/range {v18 .. v31}, Lcom/unipay/tools/Utilities;->_$3(JJJJJJJ)J

    move-result-wide v26

    const/16 v2, 0xe

    aget-wide v32, v62, v2

    sget v2, Lcom/unipay/tools/Utilities;->_$17:I

    int-to-long v0, v2

    move-wide/from16 v34, v0

    const-wide v36, 0xc33707d6L

    move-wide/from16 v28, v20

    move-wide/from16 v30, v22

    invoke-static/range {v24 .. v37}, Lcom/unipay/tools/Utilities;->_$3(JJJJJJJ)J

    move-result-wide v24

    const/4 v2, 0x3

    aget-wide v30, v62, v2

    sget v2, Lcom/unipay/tools/Utilities;->_$16:I

    int-to-long v0, v2

    move-wide/from16 v32, v0

    const-wide v34, 0xf4d50d87L

    move-wide/from16 v28, v20

    invoke-static/range {v22 .. v35}, Lcom/unipay/tools/Utilities;->_$3(JJJJJJJ)J

    move-result-wide v22

    const/16 v2, 0x8

    aget-wide v28, v62, v2

    sget v2, Lcom/unipay/tools/Utilities;->_$15:I

    int-to-long v0, v2

    move-wide/from16 v30, v0

    const-wide/32 v32, 0x455a14ed

    invoke-static/range {v20 .. v33}, Lcom/unipay/tools/Utilities;->_$3(JJJJJJJ)J

    move-result-wide v28

    const/16 v2, 0xd

    aget-wide v34, v62, v2

    sget v2, Lcom/unipay/tools/Utilities;->_$18:I

    int-to-long v0, v2

    move-wide/from16 v36, v0

    const-wide v38, 0xa9e3e905L

    move-wide/from16 v30, v22

    move-wide/from16 v32, v24

    invoke-static/range {v26 .. v39}, Lcom/unipay/tools/Utilities;->_$3(JJJJJJJ)J

    move-result-wide v26

    const/4 v2, 0x2

    aget-wide v32, v62, v2

    sget v2, Lcom/unipay/tools/Utilities;->_$17:I

    int-to-long v0, v2

    move-wide/from16 v34, v0

    const-wide v36, 0xfcefa3f8L

    move-wide/from16 v30, v22

    invoke-static/range {v24 .. v37}, Lcom/unipay/tools/Utilities;->_$3(JJJJJJJ)J

    move-result-wide v24

    const/4 v2, 0x7

    aget-wide v30, v62, v2

    sget v2, Lcom/unipay/tools/Utilities;->_$16:I

    int-to-long v0, v2

    move-wide/from16 v32, v0

    const-wide/32 v34, 0x676f02d9

    invoke-static/range {v22 .. v35}, Lcom/unipay/tools/Utilities;->_$3(JJJJJJJ)J

    move-result-wide v30

    const/16 v2, 0xc

    aget-wide v36, v62, v2

    sget v2, Lcom/unipay/tools/Utilities;->_$15:I

    int-to-long v0, v2

    move-wide/from16 v38, v0

    const-wide v40, 0x8d2a4c8aL

    move-wide/from16 v32, v24

    move-wide/from16 v34, v26

    invoke-static/range {v28 .. v41}, Lcom/unipay/tools/Utilities;->_$3(JJJJJJJ)J

    move-result-wide v28

    const/4 v2, 0x5

    aget-wide v34, v62, v2

    sget v2, Lcom/unipay/tools/Utilities;->_$14:I

    int-to-long v0, v2

    move-wide/from16 v36, v0

    const-wide v38, 0xfffa3942L

    move-wide/from16 v32, v24

    invoke-static/range {v26 .. v39}, Lcom/unipay/tools/Utilities;->_$2(JJJJJJJ)J

    move-result-wide v26

    const/16 v2, 0x8

    aget-wide v32, v62, v2

    sget v2, Lcom/unipay/tools/Utilities;->_$13:I

    int-to-long v0, v2

    move-wide/from16 v34, v0

    const-wide v36, 0x8771f681L

    invoke-static/range {v24 .. v37}, Lcom/unipay/tools/Utilities;->_$2(JJJJJJJ)J

    move-result-wide v32

    const/16 v2, 0xb

    aget-wide v38, v62, v2

    sget v2, Lcom/unipay/tools/Utilities;->_$12:I

    int-to-long v0, v2

    move-wide/from16 v40, v0

    const-wide/32 v42, 0x6d9d6122

    move-wide/from16 v34, v26

    move-wide/from16 v36, v28

    invoke-static/range {v30 .. v43}, Lcom/unipay/tools/Utilities;->_$2(JJJJJJJ)J

    move-result-wide v30

    const/16 v2, 0xe

    aget-wide v36, v62, v2

    sget v2, Lcom/unipay/tools/Utilities;->_$11:I

    int-to-long v0, v2

    move-wide/from16 v38, v0

    const-wide v40, 0xfde5380cL

    move-wide/from16 v34, v26

    invoke-static/range {v28 .. v41}, Lcom/unipay/tools/Utilities;->_$2(JJJJJJJ)J

    move-result-wide v28

    const/4 v2, 0x1

    aget-wide v34, v62, v2

    sget v2, Lcom/unipay/tools/Utilities;->_$14:I

    int-to-long v0, v2

    move-wide/from16 v36, v0

    const-wide v38, 0xa4beea44L

    invoke-static/range {v26 .. v39}, Lcom/unipay/tools/Utilities;->_$2(JJJJJJJ)J

    move-result-wide v34

    const/4 v2, 0x4

    aget-wide v40, v62, v2

    sget v2, Lcom/unipay/tools/Utilities;->_$13:I

    int-to-long v0, v2

    move-wide/from16 v42, v0

    const-wide/32 v44, 0x4bdecfa9

    move-wide/from16 v36, v28

    move-wide/from16 v38, v30

    invoke-static/range {v32 .. v45}, Lcom/unipay/tools/Utilities;->_$2(JJJJJJJ)J

    move-result-wide v32

    const/4 v2, 0x7

    aget-wide v38, v62, v2

    sget v2, Lcom/unipay/tools/Utilities;->_$12:I

    int-to-long v0, v2

    move-wide/from16 v40, v0

    const-wide v42, 0xf6bb4b60L

    move-wide/from16 v36, v28

    invoke-static/range {v30 .. v43}, Lcom/unipay/tools/Utilities;->_$2(JJJJJJJ)J

    move-result-wide v30

    const/16 v2, 0xa

    aget-wide v36, v62, v2

    sget v2, Lcom/unipay/tools/Utilities;->_$11:I

    int-to-long v0, v2

    move-wide/from16 v38, v0

    const-wide v40, 0xbebfbc70L

    invoke-static/range {v28 .. v41}, Lcom/unipay/tools/Utilities;->_$2(JJJJJJJ)J

    move-result-wide v36

    const/16 v2, 0xd

    aget-wide v42, v62, v2

    sget v2, Lcom/unipay/tools/Utilities;->_$14:I

    int-to-long v0, v2

    move-wide/from16 v44, v0

    const-wide/32 v46, 0x289b7ec6

    move-wide/from16 v38, v30

    move-wide/from16 v40, v32

    invoke-static/range {v34 .. v47}, Lcom/unipay/tools/Utilities;->_$2(JJJJJJJ)J

    move-result-wide v34

    const/4 v2, 0x0

    aget-wide v40, v62, v2

    sget v2, Lcom/unipay/tools/Utilities;->_$13:I

    int-to-long v0, v2

    move-wide/from16 v42, v0

    const-wide v44, 0xeaa127faL

    move-wide/from16 v38, v30

    invoke-static/range {v32 .. v45}, Lcom/unipay/tools/Utilities;->_$2(JJJJJJJ)J

    move-result-wide v32

    const/4 v2, 0x3

    aget-wide v38, v62, v2

    sget v2, Lcom/unipay/tools/Utilities;->_$12:I

    int-to-long v0, v2

    move-wide/from16 v40, v0

    const-wide v42, 0xd4ef3085L

    invoke-static/range {v30 .. v43}, Lcom/unipay/tools/Utilities;->_$2(JJJJJJJ)J

    move-result-wide v38

    const/4 v2, 0x6

    aget-wide v44, v62, v2

    sget v2, Lcom/unipay/tools/Utilities;->_$11:I

    int-to-long v0, v2

    move-wide/from16 v46, v0

    const-wide/32 v48, 0x4881d05

    move-wide/from16 v40, v32

    move-wide/from16 v42, v34

    invoke-static/range {v36 .. v49}, Lcom/unipay/tools/Utilities;->_$2(JJJJJJJ)J

    move-result-wide v36

    const/16 v2, 0x9

    aget-wide v42, v62, v2

    sget v2, Lcom/unipay/tools/Utilities;->_$14:I

    int-to-long v0, v2

    move-wide/from16 v44, v0

    const-wide v46, 0xd9d4d039L

    move-wide/from16 v40, v32

    invoke-static/range {v34 .. v47}, Lcom/unipay/tools/Utilities;->_$2(JJJJJJJ)J

    move-result-wide v34

    const/16 v2, 0xc

    aget-wide v40, v62, v2

    sget v2, Lcom/unipay/tools/Utilities;->_$13:I

    int-to-long v0, v2

    move-wide/from16 v42, v0

    const-wide v44, 0xe6db99e5L

    invoke-static/range {v32 .. v45}, Lcom/unipay/tools/Utilities;->_$2(JJJJJJJ)J

    move-result-wide v40

    const/16 v2, 0xf

    aget-wide v46, v62, v2

    sget v2, Lcom/unipay/tools/Utilities;->_$12:I

    int-to-long v0, v2

    move-wide/from16 v48, v0

    const-wide/32 v50, 0x1fa27cf8

    move-wide/from16 v42, v34

    move-wide/from16 v44, v36

    invoke-static/range {v38 .. v51}, Lcom/unipay/tools/Utilities;->_$2(JJJJJJJ)J

    move-result-wide v38

    const/4 v2, 0x2

    aget-wide v44, v62, v2

    sget v2, Lcom/unipay/tools/Utilities;->_$11:I

    int-to-long v0, v2

    move-wide/from16 v46, v0

    const-wide v48, 0xc4ac5665L

    move-wide/from16 v42, v34

    invoke-static/range {v36 .. v49}, Lcom/unipay/tools/Utilities;->_$2(JJJJJJJ)J

    move-result-wide v36

    const/4 v2, 0x0

    aget-wide v42, v62, v2

    sget v2, Lcom/unipay/tools/Utilities;->_$10:I

    int-to-long v0, v2

    move-wide/from16 v44, v0

    const-wide v46, 0xf4292244L

    invoke-static/range {v34 .. v47}, Lcom/unipay/tools/Utilities;->_$1(JJJJJJJ)J

    move-result-wide v42

    const/4 v2, 0x7

    aget-wide v48, v62, v2

    sget v2, Lcom/unipay/tools/Utilities;->_$9:I

    int-to-long v0, v2

    move-wide/from16 v50, v0

    const-wide/32 v52, 0x432aff97

    move-wide/from16 v44, v36

    move-wide/from16 v46, v38

    invoke-static/range {v40 .. v53}, Lcom/unipay/tools/Utilities;->_$1(JJJJJJJ)J

    move-result-wide v40

    const/16 v2, 0xe

    aget-wide v46, v62, v2

    sget v2, Lcom/unipay/tools/Utilities;->_$8:I

    int-to-long v0, v2

    move-wide/from16 v48, v0

    const-wide v50, 0xab9423a7L

    move-wide/from16 v44, v36

    invoke-static/range {v38 .. v51}, Lcom/unipay/tools/Utilities;->_$1(JJJJJJJ)J

    move-result-wide v38

    const/4 v2, 0x5

    aget-wide v44, v62, v2

    sget v2, Lcom/unipay/tools/Utilities;->_$7:I

    int-to-long v0, v2

    move-wide/from16 v46, v0

    const-wide v48, 0xfc93a039L

    invoke-static/range {v36 .. v49}, Lcom/unipay/tools/Utilities;->_$1(JJJJJJJ)J

    move-result-wide v44

    const/16 v2, 0xc

    aget-wide v50, v62, v2

    sget v2, Lcom/unipay/tools/Utilities;->_$10:I

    int-to-long v0, v2

    move-wide/from16 v52, v0

    const-wide/32 v54, 0x655b59c3

    move-wide/from16 v46, v38

    move-wide/from16 v48, v40

    invoke-static/range {v42 .. v55}, Lcom/unipay/tools/Utilities;->_$1(JJJJJJJ)J

    move-result-wide v42

    const/4 v2, 0x3

    aget-wide v48, v62, v2

    sget v2, Lcom/unipay/tools/Utilities;->_$9:I

    int-to-long v0, v2

    move-wide/from16 v50, v0

    const-wide v52, 0x8f0ccc92L

    move-wide/from16 v46, v38

    invoke-static/range {v40 .. v53}, Lcom/unipay/tools/Utilities;->_$1(JJJJJJJ)J

    move-result-wide v40

    const/16 v2, 0xa

    aget-wide v46, v62, v2

    sget v2, Lcom/unipay/tools/Utilities;->_$8:I

    int-to-long v0, v2

    move-wide/from16 v48, v0

    const-wide v50, 0xffeff47dL

    invoke-static/range {v38 .. v51}, Lcom/unipay/tools/Utilities;->_$1(JJJJJJJ)J

    move-result-wide v46

    const/4 v2, 0x1

    aget-wide v52, v62, v2

    sget v2, Lcom/unipay/tools/Utilities;->_$7:I

    int-to-long v0, v2

    move-wide/from16 v54, v0

    const-wide v56, 0x85845dd1L

    move-wide/from16 v48, v40

    move-wide/from16 v50, v42

    invoke-static/range {v44 .. v57}, Lcom/unipay/tools/Utilities;->_$1(JJJJJJJ)J

    move-result-wide v44

    const/16 v2, 0x8

    aget-wide v50, v62, v2

    sget v2, Lcom/unipay/tools/Utilities;->_$10:I

    int-to-long v0, v2

    move-wide/from16 v52, v0

    const-wide/32 v54, 0x6fa87e4f

    move-wide/from16 v48, v40

    invoke-static/range {v42 .. v55}, Lcom/unipay/tools/Utilities;->_$1(JJJJJJJ)J

    move-result-wide v42

    const/16 v2, 0xf

    aget-wide v48, v62, v2

    sget v2, Lcom/unipay/tools/Utilities;->_$9:I

    int-to-long v0, v2

    move-wide/from16 v50, v0

    const-wide v52, 0xfe2ce6e0L

    invoke-static/range {v40 .. v53}, Lcom/unipay/tools/Utilities;->_$1(JJJJJJJ)J

    move-result-wide v48

    const/4 v2, 0x6

    aget-wide v54, v62, v2

    sget v2, Lcom/unipay/tools/Utilities;->_$8:I

    int-to-long v0, v2

    move-wide/from16 v56, v0

    const-wide v58, 0xa3014314L

    move-wide/from16 v50, v42

    move-wide/from16 v52, v44

    invoke-static/range {v46 .. v59}, Lcom/unipay/tools/Utilities;->_$1(JJJJJJJ)J

    move-result-wide v46

    const/16 v2, 0xd

    aget-wide v52, v62, v2

    sget v2, Lcom/unipay/tools/Utilities;->_$7:I

    int-to-long v0, v2

    move-wide/from16 v54, v0

    const-wide/32 v56, 0x4e0811a1

    move-wide/from16 v50, v42

    invoke-static/range {v44 .. v57}, Lcom/unipay/tools/Utilities;->_$1(JJJJJJJ)J

    move-result-wide v44

    const/4 v2, 0x4

    aget-wide v50, v62, v2

    sget v2, Lcom/unipay/tools/Utilities;->_$10:I

    int-to-long v0, v2

    move-wide/from16 v52, v0

    const-wide v54, 0xf7537e82L

    invoke-static/range {v42 .. v55}, Lcom/unipay/tools/Utilities;->_$1(JJJJJJJ)J

    move-result-wide v50

    const/16 v2, 0xb

    aget-wide v56, v62, v2

    sget v2, Lcom/unipay/tools/Utilities;->_$9:I

    int-to-long v0, v2

    move-wide/from16 v58, v0

    const-wide v60, 0xbd3af235L

    move-wide/from16 v52, v44

    move-wide/from16 v54, v46

    invoke-static/range {v48 .. v61}, Lcom/unipay/tools/Utilities;->_$1(JJJJJJJ)J

    move-result-wide v48

    const/4 v2, 0x2

    aget-wide v54, v62, v2

    sget v2, Lcom/unipay/tools/Utilities;->_$8:I

    int-to-long v0, v2

    move-wide/from16 v56, v0

    const-wide/32 v58, 0x2ad7d2bb

    move-wide/from16 v52, v44

    invoke-static/range {v46 .. v59}, Lcom/unipay/tools/Utilities;->_$1(JJJJJJJ)J

    move-result-wide v46

    const/16 v2, 0x9

    aget-wide v52, v62, v2

    sget v2, Lcom/unipay/tools/Utilities;->_$7:I

    int-to-long v0, v2

    move-wide/from16 v54, v0

    const-wide v56, 0xeb86d391L

    invoke-static/range {v44 .. v57}, Lcom/unipay/tools/Utilities;->_$1(JJJJJJJ)J

    move-result-wide v2

    sget-object v4, Lcom/unipay/tools/Utilities;->_$5:[J

    const/4 v5, 0x0

    aget-wide v6, v4, v5

    add-long v6, v6, v50

    aput-wide v6, v4, v5

    sget-object v4, Lcom/unipay/tools/Utilities;->_$5:[J

    const/4 v5, 0x1

    aget-wide v6, v4, v5

    add-long/2addr v2, v6

    aput-wide v2, v4, v5

    sget-object v2, Lcom/unipay/tools/Utilities;->_$5:[J

    const/4 v3, 0x2

    aget-wide v4, v2, v3

    add-long v4, v4, v46

    aput-wide v4, v2, v3

    sget-object v2, Lcom/unipay/tools/Utilities;->_$5:[J

    const/4 v3, 0x3

    aget-wide v4, v2, v3

    add-long v4, v4, v48

    aput-wide v4, v2, v3

    return-void
.end method

.method private static _$1([BI)V
    .locals 11

    const/16 v9, 0x40

    const/4 v8, 0x1

    const/4 v0, 0x0

    new-array v3, v9, [B

    sget-object v1, Lcom/unipay/tools/Utilities;->_$4:[J

    aget-wide v1, v1, v0

    const/4 v4, 0x3

    ushr-long/2addr v1, v4

    long-to-int v1, v1

    and-int/lit8 v1, v1, 0x3f

    sget-object v2, Lcom/unipay/tools/Utilities;->_$4:[J

    aget-wide v4, v2, v0

    shl-int/lit8 v6, p1, 0x3

    int-to-long v6, v6

    add-long/2addr v4, v6

    aput-wide v4, v2, v0

    shl-int/lit8 v2, p1, 0x3

    int-to-long v6, v2

    cmp-long v2, v4, v6

    if-gez v2, :cond_0

    sget-object v2, Lcom/unipay/tools/Utilities;->_$4:[J

    aget-wide v4, v2, v8

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    aput-wide v4, v2, v8

    :cond_0
    sget-object v2, Lcom/unipay/tools/Utilities;->_$4:[J

    aget-wide v4, v2, v8

    ushr-int/lit8 v6, p1, 0x1d

    int-to-long v6, v6

    add-long/2addr v4, v6

    aput-wide v4, v2, v8

    rsub-int/lit8 v2, v1, 0x40

    if-lt p1, v2, :cond_1

    sget-object v4, Lcom/unipay/tools/Utilities;->_$3:[B

    invoke-static {v4, p0, v1, v0, v2}, Lcom/unipay/tools/Utilities;->_$1([B[BIII)V

    sget-object v1, Lcom/unipay/tools/Utilities;->_$3:[B

    invoke-static {v1}, Lcom/unipay/tools/Utilities;->_$1([B)V

    move v1, v2

    :goto_0
    add-int/lit8 v2, v1, 0x3f

    if-ge v2, p1, :cond_2

    invoke-static {v3, p0, v0, v1, v9}, Lcom/unipay/tools/Utilities;->_$1([B[BIII)V

    invoke-static {v3}, Lcom/unipay/tools/Utilities;->_$1([B)V

    add-int/lit8 v1, v1, 0x40

    goto :goto_0

    :cond_1
    move v10, v1

    move v1, v0

    move v0, v10

    :cond_2
    sget-object v2, Lcom/unipay/tools/Utilities;->_$3:[B

    sub-int v3, p1, v1

    invoke-static {v2, p0, v0, v1, v3}, Lcom/unipay/tools/Utilities;->_$1([B[BIII)V

    return-void
.end method

.method private static _$1([B[BIII)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_0

    add-int v1, p2, v0

    add-int v2, p3, v0

    aget-byte v2, p1, v2

    aput-byte v2, p0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static _$1([B[JI)V
    .locals 8

    const/4 v0, 0x0

    const-wide/16 v6, 0xff

    move v1, v0

    :goto_0
    if-ge v0, p2, :cond_0

    aget-wide v2, p1, v1

    and-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p0, v0

    add-int/lit8 v2, v0, 0x1

    aget-wide v3, p1, v1

    const/16 v5, 0x8

    ushr-long/2addr v3, v5

    and-long/2addr v3, v6

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, p0, v2

    add-int/lit8 v2, v0, 0x2

    aget-wide v3, p1, v1

    const/16 v5, 0x10

    ushr-long/2addr v3, v5

    and-long/2addr v3, v6

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, p0, v2

    add-int/lit8 v2, v0, 0x3

    aget-wide v3, p1, v1

    const/16 v5, 0x18

    ushr-long/2addr v3, v5

    and-long/2addr v3, v6

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, p0, v2

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static _$1([J[BI)V
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v0, p2, :cond_0

    aget-byte v2, p1, v0

    invoke-static {v2}, Lcom/unipay/tools/Utilities;->_$2(B)J

    move-result-wide v2

    add-int/lit8 v4, v0, 0x1

    aget-byte v4, p1, v4

    invoke-static {v4}, Lcom/unipay/tools/Utilities;->_$2(B)J

    move-result-wide v4

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, v0, 0x2

    aget-byte v4, p1, v4

    invoke-static {v4}, Lcom/unipay/tools/Utilities;->_$2(B)J

    move-result-wide v4

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, v0, 0x3

    aget-byte v4, p1, v4

    invoke-static {v4}, Lcom/unipay/tools/Utilities;->_$2(B)J

    move-result-wide v4

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    aput-wide v2, p0, v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static _$2(B)J
    .locals 2

    if-gez p0, :cond_0

    and-int/lit16 v0, p0, 0xff

    int-to-long v0, v0

    :goto_0
    return-wide v0

    :cond_0
    int-to-long v0, p0

    goto :goto_0
.end method

.method private static _$2(JJJ)J
    .locals 2

    xor-long v0, p0, p2

    xor-long/2addr v0, p4

    return-wide v0
.end method

.method private static _$2(JJJJJJJ)J
    .locals 5

    invoke-static/range {p2 .. p7}, Lcom/unipay/tools/Utilities;->_$2(JJJ)J

    move-result-wide v0

    add-long/2addr v0, p8

    add-long v0, v0, p12

    add-long/2addr v0, p0

    long-to-int v2, v0

    long-to-int v3, p10

    shl-int/2addr v2, v3

    long-to-int v0, v0

    const-wide/16 v3, 0x20

    sub-long/2addr v3, p10

    long-to-int v1, v3

    ushr-int/2addr v0, v1

    or-int/2addr v0, v2

    int-to-long v0, v0

    add-long/2addr v0, p2

    return-wide v0
.end method

.method private static _$2()V
    .locals 5

    const-wide/16 v1, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-object v0, Lcom/unipay/tools/Utilities;->_$4:[J

    aput-wide v1, v0, v3

    sget-object v0, Lcom/unipay/tools/Utilities;->_$4:[J

    aput-wide v1, v0, v4

    sget-object v0, Lcom/unipay/tools/Utilities;->_$5:[J

    const-wide/32 v1, 0x67452301

    aput-wide v1, v0, v3

    sget-object v0, Lcom/unipay/tools/Utilities;->_$5:[J

    const-wide v1, 0xefcdab89L

    aput-wide v1, v0, v4

    sget-object v0, Lcom/unipay/tools/Utilities;->_$5:[J

    const/4 v1, 0x2

    const-wide v2, 0x98badcfeL

    aput-wide v2, v0, v1

    sget-object v0, Lcom/unipay/tools/Utilities;->_$5:[J

    const/4 v1, 0x3

    const-wide/32 v2, 0x10325476

    aput-wide v2, v0, v1

    return-void
.end method

.method private static _$3(JJJ)J
    .locals 4

    and-long v0, p0, p4

    const-wide/16 v2, -0x1

    xor-long/2addr v2, p4

    and-long/2addr v2, p2

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private static _$3(JJJJJJJ)J
    .locals 5

    invoke-static/range {p2 .. p7}, Lcom/unipay/tools/Utilities;->_$3(JJJ)J

    move-result-wide v0

    add-long/2addr v0, p8

    add-long v0, v0, p12

    add-long/2addr v0, p0

    long-to-int v2, v0

    long-to-int v3, p10

    shl-int/2addr v2, v3

    long-to-int v0, v0

    const-wide/16 v3, 0x20

    sub-long/2addr v3, p10

    long-to-int v1, v3

    ushr-int/2addr v0, v1

    or-int/2addr v0, v2

    int-to-long v0, v0

    add-long/2addr v0, p2

    return-wide v0
.end method

.method private static _$4(JJJ)J
    .locals 4

    and-long v0, p0, p2

    const-wide/16 v2, -0x1

    xor-long/2addr v2, p0

    and-long/2addr v2, p4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private static _$4(JJJJJJJ)J
    .locals 5

    invoke-static/range {p2 .. p7}, Lcom/unipay/tools/Utilities;->_$4(JJJ)J

    move-result-wide v0

    add-long/2addr v0, p8

    add-long v0, v0, p12

    add-long/2addr v0, p0

    long-to-int v2, v0

    long-to-int v3, p10

    shl-int/2addr v2, v3

    long-to-int v0, v0

    const-wide/16 v3, 0x20

    sub-long/2addr v3, p10

    long-to-int v1, v3

    ushr-int/2addr v0, v1

    or-int/2addr v0, v2

    int-to-long v0, v0

    add-long/2addr v0, p2

    return-wide v0
.end method

.method public static bytes2int([B)I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    shl-int/lit8 v1, v1, 0x8

    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public static getInstances()Lcom/unipay/tools/Utilities;
    .locals 1

    sget-object v0, Lcom/unipay/tools/Utilities;->_$28:Lcom/unipay/tools/Utilities;

    if-nez v0, :cond_0

    new-instance v0, Lcom/unipay/tools/Utilities;

    invoke-direct {v0}, Lcom/unipay/tools/Utilities;-><init>()V

    sput-object v0, Lcom/unipay/tools/Utilities;->_$28:Lcom/unipay/tools/Utilities;

    :cond_0
    sget-object v0, Lcom/unipay/tools/Utilities;->_$28:Lcom/unipay/tools/Utilities;

    return-object v0
.end method

.method public static getMonth(Ljava/lang/String;)I
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    :goto_0
    sget-object v2, Lcom/unipay/tools/Utilities;->Month:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    sget-object v2, Lcom/unipay/tools/Utilities;->Month:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v0, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static getPercent(II)Ljava/lang/String;
    .locals 3

    const/16 v0, 0x64

    div-int/lit16 v1, p0, 0x400

    int-to-float v1, v1

    rem-int/lit16 v2, p0, 0x400

    if-le v2, v0, :cond_0

    const/high16 v2, 0x3f80

    add-float/2addr v1, v2

    :cond_0
    if-nez p1, :cond_1

    const-string v0, "0%"

    :goto_0
    return-object v0

    :cond_1
    const/high16 v2, 0x42c8

    mul-float/2addr v1, v2

    int-to-float v2, p1

    div-float/2addr v1, v2

    float-to-int v1, v1

    if-le v1, v0, :cond_2

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public static getSize(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    shr-int/lit8 v1, p0, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "K"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static int2bytes(I)[B
    .locals 4

    const/4 v3, 0x4

    new-array v1, v3, [B

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    mul-int/lit8 v2, v0, 0x8

    rsub-int/lit8 v2, v2, 0x18

    ushr-int v2, p0, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static sleep(J)V
    .locals 1

    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static splitString(Ljava/lang/String;C)[Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    :goto_0
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    return-object v0

    :cond_0
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v2, 0x1

    goto :goto_0
.end method

.method public static splitString(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    :goto_0
    if-ltz v1, :cond_0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {v2, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v3, v1, [Ljava/lang/String;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_1

    move v1, v0

    :goto_1
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v3, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    return-object v3
.end method

.method public static string2Time(Ljava/lang/String;)J
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0x20

    invoke-static {p0, v1}, Lcom/unipay/tools/Utilities;->splitString(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v1

    aget-object v2, v1, v5

    const/16 v3, 0x2d

    invoke-static {v2, v3}, Lcom/unipay/tools/Utilities;->splitString(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v2

    aget-object v1, v1, v4

    const/16 v3, 0x3a

    invoke-static {v1, v3}, Lcom/unipay/tools/Utilities;->splitString(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v1

    aget-object v3, v2, v5

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v4, v3}, Ljava/util/Calendar;->set(II)V

    aget-object v3, v2, v4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v6, v3}, Ljava/util/Calendar;->set(II)V

    const/4 v3, 0x5

    aget-object v2, v2, v6

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v3, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xb

    aget-object v3, v1, v5

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xc

    aget-object v3, v1, v4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xd

    aget-object v1, v1, v6

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public static time2String(J)Ljava/lang/String;
    .locals 4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getBitMapDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    :try_start_1
    invoke-virtual {p0, v2}, Lcom/unipay/tools/Utilities;->readInputStream(Ljava/io/InputStream;)[B

    move-result-object v1

    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v4, 0x0

    array-length v5, v1

    invoke-static {v1, v4, v5, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v4, 0x0

    array-length v5, v1

    invoke-static {v1, v4, v5, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v0

    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v2, v0

    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_0

    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_2
    if-eqz v2, :cond_1

    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_1
    :goto_3
    throw v0

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method public getCommand()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unipay/tools/Utilities;->_$25:Ljava/lang/String;

    return-object v0
.end method

.method public getConsumePrice()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unipay/tools/Utilities;->_$30:Ljava/lang/String;

    return-object v0
.end method

.method public getCpparam()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unipay/tools/Utilities;->_$23:Ljava/lang/String;

    return-object v0
.end method

.method public getEncrypt()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unipay/tools/Utilities;->_$31:Ljava/lang/String;

    return-object v0
.end method

.method public getFeetype()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unipay/tools/Utilities;->_$24:Ljava/lang/String;

    return-object v0
.end method

.method public getMd5passwd()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unipay/tools/Utilities;->_$26:Ljava/lang/String;

    return-object v0
.end method

.method public getMdn()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unipay/tools/Utilities;->_$27:Ljava/lang/String;

    return-object v0
.end method

.method public getPayfee()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unipay/tools/Utilities;->_$29:Ljava/lang/String;

    return-object v0
.end method

.method public readInputStream(Ljava/io/InputStream;)[B
    .locals 4

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v0, 0x400

    new-array v0, v0, [B

    :goto_0
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    return-object v2

    :cond_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method public setCommand(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/tools/Utilities;->_$25:Ljava/lang/String;

    return-void
.end method

.method public setConsumePrice(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/tools/Utilities;->_$30:Ljava/lang/String;

    return-void
.end method

.method public setCpparam(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/tools/Utilities;->_$23:Ljava/lang/String;

    return-void
.end method

.method public setEncrypt(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/tools/Utilities;->_$31:Ljava/lang/String;

    return-void
.end method

.method public setFeetype(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/tools/Utilities;->_$24:Ljava/lang/String;

    return-void
.end method

.method public setMd5passwd(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/tools/Utilities;->_$26:Ljava/lang/String;

    return-void
.end method

.method public setMdn(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/tools/Utilities;->_$27:Ljava/lang/String;

    return-void
.end method

.method public setPayfee(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/tools/Utilities;->_$29:Ljava/lang/String;

    return-void
.end method
