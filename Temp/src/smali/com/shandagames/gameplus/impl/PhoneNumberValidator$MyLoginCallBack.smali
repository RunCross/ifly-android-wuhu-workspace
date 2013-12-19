.class Lcom/shandagames/gameplus/impl/PhoneNumberValidator$MyLoginCallBack;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/snda/woa/android/callback/CustomMobileLoginCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shandagames/gameplus/impl/PhoneNumberValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyLoginCallBack"
.end annotation


# instance fields
.field private cb1:Lcom/shandagames/gameplus/GamePlus$RequestSMSCallback;

.field private cb2:Lcom/shandagames/gameplus/GamePlus$ValidateCallback;

.field private ctx:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/shandagames/gameplus/GamePlus$RequestSMSCallback;Lcom/shandagames/gameplus/GamePlus$ValidateCallback;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/shandagames/gameplus/impl/PhoneNumberValidator$MyLoginCallBack;->ctx:Landroid/content/Context;

    iput-object p1, p0, Lcom/shandagames/gameplus/impl/PhoneNumberValidator$MyLoginCallBack;->ctx:Landroid/content/Context;

    iput-object p2, p0, Lcom/shandagames/gameplus/impl/PhoneNumberValidator$MyLoginCallBack;->cb1:Lcom/shandagames/gameplus/GamePlus$RequestSMSCallback;

    iput-object p3, p0, Lcom/shandagames/gameplus/impl/PhoneNumberValidator$MyLoginCallBack;->cb2:Lcom/shandagames/gameplus/GamePlus$ValidateCallback;

    return-void
.end method

.method static synthetic access$0(Lcom/shandagames/gameplus/impl/PhoneNumberValidator$MyLoginCallBack;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/shandagames/gameplus/impl/PhoneNumberValidator$MyLoginCallBack;->loginSuccessed(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1(Lcom/shandagames/gameplus/impl/PhoneNumberValidator$MyLoginCallBack;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/shandagames/gameplus/impl/PhoneNumberValidator$MyLoginCallBack;->loginFailed(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private loginFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/shandagames/gameplus/impl/PhoneNumberValidator$MyLoginCallBack;->cb2:Lcom/shandagames/gameplus/GamePlus$ValidateCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shandagames/gameplus/impl/PhoneNumberValidator$MyLoginCallBack;->cb2:Lcom/shandagames/gameplus/GamePlus$ValidateCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1, p2}, Lcom/shandagames/gameplus/GamePlus$ValidateCallback;->onResult(ZLjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private loginSuccessed(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/shandagames/gameplus/impl/PhoneNumberValidator$MyLoginCallBack;->cb2:Lcom/shandagames/gameplus/GamePlus$ValidateCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shandagames/gameplus/impl/PhoneNumberValidator$MyLoginCallBack;->cb2:Lcom/shandagames/gameplus/GamePlus$ValidateCallback;

    const/4 v1, 0x1

    const-string v2, "0"

    const-string v3, "\u9a8c\u8bc1\u6210\u529f\u3002"

    invoke-interface {v0, v1, v2, v3}, Lcom/shandagames/gameplus/GamePlus$ValidateCallback;->onResult(ZLjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private woaLoginSuccess(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/shandagames/gameplus/impl/PhoneNumberValidator;->access$3()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Lcom/shandagames/gameplus/network/RequestConstant;->checkWoaSid(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/shandagames/gameplus/impl/PhoneNumberValidator$MyLoginCallBack$1;

    invoke-direct {v1, p0, v0, p3}, Lcom/shandagames/gameplus/impl/PhoneNumberValidator$MyLoginCallBack$1;-><init>(Lcom/shandagames/gameplus/impl/PhoneNumberValidator$MyLoginCallBack;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/shandagames/gameplus/api/impl/network/GLRequestExecutor;->doAsync(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public callBack(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    if-nez p3, :cond_0

    const-string p3, ""

    :cond_0
    invoke-static {p3}, Lcom/shandagames/gameplus/impl/PhoneNumberValidator;->access$2(Ljava/lang/String;)V

    sparse-switch p1, :sswitch_data_0

    iget-object v0, p0, Lcom/shandagames/gameplus/impl/PhoneNumberValidator$MyLoginCallBack;->cb1:Lcom/shandagames/gameplus/GamePlus$RequestSMSCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/shandagames/gameplus/impl/PhoneNumberValidator$MyLoginCallBack;->cb1:Lcom/shandagames/gameplus/GamePlus$RequestSMSCallback;

    const-string v1, "2"

    const-string v2, "\u83b7\u53d6\u9a8c\u8bc1\u7801\u5931\u8d25\uff0c\u8bf7\u91cd\u65b0\u83b7\u53d6\u3002"

    invoke-interface {v0, v3, v1, v2}, Lcom/shandagames/gameplus/GamePlus$RequestSMSCallback;->onResult(ZLjava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/shandagames/gameplus/impl/PhoneNumberValidator$MyLoginCallBack;->cb2:Lcom/shandagames/gameplus/GamePlus$ValidateCallback;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/shandagames/gameplus/impl/PhoneNumberValidator$MyLoginCallBack;->cb2:Lcom/shandagames/gameplus/GamePlus$ValidateCallback;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u9a8c\u8bc1\u5931\u8d25\uff0c\u8bf7\u91cd\u65b0\u8f93\u5165\u3002"

    invoke-interface {v0, v3, v1, v2}, Lcom/shandagames/gameplus/GamePlus$ValidateCallback;->onResult(ZLjava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/shandagames/gameplus/impl/PhoneNumberValidator$MyLoginCallBack;->ctx:Landroid/content/Context;

    invoke-direct {p0, v0, p1, p2, p4}, Lcom/shandagames/gameplus/impl/PhoneNumberValidator$MyLoginCallBack;->woaLoginSuccess(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/shandagames/gameplus/impl/PhoneNumberValidator$MyLoginCallBack;->cb1:Lcom/shandagames/gameplus/GamePlus$RequestSMSCallback;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/shandagames/gameplus/impl/PhoneNumberValidator$MyLoginCallBack;->cb1:Lcom/shandagames/gameplus/GamePlus$RequestSMSCallback;

    const/4 v1, 0x1

    const-string v2, "0"

    const-string v3, "\u9a8c\u8bc1\u7801\u5df2\u53d1\u9001\uff0c\u8bf7\u6ce8\u610f\u67e5\u6536\u77ed\u4fe1\u3002"

    invoke-interface {v0, v1, v2, v3}, Lcom/shandagames/gameplus/GamePlus$RequestSMSCallback;->onResult(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/shandagames/gameplus/impl/PhoneNumberValidator$MyLoginCallBack;->cb1:Lcom/shandagames/gameplus/GamePlus$RequestSMSCallback;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/shandagames/gameplus/impl/PhoneNumberValidator$MyLoginCallBack;->cb1:Lcom/shandagames/gameplus/GamePlus$RequestSMSCallback;

    const-string v1, "1"

    const-string v2, "\u7f51\u7edc\u8d85\u65f6\uff0c\u8bf7\u7a0d\u5019\u518d\u8bd5\u3002"

    invoke-interface {v0, v3, v1, v2}, Lcom/shandagames/gameplus/GamePlus$RequestSMSCallback;->onResult(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0xa4d097 -> :sswitch_2
        -0xa4cfce -> :sswitch_1
        0x0 -> :sswitch_0
    .end sparse-switch
.end method
