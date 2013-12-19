.class Lcom/unipay/dialog/IllIIIlIlllIllII;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic _$1:Lcom/unipay/dialog/llIlllllllIlIIll;

.field final synthetic _$2:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/unipay/dialog/llIlllllllIlIIll;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/dialog/IllIIIlIlllIllII;->_$1:Lcom/unipay/dialog/llIlllllllIlIIll;

    iput-object p2, p0, Lcom/unipay/dialog/IllIIIlIlllIllII;->_$2:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x0

    const/16 v3, 0x3e8

    iget-object v0, p0, Lcom/unipay/dialog/IllIIIlIlllIllII;->_$1:Lcom/unipay/dialog/llIlllllllIlIIll;

    iget-object v0, v0, Lcom/unipay/dialog/llIlllllllIlIIll;->_$1:Lcom/unipay/dialog/PersonalMessage;

    invoke-static {v0}, Lcom/unipay/dialog/PersonalMessage;->_$5(Lcom/unipay/dialog/PersonalMessage;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/unipay/dialog/IllIIIlIlllIllII;->_$2:Ljava/lang/String;

    const-string v2, "\u7f51\u5e97\u7528\u6237"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/unipay/dialog/IllIIIlIlllIllII;->_$1:Lcom/unipay/dialog/llIlllllllIlIIll;

    iget-object v0, v0, Lcom/unipay/dialog/llIlllllllIlIIll;->_$1:Lcom/unipay/dialog/PersonalMessage;

    invoke-static {v0}, Lcom/unipay/dialog/PersonalMessage;->_$5(Lcom/unipay/dialog/PersonalMessage;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/unipay/dialog/IllIIIlIlllIllII;->_$1:Lcom/unipay/dialog/llIlllllllIlIIll;

    iget-object v0, v0, Lcom/unipay/dialog/llIlllllllIlIIll;->_$1:Lcom/unipay/dialog/PersonalMessage;

    invoke-virtual {v0}, Lcom/unipay/dialog/PersonalMessage;->dismiss()V

    iget-object v0, p0, Lcom/unipay/dialog/IllIIIlIlllIllII;->_$1:Lcom/unipay/dialog/llIlllllllIlIIll;

    iget-object v0, v0, Lcom/unipay/dialog/llIlllllllIlIIll;->_$1:Lcom/unipay/dialog/PersonalMessage;

    invoke-static {v0}, Lcom/unipay/dialog/PersonalMessage;->_$7(Lcom/unipay/dialog/PersonalMessage;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/unipay/dialog/IllIIIlIlllIllII;->_$2:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\uff0c\u8bf7\u76f4\u63a5\u767b\u5f55"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/unipay/dialog/IllIIIlIlllIllII;->_$1:Lcom/unipay/dialog/llIlllllllIlIIll;

    iget-object v0, v0, Lcom/unipay/dialog/llIlllllllIlIIll;->_$1:Lcom/unipay/dialog/PersonalMessage;

    invoke-static {v0}, Lcom/unipay/dialog/PersonalMessage;->_$2(Lcom/unipay/dialog/PersonalMessage;)Lcom/unipay/dialog/PersonalMessage$PersonalRegisterLister;

    move-result-object v0

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/unipay/dialog/IllIIIlIlllIllII;->_$1:Lcom/unipay/dialog/llIlllllllIlIIll;

    iget-object v2, v2, Lcom/unipay/dialog/llIlllllllIlIIll;->_$1:Lcom/unipay/dialog/PersonalMessage;

    invoke-static {v2}, Lcom/unipay/dialog/PersonalMessage;->_$6(Lcom/unipay/dialog/PersonalMessage;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, v4, v4}, Lcom/unipay/dialog/PersonalMessage$PersonalRegisterLister;->operation(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/unipay/dialog/IllIIIlIlllIllII;->_$1:Lcom/unipay/dialog/llIlllllllIlIIll;

    iget-object v0, v0, Lcom/unipay/dialog/llIlllllllIlIIll;->_$1:Lcom/unipay/dialog/PersonalMessage;

    invoke-static {v0}, Lcom/unipay/dialog/PersonalMessage;->_$7(Lcom/unipay/dialog/PersonalMessage;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/unipay/dialog/IllIIIlIlllIllII;->_$2:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
