.class Lcom/unipay/dialog/lIllllIIlllIlllI;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unipay/net/AsyncMultimode$RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unipay/dialog/OtherPayLostPersonalMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UserLoginListener"
.end annotation


# instance fields
.field final synthetic _$1:Lcom/unipay/dialog/OtherPayLostPersonalMessage;


# direct methods
.method constructor <init>(Lcom/unipay/dialog/OtherPayLostPersonalMessage;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/dialog/lIllllIIlllIlllI;->_$1:Lcom/unipay/dialog/OtherPayLostPersonalMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/io/InputStream;)V
    .locals 4

    invoke-static {}, Lcom/unipay/unipay_sdk/UniPay;->getInstance()Lcom/unipay/unipay_sdk/UniPay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unipay/unipay_sdk/UniPay;->DismissProgressDialog()V

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/unipay/dialog/lIllllIIlllIlllI;->_$1:Lcom/unipay/dialog/OtherPayLostPersonalMessage;

    invoke-static {v0}, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$16(Lcom/unipay/dialog/OtherPayLostPersonalMessage;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/unipay/dialog/IIlIlIIIIIIIIlll;

    invoke-direct {v1, p0}, Lcom/unipay/dialog/IIlIlIIIIIIIIlll;-><init>(Lcom/unipay/dialog/lIllllIIlllIlllI;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/unipay/unipay_sdk/UniPay;->getInstance()Lcom/unipay/unipay_sdk/UniPay;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/unipay/unipay_sdk/UniPay;->getDataFromInputStream(Ljava/io/InputStream;)Lcom/unipay/wostore/tabledata/DataAdapter;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/unipay/dialog/lIllllIIlllIlllI;->_$1:Lcom/unipay/dialog/OtherPayLostPersonalMessage;

    invoke-static {v0}, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$16(Lcom/unipay/dialog/OtherPayLostPersonalMessage;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/unipay/dialog/lllIlIIIIIIIIlll;

    invoke-direct {v1, p0}, Lcom/unipay/dialog/lllIlIIIIIIIIlll;-><init>(Lcom/unipay/dialog/lIllllIIlllIlllI;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    :try_start_0
    const-string v1, "login"

    invoke-static {v0, v1}, Lcom/unipay/wostore/tabledata/DataUtil;->getTableData(Lcom/unipay/wostore/tabledata/DataAdapter;Ljava/lang/String;)Lcom/unipay/wostore/tabledata/WoTableData;

    move-result-object v0

    iget-object v0, v0, Lcom/unipay/wostore/tabledata/WoTableData;->rows:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unipay/wostore/tabledata/WoRowData;

    const-string v1, "phonenum"

    invoke-static {v0, v1}, Lcom/unipay/wostore/tabledata/DataUtil;->getString(Lcom/unipay/wostore/tabledata/WoRowData;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Usertype"

    invoke-static {v0, v2}, Lcom/unipay/wostore/tabledata/DataUtil;->getInt(Lcom/unipay/wostore/tabledata/WoRowData;Ljava/lang/String;)I

    move-result v2

    invoke-static {}, Lcom/unipay/unipay_sdk/UniPay;->getInstance()Lcom/unipay/unipay_sdk/UniPay;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/unipay/unipay_sdk/UniPay;->setUsertype(I)V

    iget-object v0, p0, Lcom/unipay/dialog/lIllllIIlllIlllI;->_$1:Lcom/unipay/dialog/OtherPayLostPersonalMessage;

    new-instance v3, Lcom/unipay/beans/LoginRsp;

    invoke-direct {v3, v1, v2}, Lcom/unipay/beans/LoginRsp;-><init>(Ljava/lang/String;I)V

    invoke-static {v0, v3}, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$1(Lcom/unipay/dialog/OtherPayLostPersonalMessage;Lcom/unipay/beans/LoginRsp;)Lcom/unipay/beans/LoginRsp;

    iget-object v0, p0, Lcom/unipay/dialog/lIllllIIlllIlllI;->_$1:Lcom/unipay/dialog/OtherPayLostPersonalMessage;

    invoke-static {v0}, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$16(Lcom/unipay/dialog/OtherPayLostPersonalMessage;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v3, Lcom/unipay/dialog/IllIlIIIIIIIIlll;

    invoke-direct {v3, p0, v2, v1}, Lcom/unipay/dialog/IllIlIIIIIIIIlll;-><init>(Lcom/unipay/dialog/lIllllIIlllIlllI;ILjava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 2

    invoke-static {}, Lcom/unipay/unipay_sdk/UniPay;->getInstance()Lcom/unipay/unipay_sdk/UniPay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unipay/unipay_sdk/UniPay;->DismissProgressDialog()V

    iget-object v0, p0, Lcom/unipay/dialog/lIllllIIlllIlllI;->_$1:Lcom/unipay/dialog/OtherPayLostPersonalMessage;

    invoke-static {v0}, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$16(Lcom/unipay/dialog/OtherPayLostPersonalMessage;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/unipay/dialog/lIIIlIIIIIIIIlll;

    invoke-direct {v1, p0}, Lcom/unipay/dialog/lIIIlIIIIIIIIlll;-><init>(Lcom/unipay/dialog/lIllllIIlllIlllI;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
