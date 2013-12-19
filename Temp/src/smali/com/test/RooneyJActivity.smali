.class public Lcom/test/RooneyJActivity;
.super Landroid/app/Activity;


# static fields
.field private static a:Z

.field private static b:Ljava/lang/String;

.field private static c:Landroid/content/Context;

.field private static d:I

.field private static e:I

.field private static g:Landroid/app/Dialog;

.field public static g_RooneyJActivity:Lcom/test/RooneyJActivity;

.field public static g_WechatHelper:Lcom/test/WechatHelper;

.field private static h:Landroid/app/Dialog;

.field private static i:Landroid/os/Handler;

.field private static j:Lcom/test/EditTextWrapper;

.field private static k:Lcom/test/VideoViewWrapper;

.field private static l:Lcom/test/WebViewWrapper;

.field private static m:Landroid/widget/LinearLayout;

.field private static n:Landroid/widget/FrameLayout;

.field private static o:I

.field private static p:Ljava/lang/String;

.field private static q:Landroid/content/Context;

.field private static r:Z

.field private static s:Z


# instance fields
.field private f:Lcom/test/CustomView;

.field private final t:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const-string v0, "rooneyj"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    sput-object v1, Lcom/test/RooneyJActivity;->g_RooneyJActivity:Lcom/test/RooneyJActivity;

    sput-object v1, Lcom/test/RooneyJActivity;->g_WechatHelper:Lcom/test/WechatHelper;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/test/RooneyJActivity;->i:Landroid/os/Handler;

    sput-object v1, Lcom/test/RooneyJActivity;->j:Lcom/test/EditTextWrapper;

    sput-object v1, Lcom/test/RooneyJActivity;->k:Lcom/test/VideoViewWrapper;

    sput-object v1, Lcom/test/RooneyJActivity;->l:Lcom/test/WebViewWrapper;

    sput-boolean v2, Lcom/test/RooneyJActivity;->r:Z

    sput-boolean v2, Lcom/test/RooneyJActivity;->s:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/test/j;

    invoke-direct {v0, p0}, Lcom/test/j;-><init>(Lcom/test/RooneyJActivity;)V

    iput-object v0, p0, Lcom/test/RooneyJActivity;->t:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static ReturnLoginActivity()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/test/RooneyJActivity;->q:Landroid/content/Context;

    const-class v2, Lcom/test/enter/ModeSelectActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "login_error"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget-object v1, Lcom/test/RooneyJActivity;->q:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method static synthetic a(Lcom/test/RooneyJActivity;)Lcom/test/CustomView;
    .locals 1

    iget-object v0, p0, Lcom/test/RooneyJActivity;->f:Lcom/test/CustomView;

    return-object v0
.end method

.method static synthetic a()Lcom/test/EditTextWrapper;
    .locals 1

    sget-object v0, Lcom/test/RooneyJActivity;->j:Lcom/test/EditTextWrapper;

    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/test/RooneyJActivity;->p:Ljava/lang/String;

    return-void
.end method

.method static synthetic b()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/test/RooneyJActivity;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c()Lcom/test/VideoViewWrapper;
    .locals 1

    sget-object v0, Lcom/test/RooneyJActivity;->k:Lcom/test/VideoViewWrapper;

    return-object v0
.end method

.method public static closeProgressDialog()V
    .locals 1

    sget-object v0, Lcom/test/RooneyJActivity;->h:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/test/RooneyJActivity;->h:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    sput-object v0, Lcom/test/RooneyJActivity;->h:Landroid/app/Dialog;

    :cond_0
    return-void
.end method

.method static synthetic d()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/test/RooneyJActivity;->g:Landroid/app/Dialog;

    return-void
.end method

.method public static dismissDialog()V
    .locals 1

    sget-object v0, Lcom/test/RooneyJActivity;->g:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/test/RooneyJActivity;->g:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ">dismissDialog> AlertDialog#dismiss"

    invoke-static {v0}, Lcom/test/Debug;->log(Ljava/lang/String;)V

    sget-object v0, Lcom/test/RooneyJActivity;->g:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    sput-object v0, Lcom/test/RooneyJActivity;->g:Landroid/app/Dialog;

    :cond_0
    return-void
.end method

.method static synthetic e()I
    .locals 1

    sget v0, Lcom/test/RooneyJActivity;->o:I

    return v0
.end method

.method public static getAppContext()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/test/RooneyJActivity;->c:Landroid/content/Context;

    return-object v0
.end method

.method public static getAppResources()Landroid/content/res/Resources;
    .locals 1

    sget-object v0, Lcom/test/RooneyJActivity;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public static getDisplayHeihgt()I
    .locals 1

    sget v0, Lcom/test/RooneyJActivity;->e:I

    return v0
.end method

.method public static getDisplayWidth()I
    .locals 1

    sget v0, Lcom/test/RooneyJActivity;->d:I

    return v0
.end method

.method public static getRootDirNameString()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/test/RooneyJActivity;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static hideEditText()V
    .locals 2

    sget-object v0, Lcom/test/RooneyJActivity;->i:Landroid/os/Handler;

    new-instance v1, Lcom/test/l;

    invoke-direct {v1}, Lcom/test/l;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static hideVideoView()V
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/test/RooneyJActivity;->k:Lcom/test/VideoViewWrapper;

    sget-object v2, Lcom/test/RooneyJActivity;->n:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2, v0}, Lcom/test/VideoViewWrapper;->hideVideoView(Landroid/widget/FrameLayout;I)V

    sget-object v1, Lcom/test/RooneyJActivity;->q:Landroid/content/Context;

    invoke-static {v1}, Lcom/test/SoundManager;->isMusicActive(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/test/SoundManager;->isPlayAppSound()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    sput-boolean v0, Lcom/test/RooneyJActivity;->s:Z

    invoke-static {}, Lcom/test/SoundManager;->resume()V

    return-void
.end method

.method public static initPushSerivce()V
    .locals 3

    invoke-static {}, Lcom/test/RooneyJActivity;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lcom/test/q;

    invoke-direct {v2}, Lcom/test/q;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/shandagames/gameplus/GamePlus;->initPushId(Landroid/content/Context;ZLcom/shandagames/gameplus/api/callback/GLPushIdUpdateCB;)V

    return-void
.end method

.method public static isAvailableExternalStorage()Z
    .locals 1

    sget-boolean v0, Lcom/test/RooneyJActivity;->a:Z

    return v0
.end method

.method public static isMusicActive()Z
    .locals 1

    sget-boolean v0, Lcom/test/RooneyJActivity;->s:Z

    return v0
.end method

.method public static isPlayingVideo()Z
    .locals 1

    sget-object v0, Lcom/test/RooneyJActivity;->k:Lcom/test/VideoViewWrapper;

    invoke-virtual {v0}, Lcom/test/VideoViewWrapper;->isPlayingVideo()Z

    move-result v0

    return v0
.end method

.method public static isShowingDialog()Z
    .locals 1

    sget-object v0, Lcom/test/RooneyJActivity;->g:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/test/RooneyJActivity;->g:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static native nativeConnectResponceError(I)V
.end method

.method public static native nativeDidReceiveRemoteNotification(Ljava/lang/String;)V
.end method

.method public static native nativeDidRegisterForRemoteNotificationsWithDeviceToken(Ljava/lang/String;)V
.end method

.method private static native nativeSetCurrentMc(I)V
.end method

.method private static native nativeWebViewSceneTo(II)V
.end method

.method private static native nativeWebViewSetDisable(Z)V
.end method

.method public static openBrowser(Ljava/lang/String;)V
    .locals 3

    const-string v0, "version-up"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "http://play.google.com/store/apps/details?id=com.square_enix.million_tw"

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/test/Utils;->getAppChannel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "App Download URL = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/test/Debug;->log_cjh(Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    sget-object v0, Lcom/test/RooneyJActivity;->q:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static playVideo(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "ViewPath:%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v3

    invoke-static {v0, v1}, Lcom/test/Debug;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/test/RooneyJActivity;->k:Lcom/test/VideoViewWrapper;

    sget-object v1, Lcom/test/RooneyJActivity;->q:Landroid/content/Context;

    sget-object v2, Lcom/test/RooneyJActivity;->n:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, v2, v3}, Lcom/test/VideoViewWrapper;->playVideo(Landroid/content/Context;Landroid/widget/FrameLayout;I)V

    return-void
.end method

.method public static postDeviceTokenAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "deviceToken ===== "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/test/Debug;->log_cjh(Ljava/lang/String;)V

    const-string v0, "%s%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    const/4 v2, 0x1

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x186a0

    invoke-static {p0, v0, v1}, Lcom/test/AsyncTaskRunner;->connectPost(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/test/Debug;->log_cjh(Ljava/lang/String;)V

    return-void
.end method

.method public static resumeVideoView()Z
    .locals 4

    sget-object v0, Lcom/test/RooneyJActivity;->k:Lcom/test/VideoViewWrapper;

    sget-object v1, Lcom/test/RooneyJActivity;->q:Landroid/content/Context;

    sget-object v2, Lcom/test/RooneyJActivity;->n:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/test/VideoViewWrapper;->resumeVideoView(Landroid/content/Context;Landroid/widget/FrameLayout;I)Z

    move-result v0

    return v0
.end method

.method public static setCurrentMc(I)V
    .locals 0

    invoke-static {p0}, Lcom/test/RooneyJActivity;->nativeSetCurrentMc(I)V

    return-void
.end method

.method public static showEditText(Ljava/lang/String;III)V
    .locals 2

    sget-object v0, Lcom/test/RooneyJActivity;->i:Landroid/os/Handler;

    new-instance v1, Lcom/test/k;

    invoke-direct {v1, p1, p0, p2, p3}, Lcom/test/k;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static showProgressDialog()V
    .locals 3

    sget-object v0, Lcom/test/RooneyJActivity;->h:Landroid/app/Dialog;

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/Dialog;

    sget-object v1, Lcom/test/RooneyJActivity;->q:Landroid/content/Context;

    const v2, 0x7f080015

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/test/RooneyJActivity;->h:Landroid/app/Dialog;

    const/high16 v1, 0x7f03

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    sget-object v0, Lcom/test/RooneyJActivity;->h:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    :cond_0
    sget-object v0, Lcom/test/RooneyJActivity;->h:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public static showWebChat()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/test/RooneyJActivity;->g_RooneyJActivity:Lcom/test/RooneyJActivity;

    const-class v2, Lcom/test/WebchatActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v1, Lcom/test/RooneyJActivity;->g_RooneyJActivity:Lcom/test/RooneyJActivity;

    invoke-virtual {v1, v0}, Lcom/test/RooneyJActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static showWebView(Ljava/lang/String;Z)V
    .locals 3

    sget-object v0, Lcom/test/RooneyJActivity;->l:Lcom/test/WebViewWrapper;

    sget-object v1, Lcom/test/RooneyJActivity;->q:Landroid/content/Context;

    sget-object v2, Lcom/test/RooneyJActivity;->n:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, v2, p0, p1}, Lcom/test/WebViewWrapper;->showWebView(Landroid/content/Context;Landroid/widget/FrameLayout;Ljava/lang/String;Z)V

    return-void
.end method

.method public static suspendVideoView()V
    .locals 1

    sget-object v0, Lcom/test/RooneyJActivity;->k:Lcom/test/VideoViewWrapper;

    invoke-virtual {v0}, Lcom/test/VideoViewWrapper;->suspendVideoView()V

    return-void
.end method

.method public static usePoint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8

    const/4 v3, 0x0

    const-string v0, "[usePoint] path:%s session:%s productId:%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/test/Debug;->logGP(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Billing URL = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/test/enter/EnterDef;->SelectUrlBilling_:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/test/Debug;->logGP(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Billing Open = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/test/enter/EnterDef;->OpenBilling_:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/test/Debug;->logGP(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Billing cpName = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/test/Debug;->logGP(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Billing cpPrice = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/test/Debug;->logGP(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "MC"

    const-string v1, ""

    invoke-virtual {p3, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/test/RooneyJActivity;->o:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Billing _plusMC = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/test/RooneyJActivity;->o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/test/Debug;->logGP(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v1, Lcom/test/enter/EnterDef;->PhoneNumber_:Ljava/lang/String;

    sget-object v3, Lcom/test/enter/EnterDef;->SelectUrlBilling_:Ljava/lang/String;

    int-to-float v4, p4

    sget-object v6, Lcom/test/enter/EnterDef;->PhoneNumber_:Ljava/lang/String;

    sget-object v0, Lcom/test/RooneyJActivity;->q:Landroid/content/Context;

    new-instance v7, Lcom/test/p;

    invoke-direct {v7}, Lcom/test/p;-><init>()V

    move-object v2, p2

    move-object v5, p3

    invoke-static/range {v0 .. v7}, Lcom/shandagames/gameplus/GamePlus;->payInGame(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FLjava/lang/String;Ljava/lang/String;Lcom/shandagames/gameplus/GamePlus$PayCallback;)V

    return-void
.end method

.method public static viewAppliIntroduct(Ljava/lang/String;)V
    .locals 5

    const-string v0, ""

    const-string v1, "http://api.mam.sdo.com/pay.php?m=Paylogin"

    invoke-static {v1}, Lcom/test/Debug;->log_cjh(Ljava/lang/String;)V

    sget-object v2, Lcom/test/RooneyJActivity;->l:Lcom/test/WebViewWrapper;

    sget-object v3, Lcom/test/RooneyJActivity;->q:Landroid/content/Context;

    sget-object v4, Lcom/test/RooneyJActivity;->n:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3, v4, v1, v0}, Lcom/test/WebViewWrapper;->showWebViewPost(Landroid/content/Context;Landroid/widget/FrameLayout;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static webViewSceneTo(II)V
    .locals 0

    invoke-static {p0, p1}, Lcom/test/RooneyJActivity;->nativeWebViewSceneTo(II)V

    return-void
.end method

.method public static webViewSetDisable(Z)V
    .locals 0

    invoke-static {p0}, Lcom/test/RooneyJActivity;->nativeWebViewSetDisable(Z)V

    return-void
.end method


# virtual methods
.method public availableExternalStorage()Z
    .locals 2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    const/16 v0, 0x52

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public displayExternalStorageInfo()V
    .locals 7

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/test/RooneyJActivity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/os/StatFs;

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v2

    mul-int/2addr v0, v2

    div-int/lit16 v0, v0, 0x400

    int-to-long v2, v0

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCount()I

    move-result v1

    mul-int/2addr v0, v1

    div-int/lit16 v0, v0, 0x400

    int-to-long v0, v0

    new-instance v4, Ljava/text/DecimalFormat;

    const-string v5, "#,###KB"

    invoke-direct {v4, v5}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const-string v5, "ExternalStorageSize:"

    invoke-static {v5}, Lcom/test/Debug;->log(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Total = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/test/Debug;->log(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Free  = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/test/Debug;->log(Ljava/lang/String;)V

    return-void
.end method

.method public initialize()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/test/RooneyJActivity;->availableExternalStorage()Z

    move-result v0

    if-eqz v0, :cond_1

    sput-boolean v5, Lcom/test/RooneyJActivity;->a:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/test/RooneyJActivity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/test/RooneyJActivity;->b:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/test/RooneyJActivity;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    const-string v2, "\u30eb\u30fc\u30c8\u30c7\u30a3\u30ec\u30af\u30c8\u30ea\u751f\u6210:%s %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Lcom/test/Debug;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    const-string v0, "\u5916\u90e8\u30b9\u30c8\u30ec\u30fc\u30b8\u304c\u3042\u308a\u307e\u305b\u3093"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/test/Debug;->err(Ljava/lang/String;[Ljava/lang/Object;)V

    sput-boolean v4, Lcom/test/RooneyJActivity;->a:Z

    goto :goto_0
.end method

.method public onClickClose(Landroid/view/View;)V
    .locals 2

    sget-object v0, Lcom/test/RooneyJActivity;->l:Lcom/test/WebViewWrapper;

    sget-object v1, Lcom/test/RooneyJActivity;->n:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Lcom/test/WebViewWrapper;->webViewDestroy(Landroid/widget/FrameLayout;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "#onCreate"

    invoke-static {v0}, Lcom/test/Debug;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/test/RooneyJActivity;->g:Landroid/app/Dialog;

    sput-object p0, Lcom/test/RooneyJActivity;->q:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/test/RooneyJActivity;->initialize()V

    sput-object p0, Lcom/test/RooneyJActivity;->g_RooneyJActivity:Lcom/test/RooneyJActivity;

    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/test/RooneyJActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    sput v1, Lcom/test/RooneyJActivity;->d:I

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    sput v0, Lcom/test/RooneyJActivity;->e:I

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/test/RooneyJActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    :cond_0
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/test/RooneyJActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, ":"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Device id ==== "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/test/Debug;->log_cjh(Ljava/lang/String;)V

    const-string v1, "102"

    invoke-static {v1}, Lcom/test/DeviceInfo;->setAppVersion(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/test/DeviceInfo;->setDeviceId(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/test/RooneyJActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/test/RooneyJActivity;->c:Landroid/content/Context;

    invoke-virtual {p0, v4}, Lcom/test/RooneyJActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/test/RooneyJActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Lcom/test/RooneyJActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/test/RooneyJActivity;->setVolumeControlStream(I)V

    new-instance v0, Lcom/test/CustomView;

    invoke-direct {v0, p0}, Lcom/test/CustomView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/test/RooneyJActivity;->f:Lcom/test/CustomView;

    iget-object v0, p0, Lcom/test/RooneyJActivity;->f:Lcom/test/CustomView;

    invoke-virtual {v0}, Lcom/test/CustomView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    iget-object v0, p0, Lcom/test/RooneyJActivity;->f:Lcom/test/CustomView;

    invoke-virtual {v0, v4}, Lcom/test/CustomView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/test/RooneyJActivity;->f:Lcom/test/CustomView;

    invoke-virtual {v0}, Lcom/test/CustomView;->requestFocus()Z

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/test/RooneyJActivity;->m:Landroid/widget/LinearLayout;

    invoke-static {v3, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    sget-object v0, Lcom/test/RooneyJActivity;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    sget-object v0, Lcom/test/RooneyJActivity;->m:Landroid/widget/LinearLayout;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/test/RooneyJActivity;->n:Landroid/widget/FrameLayout;

    invoke-static {v3, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/test/RooneyJActivity;->f:Lcom/test/CustomView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/test/CustomView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v0, Lcom/test/RooneyJActivity;->n:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/test/RooneyJActivity;->f:Lcom/test/CustomView;

    invoke-virtual {v0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    sget-object v0, Lcom/test/RooneyJActivity;->m:Landroid/widget/LinearLayout;

    sget-object v1, Lcom/test/RooneyJActivity;->n:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    sget-object v0, Lcom/test/RooneyJActivity;->m:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/test/RooneyJActivity;->setContentView(Landroid/view/View;)V

    sget-object v0, Lcom/test/RooneyJActivity;->k:Lcom/test/VideoViewWrapper;

    if-nez v0, :cond_2

    new-instance v0, Lcom/test/VideoViewWrapper;

    invoke-direct {v0}, Lcom/test/VideoViewWrapper;-><init>()V

    sput-object v0, Lcom/test/RooneyJActivity;->k:Lcom/test/VideoViewWrapper;

    :cond_2
    sget-object v0, Lcom/test/RooneyJActivity;->l:Lcom/test/WebViewWrapper;

    if-nez v0, :cond_3

    new-instance v0, Lcom/test/WebViewWrapper;

    invoke-direct {v0}, Lcom/test/WebViewWrapper;-><init>()V

    sput-object v0, Lcom/test/RooneyJActivity;->l:Lcom/test/WebViewWrapper;

    :cond_3
    invoke-virtual {p0}, Lcom/test/RooneyJActivity;->setupEditTextLayout()V

    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    invoke-static {v4}, Lcom/shandagames/gameplus/GamePlus;->setReleaseEnvironment(Z)V

    new-instance v0, Lcom/test/WechatHelper;

    invoke-direct {v0}, Lcom/test/WechatHelper;-><init>()V

    sput-object v0, Lcom/test/RooneyJActivity;->g_WechatHelper:Lcom/test/WechatHelper;

    invoke-virtual {v0, p0}, Lcom/test/WechatHelper;->init(Landroid/content/Context;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const-string v0, "#onDestroy"

    invoke-static {v0}, Lcom/test/Debug;->log(Ljava/lang/String;)V

    sget-object v0, Lcom/test/RooneyJActivity;->l:Lcom/test/WebViewWrapper;

    invoke-virtual {v0}, Lcom/test/WebViewWrapper;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/test/RooneyJActivity;->onClickClose(Landroid/view/View;)V

    sget-object v0, Lcom/test/RooneyJActivity;->l:Lcom/test/WebViewWrapper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/test/WebViewWrapper;->setforceclose(Z)V

    :cond_0
    sput-object v2, Lcom/test/RooneyJActivity;->g_RooneyJActivity:Lcom/test/RooneyJActivity;

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    sget-object v0, Lcom/test/RooneyJActivity;->k:Lcom/test/VideoViewWrapper;

    invoke-virtual {v0}, Lcom/test/VideoViewWrapper;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/test/RooneyJActivity;->f:Lcom/test/CustomView;

    invoke-virtual {v0}, Lcom/test/CustomView;->deactivate()V

    :goto_0
    sget-object v0, Lcom/test/RooneyJActivity;->k:Lcom/test/VideoViewWrapper;

    invoke-virtual {v0}, Lcom/test/VideoViewWrapper;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/test/RooneyJActivity;->f:Lcom/test/CustomView;

    invoke-virtual {v0}, Lcom/test/CustomView;->deactivate()V

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/test/RooneyJActivity;->q:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u786e\u5b9a\u7ed3\u675f\u6e38\u620f\u5417\uff1f"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Yes"

    new-instance v2, Lcom/test/m;

    invoke-direct {v2, p0}, Lcom/test/m;-><init>(Lcom/test/RooneyJActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "No"

    new-instance v2, Lcom/test/n;

    invoke-direct {v2, p0}, Lcom/test/n;-><init>(Lcom/test/RooneyJActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    sput-object v0, Lcom/test/RooneyJActivity;->g:Landroid/app/Dialog;

    new-instance v1, Lcom/test/o;

    invoke-direct {v1, p0}, Lcom/test/o;-><init>(Lcom/test/RooneyJActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    sget-object v0, Lcom/test/RooneyJActivity;->k:Lcom/test/VideoViewWrapper;

    invoke-virtual {v0}, Lcom/test/VideoViewWrapper;->pause()V

    goto :goto_0

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const-string v0, "#onPause"

    invoke-static {v0}, Lcom/test/Debug;->log(Ljava/lang/String;)V

    sget-object v0, Lcom/test/RooneyJActivity;->j:Lcom/test/EditTextWrapper;

    invoke-virtual {v0}, Lcom/test/EditTextWrapper;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/test/RooneyJActivity;->j:Lcom/test/EditTextWrapper;

    invoke-virtual {v0}, Lcom/test/EditTextWrapper;->hideIme()V

    :cond_0
    invoke-static {}, Lcom/test/RooneyJActivity;->suspendVideoView()V

    invoke-static {}, Lcom/test/SoundManager;->pause()V

    sget-object v0, Lcom/test/RooneyJActivity;->l:Lcom/test/WebViewWrapper;

    invoke-virtual {v0}, Lcom/test/WebViewWrapper;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/test/RooneyJActivity;->l:Lcom/test/WebViewWrapper;

    invoke-virtual {v0}, Lcom/test/WebViewWrapper;->pauseTimers()V

    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 4

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string v0, "#onResume"

    invoke-static {v0}, Lcom/test/Debug;->log(Ljava/lang/String;)V

    const-wide/16 v2, 0x190

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {p0}, Lcom/test/SoundManager;->isMusicActive(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/test/SoundManager;->isPlayAppSound()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/test/RooneyJActivity;->s:Z

    if-eqz v0, :cond_1

    const-string v0, "\u97f3\u697d\u518d\u751f\u4e2d\u3067\u3059"

    :goto_2
    invoke-static {v0}, Lcom/test/Debug;->log(Ljava/lang/String;)V

    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Lcom/test/RooneyJActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "-- [resume]\u30b9\u30ea\u30fc\u30d7\u4e2d\u3067\u3059"

    invoke-static {v0}, Lcom/test/Debug;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/test/RooneyJActivity;->f:Lcom/test/CustomView;

    invoke-virtual {v0}, Lcom/test/CustomView;->sleep()V

    :goto_3
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    const-string v0, "\u97f3\u697d\u518d\u751f\u4e2d\u3067\u306f\u3042\u308a\u307e\u305b\u3093"

    goto :goto_2

    :cond_2
    const-string v0, "-- [resume]\u30b9\u30ea\u30fc\u30d7\u4e2d\u3067\u306f\u3042\u308a\u307e\u305b\u3093"

    invoke-static {v0}, Lcom/test/Debug;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/test/RooneyJActivity;->resumeVideoView()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/test/RooneyJActivity;->isShowingDialog()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/test/RooneyJActivity;->dismissDialog()V

    :cond_3
    :goto_4
    sget-object v0, Lcom/test/RooneyJActivity;->l:Lcom/test/WebViewWrapper;

    invoke-virtual {v0}, Lcom/test/WebViewWrapper;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/test/RooneyJActivity;->l:Lcom/test/WebViewWrapper;

    invoke-virtual {v0}, Lcom/test/WebViewWrapper;->resumeTimers()V

    :cond_4
    sget-object v0, Lcom/test/RooneyJActivity;->l:Lcom/test/WebViewWrapper;

    invoke-virtual {v0}, Lcom/test/WebViewWrapper;->isForceclose()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/test/RooneyJActivity;->l:Lcom/test/WebViewWrapper;

    invoke-virtual {v0}, Lcom/test/WebViewWrapper;->getLatestUrl()Ljava/lang/String;

    move-result-object v0

    sget-boolean v2, Lcom/test/RooneyJActivity;->r:Z

    invoke-static {v0, v2}, Lcom/test/RooneyJActivity;->showWebView(Ljava/lang/String;Z)V

    sget-object v0, Lcom/test/RooneyJActivity;->l:Lcom/test/WebViewWrapper;

    invoke-virtual {v0, v1}, Lcom/test/WebViewWrapper;->setforceclose(Z)V

    :cond_5
    invoke-static {}, Lcom/test/FileUtils;->isAsyncRemoveFile()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/test/RooneyJActivity;->showProgressDialog()V

    :cond_6
    sget-object v0, Lcom/test/RooneyJActivity;->p:Ljava/lang/String;

    invoke-static {v0}, Lcom/shandagames/gameplus/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    sget-boolean v1, Lcom/shandagames/gameplus/push/SocketPushService;->isStop:Z

    if-eqz v1, :cond_8

    invoke-static {p0, v0}, Lcom/shandagames/gameplus/push/SocketPushService;->actionStart(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "start ~~~~~SocketPushService"

    invoke-static {v0}, Lcom/test/Debug;->log_cjh(Ljava/lang/String;)V

    :goto_5
    iget-object v0, p0, Lcom/test/RooneyJActivity;->t:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.shandagames.gameplus.push.DISPLAY_MESSAGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/test/RooneyJActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_3

    :cond_7
    invoke-static {}, Lcom/test/SoundManager;->resume()V

    goto :goto_4

    :cond_8
    const-string v0, "SocketPushService is running"

    invoke-static {v0}, Lcom/test/Debug;->log_cjh(Ljava/lang/String;)V

    goto :goto_5

    :cond_9
    const-string v0, "phoneNumber can\'t null"

    invoke-static {v0}, Lcom/test/Debug;->log_cjh(Ljava/lang/String;)V

    goto :goto_5
.end method

.method protected onStart()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method

.method public setupEditTextLayout()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/test/EditTextWrapper;

    const-string v1, ""

    invoke-direct {v0, p0, v1, v2, v2}, Lcom/test/EditTextWrapper;-><init>(Landroid/app/Activity;Ljava/lang/String;II)V

    sput-object v0, Lcom/test/RooneyJActivity;->j:Lcom/test/EditTextWrapper;

    return-void
.end method
