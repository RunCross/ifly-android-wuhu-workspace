.class public Lmm/purchasesdk/j/c;
.super Ljava/lang/Object;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private am:Ljava/lang/String;

.field private handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SMSReqFactory"

    iput-object v0, p0, Lmm/purchasesdk/j/c;->TAG:Ljava/lang/String;

    iput-object p1, p0, Lmm/purchasesdk/j/c;->am:Ljava/lang/String;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "mm-requestSMS"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lmm/purchasesdk/j/d;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lmm/purchasesdk/j/d;-><init>(Lmm/purchasesdk/j/c;Landroid/os/Looper;)V

    iput-object v1, p0, Lmm/purchasesdk/j/c;->handler:Landroid/os/Handler;

    return-void
.end method

.method private I(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method static synthetic a(Lmm/purchasesdk/j/c;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lmm/purchasesdk/j/c;->I(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public o()V
    .locals 5

    new-instance v0, Lmm/purchasesdk/h/g;

    invoke-direct {v0}, Lmm/purchasesdk/h/g;-><init>()V

    iget-object v1, p0, Lmm/purchasesdk/j/c;->am:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmm/purchasesdk/h/g;->D(Ljava/lang/String;)V

    const/4 v1, 0x0

    const-string v2, "SMSReqFactory"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "smsrequest-->"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lmm/purchasesdk/h/g;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lmm/purchasesdk/l/b;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lmm/purchasesdk/j/c;->handler:Landroid/os/Handler;

    const/16 v2, 0x12c

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    new-instance v2, Lmm/purchasesdk/j/f;

    invoke-direct {v2, v1, v0}, Lmm/purchasesdk/j/f;-><init>(Landroid/os/Message;Lmm/purchasesdk/h/g;)V

    iget-object v0, p0, Lmm/purchasesdk/j/c;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
