.class public interface abstract Lmm/purchasesdk/OnPurchaseListener;
.super Ljava/lang/Object;


# static fields
.field public static final LEFTDAY:Ljava/lang/String; = "LeftDay"

.field public static final ORDERID:Ljava/lang/String; = "OrderId"

.field public static final ORDERTYPE:Ljava/lang/String; = "OrderType"

.field public static final PAYCODE:Ljava/lang/String; = "Paycode"

.field public static final TRADEID:Ljava/lang/String; = "TradeID"


# virtual methods
.method public abstract onAfterApply()V
.end method

.method public abstract onAfterDownload()V
.end method

.method public abstract onBeforeApply()V
.end method

.method public abstract onBeforeDownload()V
.end method

.method public abstract onBillingFinish(ILjava/util/HashMap;)V
.end method

.method public abstract onInitFinish(I)V
.end method

.method public abstract onQueryFinish(ILjava/util/HashMap;)V
.end method

.method public abstract onUnsubscribeFinish(I)V
.end method
