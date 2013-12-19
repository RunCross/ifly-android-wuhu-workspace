.class final Lcom/qihoopp/insdk/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/qihoopp/insdk/ContainerActivity;

.field final synthetic b:Lcom/qihoopp/insdk/h;


# direct methods
.method constructor <init>(Lcom/qihoopp/insdk/h;Lcom/qihoopp/insdk/ContainerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/qihoopp/insdk/i;->b:Lcom/qihoopp/insdk/h;

    iput-object p2, p0, Lcom/qihoopp/insdk/i;->a:Lcom/qihoopp/insdk/ContainerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/qihoopp/insdk/i;->a:Lcom/qihoopp/insdk/ContainerActivity;

    invoke-static {v0}, Lcom/qihoopp/insdk/ContainerActivity;->b(Lcom/qihoopp/insdk/ContainerActivity;)Lcom/qihoopp/insdk/h;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/qihoopp/insdk/h;->sendEmptyMessage(I)Z

    new-instance v0, Lcom/qihoopp/insdk/j;

    invoke-direct {v0, p0}, Lcom/qihoopp/insdk/j;-><init>(Lcom/qihoopp/insdk/i;)V

    invoke-virtual {v0}, Lcom/qihoopp/insdk/j;->start()V

    return-void
.end method
