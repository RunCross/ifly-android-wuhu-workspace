.class Lcom/unipay/dialog/lIllIlllIIIIllll;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic _$1:Lcom/unipay/dialog/PUnipayEnsureOneDialog;

.field final synthetic _$2:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/unipay/dialog/PUnipayEnsureOneDialog;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/dialog/lIllIlllIIIIllll;->_$1:Lcom/unipay/dialog/PUnipayEnsureOneDialog;

    iput-object p2, p0, Lcom/unipay/dialog/lIllIlllIIIIllll;->_$2:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/unipay/dialog/lIllIlllIIIIllll;->_$2:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    iget-object v0, p0, Lcom/unipay/dialog/lIllIlllIIIIllll;->_$1:Lcom/unipay/dialog/PUnipayEnsureOneDialog;

    invoke-static {v0}, Lcom/unipay/dialog/PUnipayEnsureOneDialog;->_$2(Lcom/unipay/dialog/PUnipayEnsureOneDialog;)Lcom/unipay/dialog/PUnipayEnsureOneDialog$PUniPayOneSureListener;

    move-result-object v0

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lcom/unipay/dialog/PUnipayEnsureOneDialog$PUniPayOneSureListener;->OneSure(I)V

    iget-object v0, p0, Lcom/unipay/dialog/lIllIlllIIIIllll;->_$1:Lcom/unipay/dialog/PUnipayEnsureOneDialog;

    invoke-virtual {v0}, Lcom/unipay/dialog/PUnipayEnsureOneDialog;->dismiss()V

    return-void
.end method
