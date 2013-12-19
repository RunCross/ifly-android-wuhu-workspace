.class Lcom/baidu/game/activity/PaymentActivity$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic z:Lcom/baidu/game/activity/PaymentActivity;


# direct methods
.method constructor <init>(Lcom/baidu/game/activity/PaymentActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/game/activity/PaymentActivity$3;->z:Lcom/baidu/game/activity/PaymentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/game/activity/PaymentActivity$3;->z:Lcom/baidu/game/activity/PaymentActivity;

    invoke-virtual {v0}, Lcom/baidu/game/activity/PaymentActivity;->finish()V

    return-void
.end method
