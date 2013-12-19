.class final Lcom/test/t;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# instance fields
.field final synthetic a:Lcom/test/VideoViewWrapper;

.field private final synthetic b:Landroid/widget/FrameLayout;

.field private final synthetic c:I


# direct methods
.method constructor <init>(Lcom/test/VideoViewWrapper;Landroid/widget/FrameLayout;I)V
    .locals 0

    iput-object p1, p0, Lcom/test/t;->a:Lcom/test/VideoViewWrapper;

    iput-object p2, p0, Lcom/test/t;->b:Landroid/widget/FrameLayout;

    iput p3, p0, Lcom/test/t;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Landroid/media/MediaPlayer;II)Z
    .locals 5

    const/4 v4, 0x1

    const-string v0, "VideoViewError - extra:%d"

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/test/Debug;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/test/t;->a:Lcom/test/VideoViewWrapper;

    iget-object v1, p0, Lcom/test/t;->b:Landroid/widget/FrameLayout;

    iget v2, p0, Lcom/test/t;->c:I

    invoke-virtual {v0, v1, v2}, Lcom/test/VideoViewWrapper;->hideVideoView(Landroid/widget/FrameLayout;I)V

    return v4
.end method
