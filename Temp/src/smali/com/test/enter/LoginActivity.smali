.class public Lcom/test/enter/LoginActivity;
.super Landroid/app/Activity;


# instance fields
.field a:Landroid/widget/ImageButton;

.field b:Landroid/widget/ImageButton;

.field c:Landroid/widget/EditText;

.field d:Landroid/widget/EditText;

.field private e:Landroid/widget/PopupWindow;

.field private f:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v0, p0, Lcom/test/enter/LoginActivity;->e:Landroid/widget/PopupWindow;

    iput-object v0, p0, Lcom/test/enter/LoginActivity;->f:Landroid/view/View;

    return-void
.end method

.method private a()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-object v2, Lcom/test/enter/EnterDef;->PhoneNumber_:Ljava/lang/String;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/test/enter/EnterDef;->PhoneNumber_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xb

    if-ne v2, v3, :cond_1

    sget-object v2, Lcom/test/enter/EnterDef;->PhoneNumber_:Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/test/enter/EnterDef;->Password_:Ljava/lang/String;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/test/enter/EnterDef;->Password_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x8

    if-lt v2, v3, :cond_0

    sget-object v2, Lcom/test/enter/EnterDef;->Password_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xe

    if-gt v2, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    const-string v0, "\u5bc6\u7801\u5fc5\u987b\u662f8~14\u4f4d\u82f1\u6587\u5b57\u6bcd\u6216\u6570\u5b57"

    invoke-static {p0, v0}, Lcom/shandagames/gameplus/util/ToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_1
    const-string v0, "\u624b\u673a\u53f7\u7801\u683c\u5f0f\u9519\u8bef\uff0c\u8bf7\u91cd\u65b0\u8f93\u5165"

    invoke-static {p0, v0}, Lcom/shandagames/gameplus/util/ToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/test/enter/LoginActivity;)Z
    .locals 1

    invoke-direct {p0}, Lcom/test/enter/LoginActivity;->a()Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/test/enter/LoginActivity;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/test/enter/LoginActivity;->e:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/test/enter/LoginActivity;->f:Landroid/view/View;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/test/enter/LoginActivity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "/save/appdata/save_version"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/test/enter/LoginActivity;->e:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/test/enter/LoginActivity;->f:Landroid/view/View;

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/test/enter/LoginActivity;->GameStart()V

    goto :goto_0
.end method

.method static synthetic c(Lcom/test/enter/LoginActivity;)Landroid/widget/PopupWindow;
    .locals 1

    iget-object v0, p0, Lcom/test/enter/LoginActivity;->e:Landroid/widget/PopupWindow;

    return-object v0
.end method


# virtual methods
.method public Back()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/test/enter/WorldSelectActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/test/enter/LoginActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/test/enter/LoginActivity;->finish()V

    return-void
.end method

.method public GameStart()V
    .locals 2

    invoke-direct {p0}, Lcom/test/enter/LoginActivity;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput v0, Lcom/test/enter/EnterDef;->LastScene:I

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/test/RooneyJActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/test/enter/LoginActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/test/enter/LoginActivity;->finish()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    const/4 v8, 0x0

    const/high16 v5, 0x4300

    const/high16 v6, 0x4200

    const/4 v7, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lcom/test/enter/LoginActivity;->setContentView(I)V

    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Lcom/test/enter/LoginActivity;->getApplicationContext()Landroid/content/Context;

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

    const/high16 v2, 0x4434

    div-float v2, v0, v2

    cmpl-float v0, v1, v2

    if-lez v0, :cond_2

    move v3, v2

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Screen scaleX = "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " scaleY = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " scaleBase = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/test/enter/DebugLog;->logDebug(Ljava/lang/String;)V

    const v0, 0x7f09000c

    invoke-virtual {p0, v0}, Lcom/test/enter/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {v0, v3, v3}, Lcom/test/enter/EnterDef;->getRelativeLayoutFromScreenSize(Landroid/widget/RelativeLayout$LayoutParams;FF)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x7f09000d

    invoke-virtual {p0, v0}, Lcom/test/enter/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/test/enter/LoginActivity;->a:Landroid/widget/ImageButton;

    iget-object v4, p0, Lcom/test/enter/LoginActivity;->a:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/test/enter/LoginActivity;->a:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {v0, v3, v3}, Lcom/test/enter/EnterDef;->getRelativeLayoutFromScreenSize(Landroid/widget/RelativeLayout$LayoutParams;FF)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/test/enter/LoginActivity;->a:Landroid/widget/ImageButton;

    new-instance v4, Lcom/test/enter/f;

    invoke-direct {v4, p0}, Lcom/test/enter/f;-><init>(Lcom/test/enter/LoginActivity;)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/test/enter/LoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f020004

    invoke-static {v0, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    mul-float v4, v5, v3

    float-to-int v4, v4

    mul-float/2addr v5, v3

    float-to-int v5, v5

    invoke-static {v0, v4, v5, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v4, p0, Lcom/test/enter/LoginActivity;->a:Landroid/widget/ImageButton;

    invoke-virtual {v4, v0}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const v0, 0x7f090014

    invoke-virtual {p0, v0}, Lcom/test/enter/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/test/enter/LoginActivity;->b:Landroid/widget/ImageButton;

    iget-object v4, p0, Lcom/test/enter/LoginActivity;->b:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/test/enter/LoginActivity;->b:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {v0, v3, v3}, Lcom/test/enter/EnterDef;->getRelativeLayoutFromScreenSize(Landroid/widget/RelativeLayout$LayoutParams;FF)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/test/enter/LoginActivity;->b:Landroid/widget/ImageButton;

    new-instance v4, Lcom/test/enter/g;

    invoke-direct {v4, p0}, Lcom/test/enter/g;-><init>(Lcom/test/enter/LoginActivity;)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/test/enter/LoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f020009

    invoke-static {v0, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    const/high16 v4, 0x4381

    mul-float/2addr v4, v3

    float-to-int v4, v4

    const/high16 v5, 0x4284

    mul-float/2addr v5, v3

    float-to-int v5, v5

    invoke-static {v0, v4, v5, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v4, p0, Lcom/test/enter/LoginActivity;->b:Landroid/widget/ImageButton;

    invoke-virtual {v4, v0}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const v0, 0x7f090011

    invoke-virtual {p0, v0}, Lcom/test/enter/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/test/enter/LoginActivity;->c:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/test/enter/LoginActivity;->c:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/test/enter/LoginActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {v0, v3, v3}, Lcom/test/enter/EnterDef;->getRelativeLayoutFromScreenSize(Landroid/widget/RelativeLayout$LayoutParams;FF)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/test/enter/LoginActivity;->c:Landroid/widget/EditText;

    mul-float v4, v6, v3

    invoke-virtual {v0, v8, v4}, Landroid/widget/EditText;->setTextSize(IF)V

    iget-object v0, p0, Lcom/test/enter/LoginActivity;->c:Landroid/widget/EditText;

    new-instance v4, Lcom/test/enter/h;

    invoke-direct {v4, p0}, Lcom/test/enter/h;-><init>(Lcom/test/enter/LoginActivity;)V

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const v0, 0x7f090013

    invoke-virtual {p0, v0}, Lcom/test/enter/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/test/enter/LoginActivity;->d:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/test/enter/LoginActivity;->d:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/test/enter/LoginActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {v0, v3, v3}, Lcom/test/enter/EnterDef;->getRelativeLayoutFromScreenSize(Landroid/widget/RelativeLayout$LayoutParams;FF)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/test/enter/LoginActivity;->d:Landroid/widget/EditText;

    mul-float v4, v6, v3

    invoke-virtual {v0, v8, v4}, Landroid/widget/EditText;->setTextSize(IF)V

    iget-object v0, p0, Lcom/test/enter/LoginActivity;->d:Landroid/widget/EditText;

    new-instance v4, Lcom/test/enter/i;

    invoke-direct {v4, p0}, Lcom/test/enter/i;-><init>(Lcom/test/enter/LoginActivity;)V

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const v0, 0x7f090010

    invoke-virtual {p0, v0}, Lcom/test/enter/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {v4, v3, v3}, Lcom/test/enter/EnterDef;->getRelativeLayoutFromScreenSize(Landroid/widget/RelativeLayout$LayoutParams;FF)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x7f090012

    invoke-virtual {p0, v0}, Lcom/test/enter/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {v4, v3, v3}, Lcom/test/enter/EnterDef;->getRelativeLayoutFromScreenSize(Landroid/widget/RelativeLayout$LayoutParams;FF)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x7f09000e

    invoke-virtual {p0, v0}, Lcom/test/enter/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {v0, v3, v3}, Lcom/test/enter/EnterDef;->getRelativeLayoutFromScreenSize(Landroid/widget/RelativeLayout$LayoutParams;FF)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x7f09000f

    invoke-virtual {p0, v0}, Lcom/test/enter/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {v0, v3, v3}, Lcom/test/enter/EnterDef;->getRelativeLayoutFromScreenSize(Landroid/widget/RelativeLayout$LayoutParams;FF)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/test/enter/LoginActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v5, 0x7f030001

    const/high16 v4, 0x7f09

    invoke-virtual {p0, v4}, Lcom/test/enter/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v0, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/test/enter/LoginActivity;->f:Landroid/view/View;

    iget-object v0, p0, Lcom/test/enter/LoginActivity;->f:Landroid/view/View;

    const-string v4, "\u767b\u5f55\u540e\uff0c\u5c06\u81ea\u52a8\u4e0b\u8f7d\u6e38\u620f\u8d44\u6e90\uff1a"

    const-string v5, "\u767b\u5f55"

    new-instance v6, Lcom/test/enter/j;

    invoke-direct {v6, p0}, Lcom/test/enter/j;-><init>(Lcom/test/enter/LoginActivity;)V

    invoke-static/range {v0 .. v6}, Lcom/test/enter/EnterDef;->initPopup(Landroid/view/View;FFFLjava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/PopupWindow;

    move-result-object v0

    iput-object v0, p0, Lcom/test/enter/LoginActivity;->e:Landroid/widget/PopupWindow;

    sget-object v0, Lcom/test/enter/EnterDef;->PhoneNumber_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v7, :cond_0

    iget-object v0, p0, Lcom/test/enter/LoginActivity;->c:Landroid/widget/EditText;

    sget-object v1, Lcom/test/enter/EnterDef;->PhoneNumber_:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    sget-object v0, Lcom/test/enter/EnterDef;->Password_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v7, :cond_1

    iget-object v0, p0, Lcom/test/enter/LoginActivity;->d:Landroid/widget/EditText;

    sget-object v1, Lcom/test/enter/EnterDef;->Password_:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void

    :cond_2
    move v3, v1

    goto/16 :goto_0
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
