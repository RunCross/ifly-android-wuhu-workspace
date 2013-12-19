.class final Lcom/test/enter/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/test/enter/LoginActivity;


# direct methods
.method constructor <init>(Lcom/test/enter/LoginActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/test/enter/j;->a:Lcom/test/enter/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    const-string v0, "button_ok click!!!!!!"

    invoke-static {v0}, Lcom/test/enter/DebugLog;->logDebug(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/test/enter/j;->a:Lcom/test/enter/LoginActivity;

    invoke-static {v0}, Lcom/test/enter/LoginActivity;->c(Lcom/test/enter/LoginActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    iget-object v0, p0, Lcom/test/enter/j;->a:Lcom/test/enter/LoginActivity;

    invoke-virtual {v0}, Lcom/test/enter/LoginActivity;->GameStart()V

    return-void
.end method
