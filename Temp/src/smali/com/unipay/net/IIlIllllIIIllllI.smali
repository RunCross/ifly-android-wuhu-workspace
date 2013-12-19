.class Lcom/unipay/net/IIlIllllIIIllllI;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic _$1:Lcom/unipay/net/AsyncMultimode;

.field final synthetic _$2:Lcom/unipay/net/AsyncMultimode$RequestListener;

.field final synthetic _$3:Ljava/lang/String;

.field final synthetic _$4:Lcom/unipay/net/Parameters;

.field final synthetic _$5:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/unipay/net/AsyncMultimode;Ljava/lang/String;Lcom/unipay/net/Parameters;Ljava/lang/String;Lcom/unipay/net/AsyncMultimode$RequestListener;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/net/IIlIllllIIIllllI;->_$1:Lcom/unipay/net/AsyncMultimode;

    iput-object p2, p0, Lcom/unipay/net/IIlIllllIIIllllI;->_$5:Ljava/lang/String;

    iput-object p3, p0, Lcom/unipay/net/IIlIllllIIIllllI;->_$4:Lcom/unipay/net/Parameters;

    iput-object p4, p0, Lcom/unipay/net/IIlIllllIIIllllI;->_$3:Ljava/lang/String;

    iput-object p5, p0, Lcom/unipay/net/IIlIllllIIIllllI;->_$2:Lcom/unipay/net/AsyncMultimode$RequestListener;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/unipay/net/IIlIllllIIIllllI;->_$1:Lcom/unipay/net/AsyncMultimode;

    invoke-static {v0}, Lcom/unipay/net/AsyncMultimode;->_$1(Lcom/unipay/net/AsyncMultimode;)Lcom/unipay/net/HttpNet;

    move-result-object v0

    iget-object v1, p0, Lcom/unipay/net/IIlIllllIIIllllI;->_$5:Ljava/lang/String;

    iget-object v2, p0, Lcom/unipay/net/IIlIllllIIIllllI;->_$4:Lcom/unipay/net/Parameters;

    iget-object v3, p0, Lcom/unipay/net/IIlIllllIIIllllI;->_$3:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/unipay/net/HttpNet;->request(Ljava/lang/String;Lcom/unipay/net/Parameters;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    iget-object v1, p0, Lcom/unipay/net/IIlIllllIIIllllI;->_$2:Lcom/unipay/net/AsyncMultimode$RequestListener;

    invoke-interface {v1, v0}, Lcom/unipay/net/AsyncMultimode$RequestListener;->onComplete(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/unipay/net/IIlIllllIIIllllI;->_$2:Lcom/unipay/net/AsyncMultimode$RequestListener;

    invoke-interface {v1, v0}, Lcom/unipay/net/AsyncMultimode$RequestListener;->onError(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/unipay/net/IIlIllllIIIllllI;->_$2:Lcom/unipay/net/AsyncMultimode$RequestListener;

    invoke-interface {v1, v0}, Lcom/unipay/net/AsyncMultimode$RequestListener;->onError(Ljava/lang/Exception;)V

    goto :goto_0
.end method
