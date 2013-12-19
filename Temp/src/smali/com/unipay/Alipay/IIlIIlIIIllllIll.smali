.class Lcom/unipay/Alipay/IIlIIlIIIllllIll;
.super Landroid/os/Handler;


# instance fields
.field final synthetic _$1:Lcom/unipay/Alipay/MobileSecurePayHelper;


# direct methods
.method constructor <init>(Lcom/unipay/Alipay/MobileSecurePayHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/Alipay/IIlIIlIIIllllIll;->_$1:Lcom/unipay/Alipay/MobileSecurePayHelper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    :goto_1
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/unipay/Alipay/IIlIIlIIIllllIll;->_$1:Lcom/unipay/Alipay/MobileSecurePayHelper;

    invoke-virtual {v0}, Lcom/unipay/Alipay/MobileSecurePayHelper;->_$1()V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/unipay/Alipay/IIlIIlIIIllllIll;->_$1:Lcom/unipay/Alipay/MobileSecurePayHelper;

    iget-object v2, p0, Lcom/unipay/Alipay/IIlIIlIIIllllIll;->_$1:Lcom/unipay/Alipay/MobileSecurePayHelper;

    iget-object v2, v2, Lcom/unipay/Alipay/MobileSecurePayHelper;->_$2:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/unipay/Alipay/MobileSecurePayHelper;->showInstallConfirmDialog(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
