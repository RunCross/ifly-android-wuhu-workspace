.class public Lcom/unipay/errormsg/ErrorMsgBean;
.super Ljava/lang/Object;


# instance fields
.field private _$1:Ljava/lang/String;

.field private _$2:Ljava/lang/String;

.field private _$3:Ljava/lang/String;

.field private _$4:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/unipay/errormsg/ErrorMsgBean;->_$4:I

    const-string v0, ""

    iput-object v0, p0, Lcom/unipay/errormsg/ErrorMsgBean;->_$3:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unipay/errormsg/ErrorMsgBean;->_$2:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unipay/errormsg/ErrorMsgBean;->_$1:Ljava/lang/String;

    iput p1, p0, Lcom/unipay/errormsg/ErrorMsgBean;->_$4:I

    iput-object p2, p0, Lcom/unipay/errormsg/ErrorMsgBean;->_$3:Ljava/lang/String;

    iput-object p3, p0, Lcom/unipay/errormsg/ErrorMsgBean;->_$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/unipay/errormsg/ErrorMsgBean;->_$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAdv()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unipay/errormsg/ErrorMsgBean;->_$1:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()I
    .locals 1

    iget v0, p0, Lcom/unipay/errormsg/ErrorMsgBean;->_$4:I

    return v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unipay/errormsg/ErrorMsgBean;->_$3:Ljava/lang/String;

    return-object v0
.end method

.method public getNotice()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unipay/errormsg/ErrorMsgBean;->_$2:Ljava/lang/String;

    return-object v0
.end method

.method public setAdv(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/errormsg/ErrorMsgBean;->_$1:Ljava/lang/String;

    return-void
.end method

.method public setKey(I)V
    .locals 0

    iput p1, p0, Lcom/unipay/errormsg/ErrorMsgBean;->_$4:I

    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/errormsg/ErrorMsgBean;->_$3:Ljava/lang/String;

    return-void
.end method

.method public setNotice(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/errormsg/ErrorMsgBean;->_$2:Ljava/lang/String;

    return-void
.end method
