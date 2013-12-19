.class Lcom/unipay/log/IlllIlIIlIlllllI;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic _$1:Lcom/unipay/log/LogNet;

.field final synthetic _$2:Ljava/lang/String;

.field final synthetic _$3:Ljava/lang/String;

.field final synthetic _$4:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/unipay/log/LogNet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/log/IlllIlIIlIlllllI;->_$1:Lcom/unipay/log/LogNet;

    iput-object p2, p0, Lcom/unipay/log/IlllIlIIlIlllllI;->_$4:Ljava/lang/String;

    iput-object p3, p0, Lcom/unipay/log/IlllIlIIlIlllllI;->_$3:Ljava/lang/String;

    iput-object p4, p0, Lcom/unipay/log/IlllIlIIlIlllllI;->_$2:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "xyf"

    const-string v1, "begin"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/unipay/log/LogSocket;->getInstance()Lcom/unipay/log/LogSocket;

    move-result-object v0

    iget-object v1, p0, Lcom/unipay/log/IlllIlIIlIlllllI;->_$4:Ljava/lang/String;

    iget-object v2, p0, Lcom/unipay/log/IlllIlIIlIlllllI;->_$3:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/unipay/log/LogSocket;->updateNewLog(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "xyf"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/unipay/log/IlllIlIIlIlllllI;->_$1:Lcom/unipay/log/LogNet;

    invoke-static {v1, v0}, Lcom/unipay/log/LogNet;->_$1(Lcom/unipay/log/LogNet;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unipay/log/IlllIlIIlIlllllI;->_$2:Ljava/lang/String;

    invoke-static {v0}, Lcom/unipay/log/LogUtils;->deleteFileWithTotalPath(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
