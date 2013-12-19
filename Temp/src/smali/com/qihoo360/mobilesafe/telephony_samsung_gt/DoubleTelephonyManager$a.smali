.class Lcom/qihoo360/mobilesafe/telephony_samsung_gt/DoubleTelephonyManager$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qihoo360/mobilesafe/telephony_samsung_gt/DoubleTelephonyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Lcom/qihoo360/mobilesafe/telephony_samsung_gt/PhoneStateListenerProxy;

.field b:Lcom/qihoo360/mobilesafe/telephony_samsung_gt/PhoneStateListenerProxy;

.field c:I

.field final synthetic d:Lcom/qihoo360/mobilesafe/telephony_samsung_gt/DoubleTelephonyManager;


# direct methods
.method public constructor <init>(Lcom/qihoo360/mobilesafe/telephony_samsung_gt/DoubleTelephonyManager;Lh;I)V
    .locals 2

    iput-object p1, p0, Lcom/qihoo360/mobilesafe/telephony_samsung_gt/DoubleTelephonyManager$a;->d:Lcom/qihoo360/mobilesafe/telephony_samsung_gt/DoubleTelephonyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/qihoo360/mobilesafe/telephony_samsung_gt/PhoneStateListenerProxy;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/qihoo360/mobilesafe/telephony_samsung_gt/PhoneStateListenerProxy;-><init>(Lcom/qihoo360/mobilesafe/telephony_samsung_gt/DoubleTelephonyManager;Lh;I)V

    iput-object v0, p0, Lcom/qihoo360/mobilesafe/telephony_samsung_gt/DoubleTelephonyManager$a;->a:Lcom/qihoo360/mobilesafe/telephony_samsung_gt/PhoneStateListenerProxy;

    new-instance v0, Lcom/qihoo360/mobilesafe/telephony_samsung_gt/PhoneStateListenerProxy;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1}, Lcom/qihoo360/mobilesafe/telephony_samsung_gt/PhoneStateListenerProxy;-><init>(Lcom/qihoo360/mobilesafe/telephony_samsung_gt/DoubleTelephonyManager;Lh;I)V

    iput-object v0, p0, Lcom/qihoo360/mobilesafe/telephony_samsung_gt/DoubleTelephonyManager$a;->b:Lcom/qihoo360/mobilesafe/telephony_samsung_gt/PhoneStateListenerProxy;

    iput p3, p0, Lcom/qihoo360/mobilesafe/telephony_samsung_gt/DoubleTelephonyManager$a;->c:I

    return-void
.end method
