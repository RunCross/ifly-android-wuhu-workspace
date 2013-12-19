.class Lcom/unipay/unipay_sdk/lIlIIIIlIllIIIIl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic _$1:Lcom/unipay/unipay_sdk/IlIllIlIlIIlIIll;


# direct methods
.method constructor <init>(Lcom/unipay/unipay_sdk/IlIllIlIlIIlIIll;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/unipay_sdk/lIlIIIIlIllIIIIl;->_$1:Lcom/unipay/unipay_sdk/IlIllIlIlIIlIIll;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/unipay/unipay_sdk/lIlIIIIlIllIIIIl;->_$1:Lcom/unipay/unipay_sdk/IlIllIlIlIIlIIll;

    iget-object v0, v0, Lcom/unipay/unipay_sdk/IlIllIlIlIIlIIll;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->_$39(Lcom/unipay/unipay_sdk/UniPay;)Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    const-string v2, "3"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u5728\u7ebfVAC\u652f\u4ed8\u5931\u8d25\uff0cresult:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/unipay/unipay_sdk/lIlIIIIlIllIIIIl;->_$1:Lcom/unipay/unipay_sdk/IlIllIlIlIIlIIll;

    iget-object v4, v4, Lcom/unipay/unipay_sdk/IlIllIlIlIIlIIll;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v4}, Lcom/unipay/unipay_sdk/UniPay;->_$7(Lcom/unipay/unipay_sdk/UniPay;)Lcom/unipay/beans/PayviaVACRsp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/unipay/beans/PayviaVACRsp;->getStatus()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/unipay/unipay_sdk/lIlIIIIlIllIIIIl;->_$1:Lcom/unipay/unipay_sdk/IlIllIlIlIIlIIll;

    iget-object v4, v4, Lcom/unipay/unipay_sdk/IlIllIlIlIIlIIll;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v4}, Lcom/unipay/unipay_sdk/UniPay;->_$7(Lcom/unipay/unipay_sdk/UniPay;)Lcom/unipay/beans/PayviaVACRsp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/unipay/beans/PayviaVACRsp;->getMENO()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "true"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/unipay/log/LogUtils;->writeLog_pay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unipay/unipay_sdk/lIlIIIIlIllIIIIl;->_$1:Lcom/unipay/unipay_sdk/IlIllIlIlIIlIIll;

    iget-object v0, v0, Lcom/unipay/unipay_sdk/IlIllIlIlIIlIIll;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->_$6(Lcom/unipay/unipay_sdk/UniPay;)Lcom/unipay/errormsg/SqliteUtils;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/unipay/unipay_sdk/lIlIIIIlIllIIIIl;->_$1:Lcom/unipay/unipay_sdk/IlIllIlIlIIlIIll;

    iget-object v2, v2, Lcom/unipay/unipay_sdk/IlIllIlIlIIlIIll;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v2}, Lcom/unipay/unipay_sdk/UniPay;->_$6(Lcom/unipay/unipay_sdk/UniPay;)Lcom/unipay/errormsg/SqliteUtils;

    move-result-object v2

    iget-object v2, v2, Lcom/unipay/errormsg/SqliteUtils;->COLUMN_ADV:Ljava/lang/String;

    aput-object v2, v1, v6

    iget-object v2, p0, Lcom/unipay/unipay_sdk/lIlIIIIlIllIIIIl;->_$1:Lcom/unipay/unipay_sdk/IlIllIlIlIIlIIll;

    iget-object v2, v2, Lcom/unipay/unipay_sdk/IlIllIlIlIIlIIll;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v2}, Lcom/unipay/unipay_sdk/UniPay;->_$6(Lcom/unipay/unipay_sdk/UniPay;)Lcom/unipay/errormsg/SqliteUtils;

    move-result-object v2

    iget-object v2, v2, Lcom/unipay/errormsg/SqliteUtils;->COLUMN_KEY:Ljava/lang/String;

    aput-object v2, v1, v5

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/unipay/unipay_sdk/lIlIIIIlIllIIIIl;->_$1:Lcom/unipay/unipay_sdk/IlIllIlIlIIlIIll;

    iget-object v3, v3, Lcom/unipay/unipay_sdk/IlIllIlIlIIlIIll;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v3}, Lcom/unipay/unipay_sdk/UniPay;->_$6(Lcom/unipay/unipay_sdk/UniPay;)Lcom/unipay/errormsg/SqliteUtils;

    move-result-object v3

    iget-object v3, v3, Lcom/unipay/errormsg/SqliteUtils;->COLUMN_MSG:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/unipay/unipay_sdk/lIlIIIIlIllIIIIl;->_$1:Lcom/unipay/unipay_sdk/IlIllIlIlIIlIIll;

    iget-object v3, v3, Lcom/unipay/unipay_sdk/IlIllIlIlIIlIIll;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v3}, Lcom/unipay/unipay_sdk/UniPay;->_$6(Lcom/unipay/unipay_sdk/UniPay;)Lcom/unipay/errormsg/SqliteUtils;

    move-result-object v3

    iget-object v3, v3, Lcom/unipay/errormsg/SqliteUtils;->COLUMN_NOTICE:Ljava/lang/String;

    aput-object v3, v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/unipay/unipay_sdk/lIlIIIIlIllIIIIl;->_$1:Lcom/unipay/unipay_sdk/IlIllIlIlIIlIIll;

    iget-object v3, v3, Lcom/unipay/unipay_sdk/IlIllIlIlIIlIIll;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v3}, Lcom/unipay/unipay_sdk/UniPay;->_$6(Lcom/unipay/unipay_sdk/UniPay;)Lcom/unipay/errormsg/SqliteUtils;

    move-result-object v3

    iget-object v3, v3, Lcom/unipay/errormsg/SqliteUtils;->COLUMN_KEY:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = ?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/unipay/unipay_sdk/lIlIIIIlIllIIIIl;->_$1:Lcom/unipay/unipay_sdk/IlIllIlIlIIlIIll;

    iget-object v5, v5, Lcom/unipay/unipay_sdk/IlIllIlIlIIlIIll;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v5}, Lcom/unipay/unipay_sdk/UniPay;->_$7(Lcom/unipay/unipay_sdk/UniPay;)Lcom/unipay/beans/PayviaVACRsp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/unipay/beans/PayviaVACRsp;->getStatus()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/unipay/errormsg/SqliteUtils;->QueryDB([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/unipay/errormsg/ErrorMsgBean;

    move-result-object v0

    new-instance v1, Lcom/unipay/dialog/VacPayFailDialog;

    iget-object v2, p0, Lcom/unipay/unipay_sdk/lIlIIIIlIllIIIIl;->_$1:Lcom/unipay/unipay_sdk/IlIllIlIlIIlIIll;

    iget-object v2, v2, Lcom/unipay/unipay_sdk/IlIllIlIlIIlIIll;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v2}, Lcom/unipay/unipay_sdk/UniPay;->_$39(Lcom/unipay/unipay_sdk/UniPay;)Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/unipay/unipay_sdk/IIllllIlIIIIIIII;

    iget-object v4, p0, Lcom/unipay/unipay_sdk/lIlIIIIlIllIIIIl;->_$1:Lcom/unipay/unipay_sdk/IlIllIlIlIIlIIll;

    iget-object v4, v4, Lcom/unipay/unipay_sdk/IlIllIlIlIIlIIll;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-direct {v3, v4}, Lcom/unipay/unipay_sdk/IIllllIlIIIIIIII;-><init>(Lcom/unipay/unipay_sdk/UniPay;)V

    invoke-direct {v1, v2, v0, v3}, Lcom/unipay/dialog/VacPayFailDialog;-><init>(Landroid/content/Context;Lcom/unipay/errormsg/ErrorMsgBean;Lcom/unipay/dialog/VacPayFailDialog$VacPayFailListener;)V

    invoke-virtual {v1}, Lcom/unipay/dialog/VacPayFailDialog;->show()V

    return-void
.end method
