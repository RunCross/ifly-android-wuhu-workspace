.class public Lmm/purchasesdk/Purchase;
.super Ljava/lang/Object;


# static fields
.field public static final TAG:Ljava/lang/String;

.field private static a:Lmm/purchasesdk/Purchase;


# instance fields
.field private a:Landroid/os/Handler;

.field private a:Landroid/os/HandlerThread;

.field private a:Lmm/purchasesdk/g;

.field private b:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lmm/purchasesdk/Purchase;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmm/purchasesdk/Purchase;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lmm/purchasesdk/g;

    const-string v1, "purchase-task"

    invoke-direct {v0, v1}, Lmm/purchasesdk/g;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmm/purchasesdk/Purchase;->a:Lmm/purchasesdk/g;

    iget-object v0, p0, Lmm/purchasesdk/Purchase;->a:Lmm/purchasesdk/g;

    invoke-virtual {v0}, Lmm/purchasesdk/g;->start()V

    iget-object v0, p0, Lmm/purchasesdk/Purchase;->a:Lmm/purchasesdk/g;

    invoke-virtual {v0}, Lmm/purchasesdk/g;->init()V

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Response-thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmm/purchasesdk/Purchase;->a:Landroid/os/HandlerThread;

    iget-object v0, p0, Lmm/purchasesdk/Purchase;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lmm/purchasesdk/d;

    iget-object v1, p0, Lmm/purchasesdk/Purchase;->a:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lmm/purchasesdk/d;-><init>(Lmm/purchasesdk/Purchase;Landroid/os/Looper;)V

    iput-object v0, p0, Lmm/purchasesdk/Purchase;->b:Landroid/os/Handler;

    iget-object v0, p0, Lmm/purchasesdk/Purchase;->a:Lmm/purchasesdk/g;

    iget-object v1, p0, Lmm/purchasesdk/Purchase;->b:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lmm/purchasesdk/g;->a(Landroid/os/Handler;)V

    iget-object v0, p0, Lmm/purchasesdk/Purchase;->a:Lmm/purchasesdk/g;

    invoke-virtual {v0}, Lmm/purchasesdk/g;->a()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lmm/purchasesdk/Purchase;->a:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lmm/purchasesdk/Purchase;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/Purchase;->a:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic b(Lmm/purchasesdk/Purchase;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/Purchase;->b:Landroid/os/Handler;

    return-object v0
.end method

.method public static getDescription(I)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lmm/purchasesdk/PurchaseCode;->getDescription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lmm/purchasesdk/Purchase;
    .locals 1

    sget-object v0, Lmm/purchasesdk/Purchase;->a:Lmm/purchasesdk/Purchase;

    if-nez v0, :cond_0

    new-instance v0, Lmm/purchasesdk/Purchase;

    invoke-direct {v0}, Lmm/purchasesdk/Purchase;-><init>()V

    sput-object v0, Lmm/purchasesdk/Purchase;->a:Lmm/purchasesdk/Purchase;

    :cond_0
    sget-object v0, Lmm/purchasesdk/Purchase;->a:Lmm/purchasesdk/Purchase;

    return-object v0
.end method

.method public static getReason(I)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lmm/purchasesdk/PurchaseCode;->getReason(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clearCache(Landroid/content/Context;)V
    .locals 2

    if-eqz p1, :cond_0

    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Context Object is null or Context Object is not instance of Activity"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lmm/purchasesdk/g/b;

    invoke-direct {v0}, Lmm/purchasesdk/g/b;-><init>()V

    invoke-virtual {v0, p1}, Lmm/purchasesdk/g/b;->b(Landroid/content/Context;)V

    return-void
.end method

.method public enableCache(Z)V
    .locals 0

    invoke-static {p1}, Lmm/purchasesdk/l/d;->enableCache(Z)V

    return-void
.end method

.method public getSDKVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Context Object is null or Context Object is not instance of Activity"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p1}, Lmm/purchasesdk/g/d;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "unknown"

    :goto_0
    return-object v0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public init(Landroid/content/Context;Lmm/purchasesdk/OnPurchaseListener;)V
    .locals 4

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Context Object is null or Context Object is not instance of Activity"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p2, :cond_2

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "OnPurchaseListener Object is null"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v3}, Lmm/purchasesdk/l/d;->a(I)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Another request is processing"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-static {p1}, Lmm/purchasesdk/l/d;->setContext(Landroid/content/Context;)V

    new-instance v0, Lmm/purchasesdk/b;

    iget-object v1, p0, Lmm/purchasesdk/Purchase;->a:Landroid/os/Handler;

    iget-object v2, p0, Lmm/purchasesdk/Purchase;->b:Landroid/os/Handler;

    invoke-direct {v0, p2, v1, v2}, Lmm/purchasesdk/b;-><init>(Lmm/purchasesdk/OnPurchaseListener;Landroid/os/Handler;Landroid/os/Handler;)V

    invoke-static {}, Lmm/purchasesdk/l/d;->z()V

    invoke-static {}, Lmm/purchasesdk/ui/u;->a()Lmm/purchasesdk/ui/u;

    move-result-object v1

    invoke-virtual {v1}, Lmm/purchasesdk/ui/u;->r()V

    invoke-static {p1}, Lmm/purchasesdk/f;->a(Landroid/content/Context;)I

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0, v1}, Lmm/purchasesdk/b;->onInitFinish(I)V

    :goto_0
    return-void

    :cond_4
    invoke-static {}, Lmm/purchasesdk/l/d;->d()Z

    move-result v1

    if-nez v1, :cond_5

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lmm/purchasesdk/b;->onInitFinish(I)V

    goto :goto_0

    :cond_5
    invoke-static {}, Lmm/purchasesdk/l/d;->F()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lmm/purchasesdk/l/d;->t()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lmm/purchasesdk/c;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    sput v1, Lmm/purchasesdk/f/a;->z:I

    iget-object v1, p0, Lmm/purchasesdk/Purchase;->a:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    iput v3, v1, Landroid/os/Message;->what:I

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public order(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Lmm/purchasesdk/OnPurchaseListener;)Ljava/lang/String;
    .locals 6

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {p4}, Lmm/purchasesdk/l/d;->J(Ljava/lang/String;)V

    :cond_0
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lmm/purchasesdk/Purchase;->order(Landroid/content/Context;Ljava/lang/String;IZLmm/purchasesdk/OnPurchaseListener;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public order(Landroid/content/Context;Ljava/lang/String;ILmm/purchasesdk/OnPurchaseListener;)Ljava/lang/String;
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lmm/purchasesdk/Purchase;->order(Landroid/content/Context;Ljava/lang/String;IZLmm/purchasesdk/OnPurchaseListener;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public order(Landroid/content/Context;Ljava/lang/String;IZLmm/purchasesdk/OnPurchaseListener;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    const/4 v4, 0x2

    if-eqz p1, :cond_0

    instance-of v1, p1, Landroid/app/Activity;

    if-nez v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Context Object is null or Context Object is not instance of Activity"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p5, :cond_2

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "OnPurchaseListener Object is null"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Paycode is null"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    if-gtz p3, :cond_5

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "orderCount must be greater than 0 "

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    invoke-static {v4}, Lmm/purchasesdk/l/d;->a(I)Z

    move-result v1

    if-nez v1, :cond_6

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Another request is processing"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    invoke-static {p1}, Lmm/purchasesdk/l/d;->setContext(Landroid/content/Context;)V

    invoke-static {p2}, Lmm/purchasesdk/l/d;->e(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p3}, Lmm/purchasesdk/l/d;->f(I)V

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lmm/purchasesdk/l/d;->a(Ljava/lang/Boolean;)V

    invoke-static {}, Lmm/purchasesdk/ui/u;->a()Lmm/purchasesdk/ui/u;

    move-result-object v1

    invoke-virtual {v1}, Lmm/purchasesdk/ui/u;->s()V

    new-instance v1, Lmm/purchasesdk/b;

    iget-object v2, p0, Lmm/purchasesdk/Purchase;->a:Landroid/os/Handler;

    iget-object v3, p0, Lmm/purchasesdk/Purchase;->b:Landroid/os/Handler;

    invoke-direct {v1, p5, v2, v3}, Lmm/purchasesdk/b;-><init>(Lmm/purchasesdk/OnPurchaseListener;Landroid/os/Handler;Landroid/os/Handler;)V

    invoke-static {}, Lmm/purchasesdk/l/d;->z()V

    invoke-static {p1}, Lmm/purchasesdk/f;->a(Landroid/content/Context;)I

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v1, v2, v0}, Lmm/purchasesdk/b;->a(ILjava/util/HashMap;)V

    :goto_0
    return-object v0

    :cond_7
    invoke-static {}, Lmm/purchasesdk/l/d;->W()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmm/purchasesdk/l/d;->T(Ljava/lang/String;)V

    invoke-static {}, Lmm/purchasesdk/l/d;->F()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lmm/purchasesdk/l/d;->t()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v2, v3}, Lmm/purchasesdk/c;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sput v4, Lmm/purchasesdk/f/a;->z:I

    iget-object v2, p0, Lmm/purchasesdk/Purchase;->a:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    const/4 v3, 0x0

    iput v3, v2, Landroid/os/Message;->what:I

    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public order(Landroid/content/Context;Ljava/lang/String;Lmm/purchasesdk/OnPurchaseListener;)Ljava/lang/String;
    .locals 6

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lmm/purchasesdk/Purchase;->order(Landroid/content/Context;Ljava/lang/String;IZLmm/purchasesdk/OnPurchaseListener;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public query(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lmm/purchasesdk/OnPurchaseListener;)V
    .locals 4

    const/4 v1, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Context Object is null or Constext Objext is not instanse of Activity"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p4, :cond_2

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "OnPurchaseListener Object is null!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Error! Paycode is null!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-static {v1}, Lmm/purchasesdk/l/d;->a(I)Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Another request is processing"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    invoke-static {p1}, Lmm/purchasesdk/l/d;->setContext(Landroid/content/Context;)V

    invoke-static {p2}, Lmm/purchasesdk/l/d;->e(Ljava/lang/String;)Ljava/lang/String;

    if-eqz p3, :cond_6

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {p3}, Lmm/purchasesdk/l/d;->T(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lmm/purchasesdk/l/d;->e(Ljava/lang/Boolean;)V

    :goto_0
    new-instance v0, Lmm/purchasesdk/b;

    iget-object v1, p0, Lmm/purchasesdk/Purchase;->a:Landroid/os/Handler;

    iget-object v2, p0, Lmm/purchasesdk/Purchase;->b:Landroid/os/Handler;

    invoke-direct {v0, p4, v1, v2}, Lmm/purchasesdk/b;-><init>(Lmm/purchasesdk/OnPurchaseListener;Landroid/os/Handler;Landroid/os/Handler;)V

    invoke-static {}, Lmm/purchasesdk/l/d;->z()V

    invoke-static {p1}, Lmm/purchasesdk/f;->a(Landroid/content/Context;)I

    move-result v1

    if-eqz v1, :cond_7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmm/purchasesdk/b;->onQueryFinish(ILjava/util/HashMap;)V

    :goto_1
    return-void

    :cond_6
    const-string v0, ""

    invoke-static {v0}, Lmm/purchasesdk/l/d;->T(Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lmm/purchasesdk/l/d;->e(Ljava/lang/Boolean;)V

    goto :goto_0

    :cond_7
    iget-object v1, p0, Lmm/purchasesdk/Purchase;->a:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    iput v3, v1, Landroid/os/Message;->what:I

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1
.end method

.method public query(Landroid/content/Context;Ljava/lang/String;Lmm/purchasesdk/OnPurchaseListener;)V
    .locals 1

    const-string v0, ""

    invoke-virtual {p0, p1, p2, v0, p3}, Lmm/purchasesdk/Purchase;->query(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lmm/purchasesdk/OnPurchaseListener;)V

    return-void
.end method

.method public setAppInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "invalid app parameter, pls check it"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {}, Lmm/purchasesdk/l/e;->A()V

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmm/purchasesdk/l/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setTimeout(II)V
    .locals 0

    invoke-static {p1, p2}, Lmm/purchasesdk/l/g;->setTimeout(II)V

    return-void
.end method

.method public unsubscribe(Landroid/content/Context;Ljava/lang/String;Lmm/purchasesdk/OnPurchaseListener;)V
    .locals 3

    if-eqz p1, :cond_0

    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Context Object is null"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "OnPurchaseListener Object is null"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Paycode is null"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const/4 v0, 0x3

    invoke-static {v0}, Lmm/purchasesdk/l/d;->a(I)Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Another request is processing"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    invoke-static {p2}, Lmm/purchasesdk/l/d;->e(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p1}, Lmm/purchasesdk/l/d;->setContext(Landroid/content/Context;)V

    new-instance v0, Lmm/purchasesdk/b;

    iget-object v1, p0, Lmm/purchasesdk/Purchase;->a:Landroid/os/Handler;

    iget-object v2, p0, Lmm/purchasesdk/Purchase;->b:Landroid/os/Handler;

    invoke-direct {v0, p3, v1, v2}, Lmm/purchasesdk/b;-><init>(Lmm/purchasesdk/OnPurchaseListener;Landroid/os/Handler;Landroid/os/Handler;)V

    invoke-static {}, Lmm/purchasesdk/l/d;->z()V

    invoke-static {p1}, Lmm/purchasesdk/f;->a(Landroid/content/Context;)I

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0, v1}, Lmm/purchasesdk/b;->onUnsubscribeFinish(I)V

    :goto_0
    return-void

    :cond_6
    iget-object v1, p0, Lmm/purchasesdk/Purchase;->a:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x0

    iput v2, v1, Landroid/os/Message;->what:I

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
