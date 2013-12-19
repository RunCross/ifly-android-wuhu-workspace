.class Lcom/unipay/Alipay/IIIllIIlIIIllIlI;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic _$1:Lcom/unipay/Alipay/IlIlllIIIllllIll;

.field final synthetic _$2:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/unipay/Alipay/IlIlllIIIllllIll;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/Alipay/IIIllIIlIIIllIlI;->_$1:Lcom/unipay/Alipay/IlIlllIIIllllIll;

    iput-object p2, p0, Lcom/unipay/Alipay/IIIllIIlIIIllIlI;->_$2:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/unipay/Alipay/IIIllIIlIIIllIlI;->_$1:Lcom/unipay/Alipay/IlIlllIIIllllIll;

    iget-object v0, v0, Lcom/unipay/Alipay/IlIlllIIIllllIll;->_$1:Lcom/unipay/Alipay/MobileSecurePayHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/unipay/Alipay/MobileSecurePayHelper;->checkNewUpdate(Landroid/content/pm/PackageInfo;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/unipay/Alipay/IIIllIIlIIIllIlI;->_$1:Lcom/unipay/Alipay/IlIlllIIIllllIll;

    iget-object v1, v1, Lcom/unipay/Alipay/IlIlllIIIllllIll;->_$1:Lcom/unipay/Alipay/MobileSecurePayHelper;

    iget-object v2, p0, Lcom/unipay/Alipay/IIIllIIlIIIllIlI;->_$1:Lcom/unipay/Alipay/IlIlllIIIllllIll;

    iget-object v2, v2, Lcom/unipay/Alipay/IlIlllIIIllllIll;->_$1:Lcom/unipay/Alipay/MobileSecurePayHelper;

    iget-object v2, v2, Lcom/unipay/Alipay/MobileSecurePayHelper;->_$2:Landroid/content/Context;

    iget-object v3, p0, Lcom/unipay/Alipay/IIIllIIlIIIllIlI;->_$2:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, v3}, Lcom/unipay/Alipay/MobileSecurePayHelper;->retrieveApkFromNet(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/unipay/Alipay/IIIllIIlIIIllIlI;->_$2:Ljava/lang/String;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/unipay/Alipay/IIIllIIlIIIllIlI;->_$1:Lcom/unipay/Alipay/IlIlllIIIllllIll;

    iget-object v1, v1, Lcom/unipay/Alipay/IlIlllIIIllllIll;->_$1:Lcom/unipay/Alipay/MobileSecurePayHelper;

    invoke-static {v1}, Lcom/unipay/Alipay/MobileSecurePayHelper;->_$1(Lcom/unipay/Alipay/MobileSecurePayHelper;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
