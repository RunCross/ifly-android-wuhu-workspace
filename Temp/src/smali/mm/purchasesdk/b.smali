.class public Lmm/purchasesdk/b;
.super Ljava/lang/Object;


# static fields
.field private static b:I


# instance fields
.field private a:I

.field private a:Landroid/os/Handler;

.field private a:Ljava/util/HashMap;

.field private a:Lmm/purchasesdk/OnPurchaseListener;

.field private b:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lmm/purchasesdk/b;->b:I

    return-void
.end method

.method public constructor <init>(Lmm/purchasesdk/OnPurchaseListener;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lmm/purchasesdk/b;->a:I

    const/4 v0, 0x0

    iput-object v0, p0, Lmm/purchasesdk/b;->a:Ljava/util/HashMap;

    iput-object p1, p0, Lmm/purchasesdk/b;->a:Lmm/purchasesdk/OnPurchaseListener;

    iput-object p2, p0, Lmm/purchasesdk/b;->a:Landroid/os/Handler;

    iput-object p3, p0, Lmm/purchasesdk/b;->b:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    const-string v0, "onBillingfinish"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "code="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lmm/purchasesdk/b;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmm/purchasesdk/b;->a:I

    invoke-static {v2}, Lmm/purchasesdk/PurchaseCode;->getReason(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmm/purchasesdk/l/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lmm/purchasesdk/ui/u;->a()Lmm/purchasesdk/ui/u;

    move-result-object v0

    invoke-virtual {v0}, Lmm/purchasesdk/ui/u;->v()V

    invoke-static {}, Lmm/purchasesdk/l/d;->unlock()V

    invoke-static {}, Lmm/purchasesdk/ui/aa;->w()V

    iget v0, p0, Lmm/purchasesdk/b;->a:I

    invoke-static {v0}, Lmm/purchasesdk/l/d;->e(I)V

    iget-object v0, p0, Lmm/purchasesdk/b;->a:Lmm/purchasesdk/OnPurchaseListener;

    iget v1, p0, Lmm/purchasesdk/b;->a:I

    iget-object v2, p0, Lmm/purchasesdk/b;->a:Ljava/util/HashMap;

    invoke-interface {v0, v1, v2}, Lmm/purchasesdk/OnPurchaseListener;->onBillingFinish(ILjava/util/HashMap;)V

    return-void
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lmm/purchasesdk/b;->a:I

    return-void
.end method

.method public a(ILjava/util/HashMap;)V
    .locals 7

    const/16 v1, 0x66

    const-string v0, "onDialogShow"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "code="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lmm/purchasesdk/l/d;->K()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lmm/purchasesdk/l/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lmm/purchasesdk/b;->a:Ljava/util/HashMap;

    if-ne p1, v1, :cond_0

    invoke-static {}, Lmm/purchasesdk/l/d;->K()Ljava/lang/String;

    move-result-object v0

    const-string v2, "3"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lmm/purchasesdk/ui/u;->a()Lmm/purchasesdk/ui/u;

    move-result-object v0

    invoke-static {}, Lmm/purchasesdk/l/d;->E()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lmm/purchasesdk/b;->a:Landroid/os/Handler;

    iget-object v5, p0, Lmm/purchasesdk/b;->b:Landroid/os/Handler;

    move v1, p1

    move-object v3, p0

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lmm/purchasesdk/ui/u;->a(ILjava/lang/String;Lmm/purchasesdk/b;Landroid/os/Handler;Landroid/os/Handler;Ljava/util/HashMap;)V

    :goto_0
    invoke-static {p1}, Lmm/purchasesdk/l/d;->e(I)V

    return-void

    :cond_0
    const/16 v0, 0x65

    if-ne p1, v0, :cond_1

    :goto_1
    invoke-static {}, Lmm/purchasesdk/ui/u;->a()Lmm/purchasesdk/ui/u;

    move-result-object v0

    iget-object v3, p0, Lmm/purchasesdk/b;->a:Landroid/os/Handler;

    iget-object v4, p0, Lmm/purchasesdk/b;->b:Landroid/os/Handler;

    move-object v2, p0

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lmm/purchasesdk/ui/u;->a(ILmm/purchasesdk/b;Landroid/os/Handler;Landroid/os/Handler;Ljava/util/HashMap;)V

    move p1, v1

    goto :goto_0

    :cond_1
    move v1, p1

    goto :goto_1
.end method

.method public a(Ljava/util/HashMap;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/b;->a:Ljava/util/HashMap;

    return-void
.end method

.method public b(I)V
    .locals 0

    sput p1, Lmm/purchasesdk/b;->b:I

    return-void
.end method

.method public onAfterApply()V
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/b;->a:Lmm/purchasesdk/OnPurchaseListener;

    invoke-interface {v0}, Lmm/purchasesdk/OnPurchaseListener;->onAfterApply()V

    return-void
.end method

.method public onBeforeApply()V
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/b;->a:Lmm/purchasesdk/OnPurchaseListener;

    invoke-interface {v0}, Lmm/purchasesdk/OnPurchaseListener;->onBeforeApply()V

    return-void
.end method

.method public onInitFinish(I)V
    .locals 3

    const-string v0, "onInitFinish"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "code="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lmm/purchasesdk/PurchaseCode;->getReason(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmm/purchasesdk/l/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lmm/purchasesdk/l/d;->unlock()V

    iget v0, p0, Lmm/purchasesdk/b;->a:I

    invoke-static {v0}, Lmm/purchasesdk/l/d;->e(I)V

    iget-object v0, p0, Lmm/purchasesdk/b;->a:Lmm/purchasesdk/OnPurchaseListener;

    invoke-interface {v0, p1}, Lmm/purchasesdk/OnPurchaseListener;->onInitFinish(I)V

    return-void
.end method

.method public onQueryFinish(ILjava/util/HashMap;)V
    .locals 3

    const-string v0, "onQueryFinish"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "code="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lmm/purchasesdk/PurchaseCode;->getReason(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmm/purchasesdk/l/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lmm/purchasesdk/l/d;->unlock()V

    iget-object v0, p0, Lmm/purchasesdk/b;->a:Lmm/purchasesdk/OnPurchaseListener;

    invoke-interface {v0, p1, p2}, Lmm/purchasesdk/OnPurchaseListener;->onQueryFinish(ILjava/util/HashMap;)V

    const/4 v0, 0x0

    sput v0, Lmm/purchasesdk/b;->b:I

    invoke-static {p1}, Lmm/purchasesdk/l/d;->e(I)V

    return-void
.end method

.method public onUnsubscribeFinish(I)V
    .locals 3

    const-string v0, "onInitFinish"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "code="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lmm/purchasesdk/PurchaseCode;->getReason(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmm/purchasesdk/l/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lmm/purchasesdk/l/d;->unlock()V

    iget v0, p0, Lmm/purchasesdk/b;->a:I

    invoke-static {v0}, Lmm/purchasesdk/l/d;->e(I)V

    iget-object v0, p0, Lmm/purchasesdk/b;->a:Lmm/purchasesdk/OnPurchaseListener;

    invoke-interface {v0, p1}, Lmm/purchasesdk/OnPurchaseListener;->onUnsubscribeFinish(I)V

    return-void
.end method
