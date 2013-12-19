.class final Lcom/test/n;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/test/RooneyJActivity;


# direct methods
.method constructor <init>(Lcom/test/RooneyJActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/test/n;->a:Lcom/test/RooneyJActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const-string v0, "Dialog#No"

    invoke-static {v0}, Lcom/test/Debug;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/test/RooneyJActivity;->c()Lcom/test/VideoViewWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/test/VideoViewWrapper;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/test/n;->a:Lcom/test/RooneyJActivity;

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
