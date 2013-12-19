.class Lcom/qihoo360/mobilesafe/telephony_qrd/DoubleTelephonyManager$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qihoo360/mobilesafe/telephony_qrd/DoubleTelephonyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Lcom/qihoo360/mobilesafe/telephony_qrd/PhoneStateListenerProxy;

.field b:Lcom/qihoo360/mobilesafe/telephony_qrd/PhoneStateListenerProxy;

.field c:I

.field final synthetic d:Lcom/qihoo360/mobilesafe/telephony_qrd/DoubleTelephonyManager;


# direct methods
.method public constructor <init>(Lcom/qihoo360/mobilesafe/telephony_qrd/DoubleTelephonyManager;Lh;I)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iput-object p1, p0, Lcom/qihoo360/mobilesafe/telephony_qrd/DoubleTelephonyManager$a;->d:Lcom/qihoo360/mobilesafe/telephony_qrd/DoubleTelephonyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Uniscope_U1203"

    aput-object v1, v0, v3

    const-string v1, "U1203"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "DOOV_D920"

    aput-object v2, v0, v1

    invoke-static {v0}, Lg;->a([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    new-instance v0, Lcom/qihoo360/mobilesafe/telephony_qrd/PhoneStateListenerProxy;

    invoke-direct {v0, p1, p2, v3, v3}, Lcom/qihoo360/mobilesafe/telephony_qrd/PhoneStateListenerProxy;-><init>(Lcom/qihoo360/mobilesafe/telephony_qrd/DoubleTelephonyManager;Lh;II)V

    iput-object v0, p0, Lcom/qihoo360/mobilesafe/telephony_qrd/DoubleTelephonyManager$a;->a:Lcom/qihoo360/mobilesafe/telephony_qrd/PhoneStateListenerProxy;

    new-instance v0, Lcom/qihoo360/mobilesafe/telephony_qrd/PhoneStateListenerProxy;

    invoke-direct {v0, p1, p2, v4, v3}, Lcom/qihoo360/mobilesafe/telephony_qrd/PhoneStateListenerProxy;-><init>(Lcom/qihoo360/mobilesafe/telephony_qrd/DoubleTelephonyManager;Lh;II)V

    iput-object v0, p0, Lcom/qihoo360/mobilesafe/telephony_qrd/DoubleTelephonyManager$a;->b:Lcom/qihoo360/mobilesafe/telephony_qrd/PhoneStateListenerProxy;

    :goto_0
    iput p3, p0, Lcom/qihoo360/mobilesafe/telephony_qrd/DoubleTelephonyManager$a;->c:I

    return-void

    :cond_0
    invoke-static {p1}, Lcom/qihoo360/mobilesafe/telephony_qrd/DoubleTelephonyManager;->a(Lcom/qihoo360/mobilesafe/telephony_qrd/DoubleTelephonyManager;)I

    move-result v0

    if-ne v0, v4, :cond_1

    new-instance v0, Lcom/qihoo360/mobilesafe/telephony_qrd/PhoneStateListenerProxy;

    invoke-direct {v0, p1, p2, v3, v3}, Lcom/qihoo360/mobilesafe/telephony_qrd/PhoneStateListenerProxy;-><init>(Lcom/qihoo360/mobilesafe/telephony_qrd/DoubleTelephonyManager;Lh;II)V

    iput-object v0, p0, Lcom/qihoo360/mobilesafe/telephony_qrd/DoubleTelephonyManager$a;->a:Lcom/qihoo360/mobilesafe/telephony_qrd/PhoneStateListenerProxy;

    new-instance v0, Lcom/qihoo360/mobilesafe/telephony_qrd/PhoneStateListenerProxy;

    invoke-direct {v0, p1, p2, v4, v3}, Lcom/qihoo360/mobilesafe/telephony_qrd/PhoneStateListenerProxy;-><init>(Lcom/qihoo360/mobilesafe/telephony_qrd/DoubleTelephonyManager;Lh;II)V

    iput-object v0, p0, Lcom/qihoo360/mobilesafe/telephony_qrd/DoubleTelephonyManager$a;->b:Lcom/qihoo360/mobilesafe/telephony_qrd/PhoneStateListenerProxy;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/qihoo360/mobilesafe/telephony_qrd/PhoneStateListenerProxy;

    invoke-direct {v0, p1, p2, v3}, Lcom/qihoo360/mobilesafe/telephony_qrd/PhoneStateListenerProxy;-><init>(Lcom/qihoo360/mobilesafe/telephony_qrd/DoubleTelephonyManager;Lh;I)V

    iput-object v0, p0, Lcom/qihoo360/mobilesafe/telephony_qrd/DoubleTelephonyManager$a;->a:Lcom/qihoo360/mobilesafe/telephony_qrd/PhoneStateListenerProxy;

    new-instance v0, Lcom/qihoo360/mobilesafe/telephony_qrd/PhoneStateListenerProxy;

    invoke-direct {v0, p1, p2, v4}, Lcom/qihoo360/mobilesafe/telephony_qrd/PhoneStateListenerProxy;-><init>(Lcom/qihoo360/mobilesafe/telephony_qrd/DoubleTelephonyManager;Lh;I)V

    iput-object v0, p0, Lcom/qihoo360/mobilesafe/telephony_qrd/DoubleTelephonyManager$a;->b:Lcom/qihoo360/mobilesafe/telephony_qrd/PhoneStateListenerProxy;

    goto :goto_0
.end method
