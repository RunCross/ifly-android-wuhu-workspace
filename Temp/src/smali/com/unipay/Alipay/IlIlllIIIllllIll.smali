.class Lcom/unipay/Alipay/IlIlllIIIllllIll;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic _$1:Lcom/unipay/Alipay/MobileSecurePayHelper;


# direct methods
.method constructor <init>(Lcom/unipay/Alipay/MobileSecurePayHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/Alipay/IlIlllIIIllllIll;->_$1:Lcom/unipay/Alipay/MobileSecurePayHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    iget-object v0, p0, Lcom/unipay/Alipay/IlIlllIIIllllIll;->_$1:Lcom/unipay/Alipay/MobileSecurePayHelper;

    iget-object v0, v0, Lcom/unipay/Alipay/MobileSecurePayHelper;->_$2:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/temp.apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/unipay/Alipay/IlIlllIIIllllIll;->_$1:Lcom/unipay/Alipay/MobileSecurePayHelper;

    iget-object v2, p0, Lcom/unipay/Alipay/IlIlllIIIllllIll;->_$1:Lcom/unipay/Alipay/MobileSecurePayHelper;

    iget-object v2, v2, Lcom/unipay/Alipay/MobileSecurePayHelper;->_$2:Landroid/content/Context;

    const/4 v3, 0x0

    const-string v4, "\u6b63\u5728\u68c0\u6d4b\u5b89\u5168\u652f\u4ed8\u670d\u52a1\u7248\u672c"

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v2, v3, v4, v5, v6}, Lcom/unipay/Alipay/BaseHelper;->showProgress(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unipay/Alipay/MobileSecurePayHelper;->_$1(Lcom/unipay/Alipay/MobileSecurePayHelper;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/unipay/Alipay/IIIllIIlIIIllIlI;

    invoke-direct {v2, p0, v0}, Lcom/unipay/Alipay/IIIllIIlIIIllIlI;-><init>(Lcom/unipay/Alipay/IlIlllIIIllllIll;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method
