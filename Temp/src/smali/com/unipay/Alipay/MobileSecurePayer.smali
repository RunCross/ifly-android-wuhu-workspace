.class public Lcom/unipay/Alipay/MobileSecurePayer;
.super Ljava/lang/Object;


# static fields
.field static _$7:Ljava/lang/String;


# instance fields
.field private _$1:Lcom/alipay/android/app/IRemoteServiceCallback;

.field private _$2:Landroid/content/ServiceConnection;

.field _$3:Landroid/app/Activity;

.field _$4:Z

.field _$5:Lcom/alipay/android/app/IAlixPay;

.field _$6:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "MobileSecurePayer"

    sput-object v0, Lcom/unipay/Alipay/MobileSecurePayer;->_$7:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/unipay/Alipay/MobileSecurePayer;->_$6:Ljava/lang/Integer;

    iput-object v2, p0, Lcom/unipay/Alipay/MobileSecurePayer;->_$5:Lcom/alipay/android/app/IAlixPay;

    iput-boolean v1, p0, Lcom/unipay/Alipay/MobileSecurePayer;->_$4:Z

    iput-object v2, p0, Lcom/unipay/Alipay/MobileSecurePayer;->_$3:Landroid/app/Activity;

    new-instance v0, Lcom/unipay/Alipay/llllIllllllIIlII;

    invoke-direct {v0, p0}, Lcom/unipay/Alipay/llllIllllllIIlII;-><init>(Lcom/unipay/Alipay/MobileSecurePayer;)V

    iput-object v0, p0, Lcom/unipay/Alipay/MobileSecurePayer;->_$2:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/unipay/Alipay/lIIIlllllllIIlII;

    invoke-direct {v0, p0}, Lcom/unipay/Alipay/lIIIlllllllIIlII;-><init>(Lcom/unipay/Alipay/MobileSecurePayer;)V

    iput-object v0, p0, Lcom/unipay/Alipay/MobileSecurePayer;->_$1:Lcom/alipay/android/app/IRemoteServiceCallback;

    return-void
.end method

.method static synthetic _$1(Lcom/unipay/Alipay/MobileSecurePayer;)Landroid/content/ServiceConnection;
    .locals 1

    iget-object v0, p0, Lcom/unipay/Alipay/MobileSecurePayer;->_$2:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic _$2(Lcom/unipay/Alipay/MobileSecurePayer;)Lcom/alipay/android/app/IRemoteServiceCallback;
    .locals 1

    iget-object v0, p0, Lcom/unipay/Alipay/MobileSecurePayer;->_$1:Lcom/alipay/android/app/IRemoteServiceCallback;

    return-object v0
.end method


# virtual methods
.method public pay(Ljava/lang/String;Landroid/os/Handler;ILandroid/app/Activity;)Z
    .locals 4

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/unipay/Alipay/MobileSecurePayer;->_$4:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iput-boolean v0, p0, Lcom/unipay/Alipay/MobileSecurePayer;->_$4:Z

    iput-object p4, p0, Lcom/unipay/Alipay/MobileSecurePayer;->_$3:Landroid/app/Activity;

    iget-object v1, p0, Lcom/unipay/Alipay/MobileSecurePayer;->_$5:Lcom/alipay/android/app/IAlixPay;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/unipay/Alipay/MobileSecurePayer;->_$3:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/alipay/android/app/IAlixPay;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/unipay/Alipay/MobileSecurePayer;->_$2:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :cond_1
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/unipay/Alipay/IlllIllllllIIlII;

    invoke-direct {v2, p0, p1, p3, p2}, Lcom/unipay/Alipay/IlllIllllllIIlII;-><init>(Lcom/unipay/Alipay/MobileSecurePayer;Ljava/lang/String;ILandroid/os/Handler;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
