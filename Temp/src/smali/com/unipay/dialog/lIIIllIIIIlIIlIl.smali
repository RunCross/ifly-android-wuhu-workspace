.class Lcom/unipay/dialog/lIIIllIIIIlIIlIl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic _$1:Lcom/unipay/dialog/IllIIIIlIllIIIII;


# direct methods
.method constructor <init>(Lcom/unipay/dialog/IllIIIIlIllIIIII;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/dialog/lIIIllIIIIlIIlIl;->_$1:Lcom/unipay/dialog/IllIIIIlIllIIIII;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/unipay/dialog/lIIIllIIIIlIIlIl;->_$1:Lcom/unipay/dialog/IllIIIIlIllIIIII;

    iget-object v0, v0, Lcom/unipay/dialog/IllIIIIlIllIIIII;->_$1:Lcom/unipay/dialog/OtherPayLostPersonalMessage;

    invoke-static {v0}, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$11(Lcom/unipay/dialog/OtherPayLostPersonalMessage;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/unipay/dialog/lIIIllIIIIlIIlIl;->_$1:Lcom/unipay/dialog/IllIIIIlIllIIIII;

    iget-object v0, v0, Lcom/unipay/dialog/IllIIIIlIllIIIII;->_$1:Lcom/unipay/dialog/OtherPayLostPersonalMessage;

    invoke-static {v0}, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$13(Lcom/unipay/dialog/OtherPayLostPersonalMessage;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/unipay/dialog/lIIIllIIIIlIIlIl;->_$1:Lcom/unipay/dialog/IllIIIIlIllIIIII;

    iget-object v0, v0, Lcom/unipay/dialog/IllIIIIlIllIIIII;->_$1:Lcom/unipay/dialog/OtherPayLostPersonalMessage;

    invoke-static {v0}, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$14(Lcom/unipay/dialog/OtherPayLostPersonalMessage;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/unipay/dialog/lIIIllIIIIlIIlIl;->_$1:Lcom/unipay/dialog/IllIIIIlIllIIIII;

    iget-object v0, v0, Lcom/unipay/dialog/IllIIIIlIllIIIII;->_$1:Lcom/unipay/dialog/OtherPayLostPersonalMessage;

    invoke-static {v0}, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$16(Lcom/unipay/dialog/OtherPayLostPersonalMessage;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u60a8\u5df2\u6ce8\u518c\uff0c\u8bf7\u76f4\u63a5\u767b\u5f55\uff01"

    const/16 v2, 0x3e8

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    new-instance v0, Lcom/unipay/dialog/LoadDialog;

    iget-object v1, p0, Lcom/unipay/dialog/lIIIllIIIIlIIlIl;->_$1:Lcom/unipay/dialog/IllIIIIlIllIIIII;

    iget-object v1, v1, Lcom/unipay/dialog/IllIIIIlIllIIIII;->_$1:Lcom/unipay/dialog/OtherPayLostPersonalMessage;

    invoke-static {v1}, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$16(Lcom/unipay/dialog/OtherPayLostPersonalMessage;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/unipay/dialog/IlllIIIIIllllIIl;

    iget-object v3, p0, Lcom/unipay/dialog/lIIIllIIIIlIIlIl;->_$1:Lcom/unipay/dialog/IllIIIIlIllIIIII;

    iget-object v3, v3, Lcom/unipay/dialog/IllIIIIlIllIIIII;->_$1:Lcom/unipay/dialog/OtherPayLostPersonalMessage;

    invoke-direct {v2, v3}, Lcom/unipay/dialog/IlllIIIIIllllIIl;-><init>(Lcom/unipay/dialog/OtherPayLostPersonalMessage;)V

    invoke-direct {v0, v1, v2}, Lcom/unipay/dialog/LoadDialog;-><init>(Landroid/content/Context;Lcom/unipay/dialog/LoadDialog$LoadDialogListener;)V

    invoke-virtual {v0}, Lcom/unipay/dialog/LoadDialog;->show()V

    return-void
.end method
