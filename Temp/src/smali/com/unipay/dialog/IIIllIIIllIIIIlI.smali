.class Lcom/unipay/dialog/IIIllIIIllIIIIlI;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic _$1:Lcom/unipay/dialog/PVacEnSureDialog;

.field final synthetic _$2:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/unipay/dialog/PVacEnSureDialog;Landroid/widget/Button;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/dialog/IIIllIIIllIIIIlI;->_$1:Lcom/unipay/dialog/PVacEnSureDialog;

    iput-object p2, p0, Lcom/unipay/dialog/IIIllIIIllIIIIlI;->_$2:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/unipay/dialog/IIIllIIIllIIIIlI;->_$2:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/unipay/dialog/IIIllIIIllIIIIlI;->_$1:Lcom/unipay/dialog/PVacEnSureDialog;

    invoke-static {v0}, Lcom/unipay/dialog/PVacEnSureDialog;->_$1(Lcom/unipay/dialog/PVacEnSureDialog;)Lcom/unipay/dialog/PVacEnSureDialog$PVacEnSureResultListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/unipay/dialog/PVacEnSureDialog$PVacEnSureResultListener;->VacResult(I)V

    iget-object v0, p0, Lcom/unipay/dialog/IIIllIIIllIIIIlI;->_$1:Lcom/unipay/dialog/PVacEnSureDialog;

    invoke-virtual {v0}, Lcom/unipay/dialog/PVacEnSureDialog;->dismiss()V

    return-void
.end method
