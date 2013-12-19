.class final Lcom/qihoopp/insdk/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/qihoopp/insdk/ContainerActivity;


# direct methods
.method constructor <init>(Lcom/qihoopp/insdk/ContainerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/qihoopp/insdk/b;->a:Lcom/qihoopp/insdk/ContainerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/qihoopp/insdk/b;->a:Lcom/qihoopp/insdk/ContainerActivity;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Lcom/qihoopp/insdk/ContainerActivity;->setResult(I)V

    iget-object v0, p0, Lcom/qihoopp/insdk/b;->a:Lcom/qihoopp/insdk/ContainerActivity;

    invoke-virtual {v0}, Lcom/qihoopp/insdk/ContainerActivity;->finish()V

    return-void
.end method
