.class final Lcom/test/enter/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/test/enter/LoginActivity;


# direct methods
.method constructor <init>(Lcom/test/enter/LoginActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/test/enter/f;->a:Lcom/test/enter/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/test/enter/f;->a:Lcom/test/enter/LoginActivity;

    invoke-virtual {v0}, Lcom/test/enter/LoginActivity;->Back()V

    return-void
.end method
