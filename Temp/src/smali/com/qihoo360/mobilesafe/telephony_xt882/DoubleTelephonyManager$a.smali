.class public Lcom/qihoo360/mobilesafe/telephony_xt882/DoubleTelephonyManager$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qihoo360/mobilesafe/telephony_xt882/DoubleTelephonyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/qihoo360/mobilesafe/telephony_xt882/PhoneStateListenerProxy;

.field public b:Lcom/qihoo360/mobilesafe/telephony_xt882/PhoneStateListenerProxy;

.field public c:I

.field final synthetic d:Lcom/qihoo360/mobilesafe/telephony_xt882/DoubleTelephonyManager;


# direct methods
.method public constructor <init>(Lcom/qihoo360/mobilesafe/telephony_xt882/DoubleTelephonyManager;Lh;I)V
    .locals 2

    iput-object p1, p0, Lcom/qihoo360/mobilesafe/telephony_xt882/DoubleTelephonyManager$a;->d:Lcom/qihoo360/mobilesafe/telephony_xt882/DoubleTelephonyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/qihoo360/mobilesafe/telephony_xt882/PhoneStateListenerProxy;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lcom/qihoo360/mobilesafe/telephony_xt882/PhoneStateListenerProxy;-><init>(Lh;I)V

    iput-object v0, p0, Lcom/qihoo360/mobilesafe/telephony_xt882/DoubleTelephonyManager$a;->a:Lcom/qihoo360/mobilesafe/telephony_xt882/PhoneStateListenerProxy;

    new-instance v0, Lcom/qihoo360/mobilesafe/telephony_xt882/PhoneStateListenerProxy;

    const/4 v1, 0x1

    invoke-direct {v0, p2, v1}, Lcom/qihoo360/mobilesafe/telephony_xt882/PhoneStateListenerProxy;-><init>(Lh;I)V

    iput-object v0, p0, Lcom/qihoo360/mobilesafe/telephony_xt882/DoubleTelephonyManager$a;->b:Lcom/qihoo360/mobilesafe/telephony_xt882/PhoneStateListenerProxy;

    iput p3, p0, Lcom/qihoo360/mobilesafe/telephony_xt882/DoubleTelephonyManager$a;->c:I

    return-void
.end method
