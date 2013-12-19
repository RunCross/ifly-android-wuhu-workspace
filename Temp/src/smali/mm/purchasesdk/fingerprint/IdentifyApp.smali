.class public Lmm/purchasesdk/fingerprint/IdentifyApp;
.super Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    :try_start_0
    const-string v0, "identifyapp"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "IdentifyApp"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "loadLibrary faile"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmm/purchasesdk/l/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a(Ljava/lang/String;)[B
    .locals 3

    const-class v1, Lmm/purchasesdk/fingerprint/IdentifyApp;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->md5Algorithm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmm/purchasesdk/fingerprint/c;->base64decode(Ljava/lang/String;)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    monitor-exit v1

    return-object v0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v0, "IdentifyApp"

    const-string v2, "base64 decrypt license file failure"

    invoke-static {v0, v2}, Lmm/purchasesdk/l/e;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static native base64decode(Ljava/lang/String;)[B
.end method

.method public static native base64encode([B)Ljava/lang/String;
.end method

.method public static native checkResponse([B[B[B)I
.end method

.method public static native checkSignature(Ljava/lang/String;)I
.end method

.method public static native decrypt([BLjava/lang/String;)[B
.end method

.method public static native encryptPassword(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static synchronized native declared-synchronized gatherAppSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public static native generateTransactionID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native getAppSignature()Ljava/lang/String;
.end method

.method public static native getAppTrustInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native getLastError()I
.end method

.method public static native getSignature()Ljava/lang/String;
.end method

.method public static native init(Ljava/lang/Object;Ljava/lang/String;)Z
.end method
