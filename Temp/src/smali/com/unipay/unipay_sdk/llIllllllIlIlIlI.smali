.class Lcom/unipay/unipay_sdk/llIllllllIlIlIlI;
.super Landroid/os/CountDownTimer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unipay/unipay_sdk/UniPay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ClickTime"
.end annotation


# instance fields
.field final synthetic _$1:Lcom/unipay/unipay_sdk/UniPay;


# direct methods
.method public constructor <init>(Lcom/unipay/unipay_sdk/UniPay;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/unipay_sdk/llIllllllIlIlIlI;->_$1:Lcom/unipay/unipay_sdk/UniPay;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->_$1(I)I

    return-void
.end method

.method public onTick(J)V
    .locals 0

    return-void
.end method
