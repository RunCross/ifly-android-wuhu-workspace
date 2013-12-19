.class public Lcom/unipay/beans/upomp;
.super Ljava/lang/Object;


# instance fields
.field public merchantId:Ljava/lang/String;

.field public merchantOrderId:Ljava/lang/String;

.field public merchantOrderTime:Ljava/lang/String;

.field public respCode:Ljava/lang/String;

.field public respDesc:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/unipay/beans/upomp;->merchantId:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unipay/beans/upomp;->merchantOrderId:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unipay/beans/upomp;->merchantOrderTime:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unipay/beans/upomp;->respCode:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unipay/beans/upomp;->respDesc:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getMerchantId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unipay/beans/upomp;->merchantId:Ljava/lang/String;

    return-object v0
.end method

.method public getMerchantOrderId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unipay/beans/upomp;->merchantOrderId:Ljava/lang/String;

    return-object v0
.end method

.method public getMerchantOrderTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unipay/beans/upomp;->merchantOrderTime:Ljava/lang/String;

    return-object v0
.end method

.method public getRespCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unipay/beans/upomp;->respCode:Ljava/lang/String;

    return-object v0
.end method

.method public getRespDesc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unipay/beans/upomp;->respDesc:Ljava/lang/String;

    return-object v0
.end method

.method public setMerchantId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/beans/upomp;->merchantId:Ljava/lang/String;

    return-void
.end method

.method public setMerchantOrderId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/beans/upomp;->merchantOrderId:Ljava/lang/String;

    return-void
.end method

.method public setMerchantOrderTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/beans/upomp;->merchantOrderTime:Ljava/lang/String;

    return-void
.end method

.method public setRespCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/beans/upomp;->respCode:Ljava/lang/String;

    return-void
.end method

.method public setRespDesc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/beans/upomp;->respDesc:Ljava/lang/String;

    return-void
.end method
