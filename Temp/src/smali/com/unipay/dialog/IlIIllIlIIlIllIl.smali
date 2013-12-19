.class Lcom/unipay/dialog/IlIIllIlIIlIllIl;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic _$1:Lcom/unipay/dialog/PExchangeCodeDialog;

.field final synthetic _$2:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/unipay/dialog/PExchangeCodeDialog;Landroid/widget/Button;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/dialog/IlIIllIlIIlIllIl;->_$1:Lcom/unipay/dialog/PExchangeCodeDialog;

    iput-object p2, p0, Lcom/unipay/dialog/IlIIllIlIIlIllIl;->_$2:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v2

    :pswitch_1
    iget-object v0, p0, Lcom/unipay/dialog/IlIIllIlIIlIllIl;->_$2:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setClickable(Z)V

    iget-object v0, p0, Lcom/unipay/dialog/IlIIllIlIIlIllIl;->_$1:Lcom/unipay/dialog/PExchangeCodeDialog;

    invoke-static {v0}, Lcom/unipay/dialog/PExchangeCodeDialog;->_$1(Lcom/unipay/dialog/PExchangeCodeDialog;)Lcom/unipay/dialog/ExchangeCodeDialog$ExchangeCodeListener;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1, v2}, Lcom/unipay/dialog/ExchangeCodeDialog$ExchangeCodeListener;->OneSure(II)V

    iget-object v0, p0, Lcom/unipay/dialog/IlIIllIlIIlIllIl;->_$1:Lcom/unipay/dialog/PExchangeCodeDialog;

    invoke-virtual {v0}, Lcom/unipay/dialog/PExchangeCodeDialog;->dismiss()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
