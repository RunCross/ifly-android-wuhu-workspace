.class Lcn/paypalm/pppayment/global/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field final synthetic a:Lcn/paypalm/pppayment/global/Tools;


# direct methods
.method constructor <init>(Lcn/paypalm/pppayment/global/Tools;)V
    .locals 0

    iput-object p1, p0, Lcn/paypalm/pppayment/global/g;->a:Lcn/paypalm/pppayment/global/Tools;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x54

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
