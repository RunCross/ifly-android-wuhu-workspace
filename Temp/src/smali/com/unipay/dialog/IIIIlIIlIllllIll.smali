.class Lcom/unipay/dialog/IIIIlIIlIllllIll;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic _$1:Lcom/unipay/dialog/VacEnSureDialog;


# direct methods
.method constructor <init>(Lcom/unipay/dialog/VacEnSureDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/dialog/IIIIlIIlIllllIll;->_$1:Lcom/unipay/dialog/VacEnSureDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/unipay/dialog/IIIIlIIlIllllIll;->_$1:Lcom/unipay/dialog/VacEnSureDialog;

    invoke-static {v0}, Lcom/unipay/dialog/VacEnSureDialog;->_$1(Lcom/unipay/dialog/VacEnSureDialog;)Lcom/unipay/dialog/VacEnSureDialog$VacEnSureResultListener;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/unipay/dialog/VacEnSureDialog$VacEnSureResultListener;->VacResult(I)V

    iget-object v0, p0, Lcom/unipay/dialog/IIIIlIIlIllllIll;->_$1:Lcom/unipay/dialog/VacEnSureDialog;

    invoke-virtual {v0}, Lcom/unipay/dialog/VacEnSureDialog;->dismiss()V

    return-void
.end method
