.class Lcom/unipay/dialog/IIIIllIIIIlIIlIl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic _$1:Lcom/unipay/dialog/IllIIIIlIllIIIII;


# direct methods
.method constructor <init>(Lcom/unipay/dialog/IllIIIIlIllIIIII;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/dialog/IIIIllIIIIlIIlIl;->_$1:Lcom/unipay/dialog/IllIIIIlIllIIIII;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    invoke-static {}, Lcom/unipay/unipay_sdk/UniPay;->getInstance()Lcom/unipay/unipay_sdk/UniPay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unipay/unipay_sdk/UniPay;->DismissProgressDialog()V

    return-void
.end method
