.class Lcom/unipay/dialog/lIIIIIlIlllIllII;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic _$1:Lcom/unipay/dialog/llIlllllllIlIIll;


# direct methods
.method constructor <init>(Lcom/unipay/dialog/llIlllllllIlIIll;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/dialog/lIIIIIlIlllIllII;->_$1:Lcom/unipay/dialog/llIlllllllIlIIll;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/unipay/dialog/lIIIIIlIlllIllII;->_$1:Lcom/unipay/dialog/llIlllllllIlIIll;

    iget-object v0, v0, Lcom/unipay/dialog/llIlllllllIlIIll;->_$1:Lcom/unipay/dialog/PersonalMessage;

    invoke-static {v0}, Lcom/unipay/dialog/PersonalMessage;->_$7(Lcom/unipay/dialog/PersonalMessage;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u83b7\u53d6\u6570\u636e\u5931\u8d25!"

    const/16 v2, 0x3e8

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
