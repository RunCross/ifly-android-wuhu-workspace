.class Lcom/unipay/dialog/IllIIIIlIllIIIII;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unipay/net/AsyncMultimode$RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unipay/dialog/OtherPayLostPersonalMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RegisterUserListener"
.end annotation


# instance fields
.field final synthetic _$1:Lcom/unipay/dialog/OtherPayLostPersonalMessage;


# direct methods
.method constructor <init>(Lcom/unipay/dialog/OtherPayLostPersonalMessage;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/dialog/IllIIIIlIllIIIII;->_$1:Lcom/unipay/dialog/OtherPayLostPersonalMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/io/InputStream;)V
    .locals 6

    iget-object v0, p0, Lcom/unipay/dialog/IllIIIIlIllIIIII;->_$1:Lcom/unipay/dialog/OtherPayLostPersonalMessage;

    invoke-static {v0}, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$16(Lcom/unipay/dialog/OtherPayLostPersonalMessage;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/unipay/dialog/lIllllIIIIlIIlIl;

    invoke-direct {v1, p0}, Lcom/unipay/dialog/lIllllIIIIlIIlIl;-><init>(Lcom/unipay/dialog/IllIIIIlIllIIIII;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/unipay/dialog/IllIIIIlIllIIIII;->_$1:Lcom/unipay/dialog/OtherPayLostPersonalMessage;

    invoke-static {v0}, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$16(Lcom/unipay/dialog/OtherPayLostPersonalMessage;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/unipay/dialog/IlllllIIIIlIIlIl;

    invoke-direct {v1, p0}, Lcom/unipay/dialog/IlllllIIIIlIIlIl;-><init>(Lcom/unipay/dialog/IllIIIIlIllIIIII;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/unipay/unipay_sdk/UniPay;->getInstance()Lcom/unipay/unipay_sdk/UniPay;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/unipay/unipay_sdk/UniPay;->getDataFromInputStream(Ljava/io/InputStream;)Lcom/unipay/wostore/tabledata/DataAdapter;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/unipay/dialog/IllIIIIlIllIIIII;->_$1:Lcom/unipay/dialog/OtherPayLostPersonalMessage;

    invoke-static {v0}, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$16(Lcom/unipay/dialog/OtherPayLostPersonalMessage;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/unipay/dialog/llllllIIIIlIIlIl;

    invoke-direct {v1, p0}, Lcom/unipay/dialog/llllllIIIIlIIlIl;-><init>(Lcom/unipay/dialog/IllIIIIlIllIIIII;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/unipay/dialog/IllIIIIlIllIIIII;->_$1:Lcom/unipay/dialog/OtherPayLostPersonalMessage;

    invoke-static {v0}, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$16(Lcom/unipay/dialog/OtherPayLostPersonalMessage;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v2, Lcom/unipay/dialog/IIIIllIIIIlIIlIl;

    invoke-direct {v2, p0}, Lcom/unipay/dialog/IIIIllIIIIlIIlIl;-><init>(Lcom/unipay/dialog/IllIIIIlIllIIIII;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    const-string v0, "register"

    invoke-static {v1, v0}, Lcom/unipay/wostore/tabledata/DataUtil;->getTableData(Lcom/unipay/wostore/tabledata/DataAdapter;Ljava/lang/String;)Lcom/unipay/wostore/tabledata/WoTableData;

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

    const-string v3, "Usertype"

    invoke-static {v0, v3}, Lcom/unipay/wostore/tabledata/DataUtil;->getInt(Lcom/unipay/wostore/tabledata/WoRowData;Ljava/lang/String;)I

    move-result v0

    const-string v3, "xyf"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "result:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";desc:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";Usertype:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/unipay/dialog/IllIIIIlIllIIIII;->_$1:Lcom/unipay/dialog/OtherPayLostPersonalMessage;

    new-instance v4, Lcom/unipay/beans/RegisterBean;

    invoke-direct {v4, v1, v2, v0}, Lcom/unipay/beans/RegisterBean;-><init>(ILjava/lang/String;I)V

    invoke-static {v3, v4}, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$1(Lcom/unipay/dialog/OtherPayLostPersonalMessage;Lcom/unipay/beans/RegisterBean;)Lcom/unipay/beans/RegisterBean;

    if-nez v1, :cond_2

    iget-object v0, p0, Lcom/unipay/dialog/IllIIIIlIllIIIII;->_$1:Lcom/unipay/dialog/OtherPayLostPersonalMessage;

    iget-object v1, p0, Lcom/unipay/dialog/IllIIIIlIllIIIII;->_$1:Lcom/unipay/dialog/OtherPayLostPersonalMessage;

    invoke-static {v1}, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$8(Lcom/unipay/dialog/OtherPayLostPersonalMessage;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/unipay/dialog/IllIIIIlIllIIIII;->_$1:Lcom/unipay/dialog/OtherPayLostPersonalMessage;

    invoke-static {v2}, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$7(Lcom/unipay/dialog/OtherPayLostPersonalMessage;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$1(Lcom/unipay/dialog/OtherPayLostPersonalMessage;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_2
    const/16 v0, 0xd

    if-ne v1, v0, :cond_3

    :try_start_1
    iget-object v0, p0, Lcom/unipay/dialog/IllIIIIlIllIIIII;->_$1:Lcom/unipay/dialog/OtherPayLostPersonalMessage;

    invoke-static {v0}, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$16(Lcom/unipay/dialog/OtherPayLostPersonalMessage;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/unipay/dialog/lIIIllIIIIlIIlIl;

    invoke-direct {v1, p0}, Lcom/unipay/dialog/lIIIllIIIIlIIlIl;-><init>(Lcom/unipay/dialog/IllIIIIlIllIIIII;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/unipay/dialog/IllIIIIlIllIIIII;->_$1:Lcom/unipay/dialog/OtherPayLostPersonalMessage;

    invoke-static {v0}, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$16(Lcom/unipay/dialog/OtherPayLostPersonalMessage;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/unipay/dialog/IlIIllIIIIlIIlIl;

    invoke-direct {v1, p0}, Lcom/unipay/dialog/IlIIllIIIIlIIlIl;-><init>(Lcom/unipay/dialog/IllIIIIlIllIIIII;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 1

    invoke-static {}, Lcom/unipay/unipay_sdk/UniPay;->getInstance()Lcom/unipay/unipay_sdk/UniPay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unipay/unipay_sdk/UniPay;->DismissProgressDialog()V

    return-void
.end method
