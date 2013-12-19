.class Lcom/unipay/Alipay/lIlIIlIIIllllIll;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic _$1:Lcom/unipay/Alipay/MobileSecurePayHelper;

.field final synthetic _$2:Lcom/unipay/Alipay/MobileSecurePayHelper$DialogListener;


# direct methods
.method constructor <init>(Lcom/unipay/Alipay/MobileSecurePayHelper;Lcom/unipay/Alipay/MobileSecurePayHelper$DialogListener;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/Alipay/lIlIIlIIIllllIll;->_$1:Lcom/unipay/Alipay/MobileSecurePayHelper;

    iput-object p2, p0, Lcom/unipay/Alipay/lIlIIlIIIllllIll;->_$2:Lcom/unipay/Alipay/MobileSecurePayHelper$DialogListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/unipay/Alipay/lIlIIlIIIllllIll;->_$2:Lcom/unipay/Alipay/MobileSecurePayHelper$DialogListener;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/unipay/Alipay/MobileSecurePayHelper$DialogListener;->buttonSelected(I)V

    return-void
.end method
