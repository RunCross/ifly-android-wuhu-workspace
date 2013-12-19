.class Lcom/unipay/unipay_sdk/llllIlIlIIllIllI;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic _$1:Lcom/unipay/unipay_sdk/UniPay;


# direct methods
.method constructor <init>(Lcom/unipay/unipay_sdk/UniPay;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/unipay_sdk/llllIlIlIIllIllI;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    new-instance v0, Lcom/unipay/dialog/ShenzhouFuMoneySeletedDialog;

    iget-object v1, p0, Lcom/unipay/unipay_sdk/llllIlIlIIllIllI;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v1}, Lcom/unipay/unipay_sdk/UniPay;->_$39(Lcom/unipay/unipay_sdk/UniPay;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/unipay/unipay_sdk/llIlIlllIIIIIlII;

    iget-object v3, p0, Lcom/unipay/unipay_sdk/llllIlIlIIllIllI;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-direct {v2, v3}, Lcom/unipay/unipay_sdk/llIlIlllIIIIIlII;-><init>(Lcom/unipay/unipay_sdk/UniPay;)V

    invoke-direct {v0, v1, v2}, Lcom/unipay/dialog/ShenzhouFuMoneySeletedDialog;-><init>(Landroid/content/Context;Lcom/unipay/dialog/ShenzhouFuMoneySeletedDialog$MoneySeletedDialog;)V

    invoke-virtual {v0}, Lcom/unipay/dialog/ShenzhouFuMoneySeletedDialog;->show()V

    return-void
.end method
