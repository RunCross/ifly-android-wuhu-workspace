.class Lcom/unipay/dialog/llIlIllIlIIlllll;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unipay/net/AsyncMultimode$RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unipay/dialog/LoadDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GetPasswdRequestListener"
.end annotation


# instance fields
.field final synthetic _$1:Lcom/unipay/dialog/LoadDialog;


# direct methods
.method constructor <init>(Lcom/unipay/dialog/LoadDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/dialog/llIlIllIlIIlllll;->_$1:Lcom/unipay/dialog/LoadDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/io/InputStream;)V
    .locals 3

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/unipay/dialog/llIlIllIlIIlllll;->_$1:Lcom/unipay/dialog/LoadDialog;

    invoke-static {v0}, Lcom/unipay/dialog/LoadDialog;->_$5(Lcom/unipay/dialog/LoadDialog;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/unipay/dialog/lIIIlIIIlIIIlIIl;

    invoke-direct {v1, p0}, Lcom/unipay/dialog/lIIIlIIIlIIIlIIl;-><init>(Lcom/unipay/dialog/llIlIllIlIIlllll;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/unipay/dialog/llIlIllIlIIlllll;->_$1:Lcom/unipay/dialog/LoadDialog;

    invoke-static {v0, p1}, Lcom/unipay/dialog/LoadDialog;->_$1(Lcom/unipay/dialog/LoadDialog;Ljava/io/InputStream;)Lcom/unipay/wostore/tabledata/DataAdapter;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/unipay/dialog/llIlIllIlIIlllll;->_$1:Lcom/unipay/dialog/LoadDialog;

    invoke-static {v0}, Lcom/unipay/dialog/LoadDialog;->_$5(Lcom/unipay/dialog/LoadDialog;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/unipay/dialog/IlIIlIIIlIIIlIIl;

    invoke-direct {v1, p0}, Lcom/unipay/dialog/IlIIlIIIlIIIlIIl;-><init>(Lcom/unipay/dialog/llIlIllIlIIlllll;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    :try_start_0
    const-string v1, "userpwd"

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

    if-nez v1, :cond_2

    iget-object v0, p0, Lcom/unipay/dialog/llIlIllIlIIlllll;->_$1:Lcom/unipay/dialog/LoadDialog;

    invoke-static {v0}, Lcom/unipay/dialog/LoadDialog;->_$5(Lcom/unipay/dialog/LoadDialog;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/unipay/dialog/llIIlIIIlIIIlIIl;

    invoke-direct {v1, p0}, Lcom/unipay/dialog/llIIlIIIlIIIlIIl;-><init>(Lcom/unipay/dialog/llIlIllIlIIlllll;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/unipay/dialog/llIlIllIlIIlllll;->_$1:Lcom/unipay/dialog/LoadDialog;

    invoke-static {v0}, Lcom/unipay/dialog/LoadDialog;->_$5(Lcom/unipay/dialog/LoadDialog;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/unipay/dialog/IIlllIIIlIIIlIIl;

    invoke-direct {v1, p0, v2}, Lcom/unipay/dialog/IIlllIIIlIIIlIIl;-><init>(Lcom/unipay/dialog/llIlIllIlIIlllll;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 2

    iget-object v0, p0, Lcom/unipay/dialog/llIlIllIlIIlllll;->_$1:Lcom/unipay/dialog/LoadDialog;

    invoke-static {v0}, Lcom/unipay/dialog/LoadDialog;->_$5(Lcom/unipay/dialog/LoadDialog;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/unipay/dialog/lIlllIIIlIIIlIIl;

    invoke-direct {v1, p0}, Lcom/unipay/dialog/lIlllIIIlIIIlIIl;-><init>(Lcom/unipay/dialog/llIlIllIlIIlllll;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
