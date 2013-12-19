.class Lcom/unipay/dialog/llllllIIIIlIIlIl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic _$1:Lcom/unipay/dialog/IllIIIIlIllIIIII;


# direct methods
.method constructor <init>(Lcom/unipay/dialog/IllIIIIlIllIIIII;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/dialog/llllllIIIIlIIlIl;->_$1:Lcom/unipay/dialog/IllIIIIlIllIIIII;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/unipay/dialog/llllllIIIIlIIlIl;->_$1:Lcom/unipay/dialog/IllIIIIlIllIIIII;

    iget-object v0, v0, Lcom/unipay/dialog/IllIIIIlIllIIIII;->_$1:Lcom/unipay/dialog/OtherPayLostPersonalMessage;

    invoke-static {v0}, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$16(Lcom/unipay/dialog/OtherPayLostPersonalMessage;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u6ce8\u518c\u5931\u8d25\uff01"

    const/16 v2, 0x3e8

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/unipay/dialog/llllllIIIIlIIlIl;->_$1:Lcom/unipay/dialog/IllIIIIlIllIIIII;

    iget-object v0, v0, Lcom/unipay/dialog/IllIIIIlIllIIIII;->_$1:Lcom/unipay/dialog/OtherPayLostPersonalMessage;

    invoke-static {v0}, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$11(Lcom/unipay/dialog/OtherPayLostPersonalMessage;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/unipay/dialog/llllllIIIIlIIlIl;->_$1:Lcom/unipay/dialog/IllIIIIlIllIIIII;

    iget-object v0, v0, Lcom/unipay/dialog/IllIIIIlIllIIIII;->_$1:Lcom/unipay/dialog/OtherPayLostPersonalMessage;

    invoke-static {v0}, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$13(Lcom/unipay/dialog/OtherPayLostPersonalMessage;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/unipay/dialog/llllllIIIIlIIlIl;->_$1:Lcom/unipay/dialog/IllIIIIlIllIIIII;

    iget-object v0, v0, Lcom/unipay/dialog/IllIIIIlIllIIIII;->_$1:Lcom/unipay/dialog/OtherPayLostPersonalMessage;

    invoke-static {v0}, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$14(Lcom/unipay/dialog/OtherPayLostPersonalMessage;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    return-void
.end method
