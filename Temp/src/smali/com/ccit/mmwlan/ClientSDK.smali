.class public final Lcom/ccit/mmwlan/ClientSDK;
.super Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "casdkjni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final native AsymmetricDecryptionForBilling(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public final native AsymmetricEncryptionForBilling(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public final native AsymmetricEncryptionForMMLogin(ILjava/lang/String;Lcom/ccit/mmwlan/vo/DeviceInfo;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public final native DestorySecCertForBilling(Ljava/lang/String;)I
.end method

.method public final native SIDSignNativeForBilling(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public final native SignNativeForLogin(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/ccit/mmwlan/vo/DeviceInfo;)Ljava/lang/String;
.end method

.method public final native SymmetricDecryptionForBilling(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
.end method

.method public final native UpdateRandNumForBilling(Ljava/lang/String;)I
.end method

.method public final native UpdateRandNumForLogin(Ljava/lang/String;ILjava/lang/String;Lcom/ccit/mmwlan/vo/DeviceInfo;Ljava/lang/String;)I
.end method

.method public final native VerifyWithCertForBilling(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
.end method

.method public final native checkSecCertNativeForBilling()I
.end method

.method public final native checkSecCertNativeForLogin(ILjava/lang/String;Lcom/ccit/mmwlan/vo/DeviceInfo;)I
.end method

.method public final native encWithCertNativeForLogin(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public final native genPKIKeyNativeForBilling()I
.end method

.method public final native genPKIKeyNativeForLogin(ILjava/lang/String;Lcom/ccit/mmwlan/vo/DeviceInfo;)I
.end method

.method public final native genSIDNative()Ljava/lang/String;
.end method

.method public final native genTempPKIKeyNativeForBilling()Ljava/lang/String;
.end method

.method public final native getCertStateNativeForBilling()I
.end method

.method public final native getDigestNative(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public final native getPubKeyForBilling()Ljava/lang/String;
.end method

.method public final native getPubKeyForLogin(ILjava/lang/String;Lcom/ccit/mmwlan/vo/DeviceInfo;)Ljava/lang/String;
.end method

.method public final native getSecCertNativeForBilling()Ljava/lang/String;
.end method

.method public final native saveSecCertNativeForBilling(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public final native saveSecCertNativeForLogin(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/ccit/mmwlan/vo/DeviceInfo;Ljava/lang/String;)I
.end method

.method public final native transmitInfoNative(Lcom/ccit/mmwlan/vo/DeviceInfo;)I
.end method
