.class public Lcom/unipay/beans/GetMdnRsp;
.super Ljava/lang/Object;


# instance fields
.field public imei:Ljava/lang/String;

.field public imsi:Ljava/lang/String;

.field public mdn:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/unipay/beans/GetMdnRsp;->imsi:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unipay/beans/GetMdnRsp;->imei:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unipay/beans/GetMdnRsp;->mdn:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getImei()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unipay/beans/GetMdnRsp;->imei:Ljava/lang/String;

    return-object v0
.end method

.method public getImsi()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unipay/beans/GetMdnRsp;->imsi:Ljava/lang/String;

    return-object v0
.end method

.method public getMdn()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unipay/beans/GetMdnRsp;->mdn:Ljava/lang/String;

    return-object v0
.end method

.method public setImei(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/beans/GetMdnRsp;->imei:Ljava/lang/String;

    return-void
.end method

.method public setImsi(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/beans/GetMdnRsp;->imsi:Ljava/lang/String;

    return-void
.end method

.method public setMdn(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/beans/GetMdnRsp;->mdn:Ljava/lang/String;

    return-void
.end method
