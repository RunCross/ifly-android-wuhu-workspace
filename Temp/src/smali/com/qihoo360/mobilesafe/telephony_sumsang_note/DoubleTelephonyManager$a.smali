.class Lcom/qihoo360/mobilesafe/telephony_sumsang_note/DoubleTelephonyManager$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qihoo360/mobilesafe/telephony_sumsang_note/DoubleTelephonyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Lcom/qihoo360/mobilesafe/telephony_sumsang_note/PhoneStateListenerProxy;

.field b:Lcom/qihoo360/mobilesafe/telephony_sumsang_note/PhoneStateListenerProxy;

.field c:I

.field final synthetic d:Lcom/qihoo360/mobilesafe/telephony_sumsang_note/DoubleTelephonyManager;


# direct methods
.method public constructor <init>(Lcom/qihoo360/mobilesafe/telephony_sumsang_note/DoubleTelephonyManager;Lh;I)V
    .locals 2

    iput-object p1, p0, Lcom/qihoo360/mobilesafe/telephony_sumsang_note/DoubleTelephonyManager$a;->d:Lcom/qihoo360/mobilesafe/telephony_sumsang_note/DoubleTelephonyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/qihoo360/mobilesafe/telephony_sumsang_note/PhoneStateListenerProxy;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lcom/qihoo360/mobilesafe/telephony_sumsang_note/PhoneStateListenerProxy;-><init>(Lh;I)V

    iput-object v0, p0, Lcom/qihoo360/mobilesafe/telephony_sumsang_note/DoubleTelephonyManager$a;->a:Lcom/qihoo360/mobilesafe/telephony_sumsang_note/PhoneStateListenerProxy;

    new-instance v0, Lcom/qihoo360/mobilesafe/telephony_sumsang_note/PhoneStateListenerProxy;

    const/4 v1, 0x1

    invoke-direct {v0, p2, v1}, Lcom/qihoo360/mobilesafe/telephony_sumsang_note/PhoneStateListenerProxy;-><init>(Lh;I)V

    iput-object v0, p0, Lcom/qihoo360/mobilesafe/telephony_sumsang_note/DoubleTelephonyManager$a;->b:Lcom/qihoo360/mobilesafe/telephony_sumsang_note/PhoneStateListenerProxy;

    iput p3, p0, Lcom/qihoo360/mobilesafe/telephony_sumsang_note/DoubleTelephonyManager$a;->c:I

    return-void
.end method
