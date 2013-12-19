.class public Lcom/unipay/beans/LoginRsp;
.super Ljava/lang/Object;


# instance fields
.field private _$1:I

.field private _$2:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/unipay/beans/LoginRsp;->_$2:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/unipay/beans/LoginRsp;->_$1:I

    iput-object p1, p0, Lcom/unipay/beans/LoginRsp;->_$2:Ljava/lang/String;

    iput p2, p0, Lcom/unipay/beans/LoginRsp;->_$1:I

    return-void
.end method


# virtual methods
.method public getPhoneNum()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unipay/beans/LoginRsp;->_$2:Ljava/lang/String;

    return-object v0
.end method

.method public getUsertype()I
    .locals 1

    iget v0, p0, Lcom/unipay/beans/LoginRsp;->_$1:I

    return v0
.end method

.method public setPhoneNum(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/beans/LoginRsp;->_$2:Ljava/lang/String;

    return-void
.end method

.method public setUsertype(I)V
    .locals 0

    iput p1, p0, Lcom/unipay/beans/LoginRsp;->_$1:I

    return-void
.end method
