.class Lcom/shandagames/gameplus/impl/PayActivity$IAPListener;
.super Ljava/lang/Object;

# interfaces
.implements Lmm/purchasesdk/OnPurchaseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shandagames/gameplus/impl/PayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IAPListener"
.end annotation


# instance fields
.field private number:Ljava/lang/String;

.field private paycode:Ljava/lang/String;

.field private purchase:Lmm/purchasesdk/Purchase;

.field final synthetic this$0:Lcom/shandagames/gameplus/impl/PayActivity;


# direct methods
.method public constructor <init>(Lcom/shandagames/gameplus/impl/PayActivity;Lmm/purchasesdk/Purchase;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/shandagames/gameplus/impl/PayActivity$IAPListener;->this$0:Lcom/shandagames/gameplus/impl/PayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/shandagames/gameplus/impl/PayActivity$IAPListener;->purchase:Lmm/purchasesdk/Purchase;

    iput-object p3, p0, Lcom/shandagames/gameplus/impl/PayActivity$IAPListener;->paycode:Ljava/lang/String;

    iput-object p4, p0, Lcom/shandagames/gameplus/impl/PayActivity$IAPListener;->number:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onAfterApply()V
    .locals 0

    return-void
.end method

.method public onAfterDownload()V
    .locals 0

    return-void
.end method

.method public onBeforeApply()V
    .locals 0

    return-void
.end method

.method public onBeforeDownload()V
    .locals 0

    return-void
.end method

.method public onBillingFinish(ILjava/util/HashMap;)V
    .locals 4

    sget-object v0, Lcom/shandagames/gameplus/impl/PayActivity;->callbackForMM:Lcom/shandagames/gameplus/GamePlus$PayCallback;

    if-eqz v0, :cond_1

    const/16 v0, 0x66

    if-eq p1, v0, :cond_0

    const/16 v0, 0x68

    if-ne p1, v0, :cond_2

    :cond_0
    sget-object v0, Lcom/shandagames/gameplus/impl/PayActivity;->callbackForMM:Lcom/shandagames/gameplus/GamePlus$PayCallback;

    const/4 v1, 0x1

    const-string v2, "0"

    const-string v3, "\u8d2d\u4e70\u6210\u529f\u3002"

    invoke-interface {v0, v1, v2, v3}, Lcom/shandagames/gameplus/GamePlus$PayCallback;->onResult(ZLjava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-object v0, Lcom/shandagames/gameplus/impl/PayActivity;->callbackForMM:Lcom/shandagames/gameplus/GamePlus$PayCallback;

    const/4 v1, 0x0

    const-string v2, "1"

    const-string v3, "\u672a\u6210\u529f\u8d2d\u4e70\u3002"

    invoke-interface {v0, v1, v2, v3}, Lcom/shandagames/gameplus/GamePlus$PayCallback;->onResult(ZLjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/shandagames/gameplus/impl/PayActivity$IAPListener;->this$0:Lcom/shandagames/gameplus/impl/PayActivity;

    const-string v1, "\u672a\u6210\u529f\u8d2d\u4e70\u3002"

    invoke-static {v0, v1}, Lcom/shandagames/gameplus/util/ToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onInitFinish(I)V
    .locals 10

    const-string v0, "MM market -> init finished."

    invoke-static {v0}, Lcom/shandagames/gameplus/log/LogDebugger;->println(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/shandagames/gameplus/impl/PayActivity$IAPListener;->number:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MM market -> paycode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/shandagames/gameplus/impl/PayActivity$IAPListener;->paycode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shandagames/gameplus/log/LogDebugger;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/shandagames/gameplus/impl/PayActivity$IAPListener;->purchase:Lmm/purchasesdk/Purchase;

    iget-object v1, p0, Lcom/shandagames/gameplus/impl/PayActivity$IAPListener;->this$0:Lcom/shandagames/gameplus/impl/PayActivity;

    iget-object v2, p0, Lcom/shandagames/gameplus/impl/PayActivity$IAPListener;->paycode:Ljava/lang/String;

    iget-object v4, p0, Lcom/shandagames/gameplus/impl/PayActivity$IAPListener;->this$0:Lcom/shandagames/gameplus/impl/PayActivity;

    #getter for: Lcom/shandagames/gameplus/impl/PayActivity;->mmorderid:Ljava/lang/String;
    invoke-static {v4}, Lcom/shandagames/gameplus/impl/PayActivity;->access$7(Lcom/shandagames/gameplus/impl/PayActivity;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/shandagames/gameplus/impl/PayActivity$IAPListener;

    iget-object v6, p0, Lcom/shandagames/gameplus/impl/PayActivity$IAPListener;->this$0:Lcom/shandagames/gameplus/impl/PayActivity;

    iget-object v7, p0, Lcom/shandagames/gameplus/impl/PayActivity$IAPListener;->purchase:Lmm/purchasesdk/Purchase;

    iget-object v8, p0, Lcom/shandagames/gameplus/impl/PayActivity$IAPListener;->paycode:Ljava/lang/String;

    iget-object v9, p0, Lcom/shandagames/gameplus/impl/PayActivity$IAPListener;->number:Ljava/lang/String;

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/shandagames/gameplus/impl/PayActivity$IAPListener;-><init>(Lcom/shandagames/gameplus/impl/PayActivity;Lmm/purchasesdk/Purchase;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v0 .. v5}, Lmm/purchasesdk/Purchase;->order(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Lmm/purchasesdk/OnPurchaseListener;)Ljava/lang/String;

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    sget-object v0, Lcom/shandagames/gameplus/impl/PayActivity;->callbackForMM:Lcom/shandagames/gameplus/GamePlus$PayCallback;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/shandagames/gameplus/impl/PayActivity;->callbackForMM:Lcom/shandagames/gameplus/GamePlus$PayCallback;

    const/4 v1, 0x0

    const-string v2, "1"

    const-string v3, "\u672a\u6210\u529f\u8d2d\u4e70\u3002"

    invoke-interface {v0, v1, v2, v3}, Lcom/shandagames/gameplus/GamePlus$PayCallback;->onResult(ZLjava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/shandagames/gameplus/impl/PayActivity$IAPListener;->this$0:Lcom/shandagames/gameplus/impl/PayActivity;

    const-string v1, "\u672a\u6210\u529f\u8d2d\u4e70\u3002"

    invoke-static {v0, v1}, Lcom/shandagames/gameplus/util/ToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onQueryFinish(ILjava/util/HashMap;)V
    .locals 0

    return-void
.end method

.method public onUnsubscribeFinish(I)V
    .locals 0

    return-void
.end method
