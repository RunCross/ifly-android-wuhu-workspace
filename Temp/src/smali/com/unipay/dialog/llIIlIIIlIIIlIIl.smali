.class Lcom/unipay/dialog/llIIlIIIlIIIlIIl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic _$1:Lcom/unipay/dialog/llIlIllIlIIlllll;


# direct methods
.method constructor <init>(Lcom/unipay/dialog/llIlIllIlIIlllll;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/dialog/llIIlIIIlIIIlIIl;->_$1:Lcom/unipay/dialog/llIlIllIlIIlllll;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/unipay/dialog/llIIlIIIlIIIlIIl;->_$1:Lcom/unipay/dialog/llIlIllIlIIlllll;

    iget-object v0, v0, Lcom/unipay/dialog/llIlIllIlIIlllll;->_$1:Lcom/unipay/dialog/LoadDialog;

    invoke-static {v0}, Lcom/unipay/dialog/LoadDialog;->_$3(Lcom/unipay/dialog/LoadDialog;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/unipay/dialog/llIIlIIIlIIIlIIl;->_$1:Lcom/unipay/dialog/llIlIllIlIIlllll;

    iget-object v0, v0, Lcom/unipay/dialog/llIlIllIlIIlllll;->_$1:Lcom/unipay/dialog/LoadDialog;

    invoke-static {v0}, Lcom/unipay/dialog/LoadDialog;->_$5(Lcom/unipay/dialog/LoadDialog;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u5bc6\u7801\u5df2\u4e0b\u53d1"

    const/16 v2, 0x3e8

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
