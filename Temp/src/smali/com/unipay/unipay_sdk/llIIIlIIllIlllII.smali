.class Lcom/unipay/unipay_sdk/llIIIlIIllIlllII;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic _$1:Lcom/unipay/unipay_sdk/MainActivity;

.field final synthetic _$2:Lcom/unipay/beans/PayValueBean;


# direct methods
.method constructor <init>(Lcom/unipay/unipay_sdk/MainActivity;Lcom/unipay/beans/PayValueBean;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/unipay_sdk/llIIIlIIllIlllII;->_$1:Lcom/unipay/unipay_sdk/MainActivity;

    iput-object p2, p0, Lcom/unipay/unipay_sdk/llIIIlIIllIlllII;->_$2:Lcom/unipay/beans/PayValueBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v1, 0x1

    const-string v0, "http://uniview.wostore.cn/log-app/test"

    invoke-static {v0}, Lcom/unipay/tools/MultimodeConfig;->setCallbackUrl(Ljava/lang/String;)V

    invoke-static {}, Lcom/unipay/unipay_sdk/UniPay;->getInstance()Lcom/unipay/unipay_sdk/UniPay;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/unipay/unipay_sdk/UniPay;->setPaySelected(ZZ)V

    invoke-static {}, Lcom/unipay/unipay_sdk/UniPay;->getInstance()Lcom/unipay/unipay_sdk/UniPay;

    move-result-object v0

    iget-object v1, p0, Lcom/unipay/unipay_sdk/llIIIlIIllIlllII;->_$1:Lcom/unipay/unipay_sdk/MainActivity;

    iget-object v2, p0, Lcom/unipay/unipay_sdk/llIIIlIIllIlllII;->_$2:Lcom/unipay/beans/PayValueBean;

    new-instance v3, Lcom/unipay/unipay_sdk/IllIIIIllIllllII;

    iget-object v4, p0, Lcom/unipay/unipay_sdk/llIIIlIIllIlllII;->_$1:Lcom/unipay/unipay_sdk/MainActivity;

    invoke-direct {v3, v4}, Lcom/unipay/unipay_sdk/IllIIIIllIllllII;-><init>(Lcom/unipay/unipay_sdk/MainActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/unipay/unipay_sdk/UniPay;->pay(Landroid/content/Context;Lcom/unipay/beans/PayValueBean;Lcom/unipay/unipay_sdk/UniPay$UniPayCallBack;)V

    return-void
.end method
