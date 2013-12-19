.class public Lcom/test/AsyncBitmapTask;
.super Ljava/lang/Object;


# instance fields
.field public bitmap:Landroid/graphics/Bitmap;

.field public horo:Z

.field public imageId:I

.field public isDecodeError:Z

.field public path:Ljava/lang/String;

.field public running:Z

.field public scale:F

.field public sender:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/test/AsyncBitmapTask;->running:Z

    iput-boolean v0, p0, Lcom/test/AsyncBitmapTask;->isDecodeError:Z

    return-void
.end method
