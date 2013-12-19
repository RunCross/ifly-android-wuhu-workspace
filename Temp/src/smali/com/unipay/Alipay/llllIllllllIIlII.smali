.class Lcom/unipay/Alipay/llllIllllllIIlII;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic _$1:Lcom/unipay/Alipay/MobileSecurePayer;


# direct methods
.method constructor <init>(Lcom/unipay/Alipay/MobileSecurePayer;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/Alipay/llllIllllllIIlII;->_$1:Lcom/unipay/Alipay/MobileSecurePayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    iget-object v0, p0, Lcom/unipay/Alipay/llllIllllllIIlII;->_$1:Lcom/unipay/Alipay/MobileSecurePayer;

    iget-object v1, v0, Lcom/unipay/Alipay/MobileSecurePayer;->_$6:Ljava/lang/Integer;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/unipay/Alipay/llllIllllllIIlII;->_$1:Lcom/unipay/Alipay/MobileSecurePayer;

    invoke-static {p2}, Lcom/alipay/android/app/IAlixPay$Stub;->asInterface(Landroid/os/IBinder;)Lcom/alipay/android/app/IAlixPay;

    move-result-object v2

    iput-object v2, v0, Lcom/unipay/Alipay/MobileSecurePayer;->_$5:Lcom/alipay/android/app/IAlixPay;

    iget-object v0, p0, Lcom/unipay/Alipay/llllIllllllIIlII;->_$1:Lcom/unipay/Alipay/MobileSecurePayer;

    iget-object v0, v0, Lcom/unipay/Alipay/MobileSecurePayer;->_$6:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/unipay/Alipay/llllIllllllIIlII;->_$1:Lcom/unipay/Alipay/MobileSecurePayer;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/unipay/Alipay/MobileSecurePayer;->_$5:Lcom/alipay/android/app/IAlixPay;

    return-void
.end method
