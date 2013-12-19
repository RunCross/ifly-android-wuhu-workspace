.class final Lcom/test/enter/t;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/shandagames/gameplus/GamePlus$RequestSMSCallback;


# instance fields
.field final synthetic a:Lcom/test/enter/SignupActivity;


# direct methods
.method constructor <init>(Lcom/test/enter/SignupActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/test/enter/t;->a:Lcom/test/enter/SignupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResult(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/test/enter/t;->a:Lcom/test/enter/SignupActivity;

    invoke-static {v0, p3}, Lcom/shandagames/gameplus/util/ToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/test/enter/t;->a:Lcom/test/enter/SignupActivity;

    invoke-static {v0, p3}, Lcom/shandagames/gameplus/util/ToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/test/enter/SignupActivity;->b()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
