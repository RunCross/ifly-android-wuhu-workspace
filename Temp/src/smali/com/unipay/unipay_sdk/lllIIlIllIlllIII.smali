.class Lcom/unipay/unipay_sdk/lllIIlIllIlllIII;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic _$1:Lcom/unipay/unipay_sdk/llIIlllIIlIIlIll;


# direct methods
.method constructor <init>(Lcom/unipay/unipay_sdk/llIIlllIIlIIlIll;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/unipay_sdk/lllIIlIllIlllIII;->_$1:Lcom/unipay/unipay_sdk/llIIlllIIlIIlIll;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/unipay/unipay_sdk/lllIIlIllIlllIII;->_$1:Lcom/unipay/unipay_sdk/llIIlllIIlIIlIll;

    iget-object v0, v0, Lcom/unipay/unipay_sdk/llIIlllIIlIIlIll;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-virtual {v0}, Lcom/unipay/unipay_sdk/UniPay;->DismissProgressDialog()V

    iget-object v0, p0, Lcom/unipay/unipay_sdk/lllIIlIllIlllIII;->_$1:Lcom/unipay/unipay_sdk/llIIlllIIlIIlIll;

    iget-object v0, v0, Lcom/unipay/unipay_sdk/llIIlllIIlIIlIll;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->_$28(Lcom/unipay/unipay_sdk/UniPay;)V

    iget-object v0, p0, Lcom/unipay/unipay_sdk/lllIIlIllIlllIII;->_$1:Lcom/unipay/unipay_sdk/llIIlllIIlIIlIll;

    iget-object v0, v0, Lcom/unipay/unipay_sdk/llIIlllIIlIIlIll;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    iget-object v1, p0, Lcom/unipay/unipay_sdk/lllIIlIllIlllIII;->_$1:Lcom/unipay/unipay_sdk/llIIlllIIlIIlIll;

    iget-object v1, v1, Lcom/unipay/unipay_sdk/llIIlllIIlIIlIll;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v1}, Lcom/unipay/unipay_sdk/UniPay;->_$39(Lcom/unipay/unipay_sdk/UniPay;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/unipay/unipay_sdk/lllIIlIllIlllIII;->_$1:Lcom/unipay/unipay_sdk/llIIlllIIlIIlIll;

    iget-object v2, v2, Lcom/unipay/unipay_sdk/llIIlllIIlIIlIll;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v2}, Lcom/unipay/unipay_sdk/UniPay;->_$37(Lcom/unipay/unipay_sdk/UniPay;)Lcom/unipay/beans/PayValueBean;

    move-result-object v2

    iget-object v3, p0, Lcom/unipay/unipay_sdk/lllIIlIllIlllIII;->_$1:Lcom/unipay/unipay_sdk/llIIlllIIlIIlIll;

    iget-object v3, v3, Lcom/unipay/unipay_sdk/llIIlllIIlIIlIll;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v3}, Lcom/unipay/unipay_sdk/UniPay;->_$27(Lcom/unipay/unipay_sdk/UniPay;)Lcom/unipay/unipay_sdk/UniPay$UniPayCallBack;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/unipay/unipay_sdk/UniPay;->pay(Landroid/content/Context;Lcom/unipay/beans/PayValueBean;Lcom/unipay/unipay_sdk/UniPay$UniPayCallBack;)V

    return-void
.end method
