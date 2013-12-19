.class Lcom/qihoo360/mobilesafe/telephonydefault/DoubleTelephonyManager$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qihoo360/mobilesafe/telephonydefault/DoubleTelephonyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Lcom/qihoo360/mobilesafe/telephonydefault/PhoneStateListenerProxy;

.field b:I

.field final synthetic c:Lcom/qihoo360/mobilesafe/telephonydefault/DoubleTelephonyManager;


# direct methods
.method public constructor <init>(Lcom/qihoo360/mobilesafe/telephonydefault/DoubleTelephonyManager;Lh;I)V
    .locals 2

    iput-object p1, p0, Lcom/qihoo360/mobilesafe/telephonydefault/DoubleTelephonyManager$a;->c:Lcom/qihoo360/mobilesafe/telephonydefault/DoubleTelephonyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/qihoo360/mobilesafe/telephonydefault/PhoneStateListenerProxy;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lcom/qihoo360/mobilesafe/telephonydefault/PhoneStateListenerProxy;-><init>(Lh;I)V

    iput-object v0, p0, Lcom/qihoo360/mobilesafe/telephonydefault/DoubleTelephonyManager$a;->a:Lcom/qihoo360/mobilesafe/telephonydefault/PhoneStateListenerProxy;

    iput p3, p0, Lcom/qihoo360/mobilesafe/telephonydefault/DoubleTelephonyManager$a;->b:I

    return-void
.end method
