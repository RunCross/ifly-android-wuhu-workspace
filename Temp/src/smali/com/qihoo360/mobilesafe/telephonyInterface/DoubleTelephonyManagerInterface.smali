.class public abstract Lcom/qihoo360/mobilesafe/telephonyInterface/DoubleTelephonyManagerInterface;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qihoo360/mobilesafe/telephonyInterface/DoubleTelephonyManagerInterface$SysIdType;
    }
.end annotation


# static fields
.field public static final CALL_CARD_NOT_GET:I = -0x1

.field public static final CALL_CARD_NOT_SUPPORT:I = -0x2

.field public static final CALL_STATE_IDLE:I = 0x0

.field public static final CALL_STATE_OFFHOOK:I = 0x2

.field public static final CALL_STATE_RINGING:I = 0x1

.field public static final CARD_ID1:I = 0x0

.field public static final CARD_ID2:I = 0x1

.field public static final CARD_UNKNOWN:I = -0x1

.field public static final MOBILE_STATE_CANNOT_GET:I = -0x1

.field public static final MOBILE_STATE_CONNECTED:I = 0x1

.field public static final MOBILE_STATE_DISCONNECTED:I = 0x0

.field public static final bAppdebug:Z = true


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(I)I
    .locals 1

    const/4 v0, 0x1

    if-gez p1, :cond_1

    const/4 p1, 0x0

    :cond_0
    :goto_0
    return p1

    :cond_1
    if-le p1, v0, :cond_0

    move p1, v0

    goto :goto_0
.end method

.method public addSimIdColumnToProjection(Lcom/qihoo360/mobilesafe/telephonyInterface/DoubleTelephonyManagerInterface$SysIdType;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    return-object p2
.end method

.method public abstract beginMMSConnectivity(Landroid/content/Context;I)I
.end method

.method public doIpcallWithSdk14()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract endMMSConnectivity(Landroid/content/Context;I)V
.end method

.method public abstract getConnectActionCardId(Landroid/content/Intent;)I
.end method

.method public abstract getCurrentMobileState(Landroid/content/Context;)I
.end method

.method public abstract getCurrentNetCard(Landroid/content/Context;)I
.end method

.method public getCurrentNetCardWithUnknowMotoxt800State(Landroid/content/Context;)I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public abstract getDefaultTelephonyService()Lcom/android/internal/telephony/ITelephony;
.end method

.method public getExpandValueBySimId(Lcom/qihoo360/mobilesafe/telephonyInterface/DoubleTelephonyManagerInterface$SysIdType;I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getExpandValues(Lcom/qihoo360/mobilesafe/telephonyInterface/DoubleTelephonyManagerInterface$SysIdType;Landroid/net/Uri;Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public abstract getPhoneCardsList()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/qihoo360/mobilesafe/telephonyInterface/PhoneCardInterface;",
            ">;"
        }
    .end annotation
.end method

.method public getSimId(Lcom/qihoo360/mobilesafe/telephonyInterface/DoubleTelephonyManagerInterface$SysIdType;Landroid/database/Cursor;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSimId(Lcom/qihoo360/mobilesafe/telephonyInterface/DoubleTelephonyManagerInterface$SysIdType;Landroid/database/Cursor;I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSimIdFromIntent(Lcom/qihoo360/mobilesafe/telephonyInterface/DoubleTelephonyManagerInterface$SysIdType;Landroid/content/Intent;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract getSmsFragmentText(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract listen(Lh;I)V
.end method

.method public requestRouteToHost(Landroid/content/Context;III)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p2, p3}, Landroid/net/ConnectivityManager;->requestRouteToHost(II)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot establish route to proxy "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public setExpandValues(Lcom/qihoo360/mobilesafe/telephonyInterface/DoubleTelephonyManagerInterface$SysIdType;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public abstract setMobileDataState(Landroid/content/Context;ZZ)Z
.end method

.method public setSimId(Lcom/qihoo360/mobilesafe/telephonyInterface/DoubleTelephonyManagerInterface$SysIdType;Landroid/content/ContentValues;I)V
    .locals 0

    return-void
.end method
