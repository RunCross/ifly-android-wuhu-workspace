.class Lcom/unipay/unipay_sdk/IllIIIIllIllllII;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unipay/unipay_sdk/UniPay$UniPayCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unipay/unipay_sdk/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UnipayReuslt"
.end annotation


# instance fields
.field final synthetic _$1:Lcom/unipay/unipay_sdk/MainActivity;


# direct methods
.method constructor <init>(Lcom/unipay/unipay_sdk/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/unipay_sdk/IllIIIIllIllllII;->_$1:Lcom/unipay/unipay_sdk/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public PayResult(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/unipay/unipay_sdk/IllIIIIllIllllII;->_$1:Lcom/unipay/unipay_sdk/MainActivity;

    new-instance v1, Lcom/unipay/unipay_sdk/IIIIlllllIIlIlIl;

    invoke-direct {v1, p0, p1, p2}, Lcom/unipay/unipay_sdk/IIIIlllllIIlIlIl;-><init>(Lcom/unipay/unipay_sdk/IllIIIIllIllllII;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/unipay/unipay_sdk/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
