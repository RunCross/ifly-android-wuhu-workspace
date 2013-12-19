.class public Lcom/unipay/unipay_sdk/MainActivity;
.super Landroid/app/Activity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unipay/unipay_sdk/IllIIIIllIllllII;
    }
.end annotation


# instance fields
.field private _$1:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const-string v0, "test"

    const-string v1, "\u8fdb\u5165\u56de\u8c03\u3002\u3002\u3002\u3002"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/unipay/unipay_sdk/UniPay;->getInstance()Lcom/unipay/unipay_sdk/UniPay;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/unipay/unipay_sdk/UniPay;->upompResultOnActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lcom/unipay/unipay_sdk/MainActivity;->setContentView(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/unipay/unipay_sdk/MainActivity;->setRequestedOrientation(I)V

    new-instance v0, Lcom/unipay/beans/GameBaseBean;

    const-string v1, "90234616120120921431100"

    const-string v2, "902346161"

    const-string v3, "86000504"

    const-string v4, "\u79d1\u6280\u79d1\u6280"

    const-string v5, "400 600 999"

    const-string v6, "\u6e38\u620f\u6e38\u620f"

    const-string v7, "uid"

    invoke-direct/range {v0 .. v7}, Lcom/unipay/beans/GameBaseBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v1, "yyMMddHHmmss"

    invoke-direct {v6, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/unipay/beans/PayValueBean;

    const-string v2, "130201102727"

    const-string v3, "90234616120120921431100001"

    const-string v4, "\u91d1\u5e0140"

    const/16 v5, 0x3e8

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6, v7}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v1 .. v6}, Lcom/unipay/beans/PayValueBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {}, Lcom/unipay/unipay_sdk/UniPay;->getInstance()Lcom/unipay/unipay_sdk/UniPay;

    move-result-object v2

    invoke-virtual {v2, p0, v0}, Lcom/unipay/unipay_sdk/UniPay;->init(Landroid/content/Context;Lcom/unipay/beans/GameBaseBean;)V

    const v0, 0x7f0600b2

    invoke-virtual {p0, v0}, Lcom/unipay/unipay_sdk/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/unipay/unipay_sdk/MainActivity;->_$1:Landroid/widget/Button;

    iget-object v0, p0, Lcom/unipay/unipay_sdk/MainActivity;->_$1:Landroid/widget/Button;

    new-instance v2, Lcom/unipay/unipay_sdk/llIIIlIIllIlllII;

    invoke-direct {v2, p0, v1}, Lcom/unipay/unipay_sdk/llIIIlIIllIlllII;-><init>(Lcom/unipay/unipay_sdk/MainActivity;Lcom/unipay/beans/PayValueBean;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const-string v0, "xyf"

    const-string v1, "ondestory"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const-string v0, "xyf"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
