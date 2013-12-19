.class Lcom/unipay/unipay_sdk/IIlIlIIIlIIlIIll;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unipay/dialog/PSmsEnSureDialog$PSmsEnSureResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unipay/unipay_sdk/UniPay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PSMSResultListener"
.end annotation


# instance fields
.field final synthetic _$1:Lcom/unipay/unipay_sdk/UniPay;


# direct methods
.method constructor <init>(Lcom/unipay/unipay_sdk/UniPay;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/unipay_sdk/IIlIlIIIlIIlIIll;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public SmsResult(I)V
    .locals 4

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/unipay/unipay_sdk/IIlIlIIIlIIlIIll;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    const-string v1, "\u6b63\u5728\u652f\u4ed8\uff0c\u8bf7\u7a0d\u5019..."

    invoke-virtual {v0, v1}, Lcom/unipay/unipay_sdk/UniPay;->showProgressDialog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unipay/unipay_sdk/IIlIlIIIlIIlIIll;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    iget-object v1, p0, Lcom/unipay/unipay_sdk/IIlIlIIIlIIlIIll;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    iget-object v2, p0, Lcom/unipay/unipay_sdk/IIlIlIIIlIIlIIll;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v2}, Lcom/unipay/unipay_sdk/UniPay;->_$37(Lcom/unipay/unipay_sdk/UniPay;)Lcom/unipay/beans/PayValueBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/unipay/beans/PayValueBean;->getVacCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unipay/unipay_sdk/UniPay;->_$1(Lcom/unipay/unipay_sdk/UniPay;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "10655198000"

    const-string v3, "com.unipay.sms_action"

    invoke-static {v0, v1, v2, v3}, Lcom/unipay/unipay_sdk/UniPay;->_$1(Lcom/unipay/unipay_sdk/UniPay;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/unipay/unipay_sdk/IIlIlIIIlIIlIIll;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->_$2(Lcom/unipay/unipay_sdk/UniPay;)V

    goto :goto_0
.end method
