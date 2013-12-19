.class public Lcom/unipay/beans/PhoneMs;
.super Ljava/lang/Object;


# instance fields
.field public HRet:I

.field public Passwd:Ljava/lang/String;

.field public Usertype:I

.field public desc:Ljava/lang/String;

.field public imsi:Ljava/lang/String;

.field public result:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/unipay/beans/PhoneMs;->result:I

    const-string v0, ""

    iput-object v0, p0, Lcom/unipay/beans/PhoneMs;->desc:Ljava/lang/String;

    iput v1, p0, Lcom/unipay/beans/PhoneMs;->HRet:I

    const-string v0, ""

    iput-object v0, p0, Lcom/unipay/beans/PhoneMs;->imsi:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unipay/beans/PhoneMs;->Passwd:Ljava/lang/String;

    iput v1, p0, Lcom/unipay/beans/PhoneMs;->Usertype:I

    return-void
.end method


# virtual methods
.method public getDesc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unipay/beans/PhoneMs;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getHRet()I
    .locals 1

    iget v0, p0, Lcom/unipay/beans/PhoneMs;->HRet:I

    return v0
.end method

.method public getImsi()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unipay/beans/PhoneMs;->imsi:Ljava/lang/String;

    return-object v0
.end method

.method public getPasswd()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unipay/beans/PhoneMs;->Passwd:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()I
    .locals 1

    iget v0, p0, Lcom/unipay/beans/PhoneMs;->result:I

    return v0
.end method

.method public getUsertype()I
    .locals 1

    iget v0, p0, Lcom/unipay/beans/PhoneMs;->Usertype:I

    return v0
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/beans/PhoneMs;->desc:Ljava/lang/String;

    return-void
.end method

.method public setHRet(I)V
    .locals 0

    iput p1, p0, Lcom/unipay/beans/PhoneMs;->HRet:I

    return-void
.end method

.method public setImsi(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/beans/PhoneMs;->imsi:Ljava/lang/String;

    return-void
.end method

.method public setPasswd(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/beans/PhoneMs;->Passwd:Ljava/lang/String;

    return-void
.end method

.method public setResult(I)V
    .locals 0

    iput p1, p0, Lcom/unipay/beans/PhoneMs;->result:I

    return-void
.end method

.method public setUsertype(I)V
    .locals 0

    iput p1, p0, Lcom/unipay/beans/PhoneMs;->Usertype:I

    return-void
.end method
