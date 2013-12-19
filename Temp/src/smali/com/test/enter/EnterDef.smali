.class public Lcom/test/enter/EnterDef;
.super Ljava/lang/Object;


# static fields
.field public static final BASE_HEIGHT:I = 0x2d0

.field public static final BASE_WIDTH:I = 0x500

.field public static BgmDownload_:Landroid/widget/CheckBox; = null

.field public static CurrentMode_:I = 0x0

.field public static CurrentWorld_:I = 0x0

.field public static final EDIT_FONT_SIZE:I = 0x20

.field public static final EDIT_FONT_SIZE_SMALL:I = 0x20

.field public static InviteCode_:Ljava/lang/String; = null

.field public static final LABEL_FONT_SIZE:I = 0x2a

.field public static final LOGIN:I = 0x0

.field public static LastScene:I = 0x0

.field public static LoginError_:Z = false

.field public static MODE_LOGIN:I = 0x0

.field public static MODE_NONE:I = 0x0

.field public static MODE_SIGNUP:I = 0x0

.field public static OpenBilling_:I = 0x0

.field public static Password_:Ljava/lang/String; = null

.field public static Password_Check_:Ljava/lang/String; = null

.field public static PhoneNumber_:Ljava/lang/String; = null

.field public static final SIGNUP:I = 0x1

.field public static SMSCode_:Ljava/lang/String; = null

.field public static STEP_REGIST:I = 0x0

.field public static STEP_VALIDATE:I = 0x0

.field public static SelectUrlBilling_:Ljava/lang/String; = null

.field public static SelectUrlRoot_:Ljava/lang/String; = null

.field public static SelectUrlTop_:Ljava/lang/String; = null

.field public static SelectWorld_:I = 0x0

.field public static final WORLD_URL:Ljava/lang/String; = "http://dlc.game-CBT.ma.sdo.com:50005/"

.field private static a:Z

.field private static b:Landroid/webkit/WebView;

.field private static c:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    sput v2, Lcom/test/enter/EnterDef;->MODE_NONE:I

    sput v3, Lcom/test/enter/EnterDef;->MODE_SIGNUP:I

    const/4 v0, 0x2

    sput v0, Lcom/test/enter/EnterDef;->MODE_LOGIN:I

    sput v2, Lcom/test/enter/EnterDef;->STEP_VALIDATE:I

    sput v3, Lcom/test/enter/EnterDef;->STEP_REGIST:I

    sget v0, Lcom/test/enter/EnterDef;->MODE_NONE:I

    sput v0, Lcom/test/enter/EnterDef;->CurrentMode_:I

    sput v1, Lcom/test/enter/EnterDef;->CurrentWorld_:I

    sput v1, Lcom/test/enter/EnterDef;->SelectWorld_:I

    const-string v0, ""

    sput-object v0, Lcom/test/enter/EnterDef;->SelectUrlRoot_:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/test/enter/EnterDef;->SelectUrlTop_:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/test/enter/EnterDef;->SelectUrlBilling_:Ljava/lang/String;

    sput v1, Lcom/test/enter/EnterDef;->OpenBilling_:I

    const-string v0, ""

    sput-object v0, Lcom/test/enter/EnterDef;->PhoneNumber_:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/test/enter/EnterDef;->Password_:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/test/enter/EnterDef;->Password_Check_:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/test/enter/EnterDef;->InviteCode_:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/test/enter/EnterDef;->SMSCode_:Ljava/lang/String;

    sput v1, Lcom/test/enter/EnterDef;->LastScene:I

    sput-boolean v2, Lcom/test/enter/EnterDef;->a:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/test/enter/EnterDef;->b:Landroid/webkit/WebView;

    sput v2, Lcom/test/enter/EnterDef;->c:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetCurrentMode()I
    .locals 1

    sget v0, Lcom/test/enter/EnterDef;->CurrentMode_:I

    return v0
.end method

.method public static GetInvitationId()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/test/enter/EnterDef;->InviteCode_:Ljava/lang/String;

    return-object v0
.end method

.method public static GetPassword()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/test/enter/EnterDef;->Password_:Ljava/lang/String;

    return-object v0
.end method

.method public static GetPhoneNumber()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/test/enter/EnterDef;->PhoneNumber_:Ljava/lang/String;

    return-object v0
.end method

.method public static GetUrlRoot()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/test/enter/EnterDef;->SelectUrlRoot_:Ljava/lang/String;

    return-object v0
.end method

.method public static GetUrlTop()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/test/enter/EnterDef;->SelectUrlTop_:Ljava/lang/String;

    return-object v0
.end method

.method public static RegistWorldServer()V
    .locals 4

    invoke-static {}, Lcom/test/enter/EnterDef;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    new-instance v0, Lcom/test/enter/HttpPostUtil;

    invoke-direct {v0}, Lcom/test/enter/HttpPostUtil;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "data_str="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/test/DeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/test/enter/EnterDef;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/test/enter/DebugLog;->logDebug(Ljava/lang/String;)V

    const-string v2, "http://dlc.game-CBT.ma.sdo.com:50005/add_user.php"

    invoke-virtual {v0, v2, v1}, Lcom/test/enter/HttpPostUtil;->HttpPost(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/test/enter/DebugLog;->logDebug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "code"

    const-string v3, "code"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-static {}, Lcom/test/RooneyJActivity;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "world.txt"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/test/enter/DebugLog;->logDebug(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/test/enter/DebugLog;->logDebug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static ShowAlert(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "OK"

    new-instance v2, Lcom/test/enter/a;

    invoke-direct {v2}, Lcom/test/enter/a;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public static ShowExit(Landroid/app/Activity;Landroid/content/Context;)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u786e\u5b9a\u7ed3\u675f\u6e38\u620f\u5417\uff1f"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Yes"

    new-instance v2, Lcom/test/enter/b;

    invoke-direct {v2, p0}, Lcom/test/enter/b;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "No"

    new-instance v2, Lcom/test/enter/c;

    invoke-direct {v2}, Lcom/test/enter/c;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public static ShowWebview(Landroid/content/Context;Landroid/widget/RelativeLayout;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-boolean v0, Lcom/test/enter/EnterDef;->a:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03002c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    const v0, 0x7f090310

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    const v1, 0x7f09030e

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    sput-object v1, Lcom/test/enter/EnterDef;->b:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    sget-object v1, Lcom/test/enter/EnterDef;->b:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    sget-object v1, Lcom/test/enter/EnterDef;->b:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    sget-object v1, Lcom/test/enter/EnterDef;->b:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    sget-object v1, Lcom/test/enter/EnterDef;->b:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-static {}, Lcom/test/DeviceInfo;->getUserAgent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    sget-object v1, Lcom/test/enter/EnterDef;->b:Landroid/webkit/WebView;

    new-instance v3, Lcom/test/enter/d;

    invoke-direct {v3, v0}, Lcom/test/enter/d;-><init>(Landroid/widget/ProgressBar;)V

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    sget-object v0, Lcom/test/enter/EnterDef;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    sget-object v0, Lcom/test/enter/EnterDef;->b:Landroid/webkit/WebView;

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->requestFocus(I)Z

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v0

    sput v0, Lcom/test/enter/EnterDef;->c:I

    sget v0, Lcom/test/enter/EnterDef;->c:I

    invoke-virtual {p1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;I)V

    sput-boolean v5, Lcom/test/enter/EnterDef;->a:Z

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "world_id"

    sget v2, Lcom/test/enter/EnterDef;->SelectWorld_:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "device_id"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "game_id"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "user_id"

    invoke-static {}, Lcom/test/enter/EnterDef;->GetPhoneNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "password"

    invoke-static {}, Lcom/test/enter/EnterDef;->GetPassword()Ljava/lang/String;

    move-result-object v2

    const-string v3, "B1dACcrvur2YULyl"

    invoke-static {v2, v3}, Lcom/test/enter/EnterDef;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/test/enter/DebugLog;->logDebug(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const-string v2, "AES"

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const-string v2, "AES/ECB/PKCS5Padding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v2, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a()Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/test/RooneyJActivity;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "world.txt"

    invoke-virtual {v1, v2}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v2

    new-array v2, v2, [B

    :cond_0
    const/4 v3, -0x1

    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-ne v3, v4, :cond_0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    new-instance v1, Lorg/json/JSONObject;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "code"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-lez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/test/enter/DebugLog;->logDebug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getLinearLayoutFromScreenSize(Landroid/widget/LinearLayout$LayoutParams;FF)Landroid/widget/LinearLayout$LayoutParams;
    .locals 4

    iget v0, p0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iget v1, p0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    int-to-float v1, v1

    mul-float/2addr v1, p2

    float-to-int v1, v1

    iget v2, p0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    iget v3, p0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    int-to-float v3, v3

    mul-float/2addr v3, p2

    float-to-int v3, v3

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget v0, p0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget v0, p0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    return-object p0
.end method

.method public static getRelativeLayoutFromScreenSize(Landroid/widget/RelativeLayout$LayoutParams;FF)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 4

    iget v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iget v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    int-to-float v1, v1

    mul-float/2addr v1, p2

    float-to-int v1, v1

    iget v2, p0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    iget v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    int-to-float v3, v3

    mul-float/2addr v3, p2

    float-to-int v3, v3

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    return-object p0
.end method

.method public static initPopup(Landroid/view/View;FFFLjava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/PopupWindow;
    .locals 6

    const/high16 v5, 0x4228

    const/high16 v4, 0x4200

    :try_start_0
    new-instance v2, Landroid/widget/PopupWindow;

    const/high16 v0, 0x447a

    mul-float/2addr v0, p3

    float-to-int v0, v0

    const/high16 v1, 0x4416

    mul-float/2addr v1, p3

    float-to-int v1, v1

    const/4 v3, 0x1

    invoke-direct {v2, p0, v0, v1, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    const v0, 0x7f090001

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    int-to-float v3, v3

    mul-float/2addr v3, p3

    float-to-int v3, v3

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    int-to-float v3, v3

    mul-float/2addr v3, p3

    float-to-int v3, v3

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x7f090002

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    int-to-float v3, v3

    mul-float/2addr v3, p3

    float-to-int v3, v3

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    int-to-float v3, v3

    mul-float/2addr v3, p3

    float-to-int v3, v3

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x7f090003

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    int-to-float v3, v3

    mul-float/2addr v3, p3

    float-to-int v3, v3

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    mul-float v3, v4, p3

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    const v0, 0x7f090004

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    int-to-float v3, v3

    mul-float/2addr v3, p3

    float-to-int v3, v3

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x0

    mul-float v3, v4, p3

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    const v0, 0x7f090005

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    int-to-float v3, v3

    mul-float/2addr v3, p3

    float-to-int v3, v3

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    int-to-float v3, v3

    mul-float/2addr v3, p3

    float-to-int v3, v3

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x0

    mul-float v3, v4, p3

    invoke-virtual {v0, v1, v3}, Landroid/widget/CheckBox;->setTextSize(IF)V

    const v0, 0x7f090006

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    sput-object v0, Lcom/test/enter/EnterDef;->BgmDownload_:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    int-to-float v1, v1

    mul-float/2addr v1, p3

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    int-to-float v1, v1

    mul-float/2addr v1, p3

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    sget-object v1, Lcom/test/enter/EnterDef;->BgmDownload_:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v0, Lcom/test/enter/EnterDef;->BgmDownload_:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    mul-float v3, v4, p3

    invoke-virtual {v0, v1, v3}, Landroid/widget/CheckBox;->setTextSize(IF)V

    const v0, 0x7f090007

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    int-to-float v3, v3

    mul-float/2addr v3, p3

    float-to-int v3, v3

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    int-to-float v3, v3

    mul-float/2addr v3, p3

    float-to-int v3, v3

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x0

    mul-float v3, v4, p3

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    const v0, 0x7f090008

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    int-to-float v3, v3

    mul-float/2addr v3, p3

    float-to-int v3, v3

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    int-to-float v3, v3

    mul-float/2addr v3, p3

    float-to-int v3, v3

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    int-to-float v3, v3

    mul-float/2addr v3, p3

    float-to-int v3, v3

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x7f090009

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    int-to-float v3, v3

    mul-float/2addr v3, p3

    float-to-int v3, v3

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x0

    mul-float v3, v4, p3

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    const v0, 0x7f09000a

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    int-to-float v3, v3

    mul-float/2addr v3, p3

    float-to-int v3, v3

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x0

    mul-float v3, v5, p3

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    const v0, 0x7f09000b

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    int-to-float v3, v3

    mul-float/2addr v3, p3

    float-to-int v3, v3

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    int-to-float v3, v3

    mul-float/2addr v3, p3

    float-to-int v3, v3

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    int-to-float v3, v3

    mul-float/2addr v3, p3

    float-to-int v3, v3

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, p5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    mul-float v3, v5, p3

    invoke-virtual {v0, v1, v3}, Landroid/widget/Button;->setTextSize(IF)V

    invoke-virtual {v0, p6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isBgmDownload()I
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Lcom/test/enter/EnterDef;->BgmDownload_:Landroid/widget/CheckBox;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/test/enter/EnterDef;->BgmDownload_:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isLoginError()Z
    .locals 1

    sget-boolean v0, Lcom/test/enter/EnterDef;->LoginError_:Z

    return v0
.end method

.method public static setLoginError()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/test/enter/EnterDef;->LoginError_:Z

    return-void
.end method

.method public static webViewDestroy(Landroid/widget/RelativeLayout;)V
    .locals 1

    sget-boolean v0, Lcom/test/enter/EnterDef;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "close webview"

    invoke-static {v0}, Lcom/test/enter/DebugLog;->logDebug(Ljava/lang/String;)V

    sget v0, Lcom/test/enter/EnterDef;->c:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->removeViewAt(I)V

    sget-object v0, Lcom/test/enter/EnterDef;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    const/4 v0, 0x0

    sput-object v0, Lcom/test/enter/EnterDef;->b:Landroid/webkit/WebView;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/test/enter/EnterDef;->a:Z

    :cond_0
    return-void
.end method
