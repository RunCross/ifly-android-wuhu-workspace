.class final Lcom/qihoopp/insdk/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/qihoopp/insdk/ContainerActivity;

.field final synthetic b:Lcom/qihoopp/insdk/h;


# direct methods
.method constructor <init>(Lcom/qihoopp/insdk/h;Lcom/qihoopp/insdk/ContainerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/qihoopp/insdk/k;->b:Lcom/qihoopp/insdk/h;

    iput-object p2, p0, Lcom/qihoopp/insdk/k;->a:Lcom/qihoopp/insdk/ContainerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/qihoopp/insdk/k;->a:Lcom/qihoopp/insdk/ContainerActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/qihoopp/insdk/ContainerActivity;->a(Lcom/qihoopp/insdk/ContainerActivity;I)V

    iget-object v0, p0, Lcom/qihoopp/insdk/k;->a:Lcom/qihoopp/insdk/ContainerActivity;

    invoke-static {v0}, Lcom/qihoopp/insdk/ContainerActivity;->d(Lcom/qihoopp/insdk/ContainerActivity;)V

    return-void
.end method
