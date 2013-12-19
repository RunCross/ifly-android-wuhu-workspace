.class final Lcom/test/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:I

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:I

.field private final synthetic d:I


# direct methods
.method constructor <init>(ILjava/lang/String;II)V
    .locals 0

    iput p1, p0, Lcom/test/k;->a:I

    iput-object p2, p0, Lcom/test/k;->b:Ljava/lang/String;

    iput p3, p0, Lcom/test/k;->c:I

    iput p4, p0, Lcom/test/k;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/test/RooneyJActivity;->a()Lcom/test/EditTextWrapper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/test/EditTextWrapper;->setVisible(Z)V

    invoke-static {}, Lcom/test/RooneyJActivity;->a()Lcom/test/EditTextWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/test/EditTextWrapper;->requestFocus()Z

    invoke-static {}, Lcom/test/RooneyJActivity;->a()Lcom/test/EditTextWrapper;

    move-result-object v0

    iget v1, p0, Lcom/test/k;->a:I

    invoke-virtual {v0, v1}, Lcom/test/EditTextWrapper;->setHashCode(I)V

    invoke-static {}, Lcom/test/RooneyJActivity;->a()Lcom/test/EditTextWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/test/k;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/test/EditTextWrapper;->setText(Ljava/lang/String;)V

    invoke-static {}, Lcom/test/RooneyJActivity;->a()Lcom/test/EditTextWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/test/k;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/test/EditTextWrapper;->setSelection(I)V

    invoke-static {}, Lcom/test/RooneyJActivity;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-static {}, Lcom/test/RooneyJActivity;->a()Lcom/test/EditTextWrapper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    invoke-static {}, Lcom/test/RooneyJActivity;->a()Lcom/test/EditTextWrapper;

    move-result-object v0

    iget v1, p0, Lcom/test/k;->a:I

    invoke-virtual {v0, v1}, Lcom/test/EditTextWrapper;->updatePosition(I)V

    invoke-static {}, Lcom/test/RooneyJActivity;->a()Lcom/test/EditTextWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/test/EditTextWrapper;->moveShowScreen()V

    invoke-static {}, Lcom/test/RooneyJActivity;->a()Lcom/test/EditTextWrapper;

    move-result-object v0

    iget v1, p0, Lcom/test/k;->c:I

    invoke-virtual {v0, v1}, Lcom/test/EditTextWrapper;->setType(I)V

    invoke-static {}, Lcom/test/RooneyJActivity;->a()Lcom/test/EditTextWrapper;

    move-result-object v0

    iget v1, p0, Lcom/test/k;->d:I

    invoke-virtual {v0, v1}, Lcom/test/EditTextWrapper;->setCount(I)V

    return-void
.end method
