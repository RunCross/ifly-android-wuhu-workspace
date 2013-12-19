.class final Lcom/test/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/test/AsyncBitmapTask;


# direct methods
.method constructor <init>(Lcom/test/AsyncBitmapTask;)V
    .locals 0

    iput-object p1, p0, Lcom/test/c;->a:Lcom/test/AsyncBitmapTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    const/4 v5, 0x0

    const/4 v3, 0x1

    new-instance v0, Lcom/test/AsyncBitmapTask;

    invoke-direct {v0}, Lcom/test/AsyncBitmapTask;-><init>()V

    iget-object v1, p0, Lcom/test/c;->a:Lcom/test/AsyncBitmapTask;

    iget-object v1, v1, Lcom/test/AsyncBitmapTask;->path:Ljava/lang/String;

    invoke-static {v1}, Lcom/test/JResourceLoader;->loadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v0, "\u30c7\u30b3\u30fc\u30c9\u306b\u5931\u6557\u3057\u307e\u3057\u305f: [%s]"

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/test/c;->a:Lcom/test/AsyncBitmapTask;

    iget-object v2, v2, Lcom/test/AsyncBitmapTask;->path:Ljava/lang/String;

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Lcom/test/Debug;->err(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/test/c;->a:Lcom/test/AsyncBitmapTask;

    iput-boolean v3, v0, Lcom/test/AsyncBitmapTask;->isDecodeError:Z

    :goto_0
    return-void

    :cond_0
    const-string v2, "\u30d3\u30c3\u30c8\u30de\u30c3\u30d7\u8aad\u307f\u8fbc\u307f\u307e\u3057\u305f: [%s]"

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/test/c;->a:Lcom/test/AsyncBitmapTask;

    iget-object v4, v4, Lcom/test/AsyncBitmapTask;->path:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/test/Debug;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/test/AsyncBitmapTask;->bitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/test/c;->a:Lcom/test/AsyncBitmapTask;

    iget v1, v1, Lcom/test/AsyncBitmapTask;->imageId:I

    iput v1, v0, Lcom/test/AsyncBitmapTask;->imageId:I

    iget-object v1, p0, Lcom/test/c;->a:Lcom/test/AsyncBitmapTask;

    iget-object v1, v1, Lcom/test/AsyncBitmapTask;->path:Ljava/lang/String;

    iput-object v1, v0, Lcom/test/AsyncBitmapTask;->path:Ljava/lang/String;

    iget-object v1, p0, Lcom/test/c;->a:Lcom/test/AsyncBitmapTask;

    iget v1, v1, Lcom/test/AsyncBitmapTask;->scale:F

    iput v1, v0, Lcom/test/AsyncBitmapTask;->scale:F

    iget-object v1, p0, Lcom/test/c;->a:Lcom/test/AsyncBitmapTask;

    iget-boolean v1, v1, Lcom/test/AsyncBitmapTask;->horo:Z

    iput-boolean v1, v0, Lcom/test/AsyncBitmapTask;->horo:Z

    iget-object v1, p0, Lcom/test/c;->a:Lcom/test/AsyncBitmapTask;

    iget v1, v1, Lcom/test/AsyncBitmapTask;->sender:I

    iput v1, v0, Lcom/test/AsyncBitmapTask;->sender:I

    invoke-static {}, Lcom/test/AsyncTaskRunner;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
