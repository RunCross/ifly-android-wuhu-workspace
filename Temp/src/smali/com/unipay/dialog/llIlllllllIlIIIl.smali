.class Lcom/unipay/dialog/llIlllllllIlIIIl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic _$1:Lcom/unipay/dialog/IIIIllIlIIlIllIl;


# direct methods
.method constructor <init>(Lcom/unipay/dialog/IIIIllIlIIlIllIl;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/dialog/llIlllllllIlIIIl;->_$1:Lcom/unipay/dialog/IIIIllIlIIlIllIl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/unipay/dialog/llIlllllllIlIIIl;->_$1:Lcom/unipay/dialog/IIIIllIlIIlIllIl;

    iget-object v0, v0, Lcom/unipay/dialog/IIIIllIlIIlIllIl;->_$1:Lcom/unipay/dialog/PExchangeCodeDialog;

    invoke-static {v0}, Lcom/unipay/dialog/PExchangeCodeDialog;->_$2(Lcom/unipay/dialog/PExchangeCodeDialog;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u8bf7\u8f93\u5165\u5151\u6362\u7801"

    const/16 v2, 0x3e8

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
