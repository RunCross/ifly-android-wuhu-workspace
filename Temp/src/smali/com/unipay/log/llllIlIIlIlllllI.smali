.class Lcom/unipay/log/llllIlIIlIlllllI;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic _$1:Lcom/unipay/log/LogNet;

.field final synthetic _$2:Landroid/content/Context;

.field final synthetic _$3:Ljava/lang/String;

.field final synthetic _$4:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/unipay/log/LogNet;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/log/llllIlIIlIlllllI;->_$1:Lcom/unipay/log/LogNet;

    iput-object p2, p0, Lcom/unipay/log/llllIlIIlIlllllI;->_$4:Ljava/lang/String;

    iput-object p3, p0, Lcom/unipay/log/llllIlIIlIlllllI;->_$3:Ljava/lang/String;

    iput-object p4, p0, Lcom/unipay/log/llllIlIIlIlllllI;->_$2:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "xyf"

    const-string v1, "begin Update"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/unipay/log/LogSocket;->getInstance()Lcom/unipay/log/LogSocket;

    move-result-object v0

    iget-object v1, p0, Lcom/unipay/log/llllIlIIlIlllllI;->_$4:Ljava/lang/String;

    invoke-static {}, Lcom/unipay/log/LogNet;->_$1()Lcom/unipay/log/Parameters;

    move-result-object v2

    iget-object v3, p0, Lcom/unipay/log/llllIlIIlIlllllI;->_$3:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/unipay/log/LogSocket;->UpdateClientLog(Ljava/lang/String;Lcom/unipay/log/Parameters;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "xyf"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/unipay/log/llllIlIIlIlllllI;->_$1:Lcom/unipay/log/LogNet;

    invoke-static {v1, v0}, Lcom/unipay/log/LogNet;->_$2(Lcom/unipay/log/LogNet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/unipay/log/llllIlIIlIlllllI;->_$2:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/unipay/log/LogUtils;->setUpdateLog(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/unipay/log/llllIlIIlIlllllI;->_$3:Ljava/lang/String;

    iget-object v1, p0, Lcom/unipay/log/llllIlIIlIlllllI;->_$2:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/unipay/log/LogUtils;->deleteFileWithTotalPath(Ljava/lang/String;Landroid/content/Context;)V

    :goto_0
    return-void

    :cond_0
    const-string v1, "xyf"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v0, "xyf"

    const-string v1, "log upload failed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
