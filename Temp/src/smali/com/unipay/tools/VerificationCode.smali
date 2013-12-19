.class public Lcom/unipay/tools/VerificationCode;
.super Ljava/lang/Object;


# static fields
.field private static _$20:Lcom/unipay/tools/VerificationCode;

.field private static final _$21:[C


# instance fields
.field private _$1:Ljava/util/Random;

.field private _$10:I

.field private _$11:I

.field private _$12:I

.field private _$13:I

.field private _$14:I

.field private _$15:I

.field private _$16:I

.field private _$17:I

.field private _$18:I

.field private _$19:I

.field private _$2:I

.field private _$3:I

.field private _$4:Ljava/lang/String;

.field private _$5:I

.field private _$6:I

.field private _$7:I

.field private _$8:I

.field private _$9:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xa

    new-array v0, v0, [C

    const/4 v1, 0x0

    const/16 v2, 0x30

    aput-char v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x31

    aput-char v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x32

    aput-char v2, v0, v1

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

    sput-object v0, Lcom/unipay/tools/VerificationCode;->_$21:[C

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x78

    iput v0, p0, Lcom/unipay/tools/VerificationCode;->_$19:I

    const/16 v0, 0x32

    iput v0, p0, Lcom/unipay/tools/VerificationCode;->_$18:I

    const/16 v0, 0x14

    iput v0, p0, Lcom/unipay/tools/VerificationCode;->_$17:I

    iget v0, p0, Lcom/unipay/tools/VerificationCode;->_$19:I

    div-int/lit8 v0, v0, 0xc

    iput v0, p0, Lcom/unipay/tools/VerificationCode;->_$16:I

    iget v0, p0, Lcom/unipay/tools/VerificationCode;->_$19:I

    div-int/lit8 v0, v0, 0x6

    iput v0, p0, Lcom/unipay/tools/VerificationCode;->_$15:I

    iget v0, p0, Lcom/unipay/tools/VerificationCode;->_$19:I

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/unipay/tools/VerificationCode;->_$14:I

    iget v0, p0, Lcom/unipay/tools/VerificationCode;->_$19:I

    div-int/lit8 v0, v0, 0x6

    iput v0, p0, Lcom/unipay/tools/VerificationCode;->_$13:I

    iget v0, p0, Lcom/unipay/tools/VerificationCode;->_$16:I

    iput v0, p0, Lcom/unipay/tools/VerificationCode;->_$12:I

    iget v0, p0, Lcom/unipay/tools/VerificationCode;->_$15:I

    iput v0, p0, Lcom/unipay/tools/VerificationCode;->_$11:I

    iget v0, p0, Lcom/unipay/tools/VerificationCode;->_$14:I

    iput v0, p0, Lcom/unipay/tools/VerificationCode;->_$10:I

    iget v0, p0, Lcom/unipay/tools/VerificationCode;->_$13:I

    iput v0, p0, Lcom/unipay/tools/VerificationCode;->_$9:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/unipay/tools/VerificationCode;->_$8:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/unipay/tools/VerificationCode;->_$7:I

    iget v0, p0, Lcom/unipay/tools/VerificationCode;->_$8:I

    iput v0, p0, Lcom/unipay/tools/VerificationCode;->_$6:I

    iget v0, p0, Lcom/unipay/tools/VerificationCode;->_$7:I

    iput v0, p0, Lcom/unipay/tools/VerificationCode;->_$5:I

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/unipay/tools/VerificationCode;->_$1:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x78

    iput v0, p0, Lcom/unipay/tools/VerificationCode;->_$19:I

    const/16 v0, 0x32

    iput v0, p0, Lcom/unipay/tools/VerificationCode;->_$18:I

    const/16 v0, 0x14

    iput v0, p0, Lcom/unipay/tools/VerificationCode;->_$17:I

    iget v0, p0, Lcom/unipay/tools/VerificationCode;->_$19:I

    div-int/lit8 v0, v0, 0xc

    iput v0, p0, Lcom/unipay/tools/VerificationCode;->_$16:I

    iget v0, p0, Lcom/unipay/tools/VerificationCode;->_$19:I

    div-int/lit8 v0, v0, 0x6

    iput v0, p0, Lcom/unipay/tools/VerificationCode;->_$15:I

    iget v0, p0, Lcom/unipay/tools/VerificationCode;->_$19:I

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/unipay/tools/VerificationCode;->_$14:I

    iget v0, p0, Lcom/unipay/tools/VerificationCode;->_$19:I

    div-int/lit8 v0, v0, 0x6

    iput v0, p0, Lcom/unipay/tools/VerificationCode;->_$13:I

    iget v0, p0, Lcom/unipay/tools/VerificationCode;->_$16:I

    iput v0, p0, Lcom/unipay/tools/VerificationCode;->_$12:I

    iget v0, p0, Lcom/unipay/tools/VerificationCode;->_$15:I

    iput v0, p0, Lcom/unipay/tools/VerificationCode;->_$11:I

    iget v0, p0, Lcom/unipay/tools/VerificationCode;->_$14:I

    iput v0, p0, Lcom/unipay/tools/VerificationCode;->_$10:I

    iget v0, p0, Lcom/unipay/tools/VerificationCode;->_$13:I

    iput v0, p0, Lcom/unipay/tools/VerificationCode;->_$9:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/unipay/tools/VerificationCode;->_$8:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/unipay/tools/VerificationCode;->_$7:I

    iget v0, p0, Lcom/unipay/tools/VerificationCode;->_$8:I

    iput v0, p0, Lcom/unipay/tools/VerificationCode;->_$6:I

    iget v0, p0, Lcom/unipay/tools/VerificationCode;->_$7:I

    iput v0, p0, Lcom/unipay/tools/VerificationCode;->_$5:I

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/unipay/tools/VerificationCode;->_$1:Ljava/util/Random;

    iput p1, p0, Lcom/unipay/tools/VerificationCode;->_$19:I

    iput p2, p0, Lcom/unipay/tools/VerificationCode;->_$18:I

    iput p3, p0, Lcom/unipay/tools/VerificationCode;->_$17:I

    iget v0, p0, Lcom/unipay/tools/VerificationCode;->_$19:I

    div-int/lit8 v0, v0, 0xc

    iput v0, p0, Lcom/unipay/tools/VerificationCode;->_$16:I

    iget v0, p0, Lcom/unipay/tools/VerificationCode;->_$19:I

    div-int/lit8 v0, v0, 0x6

    iput v0, p0, Lcom/unipay/tools/VerificationCode;->_$15:I

    iget v0, p0, Lcom/unipay/tools/VerificationCode;->_$19:I

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/unipay/tools/VerificationCode;->_$14:I

    iget v0, p0, Lcom/unipay/tools/VerificationCode;->_$19:I

    div-int/lit8 v0, v0, 0x6

    iput v0, p0, Lcom/unipay/tools/VerificationCode;->_$13:I

    iget v0, p0, Lcom/unipay/tools/VerificationCode;->_$16:I

    iput v0, p0, Lcom/unipay/tools/VerificationCode;->_$12:I

    iget v0, p0, Lcom/unipay/tools/VerificationCode;->_$15:I

    iput v0, p0, Lcom/unipay/tools/VerificationCode;->_$11:I

    iget v0, p0, Lcom/unipay/tools/VerificationCode;->_$14:I

    iput v0, p0, Lcom/unipay/tools/VerificationCode;->_$10:I

    iget v0, p0, Lcom/unipay/tools/VerificationCode;->_$13:I

    iput v0, p0, Lcom/unipay/tools/VerificationCode;->_$9:I

    return-void
.end method

.method private _$1(I)I
    .locals 4

    const/16 v3, 0x100

    iget-object v0, p0, Lcom/unipay/tools/VerificationCode;->_$1:Ljava/util/Random;

    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    div-int/2addr v0, p1

    iget-object v1, p0, Lcom/unipay/tools/VerificationCode;->_$1:Ljava/util/Random;

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    div-int/2addr v1, p1

    iget-object v2, p0, Lcom/unipay/tools/VerificationCode;->_$1:Ljava/util/Random;

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    div-int/2addr v2, p1

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    return v0
.end method

.method private _$1()V
    .locals 4

    iget v0, p0, Lcom/unipay/tools/VerificationCode;->_$3:I

    iget v1, p0, Lcom/unipay/tools/VerificationCode;->_$12:I

    iget-object v2, p0, Lcom/unipay/tools/VerificationCode;->_$1:Ljava/util/Random;

    iget v3, p0, Lcom/unipay/tools/VerificationCode;->_$11:I

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/unipay/tools/VerificationCode;->_$3:I

    iget v0, p0, Lcom/unipay/tools/VerificationCode;->_$10:I

    iget-object v1, p0, Lcom/unipay/tools/VerificationCode;->_$1:Ljava/util/Random;

    iget v2, p0, Lcom/unipay/tools/VerificationCode;->_$9:I

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/unipay/tools/VerificationCode;->_$2:I

    return-void
.end method

.method private _$1(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 6

    invoke-direct {p0}, Lcom/unipay/tools/VerificationCode;->_$2()I

    move-result v0

    iget-object v1, p0, Lcom/unipay/tools/VerificationCode;->_$1:Ljava/util/Random;

    iget v2, p0, Lcom/unipay/tools/VerificationCode;->_$19:I

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    iget-object v2, p0, Lcom/unipay/tools/VerificationCode;->_$1:Ljava/util/Random;

    iget v3, p0, Lcom/unipay/tools/VerificationCode;->_$18:I

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    iget-object v3, p0, Lcom/unipay/tools/VerificationCode;->_$1:Ljava/util/Random;

    iget v4, p0, Lcom/unipay/tools/VerificationCode;->_$19:I

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    iget-object v4, p0, Lcom/unipay/tools/VerificationCode;->_$1:Ljava/util/Random;

    iget v5, p0, Lcom/unipay/tools/VerificationCode;->_$18:I

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    const/high16 v5, 0x3f80

    invoke-virtual {p2, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v1, v1

    int-to-float v2, v2

    int-to-float v3, v3

    int-to-float v4, v4

    move-object v0, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private _$1(Landroid/graphics/Paint;)V
    .locals 2

    invoke-direct {p0}, Lcom/unipay/tools/VerificationCode;->_$2()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/unipay/tools/VerificationCode;->_$1:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextBoolean()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    iget-object v0, p0, Lcom/unipay/tools/VerificationCode;->_$1:Ljava/util/Random;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    iget-object v0, p0, Lcom/unipay/tools/VerificationCode;->_$1:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextBoolean()Z

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSkewX(F)V

    return-void
.end method

.method private _$2()I
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/unipay/tools/VerificationCode;->_$1(I)I

    move-result v0

    return v0
.end method

.method private _$3()Ljava/lang/String;
    .locals 5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/unipay/tools/VerificationCode;->_$6:I

    if-ge v0, v2, :cond_0

    sget-object v2, Lcom/unipay/tools/VerificationCode;->_$21:[C

    iget-object v3, p0, Lcom/unipay/tools/VerificationCode;->_$1:Ljava/util/Random;

    sget-object v4, Lcom/unipay/tools/VerificationCode;->_$21:[C

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    aget-char v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/unipay/tools/VerificationCode;
    .locals 1

    sget-object v0, Lcom/unipay/tools/VerificationCode;->_$20:Lcom/unipay/tools/VerificationCode;

    if-nez v0, :cond_0

    new-instance v0, Lcom/unipay/tools/VerificationCode;

    invoke-direct {v0}, Lcom/unipay/tools/VerificationCode;-><init>()V

    sput-object v0, Lcom/unipay/tools/VerificationCode;->_$20:Lcom/unipay/tools/VerificationCode;

    :cond_0
    sget-object v0, Lcom/unipay/tools/VerificationCode;->_$20:Lcom/unipay/tools/VerificationCode;

    return-object v0
.end method

.method public static getInstance(III)Lcom/unipay/tools/VerificationCode;
    .locals 1

    sget-object v0, Lcom/unipay/tools/VerificationCode;->_$20:Lcom/unipay/tools/VerificationCode;

    if-nez v0, :cond_0

    new-instance v0, Lcom/unipay/tools/VerificationCode;

    invoke-direct {v0, p0, p1, p2}, Lcom/unipay/tools/VerificationCode;-><init>(III)V

    sput-object v0, Lcom/unipay/tools/VerificationCode;->_$20:Lcom/unipay/tools/VerificationCode;

    :cond_0
    sget-object v0, Lcom/unipay/tools/VerificationCode;->_$20:Lcom/unipay/tools/VerificationCode;

    return-object v0
.end method


# virtual methods
.method public createBitmap()Landroid/graphics/Bitmap;
    .locals 8

    const/4 v1, 0x0

    iput v1, p0, Lcom/unipay/tools/VerificationCode;->_$3:I

    iget v0, p0, Lcom/unipay/tools/VerificationCode;->_$19:I

    iget v2, p0, Lcom/unipay/tools/VerificationCode;->_$18:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-direct {p0}, Lcom/unipay/tools/VerificationCode;->_$3()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unipay/tools/VerificationCode;->_$4:Ljava/lang/String;

    const/4 v0, -0x1

    invoke-virtual {v3, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iget v0, p0, Lcom/unipay/tools/VerificationCode;->_$17:I

    int-to-float v0, v0

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    move v0, v1

    :goto_0
    iget-object v5, p0, Lcom/unipay/tools/VerificationCode;->_$4:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v0, v5, :cond_0

    invoke-direct {p0, v4}, Lcom/unipay/tools/VerificationCode;->_$1(Landroid/graphics/Paint;)V

    invoke-direct {p0}, Lcom/unipay/tools/VerificationCode;->_$1()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/unipay/tools/VerificationCode;->_$4:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/unipay/tools/VerificationCode;->_$3:I

    int-to-float v6, v6

    iget v7, p0, Lcom/unipay/tools/VerificationCode;->_$2:I

    int-to-float v7, v7

    invoke-virtual {v3, v5, v6, v7, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    iget v0, p0, Lcom/unipay/tools/VerificationCode;->_$5:I

    if-ge v1, v0, :cond_1

    invoke-direct {p0, v3, v4}, Lcom/unipay/tools/VerificationCode;->_$1(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const/16 v0, 0x1f

    invoke-virtual {v3, v0}, Landroid/graphics/Canvas;->save(I)I

    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    return-object v2
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unipay/tools/VerificationCode;->_$4:Ljava/lang/String;

    return-object v0
.end method
