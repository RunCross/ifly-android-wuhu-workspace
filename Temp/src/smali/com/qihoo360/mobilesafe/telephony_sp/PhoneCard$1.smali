.class public Lcom/qihoo360/mobilesafe/telephony_sp/PhoneCard$1;
.super Landroid/telephony/PhoneStateListener;


# instance fields
.field final synthetic a:Lag;


# direct methods
.method public constructor <init>(Lag;)V
    .locals 0

    iput-object p1, p0, Lcom/qihoo360/mobilesafe/telephony_sp/PhoneCard$1;->a:Lag;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 2

    iget-object v0, p0, Lcom/qihoo360/mobilesafe/telephony_sp/PhoneCard$1;->a:Lag;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    invoke-static {v0, v1}, Lag;->a(Lag;I)V

    return-void
.end method
