.class public Lcom/test/VideoViewWrapper;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/widget/VideoView;

.field private b:Landroid/widget/MediaController;

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/test/VideoViewWrapper;->c:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/test/VideoViewWrapper;->d:I

    return-void
.end method

.method static synthetic a(Lcom/test/VideoViewWrapper;)Landroid/widget/VideoView;
    .locals 1

    iget-object v0, p0, Lcom/test/VideoViewWrapper;->a:Landroid/widget/VideoView;

    return-object v0
.end method

.method static synthetic b(Lcom/test/VideoViewWrapper;)I
    .locals 1

    iget v0, p0, Lcom/test/VideoViewWrapper;->c:I

    return v0
.end method


# virtual methods
.method public hideVideoView(Landroid/widget/FrameLayout;I)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/test/VideoViewWrapper;->a:Landroid/widget/VideoView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/test/VideoViewWrapper;->b:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/test/VideoViewWrapper;->b:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    :cond_0
    iget-object v0, p0, Lcom/test/VideoViewWrapper;->a:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->destroyDrawingCache()V

    const-string v0, "RooneyJActivity#hideVideoView"

    invoke-static {v0}, Lcom/test/Debug;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/test/VideoViewWrapper;->a:Landroid/widget/VideoView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVisibility(I)V

    iget v0, p0, Lcom/test/VideoViewWrapper;->d:I

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->removeViewAt(I)V

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/test/VideoViewWrapper;->c:I

    iput-object v2, p0, Lcom/test/VideoViewWrapper;->a:Landroid/widget/VideoView;

    iput-object v2, p0, Lcom/test/VideoViewWrapper;->b:Landroid/widget/MediaController;

    :cond_1
    return-void
.end method

.method public isPlaying()Z
    .locals 1

    iget-object v0, p0, Lcom/test/VideoViewWrapper;->a:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPlayingVideo()Z
    .locals 1

    iget-object v0, p0, Lcom/test/VideoViewWrapper;->a:Landroid/widget/VideoView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public pause()V
    .locals 1

    invoke-virtual {p0}, Lcom/test/VideoViewWrapper;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/test/VideoViewWrapper;->a:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    :cond_0
    return-void
.end method

.method public playVideo(Landroid/content/Context;Landroid/widget/FrameLayout;I)V
    .locals 4

    invoke-static {}, Lcom/test/DeviceInfo;->isKeepMovie()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/test/VideoViewWrapper;->a:Landroid/widget/VideoView;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/test/SoundManager;->pause()V

    new-instance v0, Landroid/widget/VideoView;

    invoke-direct {v0, p1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/test/VideoViewWrapper;->a:Landroid/widget/VideoView;

    new-instance v0, Landroid/widget/MediaController;

    invoke-direct {v0, p1}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/test/VideoViewWrapper;->b:Landroid/widget/MediaController;

    iget-object v0, p0, Lcom/test/VideoViewWrapper;->a:Landroid/widget/VideoView;

    iget-object v1, p0, Lcom/test/VideoViewWrapper;->b:Landroid/widget/MediaController;

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setMediaController(Landroid/widget/MediaController;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "android.resource://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/2131099648"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "uri:%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/test/Debug;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/test/VideoViewWrapper;->a:Landroid/widget/VideoView;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    iput v0, p0, Lcom/test/VideoViewWrapper;->d:I

    iget-object v0, p0, Lcom/test/VideoViewWrapper;->a:Landroid/widget/VideoView;

    iget v1, p0, Lcom/test/VideoViewWrapper;->d:I

    invoke-virtual {p2, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/test/VideoViewWrapper;->a:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->requestFocus()Z

    iget-object v0, p0, Lcom/test/VideoViewWrapper;->a:Landroid/widget/VideoView;

    new-instance v1, Lcom/test/s;

    invoke-direct {v1, p0, p2, p3}, Lcom/test/s;-><init>(Lcom/test/VideoViewWrapper;Landroid/widget/FrameLayout;I)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lcom/test/VideoViewWrapper;->a:Landroid/widget/VideoView;

    new-instance v1, Lcom/test/t;

    invoke-direct {v1, p0, p2, p3}, Lcom/test/t;-><init>(Lcom/test/VideoViewWrapper;Landroid/widget/FrameLayout;I)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v0, p0, Lcom/test/VideoViewWrapper;->a:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public resumeVideoView(Landroid/content/Context;Landroid/widget/FrameLayout;I)Z
    .locals 2

    iget-object v0, p0, Lcom/test/VideoViewWrapper;->a:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/test/VideoViewWrapper;->a:Landroid/widget/VideoView;

    invoke-virtual {p0, p1, p2, p3}, Lcom/test/VideoViewWrapper;->playVideo(Landroid/content/Context;Landroid/widget/FrameLayout;I)V

    iget-object v0, p0, Lcom/test/VideoViewWrapper;->a:Landroid/widget/VideoView;

    new-instance v1, Lcom/test/u;

    invoke-direct {v1, p0}, Lcom/test/u;-><init>(Lcom/test/VideoViewWrapper;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public start()V
    .locals 1

    invoke-virtual {p0}, Lcom/test/VideoViewWrapper;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/test/VideoViewWrapper;->a:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    :cond_0
    return-void
.end method

.method public suspendVideoView()V
    .locals 2

    iget-object v0, p0, Lcom/test/VideoViewWrapper;->a:Landroid/widget/VideoView;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/test/VideoViewWrapper;->isPlayingVideo()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/test/VideoViewWrapper;->a:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    if-lez v0, :cond_0

    iput v0, p0, Lcom/test/VideoViewWrapper;->c:I

    :cond_0
    iget-object v0, p0, Lcom/test/VideoViewWrapper;->a:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->suspend()V

    iget-object v0, p0, Lcom/test/VideoViewWrapper;->a:Landroid/widget/VideoView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVisibility(I)V

    :cond_1
    return-void
.end method
