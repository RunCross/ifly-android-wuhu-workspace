.class public Lcom/unipay/beans/PayviaVACRsp;
.super Ljava/lang/Object;


# instance fields
.field public HRet:Ljava/lang/String;

.field public MENO:Ljava/lang/String;

.field public balance:Ljava/lang/String;

.field public consumeCode:Ljava/lang/String;

.field public cpId:Ljava/lang/String;

.field public encrypt:Ljava/lang/String;

.field public imsi:Ljava/lang/String;

.field public payType:Ljava/lang/String;

.field public status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/unipay/beans/PayviaVACRsp;->cpId:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unipay/beans/PayviaVACRsp;->consumeCode:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unipay/beans/PayviaVACRsp;->payType:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unipay/beans/PayviaVACRsp;->imsi:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unipay/beans/PayviaVACRsp;->HRet:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unipay/beans/PayviaVACRsp;->status:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unipay/beans/PayviaVACRsp;->balance:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unipay/beans/PayviaVACRsp;->encrypt:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unipay/beans/PayviaVACRsp;->MENO:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBalance()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unipay/beans/PayviaVACRsp;->balance:Ljava/lang/String;

    return-object v0
.end method

.method public getConsumeCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unipay/beans/PayviaVACRsp;->consumeCode:Ljava/lang/String;

    return-object v0
.end method

.method public getCpId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unipay/beans/PayviaVACRsp;->cpId:Ljava/lang/String;

    return-object v0
.end method

.method public getEncrypt()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unipay/beans/PayviaVACRsp;->encrypt:Ljava/lang/String;

    return-object v0
.end method

.method public getHRet()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unipay/beans/PayviaVACRsp;->HRet:Ljava/lang/String;

    return-object v0
.end method

.method public getImsi()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unipay/beans/PayviaVACRsp;->imsi:Ljava/lang/String;

    return-object v0
.end method

.method public getMENO()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unipay/beans/PayviaVACRsp;->MENO:Ljava/lang/String;

    return-object v0
.end method

.method public getPayType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unipay/beans/PayviaVACRsp;->payType:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unipay/beans/PayviaVACRsp;->status:Ljava/lang/String;

    return-object v0
.end method

.method public setBalance(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/beans/PayviaVACRsp;->balance:Ljava/lang/String;

    return-void
.end method

.method public setConsumeCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/beans/PayviaVACRsp;->consumeCode:Ljava/lang/String;

    return-void
.end method

.method public setCpId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/beans/PayviaVACRsp;->cpId:Ljava/lang/String;

    return-void
.end method

.method public setEncrypt(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/beans/PayviaVACRsp;->encrypt:Ljava/lang/String;

    return-void
.end method

.method public setHRet(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/beans/PayviaVACRsp;->HRet:Ljava/lang/String;

    return-void
.end method

.method public setImsi(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/beans/PayviaVACRsp;->imsi:Ljava/lang/String;

    return-void
.end method

.method public setMENO(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/beans/PayviaVACRsp;->MENO:Ljava/lang/String;

    return-void
.end method

.method public setPayType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/beans/PayviaVACRsp;->payType:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/beans/PayviaVACRsp;->status:Ljava/lang/String;

    return-void
.end method
