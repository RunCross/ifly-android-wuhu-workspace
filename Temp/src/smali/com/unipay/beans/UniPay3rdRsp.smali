.class public Lcom/unipay/beans/UniPay3rdRsp;
.super Ljava/lang/Object;


# instance fields
.field public HRet:Ljava/lang/String;

.field public MENO:Ljava/lang/String;

.field public appid:Ljava/lang/String;

.field public callbackURL:Ljava/lang/String;

.field public consumeCode:Ljava/lang/String;

.field public consumeName:Ljava/lang/String;

.field public consumePrice:Ljava/lang/String;

.field public cpId:Ljava/lang/String;

.field public desc:Ljava/lang/String;

.field public imsi:Ljava/lang/String;

.field public mdn:Ljava/lang/String;

.field public merchantId:Ljava/lang/String;

.field public merchantOrderId:Ljava/lang/String;

.field public merchantOrderTime:Ljava/lang/String;

.field public payType:Ljava/lang/String;

.field public returnURL:Ljava/lang/String;

.field public sign3:Ljava/lang/String;

.field public status:Ljava/lang/String;

.field public userid:Ljava/lang/String;

.field public woorderid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/unipay/beans/UniPay3rdRsp;->cpId:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unipay/beans/UniPay3rdRsp;->payType:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unipay/beans/UniPay3rdRsp;->appid:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unipay/beans/UniPay3rdRsp;->consumeCode:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unipay/beans/UniPay3rdRsp;->consumePrice:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unipay/beans/UniPay3rdRsp;->woorderid:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unipay/beans/UniPay3rdRsp;->returnURL:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unipay/beans/UniPay3rdRsp;->consumeName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unipay/beans/UniPay3rdRsp;->userid:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unipay/beans/UniPay3rdRsp;->imsi:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unipay/beans/UniPay3rdRsp;->mdn:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unipay/beans/UniPay3rdRsp;->HRet:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unipay/beans/UniPay3rdRsp;->status:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unipay/beans/UniPay3rdRsp;->desc:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unipay/beans/UniPay3rdRsp;->MENO:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unipay/beans/UniPay3rdRsp;->callbackURL:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unipay/beans/UniPay3rdRsp;->merchantId:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unipay/beans/UniPay3rdRsp;->merchantOrderId:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unipay/beans/UniPay3rdRsp;->merchantOrderTime:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unipay/beans/UniPay3rdRsp;->sign3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAppid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unipay/beans/UniPay3rdRsp;->appid:Ljava/lang/String;

    return-object v0
.end method

.method public getCallbackURL()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unipay/beans/UniPay3rdRsp;->callbackURL:Ljava/lang/String;

    return-object v0
.end method

.method public getConsumeCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unipay/beans/UniPay3rdRsp;->consumeCode:Ljava/lang/String;

    return-object v0
.end method

.method public getConsumeName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unipay/beans/UniPay3rdRsp;->consumeName:Ljava/lang/String;

    return-object v0
.end method

.method public getConsumePrice()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unipay/beans/UniPay3rdRsp;->consumePrice:Ljava/lang/String;

    return-object v0
.end method

.method public getCpId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unipay/beans/UniPay3rdRsp;->cpId:Ljava/lang/String;

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unipay/beans/UniPay3rdRsp;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getHRet()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unipay/beans/UniPay3rdRsp;->HRet:Ljava/lang/String;

    return-object v0
.end method

.method public getImsi()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unipay/beans/UniPay3rdRsp;->imsi:Ljava/lang/String;

    return-object v0
.end method

.method public getMENO()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unipay/beans/UniPay3rdRsp;->MENO:Ljava/lang/String;

    return-object v0
.end method

.method public getMdn()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unipay/beans/UniPay3rdRsp;->mdn:Ljava/lang/String;

    return-object v0
.end method

.method public getMerchantId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unipay/beans/UniPay3rdRsp;->merchantId:Ljava/lang/String;

    return-object v0
.end method

.method public getMerchantOrderId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unipay/beans/UniPay3rdRsp;->merchantOrderId:Ljava/lang/String;

    return-object v0
.end method

.method public getMerchantOrderTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unipay/beans/UniPay3rdRsp;->merchantOrderTime:Ljava/lang/String;

    return-object v0
.end method

.method public getPayType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unipay/beans/UniPay3rdRsp;->payType:Ljava/lang/String;

    return-object v0
.end method

.method public getReturnURL()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unipay/beans/UniPay3rdRsp;->returnURL:Ljava/lang/String;

    return-object v0
.end method

.method public getSign3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unipay/beans/UniPay3rdRsp;->sign3:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unipay/beans/UniPay3rdRsp;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getUserid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unipay/beans/UniPay3rdRsp;->userid:Ljava/lang/String;

    return-object v0
.end method

.method public getWoorderid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unipay/beans/UniPay3rdRsp;->woorderid:Ljava/lang/String;

    return-object v0
.end method

.method public setAppid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/beans/UniPay3rdRsp;->appid:Ljava/lang/String;

    return-void
.end method

.method public setCallbackURL(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/beans/UniPay3rdRsp;->callbackURL:Ljava/lang/String;

    return-void
.end method

.method public setConsumeCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/beans/UniPay3rdRsp;->consumeCode:Ljava/lang/String;

    return-void
.end method

.method public setConsumeName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/beans/UniPay3rdRsp;->consumeName:Ljava/lang/String;

    return-void
.end method

.method public setConsumePrice(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/beans/UniPay3rdRsp;->consumePrice:Ljava/lang/String;

    return-void
.end method

.method public setCpId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/beans/UniPay3rdRsp;->cpId:Ljava/lang/String;

    return-void
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/beans/UniPay3rdRsp;->desc:Ljava/lang/String;

    return-void
.end method

.method public setHRet(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/beans/UniPay3rdRsp;->HRet:Ljava/lang/String;

    return-void
.end method

.method public setImsi(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/beans/UniPay3rdRsp;->imsi:Ljava/lang/String;

    return-void
.end method

.method public setMENO(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/beans/UniPay3rdRsp;->MENO:Ljava/lang/String;

    return-void
.end method

.method public setMdn(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/beans/UniPay3rdRsp;->mdn:Ljava/lang/String;

    return-void
.end method

.method public setMerchantId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/beans/UniPay3rdRsp;->merchantId:Ljava/lang/String;

    return-void
.end method

.method public setMerchantOrderId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/beans/UniPay3rdRsp;->merchantOrderId:Ljava/lang/String;

    return-void
.end method

.method public setMerchantOrderTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/beans/UniPay3rdRsp;->merchantOrderTime:Ljava/lang/String;

    return-void
.end method

.method public setPayType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/beans/UniPay3rdRsp;->payType:Ljava/lang/String;

    return-void
.end method

.method public setReturnURL(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/beans/UniPay3rdRsp;->returnURL:Ljava/lang/String;

    return-void
.end method

.method public setSign3(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/beans/UniPay3rdRsp;->sign3:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/beans/UniPay3rdRsp;->status:Ljava/lang/String;

    return-void
.end method

.method public setUserid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/beans/UniPay3rdRsp;->userid:Ljava/lang/String;

    return-void
.end method

.method public setWoorderid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/beans/UniPay3rdRsp;->woorderid:Ljava/lang/String;

    return-void
.end method
