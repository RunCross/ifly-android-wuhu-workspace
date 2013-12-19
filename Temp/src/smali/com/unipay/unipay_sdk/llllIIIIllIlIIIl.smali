.class Lcom/unipay/unipay_sdk/llllIIIIllIlIIIl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic _$1:Lcom/unipay/unipay_sdk/IlIIIIIllIIIlIIl;


# direct methods
.method constructor <init>(Lcom/unipay/unipay_sdk/IlIIIIIllIIIlIIl;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/unipay_sdk/llllIIIIllIlIIIl;->_$1:Lcom/unipay/unipay_sdk/IlIIIIIllIIIlIIl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/unipay/unipay_sdk/llllIIIIllIlIIIl;->_$1:Lcom/unipay/unipay_sdk/IlIIIIIllIIIlIIl;

    iget-object v0, v0, Lcom/unipay/unipay_sdk/IlIIIIIllIIIlIIl;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    const-string v1, "\u652f\u4ed8\u5b9durl\u83b7\u53d6\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/unipay/unipay_sdk/UniPay;->_$8(Lcom/unipay/unipay_sdk/UniPay;Ljava/lang/String;)V

    return-void
.end method
