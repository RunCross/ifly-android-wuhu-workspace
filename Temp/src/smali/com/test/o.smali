.class final Lcom/test/o;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/test/RooneyJActivity;


# direct methods
.method constructor <init>(Lcom/test/RooneyJActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/test/o;->a:Lcom/test/RooneyJActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    const-string v0, "Dialog#onDismiss"

    invoke-static {v0}, Lcom/test/Debug;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/test/RooneyJActivity;->c()Lcom/test/VideoViewWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/test/VideoViewWrapper;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/test/o;->a:Lcom/test/RooneyJActivity;

    invoke-static {v0}, Lcom/test/RooneyJActivity;->a(Lcom/test/RooneyJActivity;)Lcom/test/CustomView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/test/CustomView;->activate()V

    :goto_0
    invoke-static {}, Lcom/test/RooneyJActivity;->d()V

    return-void

    :cond_0
    invoke-static {}, Lcom/test/RooneyJActivity;->c()Lcom/test/VideoViewWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/test/VideoViewWrapper;->start()V

    goto :goto_0
.end method
