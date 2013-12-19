.class Lcom/unipay/dialog/lllllIIlIIllIIIl;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic _$1:Lcom/unipay/dialog/SmsEnSureDialog;


# direct methods
.method constructor <init>(Lcom/unipay/dialog/SmsEnSureDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/dialog/lllllIIlIIllIIIl;->_$1:Lcom/unipay/dialog/SmsEnSureDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/unipay/dialog/lllllIIlIIllIIIl;->_$1:Lcom/unipay/dialog/SmsEnSureDialog;

    invoke-static {v0}, Lcom/unipay/dialog/SmsEnSureDialog;->_$1(Lcom/unipay/dialog/SmsEnSureDialog;)Lcom/unipay/dialog/SmsEnSureDialog$SmsEnSureResultListener;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/unipay/dialog/SmsEnSureDialog$SmsEnSureResultListener;->SmsResult(I)V

    iget-object v0, p0, Lcom/unipay/dialog/lllllIIlIIllIIIl;->_$1:Lcom/unipay/dialog/SmsEnSureDialog;

    invoke-virtual {v0}, Lcom/unipay/dialog/SmsEnSureDialog;->dismiss()V

    return-void
.end method
