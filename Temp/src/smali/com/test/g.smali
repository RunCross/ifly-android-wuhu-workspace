.class final Lcom/test/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/test/g;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/test/g;->a:Landroid/graphics/Bitmap;

    const/high16 v1, 0x3f80

    invoke-static {v0, v1}, Lcom/test/TextureLoader;->loadTexture(Landroid/graphics/Bitmap;F)Lcom/test/Texture;

    move-result-object v0

    invoke-static {v0}, Lcom/test/FullImageDownloader;->a(Lcom/test/Texture;)V

    invoke-static {}, Lcom/test/FullImageDownloader;->a()Lcom/test/Texture;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/test/FullImageDownloader;->a(Z)V

    :goto_0
    invoke-static {}, Lcom/test/FullImageDownloader;->b()V

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/test/FullImageDownloader;->a(Z)V

    goto :goto_0
.end method
