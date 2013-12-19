.class Lcom/unipay/dialog/lIIllIIIllIIIIlI;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic _$1:Lcom/unipay/dialog/PVacEnSureDialog;


# direct methods
.method constructor <init>(Lcom/unipay/dialog/PVacEnSureDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/dialog/lIIllIIIllIIIIlI;->_$1:Lcom/unipay/dialog/PVacEnSureDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/unipay/dialog/lIIllIIIllIIIIlI;->_$1:Lcom/unipay/dialog/PVacEnSureDialog;

    invoke-static {v0}, Lcom/unipay/dialog/PVacEnSureDialog;->_$1(Lcom/unipay/dialog/PVacEnSureDialog;)Lcom/unipay/dialog/PVacEnSureDialog$PVacEnSureResultListener;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/unipay/dialog/PVacEnSureDialog$PVacEnSureResultListener;->VacResult(I)V

    iget-object v0, p0, Lcom/unipay/dialog/lIIllIIIllIIIIlI;->_$1:Lcom/unipay/dialog/PVacEnSureDialog;

    invoke-virtual {v0}, Lcom/unipay/dialog/PVacEnSureDialog;->dismiss()V

    return-void
.end method
