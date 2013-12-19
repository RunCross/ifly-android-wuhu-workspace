.class public Lcom/unipay/beans/PayValueBean;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private _$1:Ljava/lang/String;

.field private _$2:I

.field private _$3:Ljava/lang/String;

.field private _$4:Ljava/lang/String;

.field private _$5:Ljava/lang/String;

.field private _$6:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/unipay/beans/PayValueBean;->_$6:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unipay/beans/PayValueBean;->_$5:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unipay/beans/PayValueBean;->_$4:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unipay/beans/PayValueBean;->_$3:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/unipay/beans/PayValueBean;->_$2:I

    const-string v0, ""

    iput-object v0, p0, Lcom/unipay/beans/PayValueBean;->_$1:Ljava/lang/String;

    iput-object p1, p0, Lcom/unipay/beans/PayValueBean;->_$5:Ljava/lang/String;

    iput-object p2, p0, Lcom/unipay/beans/PayValueBean;->_$4:Ljava/lang/String;

    iput-object p3, p0, Lcom/unipay/beans/PayValueBean;->_$3:Ljava/lang/String;

    iput p4, p0, Lcom/unipay/beans/PayValueBean;->_$2:I

    iput-object p5, p0, Lcom/unipay/beans/PayValueBean;->_$1:Ljava/lang/String;

    const-string v0, "2"

    iput-object v0, p0, Lcom/unipay/beans/PayValueBean;->_$6:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCustomCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unipay/beans/PayValueBean;->_$4:Ljava/lang/String;

    return-object v0
.end method

.method public getMoney()I
    .locals 1

    iget v0, p0, Lcom/unipay/beans/PayValueBean;->_$2:I

    return v0
.end method

.method public getOrderid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unipay/beans/PayValueBean;->_$1:Ljava/lang/String;

    return-object v0
.end method

.method public getProps()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unipay/beans/PayValueBean;->_$3:Ljava/lang/String;

    return-object v0
.end method

.method public getVacCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unipay/beans/PayValueBean;->_$5:Ljava/lang/String;

    return-object v0
.end method

.method public getVac_mode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unipay/beans/PayValueBean;->_$6:Ljava/lang/String;

    return-object v0
.end method

.method public setCustomCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/beans/PayValueBean;->_$4:Ljava/lang/String;

    return-void
.end method

.method public setMoney(I)V
    .locals 0

    iput p1, p0, Lcom/unipay/beans/PayValueBean;->_$2:I

    return-void
.end method

.method public setOrderid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/beans/PayValueBean;->_$1:Ljava/lang/String;

    return-void
.end method

.method public setProps(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/beans/PayValueBean;->_$3:Ljava/lang/String;

    return-void
.end method

.method public setVacCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/beans/PayValueBean;->_$5:Ljava/lang/String;

    return-void
.end method

.method public setVac_mode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/beans/PayValueBean;->_$6:Ljava/lang/String;

    return-void
.end method
