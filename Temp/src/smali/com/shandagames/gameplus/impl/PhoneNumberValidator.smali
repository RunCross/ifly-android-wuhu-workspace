.class public Lcom/shandagames/gameplus/impl/PhoneNumberValidator;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shandagames/gameplus/impl/PhoneNumberValidator$MyLoginCallBack;
    }
.end annotation


# static fields
.field private static final REMOVE_PROGRESS:I = 0x1

.field private static final SHOW_PROGRESS:I

.field private static mHandler:Landroid/os/Handler;

.field private static mPhoneNumber:Ljava/lang/String;

.field private static mProgressDialog:Landroid/app/ProgressDialog;

.field private static map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static uuid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/shandagames/gameplus/impl/PhoneNumberValidator;->map:Ljava/util/Map;

    const-string v0, ""

    sput-object v0, Lcom/shandagames/gameplus/impl/PhoneNumberValidator;->uuid:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/shandagames/gameplus/impl/PhoneNumberValidator;->mPhoneNumber:Ljava/lang/String;

    new-instance v0, Lcom/shandagames/gameplus/impl/PhoneNumberValidator$1;

    invoke-direct {v0}, Lcom/shandagames/gameplus/impl/PhoneNumberValidator$1;-><init>()V

    sput-object v0, Lcom/shandagames/gameplus/impl/PhoneNumberValidator;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Landroid/app/ProgressDialog;
    .locals 1

    sget-object v0, Lcom/shandagames/gameplus/impl/PhoneNumberValidator;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/shandagames/gameplus/impl/PhoneNumberValidator;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/shandagames/gameplus/impl/PhoneNumberValidator;->uuid:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$3()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/shandagames/gameplus/impl/PhoneNumberValidator;->mPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method private static createProgressBar(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lcom/shandagames/gameplus/impl/PhoneNumberValidator;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/shandagames/gameplus/impl/PhoneNumberValidator;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    :cond_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/shandagames/gameplus/impl/PhoneNumberValidator;->mProgressDialog:Landroid/app/ProgressDialog;

    const-string v1, "\u9a8c\u8bc1\u4e2d\uff0c\u8bf7\u7a0d\u5019\u3002"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/shandagames/gameplus/impl/PhoneNumberValidator;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    sget-object v0, Lcom/shandagames/gameplus/impl/PhoneNumberValidator;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    return-void
.end method

.method public static requestSmsCode(Landroid/content/Context;Ljava/lang/String;Lcom/shandagames/gameplus/GamePlus$RequestSMSCallback;)V
    .locals 3

    sput-object p1, Lcom/shandagames/gameplus/impl/PhoneNumberValidator;->mPhoneNumber:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lcom/shandagames/gameplus/impl/PhoneNumberValidator;->mPhoneNumber:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/shandagames/gameplus/util/SignUtil;->sign([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/shandagames/gameplus/impl/PhoneNumberValidator;->mPhoneNumber:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/shandagames/gameplus/network/RequestConstant;->checkPhoneInWhiteList(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/shandagames/gameplus/impl/PhoneNumberValidator$2;

    invoke-direct {v1, v0, p0, p2, p1}, Lcom/shandagames/gameplus/impl/PhoneNumberValidator$2;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/shandagames/gameplus/GamePlus$RequestSMSCallback;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/shandagames/gameplus/api/impl/network/GLRequestExecutor;->doAsync(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static sendMessage(I)V
    .locals 2

    sget-object v0, Lcom/shandagames/gameplus/impl/PhoneNumberValidator;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/shandagames/gameplus/impl/PhoneNumberValidator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public static validateSmsCode(Landroid/content/Context;Ljava/lang/String;Lcom/shandagames/gameplus/GamePlus$ValidateCallback;)V
    .locals 3

    new-instance v0, Lcom/shandagames/gameplus/impl/PhoneNumberValidator$MyLoginCallBack;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p2}, Lcom/shandagames/gameplus/impl/PhoneNumberValidator$MyLoginCallBack;-><init>(Landroid/content/Context;Lcom/shandagames/gameplus/GamePlus$RequestSMSCallback;Lcom/shandagames/gameplus/GamePlus$ValidateCallback;)V

    sget-object v1, Lcom/shandagames/gameplus/impl/PhoneNumberValidator;->uuid:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, p0, v2}, Lcom/snda/woa/android/OpenAPI;->validateCodeLogin(Lcom/snda/woa/android/callback/CustomMobileLoginCallBack;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Z)V

    return-void
.end method
