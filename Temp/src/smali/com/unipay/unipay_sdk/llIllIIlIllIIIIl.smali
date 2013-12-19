.class Lcom/unipay/unipay_sdk/llIllIIlIllIIIIl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic _$1:Lcom/unipay/unipay_sdk/IlIllIlIlIIlIIll;


# direct methods
.method constructor <init>(Lcom/unipay/unipay_sdk/IlIllIlIlIIlIIll;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/unipay_sdk/llIllIIlIllIIIIl;->_$1:Lcom/unipay/unipay_sdk/IlIllIlIlIIlIIll;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/unipay/unipay_sdk/llIllIIlIllIIIIl;->_$1:Lcom/unipay/unipay_sdk/IlIllIlIlIIlIIll;

    iget-object v0, v0, Lcom/unipay/unipay_sdk/IlIllIlIlIIlIIll;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->_$39(Lcom/unipay/unipay_sdk/UniPay;)Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    const-string v2, "2"

    const-string v3, "\u7f51\u7edc\u65ad\u5f00\uff0c\u652f\u4ed8\u8bf7\u6c42\u5df2\u7ecf\u63d0\u4ea4"

    const-string v4, "true"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/unipay/log/LogUtils;->writeLog_pay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unipay/unipay_sdk/llIllIIlIllIIIIl;->_$1:Lcom/unipay/unipay_sdk/IlIllIlIlIIlIIll;

    iget-object v0, v0, Lcom/unipay/unipay_sdk/IlIllIlIlIIlIIll;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->_$20(Lcom/unipay/unipay_sdk/UniPay;)V

    return-void
.end method
