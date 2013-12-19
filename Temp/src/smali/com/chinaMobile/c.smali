.class final Lcom/chinaMobile/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/chinaMobile/q;


# direct methods
.method constructor <init>(Lcom/chinaMobile/q;)V
    .locals 0

    iput-object p1, p0, Lcom/chinaMobile/c;->a:Lcom/chinaMobile/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/chinaMobile/c;->a:Lcom/chinaMobile/q;

    invoke-virtual {v0}, Lcom/chinaMobile/q;->dismiss()V

    return-void
.end method
