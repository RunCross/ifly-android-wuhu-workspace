.class Lcom/qihoo360/mobilesafe/telephony_htc328/DoubleTelephonyManager$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qihoo360/mobilesafe/telephony_htc328/DoubleTelephonyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Lcom/qihoo360/mobilesafe/telephony_htc328/PhoneStateListenerProxy;

.field b:I

.field final synthetic c:Lcom/qihoo360/mobilesafe/telephony_htc328/DoubleTelephonyManager;


# direct methods
.method public constructor <init>(Lcom/qihoo360/mobilesafe/telephony_htc328/DoubleTelephonyManager;Lh;I)V
    .locals 1

    iput-object p1, p0, Lcom/qihoo360/mobilesafe/telephony_htc328/DoubleTelephonyManager$a;->c:Lcom/qihoo360/mobilesafe/telephony_htc328/DoubleTelephonyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/qihoo360/mobilesafe/telephony_htc328/PhoneStateListenerProxy;

    invoke-direct {v0, p1, p2}, Lcom/qihoo360/mobilesafe/telephony_htc328/PhoneStateListenerProxy;-><init>(Lcom/qihoo360/mobilesafe/telephony_htc328/DoubleTelephonyManager;Lh;)V

    iput-object v0, p0, Lcom/qihoo360/mobilesafe/telephony_htc328/DoubleTelephonyManager$a;->a:Lcom/qihoo360/mobilesafe/telephony_htc328/PhoneStateListenerProxy;

    iput p3, p0, Lcom/qihoo360/mobilesafe/telephony_htc328/DoubleTelephonyManager$a;->b:I

    return-void
.end method
