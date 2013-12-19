.class final Lcom/test/enter/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/test/enter/LogoActivity;


# direct methods
.method constructor <init>(Lcom/test/enter/LogoActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/test/enter/k;->a:Lcom/test/enter/LogoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const-string v0, "Dialog#Yes"

    invoke-static {v0}, Lcom/test/enter/DebugLog;->logDebug(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/test/enter/k;->a:Lcom/test/enter/LogoActivity;

    invoke-virtual {v0}, Lcom/test/enter/LogoActivity;->finish()V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    return-void
.end method
