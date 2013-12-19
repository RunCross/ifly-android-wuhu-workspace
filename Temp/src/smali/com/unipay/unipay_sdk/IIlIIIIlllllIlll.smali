.class Lcom/unipay/unipay_sdk/IIlIIIIlllllIlll;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic _$1:Lcom/unipay/unipay_sdk/IlIIIIllIlIIlIll;


# direct methods
.method constructor <init>(Lcom/unipay/unipay_sdk/IlIIIIllIlIIlIll;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/unipay_sdk/IIlIIIIlllllIlll;->_$1:Lcom/unipay/unipay_sdk/IlIIIIllIlIIlIll;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/unipay/unipay_sdk/IIlIIIIlllllIlll;->_$1:Lcom/unipay/unipay_sdk/IlIIIIllIlIIlIll;

    iget-object v0, v0, Lcom/unipay/unipay_sdk/IlIIIIllIlIIlIll;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->_$39(Lcom/unipay/unipay_sdk/UniPay;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u7528\u6237\u9274\u6743\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5..."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/unipay/unipay_sdk/IIlIIIIlllllIlll;->_$1:Lcom/unipay/unipay_sdk/IlIIIIllIlIIlIll;

    iget-object v0, v0, Lcom/unipay/unipay_sdk/IlIIIIllIlIIlIll;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->_$28(Lcom/unipay/unipay_sdk/UniPay;)V

    iget-object v0, p0, Lcom/unipay/unipay_sdk/IIlIIIIlllllIlll;->_$1:Lcom/unipay/unipay_sdk/IlIIIIllIlIIlIll;

    iget-object v0, v0, Lcom/unipay/unipay_sdk/IlIIIIllIlIIlIll;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    iget-object v1, p0, Lcom/unipay/unipay_sdk/IIlIIIIlllllIlll;->_$1:Lcom/unipay/unipay_sdk/IlIIIIllIlIIlIll;

    iget-object v1, v1, Lcom/unipay/unipay_sdk/IlIIIIllIlIIlIll;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v1}, Lcom/unipay/unipay_sdk/UniPay;->_$39(Lcom/unipay/unipay_sdk/UniPay;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/unipay/unipay_sdk/IIlIIIIlllllIlll;->_$1:Lcom/unipay/unipay_sdk/IlIIIIllIlIIlIll;

    iget-object v2, v2, Lcom/unipay/unipay_sdk/IlIIIIllIlIIlIll;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v2}, Lcom/unipay/unipay_sdk/UniPay;->_$37(Lcom/unipay/unipay_sdk/UniPay;)Lcom/unipay/beans/PayValueBean;

    move-result-object v2

    iget-object v3, p0, Lcom/unipay/unipay_sdk/IIlIIIIlllllIlll;->_$1:Lcom/unipay/unipay_sdk/IlIIIIllIlIIlIll;

    iget-object v3, v3, Lcom/unipay/unipay_sdk/IlIIIIllIlIIlIll;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v3}, Lcom/unipay/unipay_sdk/UniPay;->_$27(Lcom/unipay/unipay_sdk/UniPay;)Lcom/unipay/unipay_sdk/UniPay$UniPayCallBack;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/unipay/unipay_sdk/UniPay;->pay(Landroid/content/Context;Lcom/unipay/beans/PayValueBean;Lcom/unipay/unipay_sdk/UniPay$UniPayCallBack;)V

    return-void
.end method
