.class public Lcom/qihoo360/mobilesafe/telephony_xt800/PhoneStateListenerProxy;
.super Landroid/telephony/PhoneStateListener;


# instance fields
.field private a:I

.field private b:Lcom/motorola/telephony/SecondaryPhoneStateListener;

.field private c:Lh;


# direct methods
.method public constructor <init>(Lh;I)V
    .locals 1

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    iput-object p1, p0, Lcom/qihoo360/mobilesafe/telephony_xt800/PhoneStateListenerProxy;->c:Lh;

    iput p2, p0, Lcom/qihoo360/mobilesafe/telephony_xt800/PhoneStateListenerProxy;->a:I

    new-instance v0, Lal;

    invoke-direct {v0, p0}, Lal;-><init>(Lcom/qihoo360/mobilesafe/telephony_xt800/PhoneStateListenerProxy;)V

    iput-object v0, p0, Lcom/qihoo360/mobilesafe/telephony_xt800/PhoneStateListenerProxy;->b:Lcom/motorola/telephony/SecondaryPhoneStateListener;

    return-void
.end method


# virtual methods
.method public a()Lcom/motorola/telephony/SecondaryPhoneStateListener;
    .locals 1

    iget-object v0, p0, Lcom/qihoo360/mobilesafe/telephony_xt800/PhoneStateListenerProxy;->b:Lcom/motorola/telephony/SecondaryPhoneStateListener;

    return-object v0
.end method

.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/qihoo360/mobilesafe/telephony_xt800/PhoneStateListenerProxy;->c:Lh;

    iget v1, p0, Lcom/qihoo360/mobilesafe/telephony_xt800/PhoneStateListenerProxy;->a:I

    invoke-virtual {v0, p1, p2, v1}, Lh;->a(ILjava/lang/String;I)V

    return-void
.end method

.method public onCellLocationChanged(Landroid/telephony/CellLocation;)V
    .locals 2

    iget-object v0, p0, Lcom/qihoo360/mobilesafe/telephony_xt800/PhoneStateListenerProxy;->c:Lh;

    iget v1, p0, Lcom/qihoo360/mobilesafe/telephony_xt800/PhoneStateListenerProxy;->a:I

    invoke-virtual {v0, p1, v1}, Lh;->a(Landroid/telephony/CellLocation;I)V

    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 2

    iget-object v0, p0, Lcom/qihoo360/mobilesafe/telephony_xt800/PhoneStateListenerProxy;->c:Lh;

    iget v1, p0, Lcom/qihoo360/mobilesafe/telephony_xt800/PhoneStateListenerProxy;->a:I

    invoke-virtual {v0, p1, v1}, Lh;->a(Landroid/telephony/ServiceState;I)V

    return-void
.end method
