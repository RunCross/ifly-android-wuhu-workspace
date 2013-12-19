.class Lcom/unipay/dialog/IIlIlIIIIIIIIlll;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic _$1:Lcom/unipay/dialog/lIllllIIlllIlllI;


# direct methods
.method constructor <init>(Lcom/unipay/dialog/lIllllIIlllIlllI;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/dialog/IIlIlIIIIIIIIlll;->_$1:Lcom/unipay/dialog/lIllllIIlllIlllI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/unipay/dialog/IIlIlIIIIIIIIlll;->_$1:Lcom/unipay/dialog/lIllllIIlllIlllI;

    iget-object v0, v0, Lcom/unipay/dialog/lIllllIIlllIlllI;->_$1:Lcom/unipay/dialog/OtherPayLostPersonalMessage;

    invoke-static {v0}, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$16(Lcom/unipay/dialog/OtherPayLostPersonalMessage;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u767b\u5f55\u5931\u8d25!"

    const/16 v2, 0x3e8

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/unipay/dialog/IIlIlIIIIIIIIlll;->_$1:Lcom/unipay/dialog/lIllllIIlllIlllI;

    iget-object v0, v0, Lcom/unipay/dialog/lIllllIIlllIlllI;->_$1:Lcom/unipay/dialog/OtherPayLostPersonalMessage;

    invoke-static {v0}, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$10(Lcom/unipay/dialog/OtherPayLostPersonalMessage;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method
