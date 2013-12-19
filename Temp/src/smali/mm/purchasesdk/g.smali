.class public Lmm/purchasesdk/g;
.super Landroid/os/HandlerThread;


# static fields
.field private static a:Lmm/purchasesdk/b/a;

.field private static c:Z


# instance fields
.field a:Landroid/os/Handler;

.field b:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lmm/purchasesdk/b;)I
    .locals 4

    const/4 v3, 0x2

    sget-object v0, Lmm/purchasesdk/g;->a:Lmm/purchasesdk/b/a;

    if-nez v0, :cond_0

    new-instance v0, Lmm/purchasesdk/b/a;

    invoke-direct {v0}, Lmm/purchasesdk/b/a;-><init>()V

    sput-object v0, Lmm/purchasesdk/g;->a:Lmm/purchasesdk/b/a;

    :cond_0
    invoke-static {}, Lmm/purchasesdk/f/a;->k()V

    sget-object v0, Lmm/purchasesdk/g;->a:Lmm/purchasesdk/b/a;

    invoke-static {v0}, Lmm/purchasesdk/a/b;->a(Lmm/purchasesdk/b/a;)Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "TaskThread"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AuthManager checkAuth ret = null.code="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lmm/purchasesdk/PurchaseCode;->getStatusCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmm/purchasesdk/l/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lmm/purchasesdk/g;->b:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput v3, v0, Landroid/os/Message;->what:I

    invoke-static {}, Lmm/purchasesdk/PurchaseCode;->getStatusCode()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    const/16 v0, 0x68

    return v0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "TaskThread"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AuthManager checkAuth ret = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lmm/purchasesdk/PurchaseCode;->getStatusCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmm/purchasesdk/l/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lmm/purchasesdk/g;->b:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput v3, v0, Landroid/os/Message;->what:I

    invoke-static {}, Lmm/purchasesdk/PurchaseCode;->getStatusCode()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_2
    const/16 v0, 0xf0

    invoke-static {v0}, Lmm/purchasesdk/PurchaseCode;->setStatusCode(I)V

    iget-object v0, p0, Lmm/purchasesdk/g;->b:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput v3, v0, Landroid/os/Message;->what:I

    invoke-static {}, Lmm/purchasesdk/PurchaseCode;->getStatusCode()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public static a()Lmm/purchasesdk/b/a;
    .locals 1

    sget-object v0, Lmm/purchasesdk/g;->a:Lmm/purchasesdk/b/a;

    return-object v0
.end method

.method private a(Lmm/purchasesdk/b;)V
    .locals 2

    const-string v0, "TaskThread"

    const-string v1, "init() called"

    invoke-static {v0, v1}, Lmm/purchasesdk/l/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lmm/purchasesdk/f/a;->k()V

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmm/purchasesdk/f;->c(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, v0}, Lmm/purchasesdk/g;->b(Lmm/purchasesdk/b;I)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lmm/purchasesdk/e/b;->e()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, v0}, Lmm/purchasesdk/g;->b(Lmm/purchasesdk/b;I)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lmm/purchasesdk/l/d;->g()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Lmm/purchasesdk/c/l;->b(Lmm/purchasesdk/b;)I

    move-result v0

    const/16 v1, 0xdb

    if-ne v0, v1, :cond_2

    invoke-direct {p0, p1, v0}, Lmm/purchasesdk/g;->b(Lmm/purchasesdk/b;I)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lmm/purchasesdk/f/a;->l()V

    invoke-static {}, Lmm/purchasesdk/f/a;->m()V

    invoke-static {}, Lmm/purchasesdk/e/b;->a()Lmm/purchasesdk/e/a;

    move-result-object v1

    iget-object v1, v1, Lmm/purchasesdk/e/a;->a:Lmm/purchasesdk/e/a$a;

    iget-object v1, v1, Lmm/purchasesdk/e/a$a;->Y:Ljava/lang/String;

    invoke-static {v1}, Lmm/purchasesdk/l/d;->S(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lmm/purchasesdk/g;->b(Lmm/purchasesdk/b;I)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lmm/purchasesdk/c/l;->d()I

    move-result v0

    invoke-static {}, Lmm/purchasesdk/f/a;->l()V

    invoke-static {}, Lmm/purchasesdk/f/a;->m()V

    invoke-static {}, Lmm/purchasesdk/e/b;->a()Lmm/purchasesdk/e/a;

    move-result-object v1

    iget-object v1, v1, Lmm/purchasesdk/e/a;->a:Lmm/purchasesdk/e/a$a;

    iget-object v1, v1, Lmm/purchasesdk/e/a$a;->Y:Ljava/lang/String;

    invoke-static {v1}, Lmm/purchasesdk/l/d;->S(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lmm/purchasesdk/g;->b(Lmm/purchasesdk/b;I)V

    goto :goto_0
.end method

.method private a(Lmm/purchasesdk/b;Landroid/os/Bundle;)V
    .locals 5

    const/16 v3, 0x66

    const/4 v4, 0x2

    sget-object v0, Lmm/purchasesdk/g;->a:Lmm/purchasesdk/b/a;

    invoke-static {v0, p2}, Lmm/purchasesdk/b/b;->a(Lmm/purchasesdk/b/a;Landroid/os/Bundle;)I

    move-result v0

    invoke-static {v0}, Lmm/purchasesdk/PurchaseCode;->setStatusCode(I)V

    const/16 v1, 0x68

    if-ne v0, v1, :cond_0

    invoke-static {v3}, Lmm/purchasesdk/PurchaseCode;->setStatusCode(I)V

    const-string v0, "OrderId"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "LeftDay"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "OrderType"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lmm/purchasesdk/l/d;->U(Ljava/lang/String;)V

    invoke-static {v1}, Lmm/purchasesdk/l/d;->b(Ljava/lang/String;)V

    invoke-static {v2}, Lmm/purchasesdk/l/d;->y(Ljava/lang/String;)V

    iget-object v0, p0, Lmm/purchasesdk/g;->b:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput v4, v0, Landroid/os/Message;->what:I

    iput v3, v0, Landroid/os/Message;->arg1:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void

    :cond_0
    const-string v1, "TaskThread"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " order fail ="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmm/purchasesdk/l/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lmm/purchasesdk/g;->b:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput v4, v0, Landroid/os/Message;->what:I

    invoke-static {}, Lmm/purchasesdk/PurchaseCode;->getStatusCode()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method static synthetic a(Lmm/purchasesdk/g;Lmm/purchasesdk/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lmm/purchasesdk/g;->a(Lmm/purchasesdk/b;)V

    return-void
.end method

.method static synthetic a(Lmm/purchasesdk/g;Lmm/purchasesdk/b;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmm/purchasesdk/g;->a(Lmm/purchasesdk/b;Landroid/os/Bundle;)V

    return-void
.end method

.method public static a()Z
    .locals 1

    sget-boolean v0, Lmm/purchasesdk/g;->c:Z

    return v0
.end method

.method static synthetic a(Z)Z
    .locals 0

    sput-boolean p0, Lmm/purchasesdk/g;->c:Z

    return p0
.end method

.method private b(Lmm/purchasesdk/b;)V
    .locals 5

    const/16 v4, 0x65

    invoke-static {}, Lmm/purchasesdk/i/a;->g()I

    move-result v0

    const-string v1, "TaskThread"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "query code="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmm/purchasesdk/l/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-static {}, Lmm/purchasesdk/PurchaseCode;->getStatusCode()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lmm/purchasesdk/g;->c(Lmm/purchasesdk/b;I)V

    :goto_0
    return-void

    :cond_0
    invoke-static {v4}, Lmm/purchasesdk/PurchaseCode;->setStatusCode(I)V

    invoke-direct {p0, p1, v4}, Lmm/purchasesdk/g;->c(Lmm/purchasesdk/b;I)V

    goto :goto_0
.end method

.method private b(Lmm/purchasesdk/b;I)V
    .locals 2

    iget-object v0, p0, Lmm/purchasesdk/g;->b:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    iput p2, v0, Landroid/os/Message;->arg1:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method static synthetic b(Lmm/purchasesdk/g;Lmm/purchasesdk/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lmm/purchasesdk/g;->b(Lmm/purchasesdk/b;)V

    return-void
.end method

.method private c(Lmm/purchasesdk/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lmm/purchasesdk/g;->a(Lmm/purchasesdk/b;)I

    return-void
.end method

.method private c(Lmm/purchasesdk/b;I)V
    .locals 2

    iget-object v0, p0, Lmm/purchasesdk/g;->b:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    sget v1, Lmm/purchasesdk/l/d;->ab:I

    iput v1, v0, Landroid/os/Message;->what:I

    iput p2, v0, Landroid/os/Message;->arg1:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method static synthetic c(Lmm/purchasesdk/g;Lmm/purchasesdk/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lmm/purchasesdk/g;->c(Lmm/purchasesdk/b;)V

    return-void
.end method

.method private d(Lmm/purchasesdk/b;)V
    .locals 3

    new-instance v0, Lmm/purchasesdk/k/a;

    invoke-direct {v0}, Lmm/purchasesdk/k/a;-><init>()V

    invoke-virtual {v0}, Lmm/purchasesdk/k/a;->i()I

    move-result v0

    invoke-static {v0}, Lmm/purchasesdk/PurchaseCode;->setStatusCode(I)V

    iget-object v1, p0, Lmm/purchasesdk/g;->b:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x3

    iput v2, v1, Landroid/os/Message;->what:I

    iput v0, v1, Landroid/os/Message;->arg1:I

    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method static synthetic d(Lmm/purchasesdk/g;Lmm/purchasesdk/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lmm/purchasesdk/g;->d(Lmm/purchasesdk/b;)V

    return-void
.end method

.method private e(Lmm/purchasesdk/b;)V
    .locals 2

    sget-object v0, Lmm/purchasesdk/g;->a:Lmm/purchasesdk/b/a;

    if-nez v0, :cond_0

    new-instance v0, Lmm/purchasesdk/b/a;

    invoke-direct {v0}, Lmm/purchasesdk/b/a;-><init>()V

    sput-object v0, Lmm/purchasesdk/g;->a:Lmm/purchasesdk/b/a;

    :cond_0
    sget-object v0, Lmm/purchasesdk/g;->a:Lmm/purchasesdk/b/a;

    invoke-static {v0}, Lmm/purchasesdk/a/b;->a(Lmm/purchasesdk/b/a;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0xf0

    invoke-static {v0}, Lmm/purchasesdk/PurchaseCode;->setStatusCode(I)V

    :cond_1
    iget-object v0, p0, Lmm/purchasesdk/g;->b:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    invoke-static {}, Lmm/purchasesdk/PurchaseCode;->getStatusCode()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method static synthetic e(Lmm/purchasesdk/g;Lmm/purchasesdk/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lmm/purchasesdk/g;->e(Lmm/purchasesdk/b;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/g;->a:Landroid/os/Handler;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lmm/purchasesdk/g;->init()V

    :cond_0
    iget-object v0, p0, Lmm/purchasesdk/g;->a:Landroid/os/Handler;

    return-object v0
.end method

.method public a(Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/g;->b:Landroid/os/Handler;

    return-void
.end method

.method public init()V
    .locals 2

    new-instance v0, Lmm/purchasesdk/h;

    invoke-virtual {p0}, Lmm/purchasesdk/g;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lmm/purchasesdk/h;-><init>(Lmm/purchasesdk/g;Landroid/os/Looper;)V

    iput-object v0, p0, Lmm/purchasesdk/g;->a:Landroid/os/Handler;

    return-void
.end method
