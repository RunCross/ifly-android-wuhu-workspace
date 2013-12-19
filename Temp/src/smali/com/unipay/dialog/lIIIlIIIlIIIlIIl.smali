.class Lcom/unipay/dialog/lIIIlIIIlIIIlIIl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic _$1:Lcom/unipay/dialog/llIlIllIlIIlllll;


# direct methods
.method constructor <init>(Lcom/unipay/dialog/llIlIllIlIIlllll;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/dialog/lIIIlIIIlIIIlIIl;->_$1:Lcom/unipay/dialog/llIlIllIlIIlllll;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/unipay/dialog/lIIIlIIIlIIIlIIl;->_$1:Lcom/unipay/dialog/llIlIllIlIIlllll;

    iget-object v0, v0, Lcom/unipay/dialog/llIlIllIlIIlllll;->_$1:Lcom/unipay/dialog/LoadDialog;

    invoke-static {v0}, Lcom/unipay/dialog/LoadDialog;->_$5(Lcom/unipay/dialog/LoadDialog;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u83b7\u53d6\u6570\u636e\u5931\u8d25!"

    const/16 v2, 0x3e8

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
