.class Lcom/unipay/dialog/llIlIllllIIIlIII;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic _$1:Lcom/unipay/dialog/PSmsEnSureDialog;


# direct methods
.method constructor <init>(Lcom/unipay/dialog/PSmsEnSureDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/dialog/llIlIllllIIIlIII;->_$1:Lcom/unipay/dialog/PSmsEnSureDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/unipay/dialog/llIlIllllIIIlIII;->_$1:Lcom/unipay/dialog/PSmsEnSureDialog;

    invoke-static {v0}, Lcom/unipay/dialog/PSmsEnSureDialog;->_$1(Lcom/unipay/dialog/PSmsEnSureDialog;)Lcom/unipay/dialog/PSmsEnSureDialog$PSmsEnSureResultListener;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/unipay/dialog/PSmsEnSureDialog$PSmsEnSureResultListener;->SmsResult(I)V

    iget-object v0, p0, Lcom/unipay/dialog/llIlIllllIIIlIII;->_$1:Lcom/unipay/dialog/PSmsEnSureDialog;

    invoke-virtual {v0}, Lcom/unipay/dialog/PSmsEnSureDialog;->dismiss()V

    return-void
.end method
