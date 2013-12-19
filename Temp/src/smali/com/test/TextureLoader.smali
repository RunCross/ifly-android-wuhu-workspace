.class public Lcom/test/TextureLoader;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ""

    sput-object v0, Lcom/test/TextureLoader;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()V
    .locals 7

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    invoke-static {}, Landroid/opengl/GLES11;->glGetError()I

    move-result v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    const-string v4, "glError: \u30a8\u30e9\u30fc\u304c\u51fa\u3066\u307e\u3059:%s(%d) (\tn:%d)"

    const/4 v2, 0x3

    new-array v5, v2, [Ljava/lang/Object;

    packed-switch v3, :pswitch_data_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "getGlErrorString err:"

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " (unknown error no)"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    aput-object v2, v5, v1

    const/4 v2, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v2

    const/4 v2, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v2

    invoke-static {v4, v5}, Lcom/test/Debug;->err(Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :pswitch_0
    const-string v2, "GL_INVALID_ENUM"

    goto :goto_1

    :pswitch_1
    const-string v2, "GL_INVALID_VALUE"

    goto :goto_1

    :pswitch_2
    const-string v2, "GL_INVALID_OPERATION"

    goto :goto_1

    :pswitch_3
    const-string v2, "GL_STACK_OVERFLOW"

    goto :goto_1

    :pswitch_4
    const-string v2, "GL_STACK_UNDERFLOW"

    goto :goto_1

    :pswitch_5
    const-string v2, "GL_OUT_OF_MEMORY"

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x500
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private static a(Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    :goto_0
    invoke-static {}, Landroid/opengl/GLES11;->glGetError()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    packed-switch v0, :pswitch_data_0

    const-string v1, "!!!gl error!!! %s : glGetError():%d"

    new-array v2, v6, [Ljava/lang/Object;

    sget-object v3, Lcom/test/TextureLoader;->a:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Lcom/test/Debug;->err(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_0
    const-string v0, "!!!gl error!!! %s : %s : GL_INVALID_ENUM"

    new-array v1, v6, [Ljava/lang/Object;

    sget-object v2, Lcom/test/TextureLoader;->a:Ljava/lang/String;

    aput-object v2, v1, v4

    aput-object p0, v1, v5

    invoke-static {v0, v1}, Lcom/test/Debug;->err(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_1
    const-string v0, "!!!gl error!!! %s : %s : GL_INVALID_VALUE"

    new-array v1, v6, [Ljava/lang/Object;

    sget-object v2, Lcom/test/TextureLoader;->a:Ljava/lang/String;

    aput-object v2, v1, v4

    aput-object p0, v1, v5

    invoke-static {v0, v1}, Lcom/test/Debug;->err(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_2
    const-string v0, "!!!gl error!!! %s : %s : GL_INVALID_OPERATION"

    new-array v1, v6, [Ljava/lang/Object;

    sget-object v2, Lcom/test/TextureLoader;->a:Ljava/lang/String;

    aput-object v2, v1, v4

    aput-object p0, v1, v5

    invoke-static {v0, v1}, Lcom/test/Debug;->err(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_3
    const-string v0, "!!!gl error!!! %s : %s : GL_STACK_OVERFLOW"

    new-array v1, v6, [Ljava/lang/Object;

    sget-object v2, Lcom/test/TextureLoader;->a:Ljava/lang/String;

    aput-object v2, v1, v4

    aput-object p0, v1, v5

    invoke-static {v0, v1}, Lcom/test/Debug;->err(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_4
    const-string v0, "!!!gl error!!! %s : %s : GL_STACK_UNDERFLOW"

    new-array v1, v6, [Ljava/lang/Object;

    sget-object v2, Lcom/test/TextureLoader;->a:Ljava/lang/String;

    aput-object v2, v1, v4

    aput-object p0, v1, v5

    invoke-static {v0, v1}, Lcom/test/Debug;->err(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_5
    const-string v0, "!!!gl error!!! %s : %s : GL_OUT_OF_MEMORY"

    new-array v1, v6, [Ljava/lang/Object;

    sget-object v2, Lcom/test/TextureLoader;->a:Ljava/lang/String;

    aput-object v2, v1, v4

    aput-object p0, v1, v5

    invoke-static {v0, v1}, Lcom/test/Debug;->err(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x500
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private static a(II)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    add-int/lit8 v1, p0, -0x1

    and-int/2addr v1, p0

    if-nez v1, :cond_0

    add-int/lit8 v1, p1, -0x1

    and-int/2addr v1, p1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static createDebugFont(I)Lcom/test/Texture;
    .locals 14

    const/4 v0, 0x6

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v2, " !\"#$%&\'()*+,-./"

    aput-object v2, v1, v0

    const/4 v0, 0x1

    const-string v2, "0123456789:;<=>?"

    aput-object v2, v1, v0

    const/4 v0, 0x2

    const-string v2, "@ABCDEFGHIJKLMNO"

    aput-object v2, v1, v0

    const/4 v0, 0x3

    const-string v2, "PQRSTUVWXYZ[\\]^_"

    aput-object v2, v1, v0

    const/4 v0, 0x4

    const-string v2, "`abcdefghijklmno"

    aput-object v2, v1, v0

    const/4 v0, 0x5

    const-string v2, "pqrstuvwxyz{|}~"

    aput-object v2, v1, v0

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    int-to-float v0, p0

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {v6}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v3

    const/4 v0, -0x1

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    new-instance v7, Lcom/test/CGSize;

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {v7, v0, v2}, Lcom/test/CGSize;-><init>(II)V

    const/4 v2, 0x0

    array-length v4, v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v4, :cond_0

    div-int/lit8 v0, v2, 0x10

    iput v0, v7, Lcom/test/CGSize;->width:I

    iget v0, v7, Lcom/test/CGSize;->height:I

    mul-int/lit8 v3, v0, 0x6

    const/4 v0, 0x1

    if-eq v2, v0, :cond_5

    add-int/lit8 v0, v2, -0x1

    and-int/2addr v0, v2

    if-eqz v0, :cond_5

    const/4 v4, 0x1

    :goto_1
    if-lt v4, v2, :cond_1

    :goto_2
    const/4 v0, 0x1

    if-eq v3, v0, :cond_4

    add-int/lit8 v0, v3, -0x1

    and-int/2addr v0, v3

    if-eqz v0, :cond_4

    const/4 v5, 0x1

    :goto_3
    if-lt v5, v3, :cond_2

    :goto_4
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v0, v10, v11, v12}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {v9, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    array-length v10, v1

    const/4 v0, 0x0

    :goto_5
    if-lt v0, v10, :cond_3

    invoke-static {}, Lcom/test/TextureLoader;->a()V

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v0, 0x1

    const/4 v6, 0x0

    invoke-static {v0, v1, v6}, Landroid/opengl/GLES11;->glGenTextures(I[II)V

    const/16 v0, 0xcf5

    const/4 v6, 0x1

    invoke-static {v0, v6}, Landroid/opengl/GLES11;->glPixelStorei(II)V

    const/16 v0, 0xde1

    const/4 v6, 0x0

    aget v6, v1, v6

    invoke-static {v0, v6}, Landroid/opengl/GLES11;->glBindTexture(II)V

    const/16 v0, 0xde1

    const/16 v6, 0x2801

    const/16 v9, 0x2601

    invoke-static {v0, v6, v9}, Landroid/opengl/GLES11;->glTexParameteri(III)V

    const/16 v0, 0xde1

    const/16 v6, 0x2800

    const/16 v9, 0x2601

    invoke-static {v0, v6, v9}, Landroid/opengl/GLES11;->glTexParameteri(III)V

    const/16 v0, 0x2300

    const/16 v6, 0x2200

    const/high16 v9, 0x4604

    invoke-static {v0, v6, v9}, Landroid/opengl/GLES11;->glTexEnvf(IIF)V

    const/16 v0, 0xde1

    const/4 v6, 0x0

    const/4 v9, 0x0

    invoke-static {v0, v6, v8, v9}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    const-string v0, "realWidth=%d, realHeight=%d, width=%d, height=%d"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v8

    const/4 v8, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v8

    const/4 v8, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v8

    const/4 v8, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v8

    invoke-static {v0, v6}, Lcom/test/Debug;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/test/Texture;

    const/4 v6, 0x0

    aget v1, v1, v6

    invoke-direct/range {v0 .. v5}, Lcom/test/Texture;-><init>(IIIII)V

    iget v1, v7, Lcom/test/CGSize;->width:I

    iput v1, v0, Lcom/test/Texture;->halfFontSizeWidth:I

    iget v1, v7, Lcom/test/CGSize;->height:I

    iput v1, v0, Lcom/test/Texture;->halfFontSizeHeight:I

    return-object v0

    :cond_0
    aget-object v5, v1, v0

    const/4 v8, 0x1

    invoke-virtual {v6, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v9

    const/high16 v10, 0x3f00

    add-float/2addr v9, v10

    float-to-int v9, v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    const/4 v10, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v6, v5, v10, v11, v9}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget v5, v9, Landroid/graphics/Rect;->right:I

    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    const/4 v8, 0x1

    iget v9, v3, Landroid/graphics/Paint$FontMetrics;->top:F

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    iget v10, v3, Landroid/graphics/Paint$FontMetrics;->bottom:F

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    add-float/2addr v9, v10

    const/high16 v10, 0x3f00

    add-float/2addr v9, v10

    float-to-int v9, v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v5, v7, Lcom/test/CGSize;->height:I

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v7, Lcom/test/CGSize;->height:I

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_1
    mul-int/lit8 v4, v4, 0x2

    goto/16 :goto_1

    :cond_2
    mul-int/lit8 v5, v5, 0x2

    goto/16 :goto_3

    :cond_3
    aget-object v11, v1, v0

    const/4 v12, 0x0

    int-to-float v13, p0

    invoke-virtual {v9, v11, v12, v13, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget v11, v7, Lcom/test/CGSize;->height:I

    add-int/2addr p0, v11

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_5

    :cond_4
    move v5, v3

    goto/16 :goto_4

    :cond_5
    move v4, v2

    goto/16 :goto_2
.end method

.method public static createTextNumTexture(Ljava/lang/String;II)Lcom/test/Texture;
    .locals 17

    const-string v1, "Texture#createTextNumTexture text:%s(%d) fontSize:%d fontColor:%d"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/test/Debug;->detail(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    move/from16 v0, p1

    int-to-float v1, v0

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v7

    const/4 v1, -0x1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    const-string v1, "0"

    move/from16 v0, p1

    invoke-static {v1, v0}, Lcom/test/FontUtils;->getStringSize(Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v8, v1, 0x1

    const/4 v1, 0x1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v3

    mul-int/2addr v3, v8

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/4 v3, 0x1

    iget v4, v7, Landroid/graphics/Paint$FontMetrics;->top:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, v7, Landroid/graphics/Paint$FontMetrics;->bottom:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    add-float/2addr v4, v5

    const/high16 v5, 0x3f00

    add-float/2addr v4, v5

    float-to-int v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    const/4 v5, 0x0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v5, v6, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget v3, v3, Landroid/graphics/Rect;->right:I

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v3, v4}, Lcom/test/TextureLoader;->a(II)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-boolean v1, Lcom/test/DeviceInfo;->replacing:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v5, 0x0

    aput v3, v1, v5

    const/4 v5, 0x1

    aput v4, v1, v5

    invoke-static {v1}, Lcom/test/Utils;->scalingSize([I)V

    const/4 v5, 0x0

    aget v5, v1, v5

    const/4 v6, 0x1

    aget v6, v1, v6

    :goto_0
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    new-instance v10, Landroid/graphics/Canvas;

    invoke-direct {v10, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v1, v11, v12, v13}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v10, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v1, 0x0

    :goto_1
    if-lt v1, v11, :cond_0

    invoke-static {}, Lcom/test/TextureLoader;->a()V

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v1, 0x1

    const/4 v8, 0x0

    invoke-static {v1, v2, v8}, Landroid/opengl/GLES11;->glGenTextures(I[II)V

    const/16 v1, 0xcf5

    const/4 v8, 0x1

    invoke-static {v1, v8}, Landroid/opengl/GLES11;->glPixelStorei(II)V

    const/16 v1, 0xde1

    const/4 v8, 0x0

    aget v8, v2, v8

    invoke-static {v1, v8}, Landroid/opengl/GLES11;->glBindTexture(II)V

    const/16 v1, 0xde1

    const/16 v8, 0x2801

    const/16 v10, 0x2601

    invoke-static {v1, v8, v10}, Landroid/opengl/GLES11;->glTexParameteri(III)V

    const/16 v1, 0xde1

    const/16 v8, 0x2800

    const/16 v10, 0x2601

    invoke-static {v1, v8, v10}, Landroid/opengl/GLES11;->glTexParameteri(III)V

    const/16 v1, 0x2300

    const/16 v8, 0x2200

    const/high16 v10, 0x4604

    invoke-static {v1, v8, v10}, Landroid/opengl/GLES11;->glTexEnvf(IIF)V

    const/16 v1, 0xde1

    const/4 v8, 0x0

    const/4 v10, 0x0

    invoke-static {v1, v8, v9, v10}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    new-instance v1, Lcom/test/Texture;

    const/4 v8, 0x0

    aget v2, v2, v8

    iget v7, v7, Landroid/graphics/Paint$FontMetrics;->bottom:F

    float-to-int v7, v7

    invoke-direct/range {v1 .. v7}, Lcom/test/Texture;-><init>(IIIIII)V

    return-object v1

    :cond_0
    add-int/lit8 v12, v1, 0x1

    if-eq v12, v11, :cond_1

    add-int/lit8 v12, v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    mul-int v13, v8, v1

    int-to-float v13, v13

    div-int/lit8 v14, v4, 0x2

    int-to-float v14, v14

    iget v15, v7, Landroid/graphics/Paint$FontMetrics;->top:F

    iget v0, v7, Landroid/graphics/Paint$FontMetrics;->bottom:F

    move/from16 v16, v0

    add-float v15, v15, v16

    const/high16 v16, 0x4080

    div-float v15, v15, v16

    sub-float/2addr v14, v15

    invoke-virtual {v10, v12, v13, v14, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    mul-int v13, v8, v1

    int-to-float v13, v13

    div-int/lit8 v14, v4, 0x2

    int-to-float v14, v14

    iget v15, v7, Landroid/graphics/Paint$FontMetrics;->top:F

    iget v0, v7, Landroid/graphics/Paint$FontMetrics;->bottom:F

    move/from16 v16, v0

    add-float v15, v15, v16

    const/high16 v16, 0x4080

    div-float v15, v15, v16

    sub-float/2addr v14, v15

    invoke-virtual {v10, v12, v13, v14, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_2

    :cond_2
    move v6, v4

    move v5, v3

    goto/16 :goto_0
.end method

.method public static createTextTexture(Ljava/lang/String;II)Lcom/test/Texture;
    .locals 19

    const-string v1, "line.separator"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    move/from16 v0, p1

    int-to-float v1, v0

    invoke-virtual {v9, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {v9}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v10

    const/4 v1, -0x1

    invoke-virtual {v9, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v1, 0x1

    invoke-virtual {v9, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v1, 0x1

    invoke-virtual {v9, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    const/4 v3, 0x1

    const/4 v1, 0x0

    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    array-length v4, v8

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v4, :cond_1

    const/4 v2, 0x1

    iget v4, v10, Landroid/graphics/Paint$FontMetrics;->top:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, v10, Landroid/graphics/Paint$FontMetrics;->bottom:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    add-float/2addr v4, v5

    const v5, 0x3f0ccccd

    add-float/2addr v4, v5

    float-to-int v4, v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    array-length v4, v8

    const/4 v5, 0x1

    if-le v4, v5, :cond_0

    int-to-float v1, v2

    const v4, 0x3fd9999a

    mul-float/2addr v1, v4

    float-to-int v1, v1

    sub-int v1, v2, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v2, v2

    const v4, 0x3fd9999a

    mul-float/2addr v2, v4

    float-to-int v2, v2

    :cond_0
    array-length v4, v8

    mul-int/2addr v4, v2

    invoke-static {v3, v4}, Lcom/test/TextureLoader;->a(II)Z

    move-result v5

    if-eqz v5, :cond_3

    sget-boolean v5, Lcom/test/DeviceInfo;->replacing:Z

    if-eqz v5, :cond_3

    const/4 v5, 0x2

    new-array v6, v5, [I

    const/4 v5, 0x0

    aput v3, v6, v5

    const/4 v5, 0x1

    aput v4, v6, v5

    invoke-static {v6}, Lcom/test/Utils;->scalingSize([I)V

    const/4 v5, 0x0

    aget v5, v6, v5

    const/4 v7, 0x1

    aget v6, v6, v7

    :goto_1
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v12

    new-instance v13, Landroid/graphics/Canvas;

    invoke-direct {v13, v12}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v7, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v7, v14, v15, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    invoke-virtual {v13, v7}, Landroid/graphics/Canvas;->drawColor(I)V

    const/4 v7, 0x0

    :goto_2
    array-length v14, v8

    if-lt v7, v14, :cond_2

    invoke-static {}, Lcom/test/TextureLoader;->a()V

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v1, 0x1

    const/4 v7, 0x0

    invoke-static {v1, v2, v7}, Landroid/opengl/GLES11;->glGenTextures(I[II)V

    const/16 v1, 0xcf5

    const/4 v7, 0x1

    invoke-static {v1, v7}, Landroid/opengl/GLES11;->glPixelStorei(II)V

    const/16 v1, 0xde1

    const/4 v7, 0x0

    aget v7, v2, v7

    invoke-static {v1, v7}, Landroid/opengl/GLES11;->glBindTexture(II)V

    const/16 v1, 0xde1

    const/16 v7, 0x2801

    const/16 v9, 0x2601

    invoke-static {v1, v7, v9}, Landroid/opengl/GLES11;->glTexParameteri(III)V

    const/16 v1, 0xde1

    const/16 v7, 0x2800

    const/16 v9, 0x2601

    invoke-static {v1, v7, v9}, Landroid/opengl/GLES11;->glTexParameteri(III)V

    const/16 v1, 0x2300

    const/16 v7, 0x2200

    const/high16 v9, 0x4604

    invoke-static {v1, v7, v9}, Landroid/opengl/GLES11;->glTexEnvf(IIF)V

    const/16 v1, 0xde1

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-static {v1, v7, v12, v9}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->recycle()V

    new-instance v1, Lcom/test/Texture;

    const/4 v7, 0x0

    aget v2, v2, v7

    iget v7, v10, Landroid/graphics/Paint$FontMetrics;->bottom:F

    float-to-int v7, v7

    array-length v8, v8

    mul-int/2addr v7, v8

    invoke-direct/range {v1 .. v7}, Lcom/test/Texture;-><init>(IIIIII)V

    return-object v1

    :cond_1
    aget-object v5, v8, v2

    const/4 v6, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v9, v5, v6, v7, v11}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget v5, v11, Landroid/graphics/Rect;->right:I

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_2
    aget-object v14, v8, v7

    const/4 v15, 0x0

    aget-object v16, v8, v7

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v9, v14, v15, v0, v11}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    aget-object v14, v8, v7

    div-int/lit8 v15, v3, 0x2

    iget v0, v11, Landroid/graphics/Rect;->right:I

    move/from16 v16, v0

    div-int/lit8 v16, v16, 0x2

    sub-int v15, v15, v16

    int-to-float v15, v15

    add-int/lit8 v16, v7, 0x1

    mul-int v16, v16, v2

    div-int/lit8 v16, v16, 0x2

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    iget v0, v10, Landroid/graphics/Paint$FontMetrics;->top:F

    move/from16 v17, v0

    iget v0, v10, Landroid/graphics/Paint$FontMetrics;->bottom:F

    move/from16 v18, v0

    add-float v17, v17, v18

    const/high16 v18, 0x4080

    div-float v17, v17, v18

    sub-float v16, v16, v17

    int-to-float v0, v1

    move/from16 v17, v0

    add-float v16, v16, v17

    move/from16 v0, v16

    invoke-virtual {v13, v14, v15, v0, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    :cond_3
    move v6, v4

    move v5, v3

    goto/16 :goto_1
.end method

.method public static loadTexture(Landroid/graphics/Bitmap;F)Lcom/test/Texture;
    .locals 10

    const/16 v7, 0x2601

    const/16 v9, 0xde1

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v8, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    const/high16 v0, 0x3f80

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    const-string v0, "scale - old w : %d | old h : %d"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v8

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v6

    invoke-static {v0, v1}, Lcom/test/Debug;->detail(Ljava/lang/String;[Ljava/lang/Object;)V

    int-to-float v0, v2

    mul-float/2addr v0, p1

    float-to-int v0, v0

    int-to-float v1, v3

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-static {p0, v0, v1, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    const-string v1, "scale - new w : %d | new h : %d"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Lcom/test/Debug;->detail(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    move-object p0, v0

    :cond_0
    invoke-static {v2, v3}, Lcom/test/TextureLoader;->a(II)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/test/DeviceInfo;->replacing:Z

    if-eqz v0, :cond_1

    const-string v0, "replace - old w : %d | old h : %d (loadTexture)"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v8

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v6

    invoke-static {v0, v1}, Lcom/test/Debug;->detail(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/test/Utils;->replacedTexture(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    const-string v0, "replace - new w : %d | new h : %d"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v8

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v6

    invoke-static {v0, v1}, Lcom/test/Debug;->detail(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    :goto_0
    invoke-static {}, Lcom/test/TextureLoader;->a()V

    new-array v1, v6, [I

    invoke-static {v6, v1, v8}, Landroid/opengl/GLES11;->glGenTextures(I[II)V

    const-string v0, "glGenTextures"

    invoke-static {v0}, Lcom/test/TextureLoader;->a(Ljava/lang/String;)V

    aget v0, v1, v8

    invoke-static {v9, v0}, Landroid/opengl/GLES11;->glBindTexture(II)V

    const-string v0, "GlBindTextures"

    invoke-static {v0}, Lcom/test/TextureLoader;->a(Ljava/lang/String;)V

    const/16 v0, 0x2801

    invoke-static {v9, v0, v7}, Landroid/opengl/GLES11;->glTexParameteri(III)V

    const-string v0, "load 2"

    invoke-static {v0}, Lcom/test/TextureLoader;->a(Ljava/lang/String;)V

    const/16 v0, 0x2800

    invoke-static {v9, v0, v7}, Landroid/opengl/GLES11;->glTexParameteri(III)V

    const-string v0, "load 2"

    invoke-static {v0}, Lcom/test/TextureLoader;->a(Ljava/lang/String;)V

    const/16 v0, 0x2300

    const/16 v6, 0x2200

    const/high16 v7, 0x4604

    invoke-static {v0, v6, v7}, Landroid/opengl/GLES11;->glTexEnvf(IIF)V

    const-string v0, "load 2"

    invoke-static {v0}, Lcom/test/TextureLoader;->a(Ljava/lang/String;)V

    invoke-static {v9, v8, p0, v8}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    const-string v0, "texImage2D"

    invoke-static {v0}, Lcom/test/TextureLoader;->a(Ljava/lang/String;)V

    const-string v0, "load 2"

    invoke-static {v0}, Lcom/test/TextureLoader;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/test/Texture;

    aget v1, v1, v8

    invoke-direct/range {v0 .. v5}, Lcom/test/Texture;-><init>(IIIII)V

    return-object v0

    :cond_1
    move v5, v3

    move v4, v2

    goto :goto_0
.end method

.method public static loadTexture(Ljava/lang/String;F)Lcom/test/Texture;
    .locals 2

    invoke-static {p0}, Lcom/test/Debug;->log_cjh(Ljava/lang/String;)V

    sput-object p0, Lcom/test/TextureLoader;->a:Ljava/lang/String;

    invoke-static {p0}, Lcom/test/JResourceLoader;->loadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/test/TextureLoader;->loadTexture(Landroid/graphics/Bitmap;F)Lcom/test/Texture;

    move-result-object v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    return-object v1
.end method

.method public static loadTextureWithRect(Ljava/lang/String;IIII)Lcom/test/Texture;
    .locals 9

    const/4 v4, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v0, "loadTextureWithRect x:%d y:%d w:%d h:%d path:%s"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lcom/test/Debug;->detail(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0}, Lcom/test/JResourceLoader;->loadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2, p1, p2, p3, p4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    const/high16 v2, 0x3f80

    invoke-static {v3, v2}, Lcom/test/TextureLoader;->loadTexture(Landroid/graphics/Bitmap;F)Lcom/test/Texture;

    move-result-object v2

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    const-string v3, "loadTexutreWithRect(%dms) %s"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v0, v5, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v7

    aput-object p0, v4, v8

    invoke-static {v3, v4}, Lcom/test/Debug;->detail(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2
.end method
