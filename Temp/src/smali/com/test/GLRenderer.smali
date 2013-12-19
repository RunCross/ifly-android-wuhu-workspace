.class public Lcom/test/GLRenderer;
.super Ljava/lang/Object;


# static fields
.field private static a:I

.field private static b:I

.field private static c:I

.field private static d:I


# instance fields
.field private e:I

.field private f:I

.field private g:I

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/test/TouchEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/test/GLRenderer;->g:I

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/test/GLRenderer;->h:Ljava/util/List;

    return-void
.end method

.method private static a(II)Landroid/graphics/Point;
    .locals 8

    const/4 v1, -0x1

    const-wide/high16 v6, 0x3fe0

    sget v0, Lcom/test/GLRenderer;->c:I

    if-gt v0, p0, :cond_1

    sget v0, Lcom/test/GLRenderer;->c:I

    sget v2, Lcom/test/GLRenderer;->a:I

    add-int/2addr v0, v2

    if-gt p0, v0, :cond_1

    const-wide/high16 v2, 0x407e

    sget v0, Lcom/test/GLRenderer;->a:I

    int-to-double v4, v0

    div-double/2addr v2, v4

    sget v0, Lcom/test/GLRenderer;->c:I

    sub-int v0, p0, v0

    int-to-double v4, v0

    mul-double/2addr v2, v4

    add-double/2addr v2, v6

    double-to-int v0, v2

    :goto_0
    sget v2, Lcom/test/GLRenderer;->d:I

    if-gt v2, p1, :cond_0

    sget v2, Lcom/test/GLRenderer;->d:I

    sget v3, Lcom/test/GLRenderer;->b:I

    add-int/2addr v2, v3

    if-gt p1, v2, :cond_0

    const-wide/high16 v1, 0x4074

    sget v3, Lcom/test/GLRenderer;->b:I

    int-to-double v3, v3

    div-double/2addr v1, v3

    sget v3, Lcom/test/GLRenderer;->d:I

    sub-int v3, p1, v3

    int-to-double v3, v3

    mul-double/2addr v1, v3

    add-double/2addr v1, v6

    double-to-int v1, v1

    :cond_0
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    return-object v2

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static getScreenHeight()I
    .locals 1

    sget v0, Lcom/test/GLRenderer;->b:I

    return v0
.end method

.method public static getScreenOffsetX()I
    .locals 1

    sget v0, Lcom/test/GLRenderer;->c:I

    return v0
.end method

.method public static getScreenOffsetY()I
    .locals 1

    sget v0, Lcom/test/GLRenderer;->d:I

    return v0
.end method

.method public static getScreenWidth()I
    .locals 1

    sget v0, Lcom/test/GLRenderer;->a:I

    return v0
.end method

.method private native nativeAddTouchEvent(IIII)V
.end method

.method private native nativeCleanup()V
.end method

.method private native nativeGestureBegin()V
.end method

.method private native nativeGestureEnd()V
.end method

.method private native nativeGestureScale(F)V
.end method

.method private native nativeSendTaskData([BII)V
.end method

.method private native nativeSendTextureData(IIIIIIFII)V
.end method


# virtual methods
.method public cleanup()V
    .locals 0

    invoke-direct {p0}, Lcom/test/GLRenderer;->nativeCleanup()V

    return-void
.end method

.method public clearTouchEvent()V
    .locals 1

    iget-object v0, p0, Lcom/test/GLRenderer;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/test/GLRenderer;->g:I

    return-void
.end method

.method public customview_doTask(I)V
    .locals 13

    const/4 v6, 0x2

    const/4 v11, 0x1

    const/4 v0, 0x0

    const/4 v10, 0x0

    iget-object v1, p0, Lcom/test/GLRenderer;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    move v3, v10

    :goto_0
    if-lt v3, v4, :cond_6

    :cond_0
    if-nez p1, :cond_1

    sget v1, Lcom/test/GLRenderer;->c:I

    sget v2, Lcom/test/GLRenderer;->d:I

    sget v3, Lcom/test/GLRenderer;->a:I

    sget v4, Lcom/test/GLRenderer;->b:I

    invoke-static {v1, v2, v3, v4}, Landroid/opengl/GLES11;->glViewport(IIII)V

    const/16 v1, 0x1701

    invoke-static {v1}, Landroid/opengl/GLES11;->glMatrixMode(I)V

    invoke-static {}, Landroid/opengl/GLES11;->glLoadIdentity()V

    const/high16 v1, 0x4470

    const/high16 v3, 0x4420

    const/high16 v4, 0x3f00

    const/high16 v5, -0x4100

    move v2, v0

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES11;->glOrthof(FFFFFF)V

    const/16 v1, 0x1700

    invoke-static {v1}, Landroid/opengl/GLES11;->glMatrixMode(I)V

    invoke-static {}, Landroid/opengl/GLES11;->glLoadIdentity()V

    invoke-static {v0, v0, v0, v0}, Landroid/opengl/GLES11;->glClearColor(FFFF)V

    const/16 v0, 0x4100

    invoke-static {v0}, Landroid/opengl/GLES11;->glClear(I)V

    :cond_1
    invoke-static {}, Lcom/test/AsyncTaskRunner;->getDoneConnectTaskList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {}, Lcom/test/AsyncTaskRunner;->isConnecting()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-interface {v0, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/test/Task;

    invoke-static {}, Lcom/test/AsyncTaskRunner;->existsRequestConnectTask()Z

    move-result v1

    iget v2, v0, Lcom/test/Task;->sender:I

    sparse-switch v2, :sswitch_data_0

    :goto_1
    invoke-static {}, Lcom/test/AsyncTaskRunner;->existsRequestConnectTask()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/test/AsyncTaskRunner;->getNextConnectPostSender()I

    move-result v2

    sparse-switch v2, :sswitch_data_1

    :cond_2
    :goto_2
    invoke-static {}, Lcom/test/AsyncTaskRunner;->existsRequestConnectTask()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "<> \u30ad\u30e5\u30fc\u306b\u6e9c\u307e\u3063\u3066\u3044\u308b\u6b21\u306e\u901a\u4fe1\u30bf\u30b9\u30af\u3092\u51e6\u7406\u3057\u307e\u3059: data.length:%d task.sender:%d task.error:%d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, v0, Lcom/test/Task;->data:[B

    array-length v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v10

    iget v4, v0, Lcom/test/Task;->sender:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v11

    iget v4, v0, Lcom/test/Task;->error:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lcom/test/Debug;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/test/AsyncTaskRunner;->nextConnectPost()V

    :cond_3
    if-nez v1, :cond_4

    iget v1, v0, Lcom/test/Task;->sender:I

    sparse-switch v1, :sswitch_data_2

    iget-object v1, v0, Lcom/test/Task;->data:[B

    iget v2, v0, Lcom/test/Task;->sender:I

    iget v0, v0, Lcom/test/Task;->error:I

    invoke-direct {p0, v1, v2, v0}, Lcom/test/GLRenderer;->nativeSendTaskData([BII)V

    :cond_4
    :goto_3
    :sswitch_0
    invoke-static {}, Lcom/test/AsyncTaskRunner;->getBitmapTaskList()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/test/AsyncBitmapTask;

    iget-boolean v0, v0, Lcom/test/AsyncBitmapTask;->running:Z

    if-eqz v0, :cond_9

    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/test/AsyncBitmapTask;

    iget-boolean v0, v0, Lcom/test/AsyncBitmapTask;->isDecodeError:Z

    if-eqz v0, :cond_7

    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/test/AsyncBitmapTask;

    iput-boolean v10, v0, Lcom/test/AsyncBitmapTask;->isDecodeError:Z

    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/test/AsyncBitmapTask;

    iput-boolean v10, v0, Lcom/test/AsyncBitmapTask;->running:Z

    :cond_5
    :goto_4
    if-lez p1, :cond_a

    :goto_5
    invoke-virtual {p0, v11}, Lcom/test/GLRenderer;->nativeMain(I)V

    return-void

    :cond_6
    iget-object v1, p0, Lcom/test/GLRenderer;->h:Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/test/TouchEvent;

    iget v2, v1, Lcom/test/TouchEvent;->action:I

    packed-switch v2, :pswitch_data_0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "undefined touchEvent:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    move v2, v10

    :goto_6
    iget v5, v1, Lcom/test/TouchEvent;->x:I

    iget v7, v1, Lcom/test/TouchEvent;->y:I

    iget v1, v1, Lcom/test/TouchEvent;->id:I

    invoke-direct {p0, v2, v5, v7, v1}, Lcom/test/GLRenderer;->nativeAddTouchEvent(IIII)V

    if-eqz v2, :cond_0

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto/16 :goto_0

    :pswitch_1
    move v2, v11

    goto :goto_6

    :pswitch_2
    move v2, v6

    goto :goto_6

    :sswitch_1
    move v1, v10

    goto/16 :goto_1

    :sswitch_2
    move v1, v10

    goto/16 :goto_2

    :sswitch_3
    iget-object v0, v0, Lcom/test/Task;->data:[B

    invoke-static {v0}, Lcom/test/FullImageDownloader;->LoadTexture([B)V

    goto :goto_3

    :cond_7
    invoke-static {}, Lcom/test/AsyncTaskRunner;->getDoneBitmapTaskList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-interface {v0, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/test/AsyncBitmapTask;

    iget-object v1, v0, Lcom/test/AsyncBitmapTask;->bitmap:Landroid/graphics/Bitmap;

    iget v2, v0, Lcom/test/AsyncBitmapTask;->scale:F

    invoke-static {v1, v2}, Lcom/test/TextureLoader;->loadTexture(Landroid/graphics/Bitmap;F)Lcom/test/Texture;

    move-result-object v6

    iget v1, v0, Lcom/test/AsyncBitmapTask;->imageId:I

    iget v2, v6, Lcom/test/Texture;->texId:I

    iget v3, v6, Lcom/test/Texture;->width:I

    iget v4, v6, Lcom/test/Texture;->height:I

    iget v5, v6, Lcom/test/Texture;->texWidth:I

    iget v6, v6, Lcom/test/Texture;->texHeight:I

    iget v7, v0, Lcom/test/AsyncBitmapTask;->scale:F

    iget-boolean v8, v0, Lcom/test/AsyncBitmapTask;->horo:Z

    if-eqz v8, :cond_8

    move v8, v11

    :goto_7
    iget v9, v0, Lcom/test/AsyncBitmapTask;->sender:I

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/test/GLRenderer;->nativeSendTextureData(IIIIIIFII)V

    invoke-interface {v12, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_4

    :cond_8
    move v8, v10

    goto :goto_7

    :cond_9
    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/test/AsyncBitmapTask;

    iput-boolean v11, v0, Lcom/test/AsyncBitmapTask;->running:Z

    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/test/AsyncBitmapTask;

    invoke-static {v0}, Lcom/test/AsyncTaskRunner;->startLoadBitmapAsync(Lcom/test/AsyncBitmapTask;)V

    goto/16 :goto_4

    :cond_a
    move v11, v10

    goto/16 :goto_5

    :sswitch_data_0
    .sparse-switch
        0x2710 -> :sswitch_1
        0x2711 -> :sswitch_1
        0x186a0 -> :sswitch_1
        0x186a1 -> :sswitch_1
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x2710 -> :sswitch_2
        0x2711 -> :sswitch_2
        0x186a0 -> :sswitch_2
        0x186a1 -> :sswitch_2
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x2711 -> :sswitch_3
        0x186a0 -> :sswitch_0
        0x186a1 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public gestureBegin()V
    .locals 0

    invoke-direct {p0}, Lcom/test/GLRenderer;->nativeGestureBegin()V

    return-void
.end method

.method public gestureEnd()V
    .locals 0

    invoke-direct {p0}, Lcom/test/GLRenderer;->nativeGestureEnd()V

    return-void
.end method

.method public gestureScale(F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/test/GLRenderer;->nativeGestureScale(F)V

    return-void
.end method

.method public native nativeInitialize(I)V
.end method

.method public native nativeMain(I)V
.end method

.method public setupScreen(II)V
    .locals 8

    const/4 v0, 0x0

    const-wide/high16 v6, 0x4000

    move v1, v0

    :goto_0
    add-int/lit8 v2, v1, 0x3

    if-gt v2, p1, :cond_0

    add-int/lit8 v2, v0, 0x2

    if-le v2, p2, :cond_1

    :cond_0
    sput v1, Lcom/test/GLRenderer;->a:I

    sput v0, Lcom/test/GLRenderer;->b:I

    sget v2, Lcom/test/GLRenderer;->a:I

    sub-int v2, p1, v2

    div-int/lit8 v2, v2, 0x2

    sput v2, Lcom/test/GLRenderer;->c:I

    sget v2, Lcom/test/GLRenderer;->b:I

    sub-int v2, p2, v2

    div-int/lit8 v2, v2, 0x2

    sput v2, Lcom/test/GLRenderer;->d:I

    const-wide/high16 v2, 0x3ff0

    int-to-double v4, v1

    mul-double/2addr v2, v4

    int-to-double v4, p1

    div-double/2addr v2, v4

    sub-int v1, p1, v1

    int-to-double v4, v1

    div-double/2addr v4, v6

    mul-double/2addr v4, v2

    double-to-int v1, v4

    iput v1, p0, Lcom/test/GLRenderer;->e:I

    sub-int v0, p2, v0

    int-to-double v0, v0

    div-double/2addr v0, v6

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/test/GLRenderer;->f:I

    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x3

    add-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method public touchesBegan(III)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, -0x1

    invoke-static {p2, p3}, Lcom/test/GLRenderer;->a(II)Landroid/graphics/Point;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Point;->x:I

    if-eq v1, v2, :cond_0

    iget v1, v0, Landroid/graphics/Point;->y:I

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Lcom/test/TouchEvent;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-direct {v1, v3, v2, v0, p1}, Lcom/test/TouchEvent;-><init>(IIII)V

    iget-object v0, p0, Lcom/test/GLRenderer;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput v3, p0, Lcom/test/GLRenderer;->g:I

    goto :goto_0
.end method

.method public touchesEnded(III)V
    .locals 5

    const/4 v4, 0x1

    invoke-static {p2, p3}, Lcom/test/GLRenderer;->a(II)Landroid/graphics/Point;

    move-result-object v0

    iget-object v1, p0, Lcom/test/GLRenderer;->h:Ljava/util/List;

    new-instance v2, Lcom/test/TouchEvent;

    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-direct {v2, v4, v3, v0, p1}, Lcom/test/TouchEvent;-><init>(IIII)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput v4, p0, Lcom/test/GLRenderer;->g:I

    return-void
.end method

.method public touchesMoved(III)V
    .locals 5

    const/4 v4, 0x2

    const/4 v2, -0x1

    iget v0, p0, Lcom/test/GLRenderer;->g:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/test/GLRenderer;->touchesBegan(III)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p2, p3}, Lcom/test/GLRenderer;->a(II)Landroid/graphics/Point;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Point;->x:I

    if-eq v1, v2, :cond_1

    iget v1, v0, Landroid/graphics/Point;->y:I

    if-ne v1, v2, :cond_2

    :cond_1
    sget v0, Lcom/test/GLRenderer;->c:I

    sget v1, Lcom/test/GLRenderer;->c:I

    sget v2, Lcom/test/GLRenderer;->a:I

    add-int/2addr v1, v2

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sget v1, Lcom/test/GLRenderer;->d:I

    sget v2, Lcom/test/GLRenderer;->d:I

    sget v3, Lcom/test/GLRenderer;->b:I

    add-int/2addr v2, v3

    invoke-static {p3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/test/GLRenderer;->touchesEnded(III)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/test/GLRenderer;->h:Ljava/util/List;

    new-instance v2, Lcom/test/TouchEvent;

    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-direct {v2, v4, v3, v0, p1}, Lcom/test/TouchEvent;-><init>(IIII)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput v4, p0, Lcom/test/GLRenderer;->g:I

    goto :goto_0
.end method
