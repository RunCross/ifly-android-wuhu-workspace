.class Lcom/shandagames/gameplus/impl/PayActivity$MyWebChromeClient;
.super Landroid/webkit/WebChromeClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shandagames/gameplus/impl/PayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyWebChromeClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shandagames/gameplus/impl/PayActivity;


# direct methods
.method private constructor <init>(Lcom/shandagames/gameplus/impl/PayActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/shandagames/gameplus/impl/PayActivity$MyWebChromeClient;->this$0:Lcom/shandagames/gameplus/impl/PayActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/shandagames/gameplus/impl/PayActivity;Lcom/shandagames/gameplus/impl/PayActivity$MyWebChromeClient;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/shandagames/gameplus/impl/PayActivity$MyWebChromeClient;-><init>(Lcom/shandagames/gameplus/impl/PayActivity;)V

    return-void
.end method


# virtual methods
.method public onCloseWindow(Landroid/webkit/WebView;)V
    .locals 1

    iget-object v0, p0, Lcom/shandagames/gameplus/impl/PayActivity$MyWebChromeClient;->this$0:Lcom/shandagames/gameplus/impl/PayActivity;

    invoke-virtual {v0}, Lcom/shandagames/gameplus/impl/PayActivity;->finish()V

    return-void
.end method

.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1

    iget-object v0, p0, Lcom/shandagames/gameplus/impl/PayActivity$MyWebChromeClient;->this$0:Lcom/shandagames/gameplus/impl/PayActivity;

    invoke-static {v0, p3}, Lcom/shandagames/gameplus/util/ToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u8bf7\u786e\u8ba4"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "\u786e\u5b9a"

    new-instance v3, Lcom/shandagames/gameplus/impl/PayActivity$MyWebChromeClient$1;

    invoke-direct {v3, p0, p4}, Lcom/shandagames/gameplus/impl/PayActivity$MyWebChromeClient$1;-><init>(Lcom/shandagames/gameplus/impl/PayActivity$MyWebChromeClient;Landroid/webkit/JsResult;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "\u53d6\u6d88"

    new-instance v3, Lcom/shandagames/gameplus/impl/PayActivity$MyWebChromeClient$2;

    invoke-direct {v3, p0, p4}, Lcom/shandagames/gameplus/impl/PayActivity$MyWebChromeClient$2;-><init>(Lcom/shandagames/gameplus/impl/PayActivity$MyWebChromeClient;Landroid/webkit/JsResult;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/shandagames/gameplus/impl/PayActivity$MyWebChromeClient$3;

    invoke-direct {v1, p0, p4}, Lcom/shandagames/gameplus/impl/PayActivity$MyWebChromeClient$3;-><init>(Lcom/shandagames/gameplus/impl/PayActivity$MyWebChromeClient;Landroid/webkit/JsResult;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    const/4 v0, 0x1

    return v0
.end method
