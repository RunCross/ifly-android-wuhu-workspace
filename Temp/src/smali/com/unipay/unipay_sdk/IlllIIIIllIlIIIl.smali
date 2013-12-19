.class Lcom/unipay/unipay_sdk/IlllIIIIllIlIIIl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic _$1:Lcom/unipay/unipay_sdk/IlIIIIIllIIIlIIl;


# direct methods
.method constructor <init>(Lcom/unipay/unipay_sdk/IlIIIIIllIIIlIIl;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/unipay_sdk/IlllIIIIllIlIIIl;->_$1:Lcom/unipay/unipay_sdk/IlIIIIIllIIIlIIl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/unipay/unipay_sdk/IlllIIIIllIlIIIl;->_$1:Lcom/unipay/unipay_sdk/IlIIIIIllIIIlIIl;

    iget-object v0, v0, Lcom/unipay/unipay_sdk/IlIIIIIllIIIlIIl;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    const-string v1, "\u8bf7\u6c42\u670d\u52a1\u5668\u5931\u8d25..."

    invoke-static {v0, v1}, Lcom/unipay/unipay_sdk/UniPay;->_$8(Lcom/unipay/unipay_sdk/UniPay;Ljava/lang/String;)V

    return-void
.end method
