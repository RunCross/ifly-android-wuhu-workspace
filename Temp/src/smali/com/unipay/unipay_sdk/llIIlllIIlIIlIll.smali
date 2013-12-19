.class Lcom/unipay/unipay_sdk/llIIlllIIlIIlIll;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unipay/net/AsyncMultimode$RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unipay/unipay_sdk/UniPay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RequestNumberListener"
.end annotation


# instance fields
.field final synthetic _$1:Lcom/unipay/unipay_sdk/UniPay;


# direct methods
.method constructor <init>(Lcom/unipay/unipay_sdk/UniPay;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/unipay_sdk/llIIlllIIlIIlIll;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/io/InputStream;)V
    .locals 7

    const/4 v5, 0x2

    iget-object v0, p0, Lcom/unipay/unipay_sdk/llIIlllIIlIIlIll;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->_$14(Lcom/unipay/unipay_sdk/UniPay;)Lcom/unipay/unipay_sdk/lIIlIIlllIIIIllI;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unipay/unipay_sdk/llIIlllIIlIIlIll;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->_$14(Lcom/unipay/unipay_sdk/UniPay;)Lcom/unipay/unipay_sdk/lIIlIIlllIIIIllI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unipay/unipay_sdk/lIIlIIlllIIIIllI;->cancel()V

    iget-object v0, p0, Lcom/unipay/unipay_sdk/llIIlllIIlIIlIll;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/unipay/unipay_sdk/UniPay;->_$1(Lcom/unipay/unipay_sdk/UniPay;Lcom/unipay/unipay_sdk/lIIlIIlllIIIIllI;)Lcom/unipay/unipay_sdk/lIIlIIlllIIIIllI;

    :cond_0
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/unipay/unipay_sdk/llIIlllIIlIIlIll;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->_$39(Lcom/unipay/unipay_sdk/UniPay;)Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    const-string v2, "28"

    const-string v3, "\u83b7\u53d6\u6570\u636e\u5931\u8d25"

    const-string v4, "true"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/unipay/log/LogUtils;->writeLog_pay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unipay/unipay_sdk/llIIlllIIlIIlIll;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    const-string v1, "\u83b7\u53d6\u6570\u636e\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/unipay/unipay_sdk/UniPay;->_$8(Lcom/unipay/unipay_sdk/UniPay;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/unipay/unipay_sdk/llIIlllIIlIIlIll;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-virtual {v0, p1}, Lcom/unipay/unipay_sdk/UniPay;->getDataFromInputStream(Ljava/io/InputStream;)Lcom/unipay/wostore/tabledata/DataAdapter;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/unipay/unipay_sdk/llIIlllIIlIIlIll;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->_$39(Lcom/unipay/unipay_sdk/UniPay;)Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    const-string v2, "28"

    const-string v3, "\u83b7\u53d6\u6570\u636e\u5931\u8d25"

    const-string v4, "true"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/unipay/log/LogUtils;->writeLog_pay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unipay/unipay_sdk/llIIlllIIlIIlIll;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    const-string v1, "\u89e3\u6790\u6570\u636e\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/unipay/unipay_sdk/UniPay;->_$8(Lcom/unipay/unipay_sdk/UniPay;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    :try_start_0
    const-string v1, "phonems"

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

    const-string v3, "HRet"

    invoke-static {v0, v3}, Lcom/unipay/wostore/tabledata/DataUtil;->getInt(Lcom/unipay/wostore/tabledata/WoRowData;Ljava/lang/String;)I

    const-string v3, "Imsi"

    invoke-static {v0, v3}, Lcom/unipay/wostore/tabledata/DataUtil;->getString(Lcom/unipay/wostore/tabledata/WoRowData;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Passwd"

    invoke-static {v0, v4}, Lcom/unipay/wostore/tabledata/DataUtil;->getString(Lcom/unipay/wostore/tabledata/WoRowData;Ljava/lang/String;)Ljava/lang/String;

    const-string v4, "Usertype"

    invoke-static {v0, v4}, Lcom/unipay/wostore/tabledata/DataUtil;->getInt(Lcom/unipay/wostore/tabledata/WoRowData;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/unipay/unipay_sdk/llIIlllIIlIIlIll;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->_$10(Lcom/unipay/unipay_sdk/UniPay;)Z

    move-result v0

    if-eqz v0, :cond_6

    if-eqz v1, :cond_4

    if-ne v1, v5, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/unipay/unipay_sdk/llIIlllIIlIIlIll;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->_$9(Lcom/unipay/unipay_sdk/UniPay;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, p0, Lcom/unipay/unipay_sdk/llIIlllIIlIIlIll;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->_$39(Lcom/unipay/unipay_sdk/UniPay;)Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    const-string v2, "28"

    const-string v3, "\u83b7\u53d6\u6570\u636e\u5931\u8d25"

    const-string v4, "true"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/unipay/log/LogUtils;->writeLog_pay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unipay/unipay_sdk/llIIlllIIlIIlIll;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    const-string v1, "\u83b7\u53d6\u6570\u636e\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/unipay/unipay_sdk/UniPay;->_$8(Lcom/unipay/unipay_sdk/UniPay;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    :try_start_1
    iget-object v0, p0, Lcom/unipay/unipay_sdk/llIIlllIIlIIlIll;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->_$39(Lcom/unipay/unipay_sdk/UniPay;)Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    const-string v2, "30"

    const-string v3, "\u83b7\u53d6\u53f7\u7801\u5931\u8d25"

    const-string v4, "true"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/unipay/log/LogUtils;->writeLog_pay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unipay/unipay_sdk/llIIlllIIlIIlIll;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    const-string v1, "\u83b7\u53d6\u53f7\u7801\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/unipay/unipay_sdk/UniPay;->_$8(Lcom/unipay/unipay_sdk/UniPay;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    if-eqz v3, :cond_8

    const-string v0, "46001"

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "46006"

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    invoke-static {v2}, Lcom/unipay/unipay_sdk/UniPay;->_$1(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {}, Lcom/unipay/unipay_sdk/UniPay;->_$1()Lcom/unipay/unipay_sdk/UniPay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unipay/unipay_sdk/UniPay;->isOtherPay()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/unipay/unipay_sdk/llIIlllIIlIIlIll;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->_$39(Lcom/unipay/unipay_sdk/UniPay;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/unipay/unipay_sdk/lllIIlIllIlllIII;

    invoke-direct {v1, p0}, Lcom/unipay/unipay_sdk/lllIIlIllIlllIII;-><init>(Lcom/unipay/unipay_sdk/llIIlllIIlIIlIll;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_8
    if-eqz v1, :cond_9

    if-eq v1, v5, :cond_9

    const/4 v0, 0x3

    if-ne v1, v0, :cond_a

    :cond_9
    invoke-static {v2}, Lcom/unipay/tools/MultimodeConfig;->setPhone(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unipay/unipay_sdk/llIIlllIIlIIlIll;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    iget-object v1, p0, Lcom/unipay/unipay_sdk/llIIlllIIlIIlIll;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v1}, Lcom/unipay/unipay_sdk/UniPay;->_$39(Lcom/unipay/unipay_sdk/UniPay;)Landroid/content/Context;

    move-result-object v1

    const-string v3, "vacmsg"

    const-string v4, "i"

    invoke-static {}, Lcom/unipay/tools/MultimodeConfig;->getImsi()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Unicom"

    invoke-static {v5, v6}, Lcom/unipay/crypt/CryptUtil;->encryptBy3DesAndBase64(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v1, v3, v4, v5}, Lcom/unipay/unipay_sdk/UniPay;->_$1(Lcom/unipay/unipay_sdk/UniPay;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unipay/unipay_sdk/llIIlllIIlIIlIll;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    iget-object v1, p0, Lcom/unipay/unipay_sdk/llIIlllIIlIIlIll;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v1}, Lcom/unipay/unipay_sdk/UniPay;->_$39(Lcom/unipay/unipay_sdk/UniPay;)Landroid/content/Context;

    move-result-object v1

    const-string v3, "vacmsg"

    const-string v4, "p"

    const-string v5, "Unicom"

    invoke-static {v2, v5}, Lcom/unipay/crypt/CryptUtil;->encryptBy3DesAndBase64(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v3, v4, v2}, Lcom/unipay/unipay_sdk/UniPay;->_$1(Lcom/unipay/unipay_sdk/UniPay;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unipay/unipay_sdk/llIIlllIIlIIlIll;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->_$8(Lcom/unipay/unipay_sdk/UniPay;)V

    goto/16 :goto_0

    :cond_a
    const/4 v0, 0x1

    if-ne v1, v0, :cond_1

    iget-object v0, p0, Lcom/unipay/unipay_sdk/llIIlllIIlIIlIll;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-virtual {v0}, Lcom/unipay/unipay_sdk/UniPay;->DismissProgressDialog()V

    iget-object v0, p0, Lcom/unipay/unipay_sdk/llIIlllIIlIIlIll;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->_$39(Lcom/unipay/unipay_sdk/UniPay;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/unipay/unipay_sdk/IIIllIlllIlllIII;

    invoke-direct {v1, p0}, Lcom/unipay/unipay_sdk/IIIllIlllIlllIII;-><init>(Lcom/unipay/unipay_sdk/llIIlllIIlIIlIll;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lcom/unipay/unipay_sdk/llIIlllIIlIIlIll;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->_$14(Lcom/unipay/unipay_sdk/UniPay;)Lcom/unipay/unipay_sdk/lIIlIIlllIIIIllI;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unipay/unipay_sdk/llIIlllIIlIIlIll;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->_$14(Lcom/unipay/unipay_sdk/UniPay;)Lcom/unipay/unipay_sdk/lIIlIIlllIIIIllI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unipay/unipay_sdk/lIIlIIlllIIIIllI;->cancel()V

    :cond_0
    return-void
.end method
