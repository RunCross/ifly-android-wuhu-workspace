.class Lcn/paypalm/pppayment/n;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcn/paypalm/pppayment/ap;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/paypalm/pppayment/ap;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/paypalm/pppayment/n;->a:Lcn/paypalm/pppayment/ap;

    iput-object p2, p0, Lcn/paypalm/pppayment/n;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcn/paypalm/pppayment/n;->a:Lcn/paypalm/pppayment/ap;

    invoke-static {v0}, Lcn/paypalm/pppayment/ap;->a(Lcn/paypalm/pppayment/ap;)Lcn/paypalm/pppayment/InitialAct;

    move-result-object v0

    iget-object v1, p0, Lcn/paypalm/pppayment/n;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/paypalm/pppayment/InitialAct;->a(Lcn/paypalm/pppayment/InitialAct;Ljava/lang/String;)V

    return-void
.end method
