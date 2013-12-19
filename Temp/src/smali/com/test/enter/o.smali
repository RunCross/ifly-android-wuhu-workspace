.class final Lcom/test/enter/o;
.super Ljava/util/TimerTask;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/test/enter/SignupActivity;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x64

    invoke-static {v0}, Lcom/test/enter/SignupActivity;->a(I)V

    invoke-static {}, Lcom/test/enter/SignupActivity;->a()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-static {}, Lcom/test/enter/SignupActivity;->b()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/test/enter/SignupActivity;->b()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
