.class public final Lcom/ccit/mmwlan/b/a;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;I)Lcom/ccit/mmwlan/vo/DeviceInfo;
    .locals 9

    const/4 v7, 0x2

    const/4 v1, 0x0

    const/4 v6, 0x1

    new-instance v3, Lcom/ccit/mmwlan/vo/DeviceInfo;

    invoke-direct {v3}, Lcom/ccit/mmwlan/vo/DeviceInfo;-><init>()V

    if-eqz p0, :cond_0

    if-eqz p1, :cond_1

    if-eq p1, v6, :cond_1

    if-eq p1, v7, :cond_1

    :cond_0
    new-instance v0, Lcom/ccit/mmwlan/exception/ClientSDKException;

    const-string v1, "\u53c2\u6570\u9519\u8bef!"

    invoke-direct {v0, v1}, Lcom/ccit/mmwlan/exception/ClientSDKException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-nez p1, :cond_6

    invoke-static {v1}, Lcom/ccit/mmwlan/b/a;->a(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v5, ""

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    const-string v2, "000000000000000"

    :cond_3
    if-eqz v4, :cond_4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_4
    new-instance v0, Lcom/ccit/mmwlan/exception/ClientSDKException;

    const-string v1, "\u83b7\u53d6\u8bbe\u5907\u4fe1\u606fimsi\u6216imei\u5931\u8d25!"

    invoke-direct {v0, v1}, Lcom/ccit/mmwlan/exception/ClientSDKException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    invoke-virtual {v3, v4}, Lcom/ccit/mmwlan/vo/DeviceInfo;->setStrImsi(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lcom/ccit/mmwlan/vo/DeviceInfo;->setStrImei(Ljava/lang/String;)V

    :cond_6
    if-ne p1, v6, :cond_b

    invoke-static {v6}, Lcom/ccit/mmwlan/b/a;->a(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_7
    const-string v0, "000000000000000"

    :cond_8
    if-eqz v2, :cond_9

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    :cond_9
    new-instance v0, Lcom/ccit/mmwlan/exception/ClientSDKException;

    const-string v1, "\u83b7\u53d6\u8bbe\u5907\u4fe1\u606fimsi\u6216imei\u5931\u8d25!"

    invoke-direct {v0, v1}, Lcom/ccit/mmwlan/exception/ClientSDKException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    invoke-virtual {v3, v2}, Lcom/ccit/mmwlan/vo/DeviceInfo;->setStrImsi(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lcom/ccit/mmwlan/vo/DeviceInfo;->setStrImei(Ljava/lang/String;)V

    :cond_b
    if-ne p1, v7, :cond_e

    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_c
    new-instance v0, Lcom/ccit/mmwlan/exception/ClientSDKException;

    const-string v1, "\u83b7\u53d6\u8bbe\u5907\u4fe1\u606fmac\u5931\u8d25!"

    invoke-direct {v0, v1}, Lcom/ccit/mmwlan/exception/ClientSDKException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const-string v0, ""

    move v8, v1

    move-object v1, v0

    move v0, v8

    :goto_0
    array-length v4, v2

    if-lt v0, v4, :cond_10

    invoke-virtual {v3, v1}, Lcom/ccit/mmwlan/vo/DeviceInfo;->setStrMac(Ljava/lang/String;)V

    :cond_e
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    :cond_f
    new-instance v0, Lcom/ccit/mmwlan/exception/ClientSDKException;

    const-string v1, "\u83b7\u53d6\u5e94\u7528\u79c1\u6709\u8def\u5f84\u5931\u8d25!"

    invoke-direct {v0, v1}, Lcom/ccit/mmwlan/exception/ClientSDKException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v1, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_11
    invoke-virtual {v3, v0}, Lcom/ccit/mmwlan/vo/DeviceInfo;->setFilePath(Ljava/lang/String;)V

    const-string v0, "MmClientSdk"

    invoke-virtual {v3}, Lcom/ccit/mmwlan/vo/DeviceInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3
.end method

.method private static a(Z)Ljava/lang/String;
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v1, 0x0

    :goto_0
    const-string v2, "android.os.ServiceManager"

    const-string v3, "getService"

    new-array v4, v6, [Ljava/lang/Class;

    const-class v0, Ljava/lang/String;

    aput-object v0, v4, v1

    new-array v5, v6, [Ljava/lang/Object;

    if-eqz p0, :cond_1

    const-string v0, "iphonesubinfo2"

    :goto_1
    aput-object v0, v5, v1

    invoke-static {v2, v3, v4, v5}, Lcom/ccit/mmwlan/b/c;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez p0, :cond_0

    if-nez v0, :cond_0

    const-string v0, "android.os.ServiceManager"

    const-string v2, "getService"

    new-array v3, v6, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v1

    new-array v4, v6, [Ljava/lang/Object;

    const-string v5, "iphonesubinfo"

    aput-object v5, v4, v1

    invoke-static {v0, v2, v3, v4}, Lcom/ccit/mmwlan/b/c;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_2

    if-eqz p0, :cond_2

    move p0, v1

    goto :goto_0

    :cond_1
    const-string v0, "iphonesubinfo1"

    goto :goto_1

    :cond_2
    if-nez v0, :cond_3

    const-string v0, ""

    :goto_2
    return-object v0

    :cond_3
    const-string v2, "com.android.internal.telephony.IPhoneSubInfo$Stub"

    const-string v3, "asInterface"

    new-array v4, v6, [Ljava/lang/Class;

    const-class v5, Landroid/os/IBinder;

    aput-object v5, v4, v1

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v0, v5, v1

    invoke-static {v2, v3, v4, v5}, Lcom/ccit/mmwlan/b/c;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_4

    const-string v0, ""

    goto :goto_2

    :cond_4
    const-string v0, "getSubscriberId"

    invoke-static {v2, v0, v7, v7}, Lcom/ccit/mmwlan/b/c;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_5

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_5
    const-string v0, "getSubscriberIdExt"

    new-array v3, v6, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v1

    new-array v4, v6, [Ljava/lang/Object;

    const/4 v5, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v2, v0, v3, v4}, Lcom/ccit/mmwlan/b/c;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_6
    const-string v1, "MmClientSdk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getSubscriberId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
