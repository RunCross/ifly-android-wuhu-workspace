.class public Lcom/shandagames/gameplus/GamePlus;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shandagames/gameplus/GamePlus$GLGameActivator;,
        Lcom/shandagames/gameplus/GamePlus$PayCallback;,
        Lcom/shandagames/gameplus/GamePlus$RequestSMSCallback;,
        Lcom/shandagames/gameplus/GamePlus$ValidateCallback;
    }
.end annotation


# static fields
.field private static final MSG_PAY:I = 0x64

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_PAY:I = 0x1

.field private static callback:Lcom/shandagames/gameplus/GamePlus$PayCallback;

.field private static context:Landroid/content/Context;

.field private static extend:Ljava/lang/String;

.field private static itemName:Ljava/lang/String;

.field private static mPhoneNumber:Ljava/lang/String;

.field private static notifyUrl:Ljava/lang/String;

.field private static ordersn:Ljava/lang/String;

.field private static payHandler:Landroid/os/Handler;

.field private static phoneNumber:Ljava/lang/String;

.field private static rmb:F

.field private static state:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, ""

    sput-object v0, Lcom/shandagames/gameplus/GamePlus;->mPhoneNumber:Ljava/lang/String;

    const/4 v0, 0x0

    sput v0, Lcom/shandagames/gameplus/GamePlus;->state:I

    new-instance v0, Lcom/shandagames/gameplus/GamePlus$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/shandagames/gameplus/GamePlus$1;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/shandagames/gameplus/GamePlus;->payHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/shandagames/gameplus/GamePlus;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1()Lcom/shandagames/gameplus/GamePlus$PayCallback;
    .locals 1

    sget-object v0, Lcom/shandagames/gameplus/GamePlus;->callback:Lcom/shandagames/gameplus/GamePlus$PayCallback;

    return-object v0
.end method

.method static synthetic access$2()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/shandagames/gameplus/GamePlus;->phoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/shandagames/gameplus/GamePlus;->ordersn:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4()F
    .locals 1

    sget v0, Lcom/shandagames/gameplus/GamePlus;->rmb:F

    return v0
.end method

.method static synthetic access$5()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/shandagames/gameplus/GamePlus;->notifyUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/shandagames/gameplus/GamePlus;->extend:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/shandagames/gameplus/GamePlus;->itemName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/shandagames/gameplus/GamePlus;->payHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$9(I)V
    .locals 0

    sput p0, Lcom/shandagames/gameplus/GamePlus;->state:I

    return-void
.end method

.method public static getPushId(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "push_clientid"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static initPushId(Landroid/content/Context;ZLcom/shandagames/gameplus/api/callback/GLPushIdUpdateCB;)V
    .locals 3

    if-nez p0, :cond_1

    if-eqz p2, :cond_0

    const-string v0, "Context == null"

    invoke-interface {p2, v0}, Lcom/shandagames/gameplus/api/callback/GLPushIdUpdateCB;->onError(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    if-eqz p1, :cond_3

    invoke-static {p0}, Lcom/shandagames/gameplus/util/IMEIUtil;->creatPushId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_2

    invoke-interface {p2, v0}, Lcom/shandagames/gameplus/api/callback/GLPushIdUpdateCB;->onHasUpdate(Ljava/lang/String;)V

    :cond_2
    :goto_1
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "push_clientid"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    :cond_3
    const-string v0, "push_clientid"

    const-string v2, ""

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shandagames/gameplus/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {p0}, Lcom/shandagames/gameplus/util/IMEIUtil;->creatPushId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_2

    invoke-interface {p2, v0}, Lcom/shandagames/gameplus/api/callback/GLPushIdUpdateCB;->onHasUpdate(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    if-eqz p2, :cond_2

    invoke-interface {p2, v0}, Lcom/shandagames/gameplus/api/callback/GLPushIdUpdateCB;->onNoUpdate(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static loginToGPlus(Landroid/app/Activity;)V
    .locals 2

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameter is wrong."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p0}, Lcom/shandagames/gameplus/util/EnvUtil;->setApplicationContext(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/shandagames/gameplus/util/ManifestUtil;->initMarketCode(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/shandagames/gameplus/GamePlus$GLGameActivator;->activate(Landroid/app/Activity;)V

    return-void
.end method

.method public static payInGame(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FLjava/lang/String;Ljava/lang/String;Lcom/shandagames/gameplus/GamePlus$PayCallback;)V
    .locals 10

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    const/4 v0, 0x0

    cmpg-float v0, p4, v0

    if-ltz v0, :cond_0

    if-eqz p5, :cond_0

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameter is wrong."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p0}, Lcom/shandagames/gameplus/util/EnvUtil;->setApplicationContext(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/shandagames/gameplus/util/ManifestUtil;->initMarketCode(Landroid/content/Context;)V

    sput-object p0, Lcom/shandagames/gameplus/GamePlus;->context:Landroid/content/Context;

    sput-object p1, Lcom/shandagames/gameplus/GamePlus;->phoneNumber:Ljava/lang/String;

    sput-object p2, Lcom/shandagames/gameplus/GamePlus;->ordersn:Ljava/lang/String;

    sput-object p3, Lcom/shandagames/gameplus/GamePlus;->notifyUrl:Ljava/lang/String;

    sput p4, Lcom/shandagames/gameplus/GamePlus;->rmb:F

    sput-object p5, Lcom/shandagames/gameplus/GamePlus;->itemName:Ljava/lang/String;

    sput-object p6, Lcom/shandagames/gameplus/GamePlus;->extend:Ljava/lang/String;

    sput-object p7, Lcom/shandagames/gameplus/GamePlus;->callback:Lcom/shandagames/gameplus/GamePlus$PayCallback;

    sget v0, Lcom/shandagames/gameplus/GamePlus;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x1

    sput v0, Lcom/shandagames/gameplus/GamePlus;->state:I

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lcom/shandagames/gameplus/GamePlus;->phoneNumber:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "1000"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {}, Lcom/shandagames/gameplus/util/ManifestUtil;->getMarketCode()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/shandagames/gameplus/GamePlus;->extend:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/shandagames/gameplus/GamePlus;->itemName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget v2, Lcom/shandagames/gameplus/GamePlus;->rmb:F

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/shandagames/gameplus/GamePlus;->notifyUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/shandagames/gameplus/GamePlus;->ordersn:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/shandagames/gameplus/util/SignUtil;->sign([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/shandagames/gameplus/GamePlus$2;

    const-string v0, "1000"

    invoke-static {}, Lcom/shandagames/gameplus/util/ManifestUtil;->getMarketCode()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/shandagames/gameplus/GamePlus;->phoneNumber:Ljava/lang/String;

    sget-object v3, Lcom/shandagames/gameplus/GamePlus;->ordersn:Ljava/lang/String;

    sget-object v4, Lcom/shandagames/gameplus/GamePlus;->itemName:Ljava/lang/String;

    sget-object v5, Lcom/shandagames/gameplus/GamePlus;->notifyUrl:Ljava/lang/String;

    sget v6, Lcom/shandagames/gameplus/GamePlus;->rmb:F

    invoke-static {v6}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/shandagames/gameplus/GamePlus;->extend:Ljava/lang/String;

    invoke-static/range {v0 .. v8}, Lcom/shandagames/gameplus/network/RequestConstant;->getPayRouter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Lcom/shandagames/gameplus/GamePlus$2;-><init>(Ljava/lang/String;)V

    invoke-static {v9}, Lcom/shandagames/gameplus/api/impl/network/GLRequestExecutor;->doAsync(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static requestSmsCode(Landroid/content/Context;Ljava/lang/String;Lcom/shandagames/gameplus/GamePlus$RequestSMSCallback;)V
    .locals 3

    const/4 v2, 0x0

    const-string v0, ""

    sput-object v0, Lcom/shandagames/gameplus/GamePlus;->mPhoneNumber:Ljava/lang/String;

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameter is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "3"

    const-string v1, "\u8bf7\u8f93\u5165\u6ce8\u518c\u624b\u673a\u53f7\u3002"

    invoke-interface {p2, v2, v0, v1}, Lcom/shandagames/gameplus/GamePlus$RequestSMSCallback;->onResult(ZLjava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_2
    invoke-static {p1}, Lcom/shandagames/gameplus/util/PhoneNumberCheckUtil;->isValid(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "4"

    const-string v1, "\u624b\u673a\u53f7\u683c\u5f0f\u9519\u8bef\uff0c\u8bf7\u91cd\u65b0\u8f93\u5165\u3002"

    invoke-interface {p2, v2, v0, v1}, Lcom/shandagames/gameplus/GamePlus$RequestSMSCallback;->onResult(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    sput-object p1, Lcom/shandagames/gameplus/GamePlus;->mPhoneNumber:Ljava/lang/String;

    const-string v0, "991000282"

    invoke-static {v0}, Lcom/snda/woa/android/OpenAPI;->setAppId(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/snda/woa/android/OpenAPI;->init(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/shandagames/gameplus/util/EnvUtil;->setApplicationContext(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/shandagames/gameplus/util/ManifestUtil;->initMarketCode(Landroid/content/Context;)V

    invoke-static {p0, p1, p2}, Lcom/shandagames/gameplus/impl/PhoneNumberValidator;->requestSmsCode(Landroid/content/Context;Ljava/lang/String;Lcom/shandagames/gameplus/GamePlus$RequestSMSCallback;)V

    goto :goto_0
.end method

.method public static setLogEnabled(Z)V
    .locals 0

    sput-boolean p0, Lcom/shandagames/gameplus/config/Assembly;->showDebugLog:Z

    return-void
.end method

.method public static setReleaseEnvironment(Z)V
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "http://api.mam.sdo.com"

    sput-object v0, Lcom/shandagames/gameplus/config/Config;->DOMAIN:Ljava/lang/String;

    const-string v0, "http://api.mam.sdo.com"

    sput-object v0, Lcom/shandagames/gameplus/config/Config;->WEB_DOMAIN:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const-string v0, "http://qa.mam.gameplus.sdo.com"

    sput-object v0, Lcom/shandagames/gameplus/config/Config;->DOMAIN:Ljava/lang/String;

    const-string v0, "http://qa.mam.gameplus.sdo.com"

    sput-object v0, Lcom/shandagames/gameplus/config/Config;->WEB_DOMAIN:Ljava/lang/String;

    goto :goto_0
.end method

.method public static shareScreenShot(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/shandagames/gameplus/GamePlus;->shareScreenShot(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public static shareScreenShot(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 6

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/shandagames/gameplus/config/Config;->FILE_SHOT_FILES:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ".jpg"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p0, v1}, Lcom/shandagames/gameplus/impl/ScreenShot;->shoot(Landroid/app/Activity;Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\u622a\u5c4f\u8fc7\u7a0b\u5931\u8d25\u4e86\u3002"

    invoke-static {p0, v0}, Lcom/shandagames/gameplus/util/ToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "image/*"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.SUBJECT"

    const-string v2, "\u5206\u4eab"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p1, :cond_1

    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "\u5206\u4eab"

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static validateSmsCode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/shandagames/gameplus/GamePlus$ValidateCallback;)V
    .locals 3

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-nez p1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameter is wrong."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "2"

    const-string v1, "\u8bf7\u8f93\u5165\u77ed\u4fe1\u4e2d\u7684\u9a8c\u8bc1\u7801\u3002"

    invoke-interface {p3, v2, v0, v1}, Lcom/shandagames/gameplus/GamePlus$ValidateCallback;->onResult(ZLjava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_3

    const-string v0, "3"

    const-string v1, "\u9a8c\u8bc1\u7801\u4f4d\u6570\u9519\u8bef\uff0c\u8bf7\u91cd\u65b0\u8f93\u5165\u3002"

    invoke-interface {p3, v2, v0, v1}, Lcom/shandagames/gameplus/GamePlus$ValidateCallback;->onResult(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v0, ""

    sget-object v1, Lcom/shandagames/gameplus/GamePlus;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/shandagames/gameplus/GamePlus;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    const-string v0, "5"

    const-string v1, "\u8bf7\u5148\u83b7\u53d6\u77ed\u4fe1\u9a8c\u8bc1\u7801\u3002"

    invoke-interface {p3, v2, v0, v1}, Lcom/shandagames/gameplus/GamePlus$ValidateCallback;->onResult(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string v0, "991000282"

    invoke-static {v0}, Lcom/snda/woa/android/OpenAPI;->setAppId(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/snda/woa/android/OpenAPI;->init(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/shandagames/gameplus/util/EnvUtil;->setApplicationContext(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/shandagames/gameplus/util/ManifestUtil;->initMarketCode(Landroid/content/Context;)V

    invoke-static {p0, p2, p3}, Lcom/shandagames/gameplus/impl/PhoneNumberValidator;->validateSmsCode(Landroid/content/Context;Ljava/lang/String;Lcom/shandagames/gameplus/GamePlus$ValidateCallback;)V

    goto :goto_0
.end method
