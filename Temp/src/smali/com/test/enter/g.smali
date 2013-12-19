.class final Lcom/test/enter/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/test/enter/LoginActivity;


# direct methods
.method constructor <init>(Lcom/test/enter/LoginActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/test/enter/g;->a:Lcom/test/enter/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/test/enter/g;->a:Lcom/test/enter/LoginActivity;

    invoke-static {v0}, Lcom/test/enter/LoginActivity;->a(Lcom/test/enter/LoginActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/test/enter/g;->a:Lcom/test/enter/LoginActivity;

    invoke-static {v0}, Lcom/test/enter/LoginActivity;->b(Lcom/test/enter/LoginActivity;)V

    goto :goto_0
.end method
