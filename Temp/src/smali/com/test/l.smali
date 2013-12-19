.class final Lcom/test/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/test/RooneyJActivity;->a()Lcom/test/EditTextWrapper;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/test/EditTextWrapper;->setVisible(Z)V

    invoke-static {}, Lcom/test/RooneyJActivity;->a()Lcom/test/EditTextWrapper;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/test/EditTextWrapper;->setHashCode(I)V

    invoke-static {}, Lcom/test/RooneyJActivity;->a()Lcom/test/EditTextWrapper;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/test/EditTextWrapper;->setText(Ljava/lang/String;)V

    invoke-static {}, Lcom/test/RooneyJActivity;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-static {}, Lcom/test/RooneyJActivity;->a()Lcom/test/EditTextWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/test/EditTextWrapper;->requestFocus()Z

    invoke-static {}, Lcom/test/RooneyJActivity;->a()Lcom/test/EditTextWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/test/EditTextWrapper;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method
