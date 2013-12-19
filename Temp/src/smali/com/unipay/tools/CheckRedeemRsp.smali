.class public Lcom/unipay/tools/CheckRedeemRsp;
.super Ljava/lang/Object;


# instance fields
.field public CheckResult:Ljava/lang/String;

.field public HRet:Ljava/lang/String;

.field public MENO:Ljava/lang/String;

.field public RedeemCode:Ljava/lang/String;

.field public mdn:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCheckResult()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unipay/tools/CheckRedeemRsp;->CheckResult:Ljava/lang/String;

    return-object v0
.end method

.method public getHRet()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unipay/tools/CheckRedeemRsp;->HRet:Ljava/lang/String;

    return-object v0
.end method

.method public getMENO()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unipay/tools/CheckRedeemRsp;->MENO:Ljava/lang/String;

    return-object v0
.end method

.method public getMdn()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unipay/tools/CheckRedeemRsp;->mdn:Ljava/lang/String;

    return-object v0
.end method

.method public getRedeemCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unipay/tools/CheckRedeemRsp;->RedeemCode:Ljava/lang/String;

    return-object v0
.end method

.method public setCheckResult(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/tools/CheckRedeemRsp;->CheckResult:Ljava/lang/String;

    return-void
.end method

.method public setHRet(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/tools/CheckRedeemRsp;->HRet:Ljava/lang/String;

    return-void
.end method

.method public setMENO(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/tools/CheckRedeemRsp;->MENO:Ljava/lang/String;

    return-void
.end method

.method public setMdn(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/tools/CheckRedeemRsp;->mdn:Ljava/lang/String;

    return-void
.end method

.method public setRedeemCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/tools/CheckRedeemRsp;->RedeemCode:Ljava/lang/String;

    return-void
.end method
