.class Lcom/unipay/unipay_sdk/IlIlIllIlIlIIIII;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unipay/dialog/ExchangeCodeSuccess$ExchangeCodeSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unipay/unipay_sdk/UniPay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ExchangeCodeFailedListenerImp"
.end annotation


# instance fields
.field final synthetic _$1:Lcom/unipay/unipay_sdk/UniPay;


# direct methods
.method constructor <init>(Lcom/unipay/unipay_sdk/UniPay;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/unipay_sdk/IlIlIllIlIlIIIII;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OneSure(I)V
    .locals 5

    iget-object v0, p0, Lcom/unipay/unipay_sdk/IlIlIllIlIlIIIII;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->_$39(Lcom/unipay/unipay_sdk/UniPay;)Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    const-string v2, "18"

    const-string v3, "\u5151\u6362\u5931\u8d25"

    const-string v4, "true"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/unipay/log/LogUtils;->writeLog_pay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/unipay/unipay_sdk/IlIlIllIlIlIIIII;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    const-string v1, "\u5151\u6362\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/unipay/unipay_sdk/UniPay;->_$8(Lcom/unipay/unipay_sdk/UniPay;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/unipay/unipay_sdk/IlIlIllIlIlIIIII;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    const-string v1, "\u5151\u6362\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/unipay/unipay_sdk/UniPay;->_$8(Lcom/unipay/unipay_sdk/UniPay;Ljava/lang/String;)V

    goto :goto_0
.end method
