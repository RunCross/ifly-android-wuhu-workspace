.class Lcom/unipay/dialog/IllIlIIIIIIIIlll;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic _$1:Lcom/unipay/dialog/lIllllIIlllIlllI;

.field final synthetic _$2:Ljava/lang/String;

.field final synthetic _$3:I


# direct methods
.method constructor <init>(Lcom/unipay/dialog/lIllllIIlllIlllI;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/dialog/IllIlIIIIIIIIlll;->_$1:Lcom/unipay/dialog/lIllllIIlllIlllI;

    iput p2, p0, Lcom/unipay/dialog/IllIlIIIIIIIIlll;->_$3:I

    iput-object p3, p0, Lcom/unipay/dialog/IllIlIIIIIIIIlll;->_$2:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    invoke-static {}, Lcom/unipay/unipay_sdk/UniPay;->getInstance()Lcom/unipay/unipay_sdk/UniPay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unipay/unipay_sdk/UniPay;->DismissProgressDialog()V

    iget-object v0, p0, Lcom/unipay/dialog/IllIlIIIIIIIIlll;->_$1:Lcom/unipay/dialog/lIllllIIlllIlllI;

    iget-object v0, v0, Lcom/unipay/dialog/lIllllIIlllIlllI;->_$1:Lcom/unipay/dialog/OtherPayLostPersonalMessage;

    invoke-static {v0}, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$16(Lcom/unipay/dialog/OtherPayLostPersonalMessage;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u767b\u5f55\u6210\u529f\uff01"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-static {}, Lcom/unipay/unipay_sdk/UniPay;->getInstance()Lcom/unipay/unipay_sdk/UniPay;

    move-result-object v0

    iget v1, p0, Lcom/unipay/dialog/IllIlIIIIIIIIlll;->_$3:I

    iput v1, v0, Lcom/unipay/unipay_sdk/UniPay;->usertype:I

    invoke-static {}, Lcom/unipay/unipay_sdk/UniPay;->getInstance()Lcom/unipay/unipay_sdk/UniPay;

    move-result-object v0

    iget-object v1, p0, Lcom/unipay/dialog/IllIlIIIIIIIIlll;->_$1:Lcom/unipay/dialog/lIllllIIlllIlllI;

    iget-object v1, v1, Lcom/unipay/dialog/lIllllIIlllIlllI;->_$1:Lcom/unipay/dialog/OtherPayLostPersonalMessage;

    invoke-static {v1}, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$6(Lcom/unipay/dialog/OtherPayLostPersonalMessage;)Lcom/unipay/beans/LoginRsp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unipay/unipay_sdk/UniPay;->setLoginRsp(Lcom/unipay/beans/LoginRsp;)V

    iget-object v0, p0, Lcom/unipay/dialog/IllIlIIIIIIIIlll;->_$1:Lcom/unipay/dialog/lIllllIIlllIlllI;

    iget-object v0, v0, Lcom/unipay/dialog/lIllllIIlllIlllI;->_$1:Lcom/unipay/dialog/OtherPayLostPersonalMessage;

    iget v1, p0, Lcom/unipay/dialog/IllIlIIIIIIIIlll;->_$3:I

    iget-object v2, p0, Lcom/unipay/dialog/IllIlIIIIIIIIlll;->_$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/unipay/dialog/IllIlIIIIIIIIlll;->_$1:Lcom/unipay/dialog/lIllllIIlllIlllI;

    iget-object v3, v3, Lcom/unipay/dialog/lIllllIIlllIlllI;->_$1:Lcom/unipay/dialog/OtherPayLostPersonalMessage;

    invoke-static {v3}, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$5(Lcom/unipay/dialog/OtherPayLostPersonalMessage;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/unipay/dialog/IllIlIIIIIIIIlll;->_$1:Lcom/unipay/dialog/lIllllIIlllIlllI;

    iget-object v4, v4, Lcom/unipay/dialog/lIllllIIlllIlllI;->_$1:Lcom/unipay/dialog/OtherPayLostPersonalMessage;

    invoke-static {v4}, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$4(Lcom/unipay/dialog/OtherPayLostPersonalMessage;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/unipay/dialog/IllIlIIIIIIIIlll;->_$1:Lcom/unipay/dialog/lIllllIIlllIlllI;

    iget-object v5, v5, Lcom/unipay/dialog/lIllllIIlllIlllI;->_$1:Lcom/unipay/dialog/OtherPayLostPersonalMessage;

    invoke-static {v5}, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$3(Lcom/unipay/dialog/OtherPayLostPersonalMessage;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/unipay/dialog/IllIlIIIIIIIIlll;->_$1:Lcom/unipay/dialog/lIllllIIlllIlllI;

    iget-object v6, v6, Lcom/unipay/dialog/lIllllIIlllIlllI;->_$1:Lcom/unipay/dialog/OtherPayLostPersonalMessage;

    invoke-static {v6}, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$2(Lcom/unipay/dialog/OtherPayLostPersonalMessage;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/unipay/dialog/IllIlIIIIIIIIlll;->_$1:Lcom/unipay/dialog/lIllllIIlllIlllI;

    iget-object v7, v7, Lcom/unipay/dialog/lIllllIIlllIlllI;->_$1:Lcom/unipay/dialog/OtherPayLostPersonalMessage;

    invoke-static {v7}, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$1(Lcom/unipay/dialog/OtherPayLostPersonalMessage;)Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v0 .. v7}, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$1(Lcom/unipay/dialog/OtherPayLostPersonalMessage;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
