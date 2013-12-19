.class final Lcom/test/enter/ac;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/test/enter/SignupActivity;


# direct methods
.method constructor <init>(Lcom/test/enter/SignupActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/test/enter/ac;->a:Lcom/test/enter/SignupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/test/enter/ac;->a:Lcom/test/enter/SignupActivity;

    invoke-static {v0}, Lcom/test/enter/SignupActivity;->a(Lcom/test/enter/SignupActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/test/enter/ac;->a:Lcom/test/enter/SignupActivity;

    invoke-static {v0}, Lcom/test/enter/SignupActivity;->b(Lcom/test/enter/SignupActivity;)V

    goto :goto_0
.end method
