.class Lcom/baidu/game/activity/PaymentActivity$a;
.super Landroid/webkit/WebViewClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/game/activity/PaymentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field private A:Z

.field private B:Landroid/content/DialogInterface$OnClickListener;

.field final synthetic z:Lcom/baidu/game/activity/PaymentActivity;


# direct methods
.method private constructor <init>(Lcom/baidu/game/activity/PaymentActivity;)V
    .locals 1

    iput-object p1, p0, Lcom/baidu/game/activity/PaymentActivity$a;->z:Lcom/baidu/game/activity/PaymentActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/game/activity/PaymentActivity$a;->A:Z

    new-instance v0, Lcom/baidu/game/activity/PaymentActivity$a$1;

    invoke-direct {v0, p0}, Lcom/baidu/game/activity/PaymentActivity$a$1;-><init>(Lcom/baidu/game/activity/PaymentActivity$a;)V

    iput-object v0, p0, Lcom/baidu/game/activity/PaymentActivity$a;->B:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/game/activity/PaymentActivity;Lcom/baidu/game/activity/PaymentActivity$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/game/activity/PaymentActivity$a;-><init>(Lcom/baidu/game/activity/PaymentActivity;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/game/activity/PaymentActivity$a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/game/activity/PaymentActivity$a;->A:Z

    return v0
.end method

.method static synthetic b(Lcom/baidu/game/activity/PaymentActivity$a;)Lcom/baidu/game/activity/PaymentActivity;
    .locals 1

    iget-object v0, p0, Lcom/baidu/game/activity/PaymentActivity$a;->z:Lcom/baidu/game/activity/PaymentActivity;

    return-object v0
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/game/activity/PaymentActivity$a;->z:Lcom/baidu/game/activity/PaymentActivity;

    invoke-static {v0}, Lcom/baidu/game/activity/PaymentActivity;->b(Lcom/baidu/game/activity/PaymentActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/game/activity/PaymentActivity$a;->z:Lcom/baidu/game/activity/PaymentActivity;

    invoke-static {v0}, Lcom/baidu/game/activity/PaymentActivity;->b(Lcom/baidu/game/activity/PaymentActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/baidu/game/activity/PaymentActivity$a;->z:Lcom/baidu/game/activity/PaymentActivity;

    iget-object v1, p0, Lcom/baidu/game/activity/PaymentActivity$a;->z:Lcom/baidu/game/activity/PaymentActivity;

    const-string v2, "\u9875\u9762\u52a0\u8f7d\u4e2d..."

    invoke-static {v1, v2}, Lcom/baidu/game/activity/PaymentActivity;->a(Lcom/baidu/game/activity/PaymentActivity;Ljava/lang/String;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/game/activity/PaymentActivity;->a(Lcom/baidu/game/activity/PaymentActivity;Landroid/app/ProgressDialog;)V

    iget-object v0, p0, Lcom/baidu/game/activity/PaymentActivity$a;->z:Lcom/baidu/game/activity/PaymentActivity;

    invoke-static {v0}, Lcom/baidu/game/activity/PaymentActivity;->b(Lcom/baidu/game/activity/PaymentActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 7

    const/4 v0, 0x0

    const/4 v6, 0x1

    new-array v1, v6, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "the url is:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-static {v1}, Lcom/baidu/game/util/d;->a([Ljava/lang/Object;)V

    const-string v1, "://"

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    if-gt v2, v6, :cond_0

    :goto_0
    return v0

    :cond_0
    aget-object v2, v1, v0

    const-string v3, "http"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "https"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_1
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_2
    :goto_1
    move v0, v6

    goto :goto_0

    :cond_3
    aget-object v1, v1, v6

    const-string v3, "bdgame"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "close"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v0, p0, Lcom/baidu/game/activity/PaymentActivity$a;->z:Lcom/baidu/game/activity/PaymentActivity;

    invoke-virtual {v0}, Lcom/baidu/game/activity/PaymentActivity;->i()V

    goto :goto_1

    :cond_4
    const-string v2, "alipay|"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v0, "\\|"

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v6

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/game/activity/PaymentActivity$a;->z:Lcom/baidu/game/activity/PaymentActivity;

    aget-object v2, v0, v6

    invoke-static {v1, v2}, Lcom/baidu/game/activity/PaymentActivity;->b(Lcom/baidu/game/activity/PaymentActivity;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    aget-object v0, v0, v6

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const-string v0, "test"

    iget-object v2, p0, Lcom/baidu/game/activity/PaymentActivity$a;->z:Lcom/baidu/game/activity/PaymentActivity;

    invoke-static {v2}, Lcom/baidu/game/activity/PaymentActivity;->c(Lcom/baidu/game/activity/PaymentActivity;)Lcom/baidu/game/model/PaymentInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/game/model/PaymentInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/baidu/game/activity/PaymentActivity$a;->z:Lcom/baidu/game/activity/PaymentActivity;

    iget-object v2, p0, Lcom/baidu/game/activity/PaymentActivity$a;->z:Lcom/baidu/game/activity/PaymentActivity;

    invoke-static {v2}, Lcom/baidu/game/activity/PaymentActivity;->c(Lcom/baidu/game/activity/PaymentActivity;)Lcom/baidu/game/model/PaymentInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/game/model/PaymentInfo;->getServerId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/game/activity/PaymentActivity$a;->z:Lcom/baidu/game/activity/PaymentActivity;

    invoke-static {v3}, Lcom/baidu/game/activity/PaymentActivity;->c(Lcom/baidu/game/activity/PaymentActivity;)Lcom/baidu/game/model/PaymentInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/game/model/PaymentInfo;->getServerName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/game/activity/PaymentActivity$a;->z:Lcom/baidu/game/activity/PaymentActivity;

    invoke-static {v4}, Lcom/baidu/game/activity/PaymentActivity;->c(Lcom/baidu/game/activity/PaymentActivity;)Lcom/baidu/game/model/PaymentInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/baidu/game/model/PaymentInfo;->getCustomInfo()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/baidu/game/activity/PaymentActivity$a;->z:Lcom/baidu/game/activity/PaymentActivity;

    invoke-static {v5}, Lcom/baidu/game/activity/PaymentActivity;->d(Lcom/baidu/game/activity/PaymentActivity;)Lcom/baidu/game/listener/PayCallbackListener;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/baidu/game/service/BaiduGameProxy;->a(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/game/listener/PayCallbackListener;)V

    goto :goto_1

    :cond_5
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/baidu/game/activity/PaymentActivity$a;->z:Lcom/baidu/game/activity/PaymentActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u51fa\u9519\u4e86"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u5145\u503c\u91d1\u989d\u5f02\u5e38\uff0c\u8bf7\u8f93\u51651~10\u4f4d\u6574\u6570"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u786e\u5b9a"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_1

    :cond_6
    const-string v2, "charge_finished"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "msg|"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "closemsg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/baidu/game/activity/PaymentActivity$a;->A:Z

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v1

    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/baidu/game/activity/PaymentActivity$a;->z:Lcom/baidu/game/activity/PaymentActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "\u4fe1\u606f"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u786e\u5b9a"

    iget-object v2, p0, Lcom/baidu/game/activity/PaymentActivity$a;->B:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_1

    :catch_0
    move-exception v0

    sget-object v0, Lcom/baidu/game/activity/PaymentActivity;->TAG:Ljava/lang/String;

    const-string v1, "\u8f6c\u7801\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/baidu/game/util/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\u9a8c\u8bc1\u7528\u6237\u4fe1\u606f\u5931\u8d25"

    goto :goto_2

    :cond_7
    const-string v0, "setOrderId|"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "\\|"

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v1, v0, v6

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/game/activity/PaymentActivity$a;->z:Lcom/baidu/game/activity/PaymentActivity;

    invoke-static {v2}, Lcom/baidu/game/activity/PaymentActivity;->c(Lcom/baidu/game/activity/PaymentActivity;)Lcom/baidu/game/model/PaymentInfo;

    move-result-object v2

    aget-object v1, v1, v6

    invoke-virtual {v2, v1}, Lcom/baidu/game/model/PaymentInfo;->setOrderId(Ljava/lang/String;)V

    const/4 v1, 0x2

    :try_start_1
    aget-object v0, v0, v1

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/game/activity/PaymentActivity$a;->z:Lcom/baidu/game/activity/PaymentActivity;

    invoke-static {v1}, Lcom/baidu/game/activity/PaymentActivity;->c(Lcom/baidu/game/activity/PaymentActivity;)Lcom/baidu/game/model/PaymentInfo;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/baidu/game/model/PaymentInfo;->setAmount(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v0

    sget-object v0, Lcom/baidu/game/activity/PaymentActivity;->TAG:Ljava/lang/String;

    const-string v1, "amount\u5f02\u5e38"

    invoke-static {v0, v1}, Lcom/baidu/game/util/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method
