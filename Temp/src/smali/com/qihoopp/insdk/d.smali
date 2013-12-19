.class final Lcom/qihoopp/insdk/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/qihoopp/insdk/ContainerActivity;


# direct methods
.method constructor <init>(Lcom/qihoopp/insdk/ContainerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/qihoopp/insdk/d;->a:Lcom/qihoopp/insdk/ContainerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/qihoopp/insdk/d;->a:Lcom/qihoopp/insdk/ContainerActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/qihoopp/insdk/ContainerActivity;->a(Lcom/qihoopp/insdk/ContainerActivity;I)V

    iget-object v0, p0, Lcom/qihoopp/insdk/d;->a:Lcom/qihoopp/insdk/ContainerActivity;

    invoke-static {v0}, Lcom/qihoopp/insdk/ContainerActivity;->h(Lcom/qihoopp/insdk/ContainerActivity;)V

    return-void
.end method
