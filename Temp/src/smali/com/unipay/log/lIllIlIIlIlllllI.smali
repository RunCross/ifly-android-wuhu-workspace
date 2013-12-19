.class Lcom/unipay/log/lIllIlIIlIlllllI;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic _$1:Lcom/unipay/log/LogNet;

.field final synthetic _$2:Ljava/lang/String;

.field final synthetic _$3:Ljava/lang/String;

.field final synthetic _$4:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/unipay/log/LogNet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/log/lIllIlIIlIlllllI;->_$1:Lcom/unipay/log/LogNet;

    iput-object p2, p0, Lcom/unipay/log/lIllIlIIlIlllllI;->_$4:Ljava/lang/String;

    iput-object p3, p0, Lcom/unipay/log/lIllIlIIlIlllllI;->_$3:Ljava/lang/String;

    iput-object p4, p0, Lcom/unipay/log/lIllIlIIlIlllllI;->_$2:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/unipay/log/lIllIlIIlIlllllI;->_$4:Ljava/lang/String;

    invoke-static {}, Lcom/unipay/log/LogSocket;->getInstance()Lcom/unipay/log/LogSocket;

    move-result-object v1

    iget-object v2, p0, Lcom/unipay/log/lIllIlIIlIlllllI;->_$3:Ljava/lang/String;

    iget-object v3, p0, Lcom/unipay/log/lIllIlIIlIlllllI;->_$2:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/unipay/log/LogSocket;->updateNewLog(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/unipay/log/lIllIlIIlIlllllI;->_$1:Lcom/unipay/log/LogNet;

    invoke-static {v2, v1}, Lcom/unipay/log/LogNet;->_$2(Lcom/unipay/log/LogNet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/unipay/log/LogSocket;->getInstance()Lcom/unipay/log/LogSocket;

    move-result-object v1

    iget-object v2, p0, Lcom/unipay/log/lIllIlIIlIlllllI;->_$3:Ljava/lang/String;

    iget-object v3, p0, Lcom/unipay/log/lIllIlIIlIlllllI;->_$2:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/unipay/log/LogSocket;->updateNewLog(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/unipay/log/lIllIlIIlIlllllI;->_$1:Lcom/unipay/log/LogNet;

    invoke-static {v2, v1}, Lcom/unipay/log/LogNet;->_$2(Lcom/unipay/log/LogNet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/unipay/log/LogSocket;->getInstance()Lcom/unipay/log/LogSocket;

    move-result-object v1

    iget-object v2, p0, Lcom/unipay/log/lIllIlIIlIlllllI;->_$3:Ljava/lang/String;

    iget-object v3, p0, Lcom/unipay/log/lIllIlIIlIlllllI;->_$2:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/unipay/log/LogSocket;->updateNewLog(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/unipay/log/lIllIlIIlIlllllI;->_$1:Lcom/unipay/log/LogNet;

    invoke-static {v2, v1}, Lcom/unipay/log/LogNet;->_$2(Lcom/unipay/log/LogNet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/unipay/log/lIllIlIIlIlllllI;->_$2:Ljava/lang/String;

    const-string v2, "xyf"

    invoke-static {v1, v2, v0}, Lcom/unipay/log/LogUtils;->myLog_i2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
