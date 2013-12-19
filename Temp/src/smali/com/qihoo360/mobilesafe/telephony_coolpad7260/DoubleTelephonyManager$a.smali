.class Lcom/qihoo360/mobilesafe/telephony_coolpad7260/DoubleTelephonyManager$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qihoo360/mobilesafe/telephony_coolpad7260/DoubleTelephonyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Lcom/qihoo360/mobilesafe/telephony_coolpad7260/PhoneStateListenerProxy;

.field b:Lcom/qihoo360/mobilesafe/telephony_coolpad7260/PhoneStateListenerProxy;

.field c:I

.field final synthetic d:Lcom/qihoo360/mobilesafe/telephony_coolpad7260/DoubleTelephonyManager;


# direct methods
.method public constructor <init>(Lcom/qihoo360/mobilesafe/telephony_coolpad7260/DoubleTelephonyManager;Lh;I)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/qihoo360/mobilesafe/telephony_coolpad7260/DoubleTelephonyManager$a;->d:Lcom/qihoo360/mobilesafe/telephony_coolpad7260/DoubleTelephonyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/qihoo360/mobilesafe/telephony_coolpad7260/PhoneStateListenerProxy;

    sget-object v0, Lcom/qihoo360/mobilesafe/telephony_coolpad7260/DoubleTelephonyManager;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo;

    invoke-direct {v1, p2, v2, v0}, Lcom/qihoo360/mobilesafe/telephony_coolpad7260/PhoneStateListenerProxy;-><init>(Lh;ILo;)V

    iput-object v1, p0, Lcom/qihoo360/mobilesafe/telephony_coolpad7260/DoubleTelephonyManager$a;->a:Lcom/qihoo360/mobilesafe/telephony_coolpad7260/PhoneStateListenerProxy;

    new-instance v1, Lcom/qihoo360/mobilesafe/telephony_coolpad7260/PhoneStateListenerProxy;

    sget-object v0, Lcom/qihoo360/mobilesafe/telephony_coolpad7260/DoubleTelephonyManager;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo;

    invoke-direct {v1, p2, v3, v0}, Lcom/qihoo360/mobilesafe/telephony_coolpad7260/PhoneStateListenerProxy;-><init>(Lh;ILo;)V

    iput-object v1, p0, Lcom/qihoo360/mobilesafe/telephony_coolpad7260/DoubleTelephonyManager$a;->b:Lcom/qihoo360/mobilesafe/telephony_coolpad7260/PhoneStateListenerProxy;

    iput p3, p0, Lcom/qihoo360/mobilesafe/telephony_coolpad7260/DoubleTelephonyManager$a;->c:I

    return-void
.end method
