.class Lcom/unipay/unipay_sdk/IIIIlllllIIlIlIl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic _$1:Lcom/unipay/unipay_sdk/IllIIIIllIllllII;

.field final synthetic _$2:Ljava/lang/String;

.field final synthetic _$3:I


# direct methods
.method constructor <init>(Lcom/unipay/unipay_sdk/IllIIIIllIllllII;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/unipay_sdk/IIIIlllllIIlIlIl;->_$1:Lcom/unipay/unipay_sdk/IllIIIIllIllllII;

    iput p2, p0, Lcom/unipay/unipay_sdk/IIIIlllllIIlIlIl;->_$3:I

    iput-object p3, p0, Lcom/unipay/unipay_sdk/IIIIlllllIIlIlIl;->_$2:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/16 v3, 0x3e8

    iget v0, p0, Lcom/unipay/unipay_sdk/IIIIlllllIIlIlIl;->_$3:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/unipay/unipay_sdk/IIIIlllllIIlIlIl;->_$1:Lcom/unipay/unipay_sdk/IllIIIIllIllllII;

    iget-object v0, v0, Lcom/unipay/unipay_sdk/IllIIIIllIllllII;->_$1:Lcom/unipay/unipay_sdk/MainActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u5355\u673a\u6e38\u620f"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/unipay/unipay_sdk/IIIIlllllIIlIlIl;->_$2:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/unipay/unipay_sdk/IIIIlllllIIlIlIl;->_$1:Lcom/unipay/unipay_sdk/IllIIIIllIllllII;

    iget-object v0, v0, Lcom/unipay/unipay_sdk/IllIIIIllIllllII;->_$1:Lcom/unipay/unipay_sdk/MainActivity;

    iget-object v1, p0, Lcom/unipay/unipay_sdk/IIIIlllllIIlIlIl;->_$2:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
