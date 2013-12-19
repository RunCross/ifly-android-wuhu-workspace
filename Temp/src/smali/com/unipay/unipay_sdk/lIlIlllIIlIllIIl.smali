.class Lcom/unipay/unipay_sdk/lIlIlllIIlIllIIl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic _$1:Lcom/unipay/unipay_sdk/IIllIlIlIIllIllI;


# direct methods
.method constructor <init>(Lcom/unipay/unipay_sdk/IIllIlIlIIllIllI;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/unipay_sdk/lIlIlllIIlIllIIl;->_$1:Lcom/unipay/unipay_sdk/IIllIlIlIIllIllI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/unipay/unipay_sdk/lIlIlllIIlIllIIl;->_$1:Lcom/unipay/unipay_sdk/IIllIlIlIIllIllI;

    iget-object v0, v0, Lcom/unipay/unipay_sdk/IIllIlIlIIllIllI;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-virtual {v0}, Lcom/unipay/unipay_sdk/UniPay;->isSupportSms()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unipay/unipay_sdk/lIlIlllIIlIllIIl;->_$1:Lcom/unipay/unipay_sdk/IIllIlIlIIllIllI;

    iget-object v0, v0, Lcom/unipay/unipay_sdk/IIllIlIlIIllIllI;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    const-string v1, "\u652f\u4ed8\u6210\u529f"

    invoke-static {v0, v1}, Lcom/unipay/unipay_sdk/UniPay;->_$4(Lcom/unipay/unipay_sdk/UniPay;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/unipay/unipay_sdk/lIlIlllIIlIllIIl;->_$1:Lcom/unipay/unipay_sdk/IIllIlIlIIllIllI;

    iget-object v0, v0, Lcom/unipay/unipay_sdk/IIllIlIlIIllIllI;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    const-string v1, "\u652f\u4ed8\u5df2\u63d0\u4ea4"

    invoke-static {v0, v1}, Lcom/unipay/unipay_sdk/UniPay;->_$3(Lcom/unipay/unipay_sdk/UniPay;Ljava/lang/String;)V

    goto :goto_0
.end method
