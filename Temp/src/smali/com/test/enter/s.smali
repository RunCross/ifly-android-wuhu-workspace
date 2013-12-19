.class final Lcom/test/enter/s;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/shandagames/gameplus/GamePlus$ValidateCallback;


# instance fields
.field final synthetic a:Lcom/test/enter/SignupActivity;


# direct methods
.method constructor <init>(Lcom/test/enter/SignupActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/test/enter/s;->a:Lcom/test/enter/SignupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResult(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 3

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "callback:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/test/enter/SignupActivity;->b()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/test/enter/s;->a:Lcom/test/enter/SignupActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/test/enter/SignupActivity;->m:Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/test/enter/s;->a:Lcom/test/enter/SignupActivity;

    const-string v1, "\u9a8c\u8bc1\u7801\u9519\u8bef\uff0c\u8bf7\u91cd\u65b0\u83b7\u53d6"

    invoke-static {v0, v1}, Lcom/shandagames/gameplus/util/ToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
