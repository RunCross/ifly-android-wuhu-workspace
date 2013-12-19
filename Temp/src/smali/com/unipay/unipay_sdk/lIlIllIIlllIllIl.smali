.class Lcom/unipay/unipay_sdk/lIlIllIIlllIllIl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic _$1:Lcom/unipay/unipay_sdk/llIllllIllllllll;


# direct methods
.method constructor <init>(Lcom/unipay/unipay_sdk/llIllllIllllllll;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/unipay_sdk/lIlIllIIlllIllIl;->_$1:Lcom/unipay/unipay_sdk/llIllllIllllllll;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/unipay/unipay_sdk/lIlIllIIlllIllIl;->_$1:Lcom/unipay/unipay_sdk/llIllllIllllllll;

    iget-object v0, v0, Lcom/unipay/unipay_sdk/llIllllIllllllll;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->_$39(Lcom/unipay/unipay_sdk/UniPay;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u7f51\u7edc\u8fde\u63a5\u4e0d\u53ef\u7528"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
