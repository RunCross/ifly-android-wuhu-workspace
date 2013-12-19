.class public Lcom/unipay/beans/RegisterBean;
.super Ljava/lang/Object;


# instance fields
.field private _$1:I

.field private _$2:Ljava/lang/String;

.field private _$3:I


# direct methods
.method public constructor <init>(ILjava/lang/String;I)V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/unipay/beans/RegisterBean;->_$3:I

    const-string v0, ""

    iput-object v0, p0, Lcom/unipay/beans/RegisterBean;->_$2:Ljava/lang/String;

    iput v1, p0, Lcom/unipay/beans/RegisterBean;->_$1:I

    iput p1, p0, Lcom/unipay/beans/RegisterBean;->_$3:I

    iput-object p2, p0, Lcom/unipay/beans/RegisterBean;->_$2:Ljava/lang/String;

    iput p3, p0, Lcom/unipay/beans/RegisterBean;->_$1:I

    return-void
.end method


# virtual methods
.method public getDesc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unipay/beans/RegisterBean;->_$2:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()I
    .locals 1

    iget v0, p0, Lcom/unipay/beans/RegisterBean;->_$3:I

    return v0
.end method

.method public getUsertype()I
    .locals 1

    iget v0, p0, Lcom/unipay/beans/RegisterBean;->_$1:I

    return v0
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/beans/RegisterBean;->_$2:Ljava/lang/String;

    return-void
.end method

.method public setResult(I)V
    .locals 0

    iput p1, p0, Lcom/unipay/beans/RegisterBean;->_$3:I

    return-void
.end method

.method public setUsertype(I)V
    .locals 0

    iput p1, p0, Lcom/unipay/beans/RegisterBean;->_$1:I

    return-void
.end method
