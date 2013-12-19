.class public Lcom/qihoo360/mobilesafe/telephony_xt928/PhoneStateListenerProxy;
.super Landroid/telephony/PhoneStateListener;


# instance fields
.field private final a:I

.field private b:Lh;


# direct methods
.method public constructor <init>(Lh;I)V
    .locals 0

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    iput-object p1, p0, Lcom/qihoo360/mobilesafe/telephony_xt928/PhoneStateListenerProxy;->b:Lh;

    iput p2, p0, Lcom/qihoo360/mobilesafe/telephony_xt928/PhoneStateListenerProxy;->a:I

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/qihoo360/mobilesafe/telephony_xt928/PhoneStateListenerProxy;->b:Lh;

    iget v1, p0, Lcom/qihoo360/mobilesafe/telephony_xt928/PhoneStateListenerProxy;->a:I

    invoke-virtual {v0, p1, p2, v1}, Lh;->a(ILjava/lang/String;I)V

    return-void
.end method

.method public onCellLocationChanged(Landroid/telephony/CellLocation;)V
    .locals 2

    iget-object v0, p0, Lcom/qihoo360/mobilesafe/telephony_xt928/PhoneStateListenerProxy;->b:Lh;

    iget v1, p0, Lcom/qihoo360/mobilesafe/telephony_xt928/PhoneStateListenerProxy;->a:I

    invoke-virtual {v0, p1, v1}, Lh;->a(Landroid/telephony/CellLocation;I)V

    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 2

    iget-object v0, p0, Lcom/qihoo360/mobilesafe/telephony_xt928/PhoneStateListenerProxy;->b:Lh;

    iget v1, p0, Lcom/qihoo360/mobilesafe/telephony_xt928/PhoneStateListenerProxy;->a:I

    invoke-virtual {v0, p1, v1}, Lh;->a(Landroid/telephony/ServiceState;I)V

    return-void
.end method
