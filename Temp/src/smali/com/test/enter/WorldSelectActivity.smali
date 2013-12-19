.class public Lcom/test/enter/WorldSelectActivity;
.super Landroid/app/Activity;


# instance fields
.field a:Landroid/widget/ImageButton;

.field b:Landroid/widget/ListView;

.field c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/test/enter/ad;",
            ">;"
        }
    .end annotation
.end field

.field d:Lcom/test/enter/ae;

.field e:Landroid/app/ProgressDialog;

.field private f:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/test/enter/WorldSelectActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/test/enter/WorldSelectActivity;->f:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public Back()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/test/enter/ModeSelectActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/test/enter/WorldSelectActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/test/enter/WorldSelectActivity;->finish()V

    return-void
.end method

.method public GoLoginPage()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/test/enter/LoginActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/test/enter/WorldSelectActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/test/enter/WorldSelectActivity;->finish()V

    return-void
.end method

.method public GoSignupPage()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/test/enter/SignupActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/test/enter/WorldSelectActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/test/enter/WorldSelectActivity;->finish()V

    return-void
.end method

.method public Next(I)V
    .locals 2

    sget v0, Lcom/test/enter/EnterDef;->CurrentMode_:I

    sget v1, Lcom/test/enter/EnterDef;->MODE_LOGIN:I

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/test/enter/WorldSelectActivity;->GoLoginPage()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v0, Lcom/test/enter/EnterDef;->CurrentMode_:I

    sget v1, Lcom/test/enter/EnterDef;->MODE_SIGNUP:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    const-string v0, "\u5bf9\u4e0d\u8d77\uff0c\u8be5\u670d\u52a1\u5668\u5df2\u5173\u95ed\u6ce8\u518c\uff0c\u8bf7\u9009\u62e9\u5176\u4ed6\u670d\u52a1\u5668"

    invoke-static {p0, v0}, Lcom/shandagames/gameplus/util/ToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/test/enter/WorldSelectActivity;->GoSignupPage()V

    goto :goto_0
.end method

.method public UpdateWorldState()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lcom/test/enter/HttpPostUtil;

    invoke-direct {v2}, Lcom/test/enter/HttpPostUtil;-><init>()V

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/test/enter/WorldSelectActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "device_id"

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "data_str="

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "http://dlc.game-CBT.ma.sdo.com:50005/world_list.php"

    invoke-virtual {v2, v3, v0}, Lcom/test/enter/HttpPostUtil;->HttpPost(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/test/enter/DebugLog;->logDebug(Ljava/lang/String;)V

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move v0, v1

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lt v0, v1, :cond_0

    :goto_1
    return-void

    :cond_0
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    new-instance v3, Lcom/test/enter/ad;

    invoke-direct {v3}, Lcom/test/enter/ad;-><init>()V

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/test/enter/ad;->b:Z

    const-string v4, "name"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/test/enter/ad;->a:Ljava/lang/String;

    const-string v4, "member_count"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/test/enter/ad;->d:I

    const-string v4, "world_status"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/test/enter/ad;->e:I

    const-string v4, "url_root"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/test/enter/ad;->g:Ljava/lang/String;

    const-string v4, "url_top"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/test/enter/ad;->h:Ljava/lang/String;

    const-string v4, "world_id"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/test/enter/ad;->f:I

    const-string v4, "url_pr"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/test/enter/ad;->i:Ljava/lang/String;

    const-string v4, "billing_flag"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v3, Lcom/test/enter/ad;->j:I

    iget v1, v3, Lcom/test/enter/ad;->e:I

    if-ne v1, v5, :cond_1

    const/4 v1, 0x1

    iput v1, v3, Lcom/test/enter/ad;->c:I

    :goto_2
    iget-object v1, p0, Lcom/test/enter/WorldSelectActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v1, v3, Lcom/test/enter/ad;->e:I

    const/4 v4, 0x3

    if-ne v1, v4, :cond_2

    const/4 v1, 0x2

    iput v1, v3, Lcom/test/enter/ad;->c:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v1, "\u7f51\u7edc\u8fde\u63a5\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    invoke-static {p0, v1}, Lcom/shandagames/gameplus/util/ToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/test/enter/DebugLog;->logError(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    :try_start_1
    iget v1, v3, Lcom/test/enter/ad;->e:I

    if-ne v1, v6, :cond_3

    const/4 v1, 0x4

    iput v1, v3, Lcom/test/enter/ad;->c:I

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    iput v1, v3, Lcom/test/enter/ad;->c:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/high16 v5, 0x4300

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/test/enter/WorldSelectActivity;->f:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/test/enter/af;

    invoke-direct {v0, p0}, Lcom/test/enter/af;-><init>(Lcom/test/enter/WorldSelectActivity;)V

    iput-object v0, p0, Lcom/test/enter/WorldSelectActivity;->f:Landroid/os/Handler;

    :cond_0
    const v0, 0x7f030005

    invoke-virtual {p0, v0}, Lcom/test/enter/WorldSelectActivity;->setContentView(I)V

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Lcom/test/enter/WorldSelectActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    const/high16 v2, 0x44a0

    div-float v2, v0, v2

    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    const/high16 v1, 0x4434

    div-float/2addr v0, v1

    cmpl-float v1, v2, v0

    if-lez v1, :cond_1

    move v1, v0

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Screen scaleX = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " scaleY = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " scaleBase = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/test/enter/DebugLog;->logDebug(Ljava/lang/String;)V

    const v0, 0x7f090032

    invoke-virtual {p0, v0}, Lcom/test/enter/WorldSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {v0, v1, v1}, Lcom/test/enter/EnterDef;->getRelativeLayoutFromScreenSize(Landroid/widget/RelativeLayout$LayoutParams;FF)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x7f090033

    invoke-virtual {p0, v0}, Lcom/test/enter/WorldSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/test/enter/WorldSelectActivity;->a:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/test/enter/WorldSelectActivity;->a:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/test/enter/WorldSelectActivity;->a:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {v0, v1, v1}, Lcom/test/enter/EnterDef;->getRelativeLayoutFromScreenSize(Landroid/widget/RelativeLayout$LayoutParams;FF)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/test/enter/WorldSelectActivity;->a:Landroid/widget/ImageButton;

    new-instance v2, Lcom/test/enter/ah;

    invoke-direct {v2, p0}, Lcom/test/enter/ah;-><init>(Lcom/test/enter/WorldSelectActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/test/enter/WorldSelectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f020004

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    mul-float v2, v5, v1

    float-to-int v2, v2

    mul-float v3, v5, v1

    float-to-int v3, v3

    const/4 v4, 0x1

    invoke-static {v0, v2, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v2, p0, Lcom/test/enter/WorldSelectActivity;->a:Landroid/widget/ImageButton;

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const v0, 0x7f090034

    invoke-virtual {p0, v0}, Lcom/test/enter/WorldSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/test/enter/WorldSelectActivity;->b:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/test/enter/WorldSelectActivity;->b:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget-object v0, p0, Lcom/test/enter/WorldSelectActivity;->b:Landroid/widget/ListView;

    new-instance v1, Lcom/test/enter/ai;

    invoke-direct {v1, p0}, Lcom/test/enter/ai;-><init>(Lcom/test/enter/WorldSelectActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/test/enter/WorldSelectActivity;->c:Ljava/util/ArrayList;

    const/4 v0, 0x0

    const-string v1, "Connecting..."

    invoke-static {p0, v0, v1}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/test/enter/WorldSelectActivity;->e:Landroid/app/ProgressDialog;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/test/enter/ag;

    invoke-direct {v1, p0}, Lcom/test/enter/ag;-><init>(Lcom/test/enter/WorldSelectActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :cond_1
    move v1, v2

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const-string v0, "#onDestroy"

    invoke-static {v0}, Lcom/test/enter/DebugLog;->logDebug(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/test/enter/WorldSelectActivity;->f:Landroid/os/Handler;

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-static {p0, p0}, Lcom/test/enter/EnterDef;->ShowExit(Landroid/app/Activity;Landroid/content/Context;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
