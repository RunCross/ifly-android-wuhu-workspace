.class final Lcom/test/r;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLoadComplete(Landroid/media/SoundPool;II)V
    .locals 7

    if-nez p3, :cond_0

    invoke-static {}, Lcom/test/SoundManager;->a()F

    move-result v2

    invoke-static {}, Lcom/test/SoundManager;->a()F

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/high16 v6, 0x3f80

    move-object v0, p1

    move v1, p2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    invoke-static {v0}, Lcom/test/SoundManager;->a(I)V

    :cond_0
    return-void
.end method
