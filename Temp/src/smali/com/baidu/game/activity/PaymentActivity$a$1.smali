.class Lcom/baidu/game/activity/PaymentActivity$a$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic C:Lcom/baidu/game/activity/PaymentActivity$a;


# direct methods
.method constructor <init>(Lcom/baidu/game/activity/PaymentActivity$a;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/game/activity/PaymentActivity$a$1;->C:Lcom/baidu/game/activity/PaymentActivity$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/game/activity/PaymentActivity$a$1;->C:Lcom/baidu/game/activity/PaymentActivity$a;

    invoke-static {v0}, Lcom/baidu/game/activity/PaymentActivity$a;->a(Lcom/baidu/game/activity/PaymentActivity$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/game/activity/PaymentActivity$a$1;->C:Lcom/baidu/game/activity/PaymentActivity$a;

    invoke-static {v0}, Lcom/baidu/game/activity/PaymentActivity$a;->b(Lcom/baidu/game/activity/PaymentActivity$a;)Lcom/baidu/game/activity/PaymentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/game/activity/PaymentActivity;->finish()V

    :cond_0
    return-void
.end method
