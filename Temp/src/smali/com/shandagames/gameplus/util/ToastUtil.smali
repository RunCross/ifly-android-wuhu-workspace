.class public Lcom/shandagames/gameplus/util/ToastUtil;
.super Ljava/lang/Object;


# static fields
.field private static handler:Landroid/os/Handler;

.field private static synObj:Ljava/lang/Object;

.field private static toast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/shandagames/gameplus/util/ToastUtil;->handler:Landroid/os/Handler;

    const/4 v0, 0x0

    sput-object v0, Lcom/shandagames/gameplus/util/ToastUtil;->toast:Landroid/widget/Toast;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/shandagames/gameplus/util/ToastUtil;->synObj:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/shandagames/gameplus/util/ToastUtil;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/shandagames/gameplus/util/ToastUtil;->synObj:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2()Landroid/widget/Toast;
    .locals 1

    sget-object v0, Lcom/shandagames/gameplus/util/ToastUtil;->toast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$3(Landroid/widget/Toast;)V
    .locals 0

    sput-object p0, Lcom/shandagames/gameplus/util/ToastUtil;->toast:Landroid/widget/Toast;

    return-void
.end method

.method public static showMessage(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/shandagames/gameplus/util/ToastUtil;->showMessage(Landroid/content/Context;II)V

    return-void
.end method

.method public static showMessage(Landroid/content/Context;II)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/shandagames/gameplus/util/ToastUtil$2;

    invoke-direct {v1, p1, p2, p0}, Lcom/shandagames/gameplus/util/ToastUtil$2;-><init>(IILandroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static showMessage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/shandagames/gameplus/util/ToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static showMessage(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/shandagames/gameplus/util/ToastUtil$1;

    invoke-direct {v1, p1, p2, p0}, Lcom/shandagames/gameplus/util/ToastUtil$1;-><init>(Ljava/lang/String;ILandroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
