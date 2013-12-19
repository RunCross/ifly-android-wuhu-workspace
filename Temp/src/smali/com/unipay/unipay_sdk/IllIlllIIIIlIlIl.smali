.class Lcom/unipay/unipay_sdk/IllIlllIIIIlIlIl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unipay/net/AsyncMultimode$RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unipay/unipay_sdk/UniPay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "QueryUserListener"
.end annotation


# instance fields
.field final synthetic _$1:Lcom/unipay/unipay_sdk/UniPay;


# direct methods
.method constructor <init>(Lcom/unipay/unipay_sdk/UniPay;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/unipay_sdk/IllIlllIIIIlIlIl;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/io/InputStream;)V
    .locals 9

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/unipay/unipay_sdk/IllIlllIIIIlIlIl;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->_$39(Lcom/unipay/unipay_sdk/UniPay;)Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    const-string v2, "28"

    const-string v3, "\u83b7\u53d6\u6570\u636e\u5931\u8d25"

    const-string v4, "true"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/unipay/log/LogUtils;->writeLog_pay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/unipay/unipay_sdk/IllIlllIIIIlIlIl;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-virtual {v0, p1}, Lcom/unipay/unipay_sdk/UniPay;->getDataFromInputStream(Ljava/io/InputStream;)Lcom/unipay/wostore/tabledata/DataAdapter;

    move-result-object v0

    if-nez v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/unipay/unipay_sdk/IllIlllIIIIlIlIl;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->_$39(Lcom/unipay/unipay_sdk/UniPay;)Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    const-string v2, "28"

    const-string v3, "\u83b7\u53d6\u6570\u636e\u5931\u8d25"

    const-string v4, "true"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/unipay/log/LogUtils;->writeLog_pay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/unipay/unipay_sdk/IllIlllIIIIlIlIl;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->_$34(Lcom/unipay/unipay_sdk/UniPay;)Lcom/unipay/beans/CheckPayReg;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/unipay/unipay_sdk/IllIlllIIIIlIlIl;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->_$39(Lcom/unipay/unipay_sdk/UniPay;)Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    const-string v2, "28"

    const-string v3, "\u83b7\u53d6\u6570\u636e\u5931\u8d25"

    const-string v4, "true"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/unipay/log/LogUtils;->writeLog_pay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/unipay/unipay_sdk/IllIlllIIIIlIlIl;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->_$39(Lcom/unipay/unipay_sdk/UniPay;)Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    const-string v2, "7"

    const-string v3, "\u670d\u52a1\u5668\u8bf7\u6c42\u5931\u8d25"

    const-string v4, "false"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/unipay/log/LogUtils;->writeLog_pay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :try_start_1
    const-string v1, "checkPayReg"

    invoke-static {v0, v1}, Lcom/unipay/wostore/tabledata/DataUtil;->getTableData(Lcom/unipay/wostore/tabledata/DataAdapter;Ljava/lang/String;)Lcom/unipay/wostore/tabledata/WoTableData;

    move-result-object v0

    iget-object v0, v0, Lcom/unipay/wostore/tabledata/WoTableData;->rows:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unipay/wostore/tabledata/WoRowData;

    const-string v1, "Imsi"

    invoke-static {v0, v1}, Lcom/unipay/wostore/tabledata/DataUtil;->getString(Lcom/unipay/wostore/tabledata/WoRowData;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "smsUp"

    invoke-static {v0, v2}, Lcom/unipay/wostore/tabledata/DataUtil;->getInt(Lcom/unipay/wostore/tabledata/WoRowData;Ljava/lang/String;)I

    move-result v4

    const-string v2, "HRet"

    invoke-static {v0, v2}, Lcom/unipay/wostore/tabledata/DataUtil;->getInt(Lcom/unipay/wostore/tabledata/WoRowData;Ljava/lang/String;)I

    move-result v5

    const-string v2, "Mdn"

    invoke-static {v0, v2}, Lcom/unipay/wostore/tabledata/DataUtil;->getString(Lcom/unipay/wostore/tabledata/WoRowData;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Passwd"

    invoke-static {v0, v3}, Lcom/unipay/wostore/tabledata/DataUtil;->getString(Lcom/unipay/wostore/tabledata/WoRowData;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "Usertype"

    invoke-static {v0, v6}, Lcom/unipay/wostore/tabledata/DataUtil;->getInt(Lcom/unipay/wostore/tabledata/WoRowData;Ljava/lang/String;)I

    move-result v7

    const-string v6, "Status"

    invoke-static {v0, v6}, Lcom/unipay/wostore/tabledata/DataUtil;->getInt(Lcom/unipay/wostore/tabledata/WoRowData;Ljava/lang/String;)I

    move-result v6

    iget-object v8, p0, Lcom/unipay/unipay_sdk/IllIlllIIIIlIlIl;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    new-instance v0, Lcom/unipay/beans/CheckPayReg;

    invoke-direct/range {v0 .. v7}, Lcom/unipay/beans/CheckPayReg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIII)V

    invoke-static {v8, v0}, Lcom/unipay/unipay_sdk/UniPay;->_$1(Lcom/unipay/unipay_sdk/UniPay;Lcom/unipay/beans/CheckPayReg;)Lcom/unipay/beans/CheckPayReg;

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/unipay/unipay_sdk/IllIlllIIIIlIlIl;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->_$34(Lcom/unipay/unipay_sdk/UniPay;)Lcom/unipay/beans/CheckPayReg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unipay/beans/CheckPayReg;->getHRet()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/unipay/unipay_sdk/IllIlllIIIIlIlIl;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->_$39(Lcom/unipay/unipay_sdk/UniPay;)Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    const-string v2, "7"

    const-string v3, "\u8bf7\u6c42\u670d\u52a1\u5668\u5931\u8d25"

    const-string v4, "true"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/unipay/log/LogUtils;->writeLog_pay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/unipay/unipay_sdk/IllIlllIIIIlIlIl;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->_$34(Lcom/unipay/unipay_sdk/UniPay;)Lcom/unipay/beans/CheckPayReg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unipay/beans/CheckPayReg;->getStatus()I

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/unipay/unipay_sdk/IllIlllIIIIlIlIl;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    const-string v1, "false"

    invoke-static {v0, v1}, Lcom/unipay/unipay_sdk/UniPay;->_$7(Lcom/unipay/unipay_sdk/UniPay;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/unipay/unipay_sdk/IllIlllIIIIlIlIl;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->_$34(Lcom/unipay/unipay_sdk/UniPay;)Lcom/unipay/beans/CheckPayReg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unipay/beans/CheckPayReg;->getMdn()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unipay/unipay_sdk/IllIlllIIIIlIlIl;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->_$34(Lcom/unipay/unipay_sdk/UniPay;)Lcom/unipay/beans/CheckPayReg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unipay/beans/CheckPayReg;->getPasswd()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unipay/unipay_sdk/IllIlllIIIIlIlIl;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    iget-object v1, p0, Lcom/unipay/unipay_sdk/IllIlllIIIIlIlIl;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v1}, Lcom/unipay/unipay_sdk/UniPay;->_$34(Lcom/unipay/unipay_sdk/UniPay;)Lcom/unipay/beans/CheckPayReg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unipay/beans/CheckPayReg;->getMdn()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/unipay/unipay_sdk/IllIlllIIIIlIlIl;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v2}, Lcom/unipay/unipay_sdk/UniPay;->_$34(Lcom/unipay/unipay_sdk/UniPay;)Lcom/unipay/beans/CheckPayReg;

    move-result-object v2

    invoke-virtual {v2}, Lcom/unipay/beans/CheckPayReg;->getPasswd()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/unipay/unipay_sdk/UniPay;->_$2(Lcom/unipay/unipay_sdk/UniPay;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/unipay/unipay_sdk/IllIlllIIIIlIlIl;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    const-string v1, "true"

    invoke-static {v0, v1}, Lcom/unipay/unipay_sdk/UniPay;->_$7(Lcom/unipay/unipay_sdk/UniPay;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/unipay/unipay_sdk/IllIlllIIIIlIlIl;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->_$33(Lcom/unipay/unipay_sdk/UniPay;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 5

    iget-object v0, p0, Lcom/unipay/unipay_sdk/IllIlllIIIIlIlIl;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->_$39(Lcom/unipay/unipay_sdk/UniPay;)Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    const-string v2, "7"

    const-string v3, "\u670d\u52a1\u5668\u8bf7\u6c42\u5931\u8d25"

    const-string v4, "false"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/unipay/log/LogUtils;->writeLog_pay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unipay/unipay_sdk/IllIlllIIIIlIlIl;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->_$33(Lcom/unipay/unipay_sdk/UniPay;)V

    return-void
.end method
