.class public Lcom/baidu/game/activity/PaymentActivity;
.super Landroid/app/Activity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/game/activity/PaymentActivity$a;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private handler:Landroid/os/Handler;

.field private t:Landroid/webkit/WebView;

.field private u:Landroid/widget/RelativeLayout;

.field private v:Landroid/app/ProgressDialog;

.field private w:Lcom/baidu/game/model/UserInfo;

.field private x:Lcom/baidu/game/model/PaymentInfo;

.field private y:Lcom/baidu/game/listener/PayCallbackListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/baidu/game/activity/PaymentActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/game/activity/PaymentActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/game/activity/PaymentActivity;->v:Landroid/app/ProgressDialog;

    new-instance v0, Lcom/baidu/game/activity/PaymentActivity$1;

    invoke-direct {v0, p0}, Lcom/baidu/game/activity/PaymentActivity$1;-><init>(Lcom/baidu/game/activity/PaymentActivity;)V

    iput-object v0, p0, Lcom/baidu/game/activity/PaymentActivity;->y:Lcom/baidu/game/listener/PayCallbackListener;

    return-void
.end method

.method static synthetic a(Lcom/baidu/game/activity/PaymentActivity;Ljava/lang/String;)Landroid/app/ProgressDialog;
    .locals 1

    invoke-direct {p0, p1}, Lcom/baidu/game/activity/PaymentActivity;->c(Ljava/lang/String;)Landroid/app/ProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/game/activity/PaymentActivity;)Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lcom/baidu/game/activity/PaymentActivity;->t:Landroid/webkit/WebView;

    return-object v0
.end method

.method private a(Lcom/baidu/game/model/UserInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "serverName"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/baidu/game/util/d;->a([Ljava/lang/Object;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "customInfo"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/baidu/game/util/d;->a([Ljava/lang/Object;)V

    const-string v0, "UTF-8"

    invoke-static {p4, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :try_start_1
    const-string v1, "UTF-8"

    invoke-static {p5, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object p5

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/baidu/game/util/i;->aD:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/baidu/game/util/i;->aG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&apikey="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/baidu/game/service/BaiduGameProxy;->S:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/baidu/game/model/UserInfo;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&serverid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&serverName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&timestamp="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "&client=android"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&payAmount="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "0"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v0, "&customInfo="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&sid="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/game/service/BaiduGameProxy;->l()Lcom/baidu/game/model/ServerInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/game/model/ServerInfo;->getServerId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&payType=BWYSW"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, p4

    :goto_2
    sget-object v2, Lcom/baidu/game/activity/PaymentActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/baidu/game/util/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method static synthetic a(Lcom/baidu/game/activity/PaymentActivity;Landroid/app/ProgressDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/game/activity/PaymentActivity;->v:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic b(Lcom/baidu/game/activity/PaymentActivity;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/baidu/game/activity/PaymentActivity;->v:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic b(Lcom/baidu/game/activity/PaymentActivity;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/baidu/game/activity/PaymentActivity;->d(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private c(Ljava/lang/String;)Landroid/app/ProgressDialog;
    .locals 2

    iget-object v0, p0, Lcom/baidu/game/activity/PaymentActivity;->v:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/baidu/game/activity/PaymentActivity;->v:Landroid/app/ProgressDialog;

    :cond_0
    iget-object v0, p0, Lcom/baidu/game/activity/PaymentActivity;->v:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/baidu/game/activity/PaymentActivity$4;

    invoke-direct {v1, p0}, Lcom/baidu/game/activity/PaymentActivity$4;-><init>(Lcom/baidu/game/activity/PaymentActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    iget-object v0, p0, Lcom/baidu/game/activity/PaymentActivity;->v:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/baidu/game/activity/PaymentActivity;->v:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic c(Lcom/baidu/game/activity/PaymentActivity;)Lcom/baidu/game/model/PaymentInfo;
    .locals 1

    iget-object v0, p0, Lcom/baidu/game/activity/PaymentActivity;->x:Lcom/baidu/game/model/PaymentInfo;

    return-object v0
.end method

.method static synthetic d(Lcom/baidu/game/activity/PaymentActivity;)Lcom/baidu/game/listener/PayCallbackListener;
    .locals 1

    iget-object v0, p0, Lcom/baidu/game/activity/PaymentActivity;->y:Lcom/baidu/game/listener/PayCallbackListener;

    return-object v0
.end method

.method private d(Ljava/lang/String;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const-string v0, "^[0-9]{1,10}$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    goto :goto_0
.end method

.method static synthetic e(Lcom/baidu/game/activity/PaymentActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/game/activity/PaymentActivity;->g()V

    return-void
.end method

.method private g()V
    .locals 7

    invoke-static {}, Lcom/baidu/game/service/BaiduGameProxy;->j()Lcom/baidu/game/service/BaiduGameProxy;

    move-result-object v6

    invoke-virtual {v6}, Lcom/baidu/game/service/BaiduGameProxy;->n()Lcom/baidu/game/model/UserInfo;

    move-result-object v1

    iget-object v0, p0, Lcom/baidu/game/activity/PaymentActivity;->x:Lcom/baidu/game/model/PaymentInfo;

    invoke-virtual {v0}, Lcom/baidu/game/model/PaymentInfo;->getAmount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/baidu/game/activity/PaymentActivity;->x:Lcom/baidu/game/model/PaymentInfo;

    invoke-virtual {v0}, Lcom/baidu/game/model/PaymentInfo;->getServerId()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/baidu/game/activity/PaymentActivity;->x:Lcom/baidu/game/model/PaymentInfo;

    invoke-virtual {v0}, Lcom/baidu/game/model/PaymentInfo;->getServerName()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/baidu/game/activity/PaymentActivity;->x:Lcom/baidu/game/model/PaymentInfo;

    invoke-virtual {v0}, Lcom/baidu/game/model/PaymentInfo;->getCustomInfo()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/baidu/game/activity/PaymentActivity;->a(Lcom/baidu/game/model/UserInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/baidu/game/service/BaiduGameProxy;->p()Lcom/baidu/game/module/a;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v0, "\u7528\u6237\u4fe1\u606f\u52a0\u8f7d\u4e2d..."

    invoke-direct {p0, v0}, Lcom/baidu/game/activity/PaymentActivity;->c(Ljava/lang/String;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/game/activity/PaymentActivity;->v:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/baidu/game/activity/PaymentActivity;->v:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    invoke-virtual {v6}, Lcom/baidu/game/service/BaiduGameProxy;->n()Lcom/baidu/game/model/UserInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/game/activity/PaymentActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v6, v0, v1}, Lcom/baidu/game/service/BaiduGameProxy;->a(Lcom/baidu/game/model/UserInfo;Landroid/os/Handler;)V

    :goto_0
    return-void

    :cond_0
    if-nez v0, :cond_1

    const-string v0, "\u83b7\u53d6\u7528\u6237\u4fe1\u606f\u5931\u8d25\uff0c\u8bf7\u91cd\u65b0\u767b\u5f55"

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "\u4fe1\u606f"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u786e\u5b9a"

    new-instance v2, Lcom/baidu/game/activity/PaymentActivity$3;

    invoke-direct {v2, p0}, Lcom/baidu/game/activity/PaymentActivity$3;-><init>(Lcom/baidu/game/activity/PaymentActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    :cond_1
    const-string v1, "\u9875\u9762\u52a0\u8f7d\u4e2d..."

    invoke-direct {p0, v1}, Lcom/baidu/game/activity/PaymentActivity;->c(Ljava/lang/String;)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/game/activity/PaymentActivity;->v:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/baidu/game/activity/PaymentActivity;->v:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    iget-object v1, p0, Lcom/baidu/game/activity/PaymentActivity;->t:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getWebView()Landroid/webkit/WebView;
    .locals 5

    const/4 v4, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x1

    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    const/high16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->clearCache(Z)V

    new-instance v1, Lcom/baidu/game/activity/PaymentActivity$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/baidu/game/activity/PaymentActivity$a;-><init>(Lcom/baidu/game/activity/PaymentActivity;Lcom/baidu/game/activity/PaymentActivity$a;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-object v0
.end method


# virtual methods
.method public h()V
    .locals 3

    iget-object v0, p0, Lcom/baidu/game/activity/PaymentActivity;->v:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/game/activity/PaymentActivity;->v:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u63d0\u793a"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u786e\u5b9a\u8981\u9000\u51fa\u652f\u4ed8\u5417?"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u786e\u5b9a"

    new-instance v2, Lcom/baidu/game/activity/PaymentActivity$5;

    invoke-direct {v2, p0}, Lcom/baidu/game/activity/PaymentActivity$5;-><init>(Lcom/baidu/game/activity/PaymentActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u53d6\u6d88"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public i()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/baidu/game/activity/PaymentActivity;->t:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/game/activity/PaymentActivity;->u:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/baidu/game/activity/PaymentActivity;->t:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/baidu/game/activity/PaymentActivity;->t:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    iget-object v0, p0, Lcom/baidu/game/activity/PaymentActivity;->t:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    :cond_0
    invoke-static {}, Lcom/baidu/game/service/BaiduGameProxy;->j()Lcom/baidu/game/service/BaiduGameProxy;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/baidu/game/activity/PaymentActivity;->x:Lcom/baidu/game/model/PaymentInfo;

    invoke-virtual {v1}, Lcom/baidu/game/model/PaymentInfo;->getOrderId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/baidu/game/model/OrderInfo;

    invoke-direct {v1}, Lcom/baidu/game/model/OrderInfo;-><init>()V

    iget-object v2, p0, Lcom/baidu/game/activity/PaymentActivity;->x:Lcom/baidu/game/model/PaymentInfo;

    invoke-virtual {v2}, Lcom/baidu/game/model/PaymentInfo;->getOrderId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/game/model/OrderInfo;->setOrderId(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/baidu/game/activity/PaymentActivity;->w:Lcom/baidu/game/model/UserInfo;

    invoke-virtual {v2}, Lcom/baidu/game/model/UserInfo;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/game/model/OrderInfo;->setUserId(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/baidu/game/activity/PaymentActivity;->x:Lcom/baidu/game/model/PaymentInfo;

    invoke-virtual {v2}, Lcom/baidu/game/model/PaymentInfo;->getServerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/game/model/OrderInfo;->setServerId(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/baidu/game/activity/PaymentActivity;->x:Lcom/baidu/game/model/PaymentInfo;

    invoke-virtual {v2}, Lcom/baidu/game/model/PaymentInfo;->getAmount()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/baidu/game/model/OrderInfo;->setAmount(I)V

    iget-object v2, p0, Lcom/baidu/game/activity/PaymentActivity;->w:Lcom/baidu/game/model/UserInfo;

    invoke-virtual {v2}, Lcom/baidu/game/model/UserInfo;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/game/model/OrderInfo;->setCustomInfo(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/game/model/OrderInfo;->setTimestamp(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/baidu/game/service/BaiduGameProxy;->o()Lcom/baidu/game/listener/PayCallbackListener;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v2, v1}, Lcom/baidu/game/listener/PayCallbackListener;->callback(ILcom/baidu/game/model/OrderInfo;)V

    :goto_1
    invoke-virtual {p0}, Lcom/baidu/game/activity/PaymentActivity;->finish()V

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/baidu/game/model/OrderInfo;

    invoke-direct {v1}, Lcom/baidu/game/model/OrderInfo;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/baidu/game/model/OrderInfo;->setOrderId(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lcom/baidu/game/model/OrderInfo;->setAmount(I)V

    iget-object v2, p0, Lcom/baidu/game/activity/PaymentActivity;->x:Lcom/baidu/game/model/PaymentInfo;

    invoke-virtual {v2}, Lcom/baidu/game/model/PaymentInfo;->getServerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/game/model/OrderInfo;->setServerId(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/baidu/game/service/BaiduGameProxy;->n()Lcom/baidu/game/model/UserInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/game/model/UserInfo;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/game/model/OrderInfo;->setUserId(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/baidu/game/activity/PaymentActivity;->w:Lcom/baidu/game/model/UserInfo;

    invoke-virtual {v2}, Lcom/baidu/game/model/UserInfo;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/game/model/OrderInfo;->setCustomInfo(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/game/model/OrderInfo;->setTimestamp(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/baidu/game/service/BaiduGameProxy;->o()Lcom/baidu/game/listener/PayCallbackListener;

    move-result-object v0

    invoke-interface {v0, v4, v1}, Lcom/baidu/game/listener/PayCallbackListener;->callback(ILcom/baidu/game/model/OrderInfo;)V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/16 v1, 0x400

    const/4 v2, -0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/baidu/game/activity/PaymentActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/baidu/game/activity/PaymentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    invoke-virtual {p0}, Lcom/baidu/game/activity/PaymentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v0, "userInfo"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/game/model/UserInfo;

    iput-object v0, p0, Lcom/baidu/game/activity/PaymentActivity;->w:Lcom/baidu/game/model/UserInfo;

    const-string v0, "payInfo"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/game/model/PaymentInfo;

    iput-object v0, p0, Lcom/baidu/game/activity/PaymentActivity;->x:Lcom/baidu/game/model/PaymentInfo;

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/game/activity/PaymentActivity;->u:Landroid/widget/RelativeLayout;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/baidu/game/activity/PaymentActivity;->u:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/baidu/game/activity/PaymentActivity;->u:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/baidu/game/activity/PaymentActivity;->setContentView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/baidu/game/activity/PaymentActivity;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/game/activity/PaymentActivity;->t:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/baidu/game/activity/PaymentActivity;->u:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/baidu/game/activity/PaymentActivity;->t:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v0, Lcom/baidu/game/activity/PaymentActivity$2;

    invoke-direct {v0, p0}, Lcom/baidu/game/activity/PaymentActivity$2;-><init>(Lcom/baidu/game/activity/PaymentActivity;)V

    iput-object v0, p0, Lcom/baidu/game/activity/PaymentActivity;->handler:Landroid/os/Handler;

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    packed-switch p1, :pswitch_data_0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/baidu/game/activity/PaymentActivity;->h()V

    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onRestart()V
    .locals 2

    iget-object v0, p0, Lcom/baidu/game/activity/PaymentActivity;->u:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/baidu/game/activity/PaymentActivity;->t:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/baidu/game/activity/PaymentActivity;->t:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    invoke-direct {p0}, Lcom/baidu/game/activity/PaymentActivity;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/game/activity/PaymentActivity;->t:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/baidu/game/activity/PaymentActivity;->u:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/baidu/game/activity/PaymentActivity;->t:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method public onStart()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "the payment activity start"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/baidu/game/util/d;->a([Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/baidu/game/activity/PaymentActivity;->g()V

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 2

    iget-object v0, p0, Lcom/baidu/game/activity/PaymentActivity;->t:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/game/activity/PaymentActivity;->u:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/baidu/game/activity/PaymentActivity;->t:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/baidu/game/activity/PaymentActivity;->t:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    iget-object v0, p0, Lcom/baidu/game/activity/PaymentActivity;->t:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method
