.class Lcom/unionpay/upomp/bypay/other/ak;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/unionpay/upomp/bypay/other/bc;


# direct methods
.method constructor <init>(Lcom/unionpay/upomp/bypay/other/bc;)V
    .locals 0

    iput-object p1, p0, Lcom/unionpay/upomp/bypay/other/ak;->a:Lcom/unionpay/upomp/bypay/other/bc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
