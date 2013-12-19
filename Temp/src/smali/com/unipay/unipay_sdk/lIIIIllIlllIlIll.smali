.class Lcom/unipay/unipay_sdk/lIIIIllIlllIlIll;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic _$1:Lcom/unipay/unipay_sdk/lIIlIlIIIIlIlIIl;


# direct methods
.method constructor <init>(Lcom/unipay/unipay_sdk/lIIlIlIIIIlIlIIl;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/unipay_sdk/lIIIIllIlllIlIll;->_$1:Lcom/unipay/unipay_sdk/lIIlIlIIIIlIlIIl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/unipay/unipay_sdk/lIIIIllIlllIlIll;->_$1:Lcom/unipay/unipay_sdk/lIIlIlIIIIlIlIIl;

    iget-object v0, v0, Lcom/unipay/unipay_sdk/lIIlIlIIIIlIlIIl;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->_$39(Lcom/unipay/unipay_sdk/UniPay;)Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    const-string v2, "11"

    const-string v3, "\u83b7\u53d6\u9a8c\u8bc1\u4fe1\u606f\u5931\u8d25"

    const-string v4, "false"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/unipay/log/LogUtils;->writeLog_pay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unipay/unipay_sdk/lIIIIllIlllIlIll;->_$1:Lcom/unipay/unipay_sdk/lIIlIlIIIIlIlIIl;

    iget-object v0, v0, Lcom/unipay/unipay_sdk/lIIlIlIIIIlIlIIl;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    const-string v1, "\u83b7\u53d6\u9a8c\u8bc1\u4fe1\u606f\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/unipay/unipay_sdk/UniPay;->_$8(Lcom/unipay/unipay_sdk/UniPay;Ljava/lang/String;)V

    return-void
.end method
