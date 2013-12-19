.class public Lmm/purchasesdk/l/g;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static aQ:Ljava/lang/String;

.field public static aR:Ljava/lang/String;

.field public static aS:Ljava/lang/String;

.field private static ag:I

.field private static ah:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v2, 0x2710

    const/4 v1, 0x0

    const-class v0, Lmm/purchasesdk/l/g;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmm/purchasesdk/l/g;->TAG:Ljava/lang/String;

    sput v2, Lmm/purchasesdk/l/g;->ag:I

    sput v2, Lmm/purchasesdk/l/g;->ah:I

    sput-object v1, Lmm/purchasesdk/l/g;->aQ:Ljava/lang/String;

    sput-object v1, Lmm/purchasesdk/l/g;->aR:Ljava/lang/String;

    sput-object v1, Lmm/purchasesdk/l/g;->aS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/ccit/mmwlan/phone/IPDress_ForPhone;
    .locals 2

    new-instance v0, Lcom/ccit/mmwlan/phone/IPDress_ForPhone;

    invoke-direct {v0}, Lcom/ccit/mmwlan/phone/IPDress_ForPhone;-><init>()V

    const-string v1, "ospd.mmarket.com:80"

    invoke-virtual {v0, v1}, Lcom/ccit/mmwlan/phone/IPDress_ForPhone;->setStrApplySecCertIP(Ljava/lang/String;)V

    const-string v1, "10658424"

    invoke-virtual {v0, v1}, Lcom/ccit/mmwlan/phone/IPDress_ForPhone;->setStrSMSNumber(Ljava/lang/String;)V

    return-object v0
.end method

.method public static a()Lcom/ccit/mmwlan/vo/IPDress_ForPad;
    .locals 2

    new-instance v0, Lcom/ccit/mmwlan/vo/IPDress_ForPad;

    invoke-direct {v0}, Lcom/ccit/mmwlan/vo/IPDress_ForPad;-><init>()V

    const-string v1, "ospd.mmarket.com:80"

    invoke-virtual {v0, v1}, Lcom/ccit/mmwlan/vo/IPDress_ForPad;->setStrApplySecCertIP(Ljava/lang/String;)V

    const-string v1, "ospd.mmarket.com:80"

    invoke-virtual {v0, v1}, Lcom/ccit/mmwlan/vo/IPDress_ForPad;->setStrGetDeviceName(Ljava/lang/String;)V

    const-string v1, "ospd.mmarket.com:80"

    invoke-virtual {v0, v1}, Lcom/ccit/mmwlan/vo/IPDress_ForPad;->setStrDeviceOuthIp(Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lorg/apache/http/client/HttpClient;
    .locals 5

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    sget-object v1, Lmm/purchasesdk/l/g;->TAG:Ljava/lang/String;

    const-string v2, "network not exists, pls check network"

    invoke-static {v0, v1, v2}, Lmm/purchasesdk/l/e;->a(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    const-string v0, "http.connection.timeout"

    new-instance v2, Ljava/lang/Integer;

    sget v3, Lmm/purchasesdk/l/g;->ah:I

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v0, v2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    const-string v0, "http.socket.timeout"

    new-instance v2, Ljava/lang/Integer;

    sget v3, Lmm/purchasesdk/l/g;->ag:I

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v0, v2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    invoke-static {p0}, Lmm/purchasesdk/l/g;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v2, Lorg/apache/http/HttpHost;

    const/16 v3, 0x50

    const-string v4, "http"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "http.route.default-proxy"

    invoke-interface {v1, v0, v2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    :cond_2
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    invoke-static {p0}, Lmm/purchasesdk/l/d;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "https"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-static {v0, p0, v1}, Lmm/purchasesdk/l/g;->a(Lorg/apache/http/client/HttpClient;Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lmm/purchasesdk/l/g;->TAG:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v3, v1}, Lmm/purchasesdk/l/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private static a(Lorg/apache/http/client/HttpClient;Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    const/4 v3, 0x0

    sget-object v0, Lmm/purchasesdk/l/g;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "keystore.type="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lmm/purchasesdk/l/e;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/files/keystore.bks"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const-string v1, "mm10086"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    new-instance v0, Lorg/apache/http/conn/ssl/SSLSocketFactory;

    invoke-direct {v0, v2}, Lorg/apache/http/conn/ssl/SSLSocketFactory;-><init>(Ljava/security/KeyStore;)V

    sget-object v1, Lorg/apache/http/conn/ssl/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    new-instance v1, Lorg/apache/http/conn/scheme/Scheme;

    const-string v2, "https"

    new-instance v3, Ljava/net/URI;

    invoke-direct {v3, p2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URI;->getPort()I

    move-result v3

    invoke-direct {v1, v2, v0, v3}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-interface {p0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 4

    const/4 v1, 0x0

    invoke-static {}, Lmm/purchasesdk/l/c;->d()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_1
    const-string v3, "46000"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "46002"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "46007"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "898600"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    sget-object v2, Lmm/purchasesdk/l/g;->TAG:Ljava/lang/String;

    const-string v3, "network not exists, pls check network"

    invoke-static {v0, v2, v3}, Lmm/purchasesdk/l/e;->a(ILjava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v2, "cmwap"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "10.0.0.172"

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    const-string v2, "cmmm"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "192.168.11.5"

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public static setTimeout(II)V
    .locals 0

    sput p0, Lmm/purchasesdk/l/g;->ag:I

    sput p1, Lmm/purchasesdk/l/g;->ah:I

    return-void
.end method
