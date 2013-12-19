.class final Lcom/test/enter/ah;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/test/enter/WorldSelectActivity;


# direct methods
.method constructor <init>(Lcom/test/enter/WorldSelectActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/test/enter/ah;->a:Lcom/test/enter/WorldSelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/test/enter/ah;->a:Lcom/test/enter/WorldSelectActivity;

    invoke-virtual {v0}, Lcom/test/enter/WorldSelectActivity;->Back()V

    return-void
.end method
