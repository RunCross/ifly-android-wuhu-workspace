.class Lcn/paypalm/pppayment/af;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcn/paypalm/pppayment/InitialAct;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/paypalm/pppayment/InitialAct;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/paypalm/pppayment/af;->a:Lcn/paypalm/pppayment/InitialAct;

    iput-object p2, p0, Lcn/paypalm/pppayment/af;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcn/paypalm/pppayment/af;->a:Lcn/paypalm/pppayment/InitialAct;

    iget-object v1, p0, Lcn/paypalm/pppayment/af;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/paypalm/pppayment/InitialAct;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/paypalm/pppayment/af;->a:Lcn/paypalm/pppayment/InitialAct;

    invoke-static {v0}, Lcn/paypalm/pppayment/InitialAct;->i(Lcn/paypalm/pppayment/InitialAct;)V

    return-void
.end method
