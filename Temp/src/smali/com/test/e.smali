.class final Lcom/test/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field final synthetic a:Lcom/test/EditTextWrapper;

.field private final synthetic b:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method constructor <init>(Lcom/test/EditTextWrapper;Landroid/view/inputmethod/InputMethodManager;)V
    .locals 0

    iput-object p1, p0, Lcom/test/e;->a:Lcom/test/EditTextWrapper;

    iput-object p2, p0, Lcom/test/e;->b:Landroid/view/inputmethod/InputMethodManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/test/e;->a:Lcom/test/EditTextWrapper;

    invoke-static {v0}, Lcom/test/EditTextWrapper;->a(Lcom/test/EditTextWrapper;)V

    iget-object v0, p0, Lcom/test/e;->b:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return v2
.end method
