.class final Lcom/test/enter/af;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/test/enter/WorldSelectActivity;


# direct methods
.method constructor <init>(Lcom/test/enter/WorldSelectActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/test/enter/af;->a:Lcom/test/enter/WorldSelectActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    iget-object v0, p0, Lcom/test/enter/af;->a:Lcom/test/enter/WorldSelectActivity;

    iget-object v0, v0, Lcom/test/enter/WorldSelectActivity;->e:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v0, p0, Lcom/test/enter/af;->a:Lcom/test/enter/WorldSelectActivity;

    new-instance v1, Lcom/test/enter/ae;

    iget-object v2, p0, Lcom/test/enter/af;->a:Lcom/test/enter/WorldSelectActivity;

    iget-object v3, p0, Lcom/test/enter/af;->a:Lcom/test/enter/WorldSelectActivity;

    iget-object v3, v3, Lcom/test/enter/WorldSelectActivity;->c:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3}, Lcom/test/enter/ae;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v1, v0, Lcom/test/enter/WorldSelectActivity;->d:Lcom/test/enter/ae;

    iget-object v0, p0, Lcom/test/enter/af;->a:Lcom/test/enter/WorldSelectActivity;

    iget-object v0, v0, Lcom/test/enter/WorldSelectActivity;->b:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/test/enter/af;->a:Lcom/test/enter/WorldSelectActivity;

    iget-object v1, v1, Lcom/test/enter/WorldSelectActivity;->d:Lcom/test/enter/ae;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method
