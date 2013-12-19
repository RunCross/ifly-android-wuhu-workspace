.class final Lcom/test/s;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field final synthetic a:Lcom/test/VideoViewWrapper;

.field private final synthetic b:Landroid/widget/FrameLayout;

.field private final synthetic c:I


# direct methods
.method constructor <init>(Lcom/test/VideoViewWrapper;Landroid/widget/FrameLayout;I)V
    .locals 0

    iput-object p1, p0, Lcom/test/s;->a:Lcom/test/VideoViewWrapper;

    iput-object p2, p0, Lcom/test/s;->b:Landroid/widget/FrameLayout;

    iput p3, p0, Lcom/test/s;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3

    iget-object v0, p0, Lcom/test/s;->a:Lcom/test/VideoViewWrapper;

    iget-object v1, p0, Lcom/test/s;->b:Landroid/widget/FrameLayout;

    iget v2, p0, Lcom/test/s;->c:I

    invoke-virtual {v0, v1, v2}, Lcom/test/VideoViewWrapper;->hideVideoView(Landroid/widget/FrameLayout;I)V

    return-void
.end method
