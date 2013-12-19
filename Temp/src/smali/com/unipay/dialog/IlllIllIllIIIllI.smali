.class Lcom/unipay/dialog/IlllIllIllIIIllI;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic _$1:Lcom/unipay/dialog/ShenzhouFuDialog;

.field final synthetic _$2:Landroid/widget/EditText;

.field final synthetic _$3:Landroid/widget/EditText;

.field final synthetic _$4:Landroid/widget/TextView;

.field final synthetic _$5:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/unipay/dialog/ShenzhouFuDialog;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/dialog/IlllIllIllIIIllI;->_$1:Lcom/unipay/dialog/ShenzhouFuDialog;

    iput-object p2, p0, Lcom/unipay/dialog/IlllIllIllIIIllI;->_$5:Landroid/widget/Button;

    iput-object p3, p0, Lcom/unipay/dialog/IlllIllIllIIIllI;->_$4:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/unipay/dialog/IlllIllIllIIIllI;->_$3:Landroid/widget/EditText;

    iput-object p5, p0, Lcom/unipay/dialog/IlllIllIllIIIllI;->_$2:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    const/16 v4, 0x3e8

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_0
    :pswitch_0
    move v0, v1

    :goto_1
    return v0

    :pswitch_1
    iget-object v2, p0, Lcom/unipay/dialog/IlllIllIllIIIllI;->_$5:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v2, p0, Lcom/unipay/dialog/IlllIllIllIIIllI;->_$4:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    const-string v2, ""

    iget-object v3, p0, Lcom/unipay/dialog/IlllIllIllIIIllI;->_$4:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/unipay/dialog/IlllIllIllIIIllI;->_$1:Lcom/unipay/dialog/ShenzhouFuDialog;

    invoke-static {v2}, Lcom/unipay/dialog/ShenzhouFuDialog;->_$4(Lcom/unipay/dialog/ShenzhouFuDialog;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "\u8bf7\u9009\u62e9\u5145\u503c\u5361\u7c7b\u578b"

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    iget-object v2, p0, Lcom/unipay/dialog/IlllIllIllIIIllI;->_$5:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    :cond_1
    const-string v2, ""

    iget-object v3, p0, Lcom/unipay/dialog/IlllIllIllIIIllI;->_$3:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, ""

    iget-object v3, p0, Lcom/unipay/dialog/IlllIllIllIIIllI;->_$2:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/unipay/dialog/IlllIllIllIIIllI;->_$5:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v1, p0, Lcom/unipay/dialog/IlllIllIllIIIllI;->_$1:Lcom/unipay/dialog/ShenzhouFuDialog;

    invoke-static {v1}, Lcom/unipay/dialog/ShenzhouFuDialog;->_$4(Lcom/unipay/dialog/ShenzhouFuDialog;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "\u5145\u503c\u5361\u53f7\u6216\u5bc6\u7801\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/unipay/dialog/IlllIllIllIIIllI;->_$1:Lcom/unipay/dialog/ShenzhouFuDialog;

    invoke-static {v0}, Lcom/unipay/dialog/ShenzhouFuDialog;->_$2(Lcom/unipay/dialog/ShenzhouFuDialog;)Lcom/unipay/beans/ShenzhouParamsBean;

    move-result-object v0

    iget-object v2, p0, Lcom/unipay/dialog/IlllIllIllIIIllI;->_$3:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/unipay/beans/ShenzhouParamsBean;->setCardNo(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unipay/dialog/IlllIllIllIIIllI;->_$1:Lcom/unipay/dialog/ShenzhouFuDialog;

    invoke-static {v0}, Lcom/unipay/dialog/ShenzhouFuDialog;->_$2(Lcom/unipay/dialog/ShenzhouFuDialog;)Lcom/unipay/beans/ShenzhouParamsBean;

    move-result-object v0

    iget-object v2, p0, Lcom/unipay/dialog/IlllIllIllIIIllI;->_$2:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/unipay/beans/ShenzhouParamsBean;->setCardPassWord(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unipay/dialog/IlllIllIllIIIllI;->_$1:Lcom/unipay/dialog/ShenzhouFuDialog;

    invoke-static {v0}, Lcom/unipay/dialog/ShenzhouFuDialog;->_$2(Lcom/unipay/dialog/ShenzhouFuDialog;)Lcom/unipay/beans/ShenzhouParamsBean;

    move-result-object v0

    iget-object v2, p0, Lcom/unipay/dialog/IlllIllIllIIIllI;->_$1:Lcom/unipay/dialog/ShenzhouFuDialog;

    invoke-static {v2}, Lcom/unipay/dialog/ShenzhouFuDialog;->_$1(Lcom/unipay/dialog/ShenzhouFuDialog;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/unipay/beans/ShenzhouParamsBean;->setPayMoney(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unipay/dialog/IlllIllIllIIIllI;->_$1:Lcom/unipay/dialog/ShenzhouFuDialog;

    invoke-static {v0}, Lcom/unipay/dialog/ShenzhouFuDialog;->_$3(Lcom/unipay/dialog/ShenzhouFuDialog;)Lcom/unipay/dialog/ShenzhouFuDialog$ShenzhouFuListener;

    move-result-object v0

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/unipay/dialog/IlllIllIllIIIllI;->_$1:Lcom/unipay/dialog/ShenzhouFuDialog;

    invoke-static {v3}, Lcom/unipay/dialog/ShenzhouFuDialog;->_$2(Lcom/unipay/dialog/ShenzhouFuDialog;)Lcom/unipay/beans/ShenzhouParamsBean;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/unipay/dialog/ShenzhouFuDialog$ShenzhouFuListener;->opearation(ILcom/unipay/beans/ShenzhouParamsBean;)V

    iget-object v0, p0, Lcom/unipay/dialog/IlllIllIllIIIllI;->_$1:Lcom/unipay/dialog/ShenzhouFuDialog;

    invoke-virtual {v0}, Lcom/unipay/dialog/ShenzhouFuDialog;->dismiss()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
