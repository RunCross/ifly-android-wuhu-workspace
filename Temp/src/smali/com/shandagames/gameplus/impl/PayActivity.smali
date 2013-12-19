.class public Lcom/shandagames/gameplus/impl/PayActivity;
.super Landroid/app/Activity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shandagames/gameplus/impl/PayActivity$ExitPayActivityEvent;,
        Lcom/shandagames/gameplus/impl/PayActivity$IAPListener;,
        Lcom/shandagames/gameplus/impl/PayActivity$MyWebChromeClient;,
        Lcom/shandagames/gameplus/impl/PayActivity$MyWebViewClient;
    }
.end annotation


# static fields
.field private static final MSG_360_PAY:I = 0x3

.field private static final MSG_MM_PAY:I = 0x2

.field private static final REMOVE_PROGRESS:I = 0x1

.field private static final SHOW_PROGRESS:I

.field public static callbackForMM:Lcom/shandagames/gameplus/GamePlus$PayCallback;

.field public static event:Lcom/shandagames/gameplus/impl/PayActivity$ExitPayActivityEvent;

.field public static qihooSeckey:Ljava/lang/String;

.field public static qihooToken:Ljava/lang/String;

.field private static uri:Ljava/lang/String;


# instance fields
.field private amount:Ljava/lang/String;

.field protected mHandler:Landroid/os/Handler;

.field private mProgressBar:Landroid/app/ProgressDialog;

.field private mWebView:Landroid/webkit/WebView;

.field private mmappid:Ljava/lang/String;

.field private mmappkey:Ljava/lang/String;

.field private mmorderid:Ljava/lang/String;

.field private mmpaycode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const-string v0, ""

    sput-object v0, Lcom/shandagames/gameplus/impl/PayActivity;->uri:Ljava/lang/String;

    sput-object v1, Lcom/shandagames/gameplus/impl/PayActivity;->event:Lcom/shandagames/gameplus/impl/PayActivity$ExitPayActivityEvent;

    sput-object v1, Lcom/shandagames/gameplus/impl/PayActivity;->callbackForMM:Lcom/shandagames/gameplus/GamePlus$PayCallback;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/shandagames/gameplus/impl/PayActivity$1;

    invoke-direct {v0, p0}, Lcom/shandagames/gameplus/impl/PayActivity$1;-><init>(Lcom/shandagames/gameplus/impl/PayActivity;)V

    iput-object v0, p0, Lcom/shandagames/gameplus/impl/PayActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$0(Lcom/shandagames/gameplus/impl/PayActivity;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/shandagames/gameplus/impl/PayActivity;->mProgressBar:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1(Lcom/shandagames/gameplus/impl/PayActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/shandagames/gameplus/impl/PayActivity;->mmappid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/shandagames/gameplus/impl/PayActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/shandagames/gameplus/impl/PayActivity;->mmappkey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/shandagames/gameplus/impl/PayActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/shandagames/gameplus/impl/PayActivity;->mmpaycode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/shandagames/gameplus/impl/PayActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/shandagames/gameplus/impl/PayActivity;->amount:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/shandagames/gameplus/impl/PayActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/shandagames/gameplus/impl/PayActivity;->sendMessage(I)V

    return-void
.end method

.method static synthetic access$6(Lcom/shandagames/gameplus/impl/PayActivity;)Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lcom/shandagames/gameplus/impl/PayActivity;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$7(Lcom/shandagames/gameplus/impl/PayActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/shandagames/gameplus/impl/PayActivity;->mmorderid:Ljava/lang/String;

    return-object v0
.end method

.method private doSendSms(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-static {p0, v3, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0x46

    if-le v1, v3, :cond_1

    invoke-virtual {v0, p2}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_1
    return-void

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v1, p1

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_0

    :cond_1
    move-object v1, p1

    move-object v3, p2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_1
.end method

.method private initUI()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v3}, Lcom/shandagames/gameplus/impl/PayActivity;->requestWindowFeature(I)Z

    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/shandagames/gameplus/impl/PayActivity;->mWebView:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/shandagames/gameplus/impl/PayActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/shandagames/gameplus/impl/PayActivity;->mWebView:Landroid/webkit/WebView;

    const-string v1, "gameplus"

    invoke-virtual {v0, p0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/shandagames/gameplus/impl/PayActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/shandagames/gameplus/impl/PayActivity$MyWebViewClient;

    invoke-direct {v1, p0, v5}, Lcom/shandagames/gameplus/impl/PayActivity$MyWebViewClient;-><init>(Lcom/shandagames/gameplus/impl/PayActivity;Lcom/shandagames/gameplus/impl/PayActivity$MyWebViewClient;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/shandagames/gameplus/impl/PayActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/shandagames/gameplus/impl/PayActivity$MyWebChromeClient;

    invoke-direct {v1, p0, v5}, Lcom/shandagames/gameplus/impl/PayActivity$MyWebChromeClient;-><init>(Lcom/shandagames/gameplus/impl/PayActivity;Lcom/shandagames/gameplus/impl/PayActivity$MyWebChromeClient;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, p0, Lcom/shandagames/gameplus/impl/PayActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    iget-object v0, p0, Lcom/shandagames/gameplus/impl/PayActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    iget-object v0, p0, Lcom/shandagames/gameplus/impl/PayActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    iget-object v0, p0, Lcom/shandagames/gameplus/impl/PayActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setScrollbarFadingEnabled(Z)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/shandagames/gameplus/impl/PayActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p0, v1, v0}, Lcom/shandagames/gameplus/impl/PayActivity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/shandagames/gameplus/impl/PayActivity;->addProgressbar()V

    return-void
.end method

.method private sendMessage(I)V
    .locals 2

    iget-object v0, p0, Lcom/shandagames/gameplus/impl/PayActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/shandagames/gameplus/impl/PayActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method protected addProgressbar()V
    .locals 2

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/shandagames/gameplus/impl/PayActivity;->mProgressBar:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/shandagames/gameplus/impl/PayActivity;->mProgressBar:Landroid/app/ProgressDialog;

    const-string v1, "\u52a0\u8f7d\u4e2d, \u8bf7\u7a0d\u5019..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public alert(Ljava/lang/String;)V
    .locals 1

    const-string v0, "web calling: alert"

    invoke-static {v0}, Lcom/shandagames/gameplus/log/LogDebugger;->println(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/shandagames/gameplus/util/ToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public closeWindow()V
    .locals 1

    const-string v0, "web calling: closeWindow"

    invoke-static {v0}, Lcom/shandagames/gameplus/log/LogDebugger;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/shandagames/gameplus/impl/PayActivity;->finish()V

    return-void
.end method

.method public finish()V
    .locals 1

    sget-object v0, Lcom/shandagames/gameplus/impl/PayActivity;->event:Lcom/shandagames/gameplus/impl/PayActivity$ExitPayActivityEvent;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/shandagames/gameplus/impl/PayActivity;->event:Lcom/shandagames/gameplus/impl/PayActivity$ExitPayActivityEvent;

    invoke-interface {v0}, Lcom/shandagames/gameplus/impl/PayActivity$ExitPayActivityEvent;->onEvent()V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public invokeJs(Ljava/lang/String;)V
    .locals 2

    const-string v0, "javascript:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "javascript:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Lcom/shandagames/gameplus/impl/PayActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/shandagames/gameplus/impl/PayActivity$2;

    invoke-direct {v1, p0, p1}, Lcom/shandagames/gameplus/impl/PayActivity$2;-><init>(Lcom/shandagames/gameplus/impl/PayActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public mmPay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mmPay -> mmappid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";mmappkey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";mmpaycode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";amount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";mmorderid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shandagames/gameplus/log/LogDebugger;->println(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/shandagames/gameplus/impl/PayActivity;->mmappid:Ljava/lang/String;

    iput-object p2, p0, Lcom/shandagames/gameplus/impl/PayActivity;->mmappkey:Ljava/lang/String;

    iput-object p3, p0, Lcom/shandagames/gameplus/impl/PayActivity;->mmpaycode:Ljava/lang/String;

    iput-object p4, p0, Lcom/shandagames/gameplus/impl/PayActivity;->amount:Ljava/lang/String;

    iput-object p5, p0, Lcom/shandagames/gameplus/impl/PayActivity;->mmorderid:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/shandagames/gameplus/impl/PayActivity;->sendMessage(I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/shandagames/gameplus/impl/PayActivity;->initUI()V

    invoke-virtual {p0}, Lcom/shandagames/gameplus/impl/PayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/shandagames/gameplus/impl/PayActivity;->uri:Ljava/lang/String;

    iget-object v0, p0, Lcom/shandagames/gameplus/impl/PayActivity;->mWebView:Landroid/webkit/WebView;

    sget-object v1, Lcom/shandagames/gameplus/impl/PayActivity;->uri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u662f\u5426\u7ed3\u675f\u652f\u4ed8\u8fd4\u56de\u6e38\u620f\uff1f"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/shandagames/gameplus/impl/PayActivity$3;

    invoke-direct {v3, p0}, Lcom/shandagames/gameplus/impl/PayActivity$3;-><init>(Lcom/shandagames/gameplus/impl/PayActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    new-instance v3, Lcom/shandagames/gameplus/impl/PayActivity$4;

    invoke-direct {v3, p0}, Lcom/shandagames/gameplus/impl/PayActivity$4;-><init>(Lcom/shandagames/gameplus/impl/PayActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public openBrowser(Ljava/lang/String;)V
    .locals 3

    const-string v0, "web calling:openBrowser"

    invoke-static {v0}, Lcom/shandagames/gameplus/log/LogDebugger;->println(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lcom/shandagames/gameplus/impl/PayActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public qihooPay()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "qihooPay -> qihooToken="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/shandagames/gameplus/impl/PayActivity;->qihooToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";qihooSeckey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/shandagames/gameplus/impl/PayActivity;->qihooSeckey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shandagames/gameplus/log/LogDebugger;->println(Ljava/lang/String;)V

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/shandagames/gameplus/impl/PayActivity;->sendMessage(I)V

    return-void
.end method

.method public sendSms(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "web calling: sendSms"

    invoke-static {v0}, Lcom/shandagames/gameplus/log/LogDebugger;->println(Ljava/lang/String;)V

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/shandagames/gameplus/impl/PayActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "0"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/shandagames/gameplus/impl/PayActivity;->doSendSms(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "1"

    goto :goto_0

    :cond_1
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_1
    if-lt v0, v2, :cond_2

    const-string v0, "1"

    goto :goto_0

    :cond_2
    aget-object v3, v1, v0

    invoke-direct {p0, v3, p2}, Lcom/shandagames/gameplus/impl/PayActivity;->doSendSms(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
