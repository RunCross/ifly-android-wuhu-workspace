.class Lcom/shandagames/gameplus/impl/PayActivity$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/shandagames/gameplus/impl/PayActivity;


# direct methods
.method constructor <init>(Lcom/shandagames/gameplus/impl/PayActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/shandagames/gameplus/impl/PayActivity$3;->this$0:Lcom/shandagames/gameplus/impl/PayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/shandagames/gameplus/impl/PayActivity$3;->this$0:Lcom/shandagames/gameplus/impl/PayActivity;

    invoke-virtual {v0}, Lcom/shandagames/gameplus/impl/PayActivity;->finish()V

    return-void
.end method
