.class public Lcom/test/enter/ModeSelectActivity;
.super Landroid/app/Activity;


# instance fields
.field a:Landroid/widget/ImageButton;

.field b:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public GameStart()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/test/RooneyJActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/test/enter/ModeSelectActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/test/enter/ModeSelectActivity;->finish()V

    return-void
.end method

.method public GoWorldSelectPage()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/test/enter/WorldSelectActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/test/enter/ModeSelectActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/test/enter/ModeSelectActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v6, 0x1

    const/high16 v5, 0x4381

    const/high16 v4, 0x4284

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "ModeSelectActivity onCreate"

    invoke-static {v0}, Lcom/test/enter/DebugLog;->logDebug(Ljava/lang/String;)V

    const v0, 0x7f030003

    invoke-virtual {p0, v0}, Lcom/test/enter/ModeSelectActivity;->setContentView(I)V

    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Lcom/test/enter/ModeSelectActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    const/high16 v1, 0x44a0

    div-float v1, v0, v1

    iget v0, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    const/high16 v3, 0x4434

    div-float/2addr v0, v3

    cmpl-float v3, v1, v0

    if-lez v3, :cond_0

    move v1, v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Screen widthPixels = "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " heightPixels = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " scaleBase = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/test/enter/DebugLog;->logDebug(Ljava/lang/String;)V

    const v0, 0x7f090015

    invoke-virtual {p0, v0}, Lcom/test/enter/ModeSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {v0, v1, v1}, Lcom/test/enter/EnterDef;->getRelativeLayoutFromScreenSize(Landroid/widget/RelativeLayout$LayoutParams;FF)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x7f090016

    invoke-virtual {p0, v0}, Lcom/test/enter/ModeSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/test/enter/ModeSelectActivity;->a:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/test/enter/ModeSelectActivity;->a:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/test/enter/ModeSelectActivity;->a:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {v0, v1, v1}, Lcom/test/enter/EnterDef;->getRelativeLayoutFromScreenSize(Landroid/widget/RelativeLayout$LayoutParams;FF)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/test/enter/ModeSelectActivity;->a:Landroid/widget/ImageButton;

    new-instance v2, Lcom/test/enter/m;

    invoke-direct {v2, p0}, Lcom/test/enter/m;-><init>(Lcom/test/enter/ModeSelectActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/test/enter/ModeSelectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f020008

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    mul-float v2, v5, v1

    float-to-int v2, v2

    mul-float v3, v4, v1

    float-to-int v3, v3

    invoke-static {v0, v2, v3, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v2, p0, Lcom/test/enter/ModeSelectActivity;->a:Landroid/widget/ImageButton;

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "BitMap Width = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/test/enter/DebugLog;->logDebug(Ljava/lang/String;)V

    const v0, 0x7f090017

    invoke-virtual {p0, v0}, Lcom/test/enter/ModeSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/test/enter/ModeSelectActivity;->b:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/test/enter/ModeSelectActivity;->b:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/test/enter/ModeSelectActivity;->b:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {v0, v1, v1}, Lcom/test/enter/EnterDef;->getRelativeLayoutFromScreenSize(Landroid/widget/RelativeLayout$LayoutParams;FF)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/test/enter/ModeSelectActivity;->b:Landroid/widget/ImageButton;

    new-instance v2, Lcom/test/enter/n;

    invoke-direct {v2, p0}, Lcom/test/enter/n;-><init>(Lcom/test/enter/ModeSelectActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/test/enter/ModeSelectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f02000a

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    mul-float v2, v5, v1

    float-to-int v2, v2

    mul-float/2addr v1, v4

    float-to-int v1, v1

    invoke-static {v0, v2, v1, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/test/enter/ModeSelectActivity;->b:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Lcom/test/enter/ModeSelectActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "login_error"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "dtool.txt"

    invoke-virtual {p0, v1}, Lcom/test/enter/ModeSelectActivity;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/test/enter/ModeSelectActivity;->GameStart()V

    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/test/enter/EnterDef;->PhoneNumber_:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/test/enter/ModeSelectActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/test/enter/EnterDef;->PhoneNumber_:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/test/enter/EnterDef;->Password_:Ljava/lang/String;

    :cond_2
    :try_start_0
    invoke-static {p0}, Lcom/shandagames/gameplus/GamePlus;->loginToGPlus(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
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
