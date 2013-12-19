.class final Lcom/test/enter/ag;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/test/enter/WorldSelectActivity;


# direct methods
.method constructor <init>(Lcom/test/enter/WorldSelectActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/test/enter/ag;->a:Lcom/test/enter/WorldSelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/test/enter/ag;->a:Lcom/test/enter/WorldSelectActivity;

    invoke-virtual {v0}, Lcom/test/enter/WorldSelectActivity;->UpdateWorldState()V

    iget-object v0, p0, Lcom/test/enter/ag;->a:Lcom/test/enter/WorldSelectActivity;

    invoke-static {v0}, Lcom/test/enter/WorldSelectActivity;->a(Lcom/test/enter/WorldSelectActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
