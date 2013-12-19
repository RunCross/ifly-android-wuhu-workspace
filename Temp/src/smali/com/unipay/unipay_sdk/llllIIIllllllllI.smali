.class Lcom/unipay/unipay_sdk/llllIIIllllllllI;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unipay/net/AsyncMultimode$RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unipay/unipay_sdk/UniPay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PtRegisterListener"
.end annotation


# instance fields
.field final synthetic _$1:Lcom/unipay/unipay_sdk/UniPay;


# direct methods
.method constructor <init>(Lcom/unipay/unipay_sdk/UniPay;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/unipay_sdk/llllIIIllllllllI;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/io/InputStream;)V
    .locals 6

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/unipay/unipay_sdk/llllIIIllllllllI;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->_$39(Lcom/unipay/unipay_sdk/UniPay;)Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    const-string v2, "28"

    const-string v3, "\u83b7\u53d6\u6570\u636e\u5931\u8d25"

    const-string v4, "true"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/unipay/log/LogUtils;->writeLog_pay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/unipay/unipay_sdk/llllIIIllllllllI;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-virtual {v0, p1}, Lcom/unipay/unipay_sdk/UniPay;->getDataFromInputStream(Ljava/io/InputStream;)Lcom/unipay/wostore/tabledata/DataAdapter;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/unipay/unipay_sdk/llllIIIllllllllI;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->_$39(Lcom/unipay/unipay_sdk/UniPay;)Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    const-string v2, "29"

    const-string v3, "\u89e3\u6790\u6570\u636e\u5931\u8d25"

    const-string v4, "true"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/unipay/log/LogUtils;->writeLog_pay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :try_start_0
    const-string v1, "register"

    invoke-static {v0, v1}, Lcom/unipay/wostore/tabledata/DataUtil;->getTableData(Lcom/unipay/wostore/tabledata/DataAdapter;Ljava/lang/String;)Lcom/unipay/wostore/tabledata/WoTableData;

    move-result-object v0

    iget-object v0, v0, Lcom/unipay/wostore/tabledata/WoTableData;->rows:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unipay/wostore/tabledata/WoRowData;

    const-string v1, "result"

    invoke-static {v0, v1}, Lcom/unipay/wostore/tabledata/DataUtil;->getInt(Lcom/unipay/wostore/tabledata/WoRowData;Ljava/lang/String;)I

    move-result v1

    const-string v2, "desc"

    invoke-static {v0, v2}, Lcom/unipay/wostore/tabledata/DataUtil;->getString(Lcom/unipay/wostore/tabledata/WoRowData;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "phoneNum"

    invoke-static {v0, v3}, Lcom/unipay/wostore/tabledata/DataUtil;->getString(Lcom/unipay/wostore/tabledata/WoRowData;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Usertype"

    invoke-static {v0, v4}, Lcom/unipay/wostore/tabledata/DataUtil;->getInt(Lcom/unipay/wostore/tabledata/WoRowData;Ljava/lang/String;)I

    move-result v0

    if-nez v1, :cond_3

    if-eqz v3, :cond_2

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "00000000000"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :cond_2
    iget-object v3, p0, Lcom/unipay/unipay_sdk/llllIIIllllllllI;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    iput v0, v3, Lcom/unipay/unipay_sdk/UniPay;->usertype:I

    :cond_3
    iget-object v0, p0, Lcom/unipay/unipay_sdk/llllIIIllllllllI;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->_$39(Lcom/unipay/unipay_sdk/UniPay;)Landroid/content/Context;

    move-result-object v0

    const-string v3, ""

    iget-object v4, p0, Lcom/unipay/unipay_sdk/llllIIIllllllllI;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v4}, Lcom/unipay/unipay_sdk/UniPay;->_$35(Lcom/unipay/unipay_sdk/UniPay;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v3, v4, v1, v2}, Lcom/unipay/log/LogUtils;->writeLog_login(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unipay/unipay_sdk/llllIIIllllllllI;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/unipay/unipay_sdk/UniPay;->_$7(Lcom/unipay/unipay_sdk/UniPay;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, p0, Lcom/unipay/unipay_sdk/llllIIIllllllllI;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->_$39(Lcom/unipay/unipay_sdk/UniPay;)Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    const-string v2, "7"

    const-string v3, "\u8bf7\u6c42\u670d\u52a1\u5668\u5931\u8d25"

    const-string v4, "false"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/unipay/log/LogUtils;->writeLog_pay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 5

    iget-object v0, p0, Lcom/unipay/unipay_sdk/llllIIIllllllllI;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->_$39(Lcom/unipay/unipay_sdk/UniPay;)Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    const-string v2, "7"

    const-string v3, "\u8bf7\u6c42\u670d\u52a1\u5668\u5931\u8d25"

    const-string v4, "false"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/unipay/log/LogUtils;->writeLog_pay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
