.class final Lcom/test/u;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# instance fields
.field final synthetic a:Lcom/test/VideoViewWrapper;


# direct methods
.method constructor <init>(Lcom/test/VideoViewWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/test/u;->a:Lcom/test/VideoViewWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2

    iget-object v0, p0, Lcom/test/u;->a:Lcom/test/VideoViewWrapper;

    invoke-static {v0}, Lcom/test/VideoViewWrapper;->a(Lcom/test/VideoViewWrapper;)Landroid/widget/VideoView;

    move-result-object v0

    iget-object v1, p0, Lcom/test/u;->a:Lcom/test/VideoViewWrapper;

    invoke-static {v1}, Lcom/test/VideoViewWrapper;->b(Lcom/test/VideoViewWrapper;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    return-void
.end method
