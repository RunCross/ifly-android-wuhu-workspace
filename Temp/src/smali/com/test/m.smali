.class final Lcom/test/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/test/RooneyJActivity;


# direct methods
.method constructor <init>(Lcom/test/RooneyJActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/test/m;->a:Lcom/test/RooneyJActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const-string v0, "Dialog#Yes"

    invoke-static {v0}, Lcom/test/Debug;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/test/m;->a:Lcom/test/RooneyJActivity;

    invoke-virtual {v0}, Lcom/test/RooneyJActivity;->finish()V

    invoke-static {}, Lcom/test/SoundManager;->release()V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    return-void
.end method
