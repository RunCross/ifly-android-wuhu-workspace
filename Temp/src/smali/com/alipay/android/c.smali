.class public Lcom/alipay/android/c;
.super Ljava/lang/Object;


# static fields
.field static TAG:Ljava/lang/String;


# instance fields
.field e:Ljava/lang/Integer;

.field f:Lcom/alipay/android/app/IAlixPay;

.field g:Z

.field h:Landroid/app/Activity;

.field private i:Landroid/content/ServiceConnection;

.field private j:Lcom/alipay/android/app/IRemoteServiceCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "MobileSecurePayer"

    sput-object v0, Lcom/alipay/android/c;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/c;->e:Ljava/lang/Integer;

    iput-object v2, p0, Lcom/alipay/android/c;->f:Lcom/alipay/android/app/IAlixPay;

    iput-boolean v1, p0, Lcom/alipay/android/c;->g:Z

    iput-object v2, p0, Lcom/alipay/android/c;->h:Landroid/app/Activity;

    new-instance v0, Lcom/alipay/android/c$1;

    invoke-direct {v0, p0}, Lcom/alipay/android/c$1;-><init>(Lcom/alipay/android/c;)V

    iput-object v0, p0, Lcom/alipay/android/c;->i:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/alipay/android/c$2;

    invoke-direct {v0, p0}, Lcom/alipay/android/c$2;-><init>(Lcom/alipay/android/c;)V

    iput-object v0, p0, Lcom/alipay/android/c;->j:Lcom/alipay/android/app/IRemoteServiceCallback;

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/c;)Lcom/alipay/android/app/IRemoteServiceCallback;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/c;->j:Lcom/alipay/android/app/IRemoteServiceCallback;

    return-object v0
.end method

.method static synthetic b(Lcom/alipay/android/c;)Landroid/content/ServiceConnection;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/c;->i:Landroid/content/ServiceConnection;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/os/Handler;ILandroid/app/Activity;)Z
    .locals 4

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/alipay/android/c;->g:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iput-boolean v0, p0, Lcom/alipay/android/c;->g:Z

    iput-object p4, p0, Lcom/alipay/android/c;->h:Landroid/app/Activity;

    iget-object v1, p0, Lcom/alipay/android/c;->f:Lcom/alipay/android/app/IAlixPay;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/alipay/android/c;->h:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/alipay/android/app/IAlixPay;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/android/c;->i:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :cond_1
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/alipay/android/c$3;

    invoke-direct {v2, p0, p1, p3, p2}, Lcom/alipay/android/c$3;-><init>(Lcom/alipay/android/c;Ljava/lang/String;ILandroid/os/Handler;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
