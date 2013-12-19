.class public Lcom/unipay/Alipay/MobileSecurePayHelper;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unipay/Alipay/MobileSecurePayHelper$DialogListener;
    }
.end annotation


# static fields
.field static final _$4:Ljava/lang/String; = "MobileSecurePayHelper"


# instance fields
.field private _$1:Landroid/os/Handler;

.field _$2:Landroid/content/Context;

.field private _$3:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/unipay/Alipay/MobileSecurePayHelper;->_$3:Landroid/app/ProgressDialog;

    iput-object v0, p0, Lcom/unipay/Alipay/MobileSecurePayHelper;->_$2:Landroid/content/Context;

    new-instance v0, Lcom/unipay/Alipay/IIlIIlIIIllllIll;

    invoke-direct {v0, p0}, Lcom/unipay/Alipay/IIlIIlIIIllllIll;-><init>(Lcom/unipay/Alipay/MobileSecurePayHelper;)V

    iput-object v0, p0, Lcom/unipay/Alipay/MobileSecurePayHelper;->_$1:Landroid/os/Handler;

    iput-object p1, p0, Lcom/unipay/Alipay/MobileSecurePayHelper;->_$2:Landroid/content/Context;

    return-void
.end method

.method static synthetic _$1(Lcom/unipay/Alipay/MobileSecurePayHelper;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0

    iput-object p1, p0, Lcom/unipay/Alipay/MobileSecurePayHelper;->_$3:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic _$1(Lcom/unipay/Alipay/MobileSecurePayHelper;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/unipay/Alipay/MobileSecurePayHelper;->_$1:Landroid/os/Handler;

    return-object v0
.end method

.method public static getApkInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method _$1()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/unipay/Alipay/MobileSecurePayHelper;->_$3:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unipay/Alipay/MobileSecurePayHelper;->_$3:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unipay/Alipay/MobileSecurePayHelper;->_$3:Landroid/app/ProgressDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public checkNewUpdate(Landroid/content/pm/PackageInfo;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "1.0.0"

    invoke-virtual {p0, v1}, Lcom/unipay/Alipay/MobileSecurePayHelper;->sendCheckNewUpdate(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "needUpdate"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "updateUrl"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public detectMobile_sp()Z
    .locals 1

    invoke-virtual {p0}, Lcom/unipay/Alipay/MobileSecurePayHelper;->isMobile_spExist()Z

    move-result v0

    return v0
.end method

.method public isMobile_spExist()Z
    .locals 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/unipay/Alipay/MobileSecurePayHelper;->_$2:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v3

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v4, "com.alipay.android.app"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    :cond_0
    return v2

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public retrieveApkFromAssets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v2, 0x400

    new-array v2, v2, [B

    :goto_0
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_0

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    return v0

    :cond_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, 0x1

    goto :goto_1
.end method

.method public retrieveApkFromNet(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/unipay/Alipay/NetworkManager;

    iget-object v2, p0, Lcom/unipay/Alipay/MobileSecurePayHelper;->_$2:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/unipay/Alipay/NetworkManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1, p2, p3}, Lcom/unipay/Alipay/NetworkManager;->urlDownloadToFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public sendCheckNewUpdate(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "action"

    const-string v3, "update"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "platform"

    const-string v4, "android"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "version"

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "partner"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "data"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/unipay/Alipay/MobileSecurePayHelper;->sendRequest(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public sendRequest(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 4

    new-instance v2, Lcom/unipay/Alipay/NetworkManager;

    iget-object v0, p0, Lcom/unipay/Alipay/MobileSecurePayHelper;->_$2:Landroid/content/Context;

    invoke-direct {v2, v0}, Lcom/unipay/Alipay/NetworkManager;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    :try_start_0
    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v0, "https://msp.alipay.com/x.htm"

    invoke-virtual {v2, p1, v0}, Lcom/unipay/Alipay/NetworkManager;->SendAndWaitResponse(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_0
    if-eqz v0, :cond_0

    const-string v1, "MobileSecurePayHelper"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unipay/Alipay/BaseHelper;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2

    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method

.method public showDownloadConfirmDialog(Landroid/content/Context;Lcom/unipay/Alipay/MobileSecurePayHelper$DialogListener;)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/unipay/Alipay/MobileSecurePayHelper;->_$2:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x108009b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    const-string v1, "\u5b89\u88c5\u63d0\u793a"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v1, "\u4e3a\u4fdd\u8bc1\u60a8\u7684\u4ea4\u6613\u5b89\u5168\uff0c\u9700\u8981\u60a8\u5b89\u88c5\r\n\u652f\u4ed8\u5b9d\u5b89\u5168\u652f\u4ed8\u670d\u52a1\uff0c\u624d\u80fd\u8fdb\u884c\u4ed8\u6b3e\u3002\r\n\r\n\u70b9\u51fb\u786e\u5b9a\u7acb\u5373\u5b89\u88c5\u3002"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v1, "\u786e\u5b9a"

    new-instance v2, Lcom/unipay/Alipay/IlIlllIIIllllIll;

    invoke-direct {v2, p0}, Lcom/unipay/Alipay/IlIlllIIIllllIll;-><init>(Lcom/unipay/Alipay/MobileSecurePayHelper;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v1, "\u53d6\u6d88"

    new-instance v2, Lcom/unipay/Alipay/lIlIIlIIIllllIll;

    invoke-direct {v2, p0, p2}, Lcom/unipay/Alipay/lIlIIlIIIllllIll;-><init>(Lcom/unipay/Alipay/MobileSecurePayHelper;Lcom/unipay/Alipay/MobileSecurePayHelper$DialogListener;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public showInstallConfirmDialog(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const-string v0, "777"

    invoke-static {v0, p2}, Lcom/unipay/Alipay/BaseHelper;->chmod(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "file://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
