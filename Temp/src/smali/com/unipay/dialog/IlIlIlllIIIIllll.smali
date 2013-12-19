.class Lcom/unipay/dialog/IlIlIlllIIIIllll;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic _$1:Lcom/unipay/dialog/PUnipayEnsureOneDialog;

.field final synthetic _$2:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/unipay/dialog/PUnipayEnsureOneDialog;Landroid/widget/Button;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/dialog/IlIlIlllIIIIllll;->_$1:Lcom/unipay/dialog/PUnipayEnsureOneDialog;

    iput-object p2, p0, Lcom/unipay/dialog/IlIlIlllIIIIllll;->_$2:Landroid/widget/Button;

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
    iget-object v0, p0, Lcom/unipay/dialog/IlIlIlllIIIIllll;->_$2:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/unipay/dialog/IlIlIlllIIIIllll;->_$1:Lcom/unipay/dialog/PUnipayEnsureOneDialog;

    invoke-static {v0}, Lcom/unipay/dialog/PUnipayEnsureOneDialog;->_$2(Lcom/unipay/dialog/PUnipayEnsureOneDialog;)Lcom/unipay/dialog/PUnipayEnsureOneDialog$PUniPayOneSureListener;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/unipay/dialog/PUnipayEnsureOneDialog$PUniPayOneSureListener;->OneSure(I)V

    iget-object v0, p0, Lcom/unipay/dialog/IlIlIlllIIIIllll;->_$1:Lcom/unipay/dialog/PUnipayEnsureOneDialog;

    invoke-virtual {v0}, Lcom/unipay/dialog/PUnipayEnsureOneDialog;->dismiss()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
