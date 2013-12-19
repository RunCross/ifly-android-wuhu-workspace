.class Lcom/unipay/dialog/IllllllllIlllllI;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic _$1:Lcom/unipay/dialog/ShenzhouFuMoneySeletedDialog;

.field final synthetic _$2:Landroid/widget/Button;

.field final synthetic _$3:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/unipay/dialog/ShenzhouFuMoneySeletedDialog;Landroid/widget/EditText;Landroid/widget/Button;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/dialog/IllllllllIlllllI;->_$1:Lcom/unipay/dialog/ShenzhouFuMoneySeletedDialog;

    iput-object p2, p0, Lcom/unipay/dialog/IllllllllIlllllI;->_$3:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/unipay/dialog/IllllllllIlllllI;->_$2:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v3

    :pswitch_1
    iget-object v0, p0, Lcom/unipay/dialog/IllllllllIlllllI;->_$3:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    const-string v0, ""

    iget-object v1, p0, Lcom/unipay/dialog/IllllllllIlllllI;->_$3:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unipay/dialog/IllllllllIlllllI;->_$3:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    div-int/lit8 v0, v0, 0xa

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/unipay/dialog/IllllllllIlllllI;->_$2:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/unipay/dialog/IllllllllIlllllI;->_$1:Lcom/unipay/dialog/ShenzhouFuMoneySeletedDialog;

    invoke-static {v0}, Lcom/unipay/dialog/ShenzhouFuMoneySeletedDialog;->_$1(Lcom/unipay/dialog/ShenzhouFuMoneySeletedDialog;)Lcom/unipay/dialog/ShenzhouFuMoneySeletedDialog$MoneySeletedDialog;

    move-result-object v0

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/unipay/dialog/IllllllllIlllllI;->_$3:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/unipay/dialog/ShenzhouFuMoneySeletedDialog$MoneySeletedDialog;->SeletedMoney(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/unipay/dialog/IllllllllIlllllI;->_$1:Lcom/unipay/dialog/ShenzhouFuMoneySeletedDialog;

    invoke-virtual {v0}, Lcom/unipay/dialog/ShenzhouFuMoneySeletedDialog;->dismiss()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/unipay/dialog/IllllllllIlllllI;->_$1:Lcom/unipay/dialog/ShenzhouFuMoneySeletedDialog;

    invoke-static {v0}, Lcom/unipay/dialog/ShenzhouFuMoneySeletedDialog;->_$2(Lcom/unipay/dialog/ShenzhouFuMoneySeletedDialog;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u652f\u4ed8\u91d1\u989d"

    const/16 v2, 0x3e8

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/unipay/dialog/IllllllllIlllllI;->_$2:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
