.class public Lcom/test/enter/SignupActivity;
.super Landroid/app/Activity;


# static fields
.field static c:Landroid/widget/Button;

.field static e:Landroid/widget/EditText;

.field private static p:Landroid/os/Handler;

.field private static q:F

.field private static r:Ljava/util/Timer;

.field private static s:I


# instance fields
.field a:Landroid/widget/ImageButton;

.field b:Landroid/view/View;

.field d:Landroid/widget/ImageButton;

.field f:Landroid/widget/EditText;

.field g:Landroid/widget/CheckBox;

.field h:Landroid/view/View;

.field i:Landroid/widget/ImageButton;

.field j:Landroid/widget/EditText;

.field k:Landroid/widget/EditText;

.field l:Landroid/widget/EditText;

.field m:Z

.field n:I

.field o:Landroid/widget/RelativeLayout;

.field private t:Landroid/widget/PopupWindow;

.field private u:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x3f80

    sput v0, Lcom/test/enter/SignupActivity;->q:F

    const v0, 0xea60

    sput v0, Lcom/test/enter/SignupActivity;->s:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static StartTimer()V
    .locals 6

    new-instance v1, Lcom/test/enter/o;

    invoke-direct {v1}, Lcom/test/enter/o;-><init>()V

    const-string v0, "StartTimer !!!!!!!!"

    invoke-static {v0}, Lcom/test/enter/DebugLog;->logDebug(Ljava/lang/String;)V

    sget-object v0, Lcom/test/enter/SignupActivity;->c:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    const v0, 0xea60

    sput v0, Lcom/test/enter/SignupActivity;->s:I

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcom/test/enter/SignupActivity;->r:Ljava/util/Timer;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x64

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    const-string v0, "StartTimer END !!!!!!!!"

    invoke-static {v0}, Lcom/test/enter/DebugLog;->logDebug(Ljava/lang/String;)V

    return-void
.end method

.method public static StopTimer(Z)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x4

    sget-object v0, Lcom/test/enter/SignupActivity;->r:Ljava/util/Timer;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/test/enter/SignupActivity;->r:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    sput-object v0, Lcom/test/enter/SignupActivity;->r:Ljava/util/Timer;

    :cond_0
    sget-object v0, Lcom/test/enter/SignupActivity;->c:Landroid/widget/Button;

    if-eqz v0, :cond_1

    if-nez p0, :cond_1

    sget-object v0, Lcom/test/enter/SignupActivity;->c:Landroid/widget/Button;

    const-string v1, "\u83b7\u53d6\u9a8c\u8bc1\u7801"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/test/enter/SignupActivity;->c:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    sget-object v0, Lcom/test/enter/SignupActivity;->c:Landroid/widget/Button;

    const v1, 0x7f02000d

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    sget-object v0, Lcom/test/enter/SignupActivity;->c:Landroid/widget/Button;

    const/4 v1, 0x0

    const/high16 v2, 0x4228

    sget v3, Lcom/test/enter/SignupActivity;->q:F

    mul-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/widget/Button;->setTextSize(IF)V

    sget-object v0, Lcom/test/enter/SignupActivity;->c:Landroid/widget/Button;

    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/Button;->setPadding(IIII)V

    sget-object v0, Lcom/test/enter/SignupActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method static synthetic a()I
    .locals 1

    sget v0, Lcom/test/enter/SignupActivity;->s:I

    return v0
.end method

.method static synthetic a(I)V
    .locals 0

    sput p0, Lcom/test/enter/SignupActivity;->s:I

    return-void
.end method

.method static synthetic a(Lcom/test/enter/SignupActivity;)Z
    .locals 1

    invoke-direct {p0}, Lcom/test/enter/SignupActivity;->d()Z

    move-result v0

    return v0
.end method

.method static synthetic b()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/test/enter/SignupActivity;->p:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic b(Lcom/test/enter/SignupActivity;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/test/enter/SignupActivity;->t:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/test/enter/SignupActivity;->u:Landroid/view/View;

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method

.method static synthetic c()F
    .locals 1

    sget v0, Lcom/test/enter/SignupActivity;->q:F

    return v0
.end method

.method static synthetic c(Lcom/test/enter/SignupActivity;)Landroid/widget/PopupWindow;
    .locals 1

    iget-object v0, p0, Lcom/test/enter/SignupActivity;->t:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method private d()Z
    .locals 2

    sget-object v0, Lcom/test/enter/EnterDef;->Password_:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/test/enter/EnterDef;->Password_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_1

    sget-object v0, Lcom/test/enter/EnterDef;->Password_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xe

    if-gt v0, v1, :cond_1

    sget-object v0, Lcom/test/enter/EnterDef;->Password_:Ljava/lang/String;

    sget-object v1, Lcom/test/enter/EnterDef;->Password_Check_:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const-string v0, "\u4e24\u6b21\u5bc6\u7801\u4e0d\u4e00\u81f4\uff0c\u8bf7\u91cd\u65b0\u68c0\u67e5"

    invoke-static {p0, v0}, Lcom/shandagames/gameplus/util/ToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const-string v0, "\u5bc6\u7801\u5fc5\u987b\u662f8~14\u4f4d\u82f1\u6587\u5b57\u6bcd\u6216\u6570\u5b57"

    invoke-static {p0, v0}, Lcom/shandagames/gameplus/util/ToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public Back()V
    .locals 2

    iget v0, p0, Lcom/test/enter/SignupActivity;->n:I

    sget v1, Lcom/test/enter/EnterDef;->STEP_VALIDATE:I

    if-ne v0, v1, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/test/enter/WorldSelectActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/test/enter/SignupActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/test/enter/SignupActivity;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/test/enter/SignupActivity;->n:I

    sget v1, Lcom/test/enter/EnterDef;->STEP_REGIST:I

    if-ne v0, v1, :cond_0

    sget v0, Lcom/test/enter/EnterDef;->STEP_VALIDATE:I

    invoke-virtual {p0, v0}, Lcom/test/enter/SignupActivity;->SetStep(I)V

    goto :goto_0
.end method

.method public GameStart()V
    .locals 2

    const/4 v0, 0x1

    sput v0, Lcom/test/enter/EnterDef;->LastScene:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "id = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/test/enter/EnterDef;->PhoneNumber_:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pw = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/test/enter/EnterDef;->Password_:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/test/enter/DebugLog;->logDebug(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/test/RooneyJActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/test/enter/SignupActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/test/enter/SignupActivity;->finish()V

    return-void
.end method

.method public Next()V
    .locals 3

    iget-object v0, p0, Lcom/test/enter/SignupActivity;->g:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\u60a8\u5fc5\u987b\u63a5\u53d7\u7528\u6237\u534f\u8bae\u624d\u80fd\u7ee7\u7eed\u6ce8\u518c"

    invoke-static {p0, v0}, Lcom/shandagames/gameplus/util/ToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/test/enter/EnterDef;->PhoneNumber_:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/test/enter/EnterDef;->PhoneNumber_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_2

    :cond_1
    const-string v0, "\u8bf7\u8f93\u5165\u6ce8\u518c\u624b\u673a\u53f7"

    invoke-static {p0, v0}, Lcom/shandagames/gameplus/util/ToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/test/enter/EnterDef;->PhoneNumber_:Ljava/lang/String;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/test/enter/EnterDef;->PhoneNumber_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_4

    sget-object v0, Lcom/test/enter/EnterDef;->PhoneNumber_:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/test/enter/EnterDef;->SMSCode_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    sget-object v0, Lcom/test/enter/EnterDef;->PhoneNumber_:Ljava/lang/String;

    sget-object v1, Lcom/test/enter/EnterDef;->SMSCode_:Ljava/lang/String;

    new-instance v2, Lcom/test/enter/s;

    invoke-direct {v2, p0}, Lcom/test/enter/s;-><init>(Lcom/test/enter/SignupActivity;)V

    invoke-static {p0, v0, v1, v2}, Lcom/shandagames/gameplus/GamePlus;->validateSmsCode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/shandagames/gameplus/GamePlus$ValidateCallback;)V

    goto :goto_0

    :cond_3
    const-string v0, "\u8bf7\u8f93\u5165\u77ed\u4fe1\u4e2d\u7684\u9a8c\u8bc1\u7801"

    invoke-static {p0, v0}, Lcom/shandagames/gameplus/util/ToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v0, "\u624b\u673a\u53f7\u683c\u5f0f\u9519\u8bef\uff0c\u8bf7\u91cd\u65b0\u8f93\u5165"

    invoke-static {p0, v0}, Lcom/shandagames/gameplus/util/ToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public SetStep(I)V
    .locals 4

    const/4 v3, 0x4

    const/4 v2, 0x0

    iput p1, p0, Lcom/test/enter/SignupActivity;->n:I

    iget v0, p0, Lcom/test/enter/SignupActivity;->n:I

    sget v1, Lcom/test/enter/EnterDef;->STEP_VALIDATE:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/test/enter/SignupActivity;->b:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/test/enter/SignupActivity;->h:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    sget-object v0, Lcom/test/enter/SignupActivity;->c:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/test/enter/SignupActivity;->n:I

    sget v1, Lcom/test/enter/EnterDef;->STEP_REGIST:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/test/enter/SignupActivity;->h:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/test/enter/SignupActivity;->b:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    sget-object v0, Lcom/test/enter/SignupActivity;->c:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method public Signup()V
    .locals 1

    invoke-direct {p0}, Lcom/test/enter/SignupActivity;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/test/enter/SignupActivity;->GameStart()V

    :cond_0
    return-void
.end method

.method public ValidatePhoneNumber()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/test/enter/EnterDef;->PhoneNumber_:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/test/enter/EnterDef;->PhoneNumber_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    const-string v0, "\u8bf7\u8f93\u5165\u6ce8\u518c\u624b\u673a\u53f7"

    invoke-static {p0, v0}, Lcom/shandagames/gameplus/util/ToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/test/enter/EnterDef;->PhoneNumber_:Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/test/enter/EnterDef;->PhoneNumber_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/test/enter/EnterDef;->PhoneNumber_:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/test/enter/SignupActivity;->StartTimer()V

    sget-object v0, Lcom/test/enter/SignupActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    sget-object v0, Lcom/test/enter/EnterDef;->PhoneNumber_:Ljava/lang/String;

    new-instance v1, Lcom/test/enter/t;

    invoke-direct {v1, p0}, Lcom/test/enter/t;-><init>(Lcom/test/enter/SignupActivity;)V

    invoke-static {p0, v0, v1}, Lcom/shandagames/gameplus/GamePlus;->requestSmsCode(Landroid/content/Context;Ljava/lang/String;Lcom/shandagames/gameplus/GamePlus$RequestSMSCallback;)V

    goto :goto_0

    :cond_2
    const-string v0, "\u624b\u673a\u53f7\u683c\u5f0f\u9519\u8bef\uff0c\u8bf7\u91cd\u65b0\u8f93\u5165"

    invoke-static {p0, v0}, Lcom/shandagames/gameplus/util/ToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onClickClose(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/test/enter/SignupActivity;->o:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/test/enter/EnterDef;->webViewDestroy(Landroid/widget/RelativeLayout;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x4

    const/high16 v8, 0x4228

    const/high16 v6, 0x4200

    const/4 v7, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030004

    invoke-virtual {p0, v0}, Lcom/test/enter/SignupActivity;->setContentView(I)V

    const v0, 0x7f090018

    invoke-virtual {p0, v0}, Lcom/test/enter/SignupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/test/enter/SignupActivity;->o:Landroid/widget/RelativeLayout;

    sget-object v0, Lcom/test/enter/SignupActivity;->p:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-object v0, Lcom/test/enter/SignupActivity;->p:Landroid/os/Handler;

    :cond_0
    sget-object v0, Lcom/test/enter/SignupActivity;->p:Landroid/os/Handler;

    if-nez v0, :cond_1

    new-instance v0, Lcom/test/enter/v;

    invoke-direct {v0, p0}, Lcom/test/enter/v;-><init>(Lcom/test/enter/SignupActivity;)V

    sput-object v0, Lcom/test/enter/SignupActivity;->p:Landroid/os/Handler;

    :cond_1
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Lcom/test/enter/SignupActivity;->getApplicationContext()Landroid/content/Context;

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
    sput v3, Lcom/test/enter/SignupActivity;->q:F

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

    const v0, 0x7f090019

    invoke-virtual {p0, v0}, Lcom/test/enter/SignupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/test/enter/SignupActivity;->a:Landroid/widget/ImageButton;

    iget-object v4, p0, Lcom/test/enter/SignupActivity;->a:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/test/enter/SignupActivity;->a:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {v0, v3, v3}, Lcom/test/enter/EnterDef;->getRelativeLayoutFromScreenSize(Landroid/widget/RelativeLayout$LayoutParams;FF)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/test/enter/SignupActivity;->a:Landroid/widget/ImageButton;

    new-instance v4, Lcom/test/enter/w;

    invoke-direct {v4, p0}, Lcom/test/enter/w;-><init>(Lcom/test/enter/SignupActivity;)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/test/enter/SignupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f020004

    invoke-static {v0, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    const/high16 v4, 0x4300

    mul-float/2addr v4, v3

    float-to-int v4, v4

    const/high16 v5, 0x4300

    mul-float/2addr v5, v3

    float-to-int v5, v5

    invoke-static {v0, v4, v5, v10}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v4, p0, Lcom/test/enter/SignupActivity;->a:Landroid/widget/ImageButton;

    invoke-virtual {v4, v0}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const v0, 0x7f09000c

    invoke-virtual {p0, v0}, Lcom/test/enter/SignupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {v0, v3, v3}, Lcom/test/enter/EnterDef;->getRelativeLayoutFromScreenSize(Landroid/widget/RelativeLayout$LayoutParams;FF)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x7f09001a

    invoke-virtual {p0, v0}, Lcom/test/enter/SignupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/test/enter/SignupActivity;->b:Landroid/view/View;

    const v0, 0x7f09001e

    invoke-virtual {p0, v0}, Lcom/test/enter/SignupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    sput-object v0, Lcom/test/enter/SignupActivity;->c:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {v4, v3, v3}, Lcom/test/enter/EnterDef;->getRelativeLayoutFromScreenSize(Landroid/widget/RelativeLayout$LayoutParams;FF)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v0, Lcom/test/enter/SignupActivity;->c:Landroid/widget/Button;

    mul-float v4, v8, v3

    invoke-virtual {v0, v7, v4}, Landroid/widget/Button;->setTextSize(IF)V

    sget-object v0, Lcom/test/enter/SignupActivity;->c:Landroid/widget/Button;

    invoke-virtual {v0, v9, v9, v9, v9}, Landroid/widget/Button;->setPadding(IIII)V

    sget-object v0, Lcom/test/enter/SignupActivity;->c:Landroid/widget/Button;

    new-instance v4, Lcom/test/enter/x;

    invoke-direct {v4, p0}, Lcom/test/enter/x;-><init>(Lcom/test/enter/SignupActivity;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090023

    invoke-virtual {p0, v0}, Lcom/test/enter/SignupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/test/enter/SignupActivity;->d:Landroid/widget/ImageButton;

    iget-object v4, p0, Lcom/test/enter/SignupActivity;->d:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/test/enter/SignupActivity;->d:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {v0, v3, v3}, Lcom/test/enter/EnterDef;->getRelativeLayoutFromScreenSize(Landroid/widget/RelativeLayout$LayoutParams;FF)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/test/enter/SignupActivity;->d:Landroid/widget/ImageButton;

    new-instance v4, Lcom/test/enter/y;

    invoke-direct {v4, p0}, Lcom/test/enter/y;-><init>(Lcom/test/enter/SignupActivity;)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/test/enter/SignupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f02000b

    invoke-static {v0, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    const/high16 v4, 0x4381

    mul-float/2addr v4, v3

    float-to-int v4, v4

    const/high16 v5, 0x4284

    mul-float/2addr v5, v3

    float-to-int v5, v5

    invoke-static {v0, v4, v5, v10}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v4, p0, Lcom/test/enter/SignupActivity;->d:Landroid/widget/ImageButton;

    invoke-virtual {v4, v0}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const v0, 0x7f09001b

    invoke-virtual {p0, v0}, Lcom/test/enter/SignupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    iget v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    int-to-float v5, v5

    mul-float/2addr v5, v3

    float-to-int v5, v5

    iput v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    int-to-float v5, v5

    mul-float/2addr v5, v3

    float-to-int v5, v5

    iput v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x7f09001c

    invoke-virtual {p0, v0}, Lcom/test/enter/SignupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    mul-float v4, v8, v3

    invoke-virtual {v0, v7, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    const v0, 0x7f09001d

    invoke-virtual {p0, v0}, Lcom/test/enter/SignupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    sput-object v0, Lcom/test/enter/SignupActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v4, v3, v3}, Lcom/test/enter/EnterDef;->getLinearLayoutFromScreenSize(Landroid/widget/LinearLayout$LayoutParams;FF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v0, Lcom/test/enter/SignupActivity;->e:Landroid/widget/EditText;

    mul-float v4, v6, v3

    invoke-virtual {v0, v7, v4}, Landroid/widget/EditText;->setTextSize(IF)V

    sget-object v0, Lcom/test/enter/SignupActivity;->e:Landroid/widget/EditText;

    new-instance v4, Lcom/test/enter/z;

    invoke-direct {v4, p0}, Lcom/test/enter/z;-><init>(Lcom/test/enter/SignupActivity;)V

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const v0, 0x7f09001f

    invoke-virtual {p0, v0}, Lcom/test/enter/SignupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    iget v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    int-to-float v5, v5

    mul-float/2addr v5, v3

    float-to-int v5, v5

    iput v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    mul-float v4, v6, v3

    invoke-virtual {v0, v7, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    const v0, 0x7f090020

    invoke-virtual {p0, v0}, Lcom/test/enter/SignupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    iget v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    int-to-float v5, v5

    mul-float/2addr v5, v3

    float-to-int v5, v5

    iput v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    int-to-float v5, v5

    mul-float/2addr v5, v3

    float-to-int v5, v5

    iput v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x7f090021

    invoke-virtual {p0, v0}, Lcom/test/enter/SignupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    mul-float v4, v8, v3

    invoke-virtual {v0, v7, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    const v0, 0x7f090022

    invoke-virtual {p0, v0}, Lcom/test/enter/SignupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/test/enter/SignupActivity;->f:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/test/enter/SignupActivity;->f:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/test/enter/SignupActivity;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v0, v3, v3}, Lcom/test/enter/EnterDef;->getLinearLayoutFromScreenSize(Landroid/widget/LinearLayout$LayoutParams;FF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/test/enter/SignupActivity;->f:Landroid/widget/EditText;

    mul-float v4, v6, v3

    invoke-virtual {v0, v7, v4}, Landroid/widget/EditText;->setTextSize(IF)V

    iget-object v0, p0, Lcom/test/enter/SignupActivity;->f:Landroid/widget/EditText;

    new-instance v4, Lcom/test/enter/aa;

    invoke-direct {v4, p0}, Lcom/test/enter/aa;-><init>(Lcom/test/enter/SignupActivity;)V

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const v0, 0x7f090024

    invoke-virtual {p0, v0}, Lcom/test/enter/SignupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    iget v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    int-to-float v5, v5

    mul-float/2addr v5, v3

    float-to-int v5, v5

    iput v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x7f090025

    invoke-virtual {p0, v0}, Lcom/test/enter/SignupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/test/enter/SignupActivity;->g:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/test/enter/SignupActivity;->g:Landroid/widget/CheckBox;

    mul-float v4, v6, v3

    invoke-virtual {v0, v7, v4}, Landroid/widget/CheckBox;->setTextSize(IF)V

    const v0, 0x7f090026

    invoke-virtual {p0, v0}, Lcom/test/enter/SignupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    iget v5, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    int-to-float v5, v5

    mul-float/2addr v5, v3

    float-to-int v5, v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget v5, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    int-to-float v5, v5

    mul-float/2addr v5, v3

    float-to-int v5, v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    mul-float v4, v6, v3

    invoke-virtual {v0, v7, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v4, "<u>\u7528\u6237\u534f\u8bae</u>"

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    new-instance v4, Lcom/test/enter/ab;

    invoke-direct {v4, p0}, Lcom/test/enter/ab;-><init>(Lcom/test/enter/SignupActivity;)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090027

    invoke-virtual {p0, v0}, Lcom/test/enter/SignupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/test/enter/SignupActivity;->h:Landroid/view/View;

    const v0, 0x7f090031

    invoke-virtual {p0, v0}, Lcom/test/enter/SignupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/test/enter/SignupActivity;->i:Landroid/widget/ImageButton;

    iget-object v4, p0, Lcom/test/enter/SignupActivity;->i:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/test/enter/SignupActivity;->i:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {v0, v3, v3}, Lcom/test/enter/EnterDef;->getRelativeLayoutFromScreenSize(Landroid/widget/RelativeLayout$LayoutParams;FF)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/test/enter/SignupActivity;->i:Landroid/widget/ImageButton;

    new-instance v4, Lcom/test/enter/ac;

    invoke-direct {v4, p0}, Lcom/test/enter/ac;-><init>(Lcom/test/enter/SignupActivity;)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/test/enter/SignupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f02000c

    invoke-static {v0, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    const/high16 v4, 0x4381

    mul-float/2addr v4, v3

    float-to-int v4, v4

    const/high16 v5, 0x4284

    mul-float/2addr v5, v3

    float-to-int v5, v5

    invoke-static {v0, v4, v5, v10}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v4, p0, Lcom/test/enter/SignupActivity;->i:Landroid/widget/ImageButton;

    invoke-virtual {v4, v0}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const v0, 0x7f090028

    invoke-virtual {p0, v0}, Lcom/test/enter/SignupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    iget v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    int-to-float v5, v5

    mul-float/2addr v5, v3

    float-to-int v5, v5

    iput v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    int-to-float v5, v5

    mul-float/2addr v5, v3

    float-to-int v5, v5

    iput v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x7f090029

    invoke-virtual {p0, v0}, Lcom/test/enter/SignupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    iget v5, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    int-to-float v5, v5

    mul-float/2addr v5, v3

    float-to-int v5, v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    mul-float v4, v8, v3

    invoke-virtual {v0, v7, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    const v0, 0x7f09002a

    invoke-virtual {p0, v0}, Lcom/test/enter/SignupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/test/enter/SignupActivity;->j:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/test/enter/SignupActivity;->j:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/test/enter/SignupActivity;->j:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v0, v3, v3}, Lcom/test/enter/EnterDef;->getLinearLayoutFromScreenSize(Landroid/widget/LinearLayout$LayoutParams;FF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/test/enter/SignupActivity;->j:Landroid/widget/EditText;

    mul-float v4, v6, v3

    invoke-virtual {v0, v7, v4}, Landroid/widget/EditText;->setTextSize(IF)V

    iget-object v0, p0, Lcom/test/enter/SignupActivity;->j:Landroid/widget/EditText;

    new-instance v4, Lcom/test/enter/p;

    invoke-direct {v4, p0}, Lcom/test/enter/p;-><init>(Lcom/test/enter/SignupActivity;)V

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const v0, 0x7f09002b

    invoke-virtual {p0, v0}, Lcom/test/enter/SignupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    iget v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    int-to-float v5, v5

    mul-float/2addr v5, v3

    float-to-int v5, v5

    iput v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    int-to-float v5, v5

    mul-float/2addr v5, v3

    float-to-int v5, v5

    iput v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x7f09002c

    invoke-virtual {p0, v0}, Lcom/test/enter/SignupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    iget v5, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    int-to-float v5, v5

    mul-float/2addr v5, v3

    float-to-int v5, v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    mul-float v4, v8, v3

    invoke-virtual {v0, v7, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    const v0, 0x7f09002d

    invoke-virtual {p0, v0}, Lcom/test/enter/SignupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/test/enter/SignupActivity;->k:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/test/enter/SignupActivity;->k:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/test/enter/SignupActivity;->k:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v0, v3, v3}, Lcom/test/enter/EnterDef;->getLinearLayoutFromScreenSize(Landroid/widget/LinearLayout$LayoutParams;FF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/test/enter/SignupActivity;->k:Landroid/widget/EditText;

    mul-float v4, v6, v3

    invoke-virtual {v0, v7, v4}, Landroid/widget/EditText;->setTextSize(IF)V

    iget-object v0, p0, Lcom/test/enter/SignupActivity;->k:Landroid/widget/EditText;

    new-instance v4, Lcom/test/enter/q;

    invoke-direct {v4, p0}, Lcom/test/enter/q;-><init>(Lcom/test/enter/SignupActivity;)V

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const v0, 0x7f09002e

    invoke-virtual {p0, v0}, Lcom/test/enter/SignupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    iget v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    int-to-float v5, v5

    mul-float/2addr v5, v3

    float-to-int v5, v5

    iput v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    int-to-float v5, v5

    mul-float/2addr v5, v3

    float-to-int v5, v5

    iput v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x7f09002f

    invoke-virtual {p0, v0}, Lcom/test/enter/SignupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    iget v5, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    int-to-float v5, v5

    mul-float/2addr v5, v3

    float-to-int v5, v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    mul-float v4, v8, v3

    invoke-virtual {v0, v7, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    const v0, 0x7f090030

    invoke-virtual {p0, v0}, Lcom/test/enter/SignupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/test/enter/SignupActivity;->l:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/test/enter/SignupActivity;->l:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/test/enter/SignupActivity;->l:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v0, v3, v3}, Lcom/test/enter/EnterDef;->getLinearLayoutFromScreenSize(Landroid/widget/LinearLayout$LayoutParams;FF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/test/enter/SignupActivity;->l:Landroid/widget/EditText;

    mul-float v4, v6, v3

    invoke-virtual {v0, v7, v4}, Landroid/widget/EditText;->setTextSize(IF)V

    iget-object v0, p0, Lcom/test/enter/SignupActivity;->l:Landroid/widget/EditText;

    new-instance v4, Lcom/test/enter/r;

    invoke-direct {v4, p0}, Lcom/test/enter/r;-><init>(Lcom/test/enter/SignupActivity;)V

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/test/enter/SignupActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v5, 0x7f030001

    const/high16 v4, 0x7f09

    invoke-virtual {p0, v4}, Lcom/test/enter/SignupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v0, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/test/enter/SignupActivity;->u:Landroid/view/View;

    iget-object v0, p0, Lcom/test/enter/SignupActivity;->u:Landroid/view/View;

    const-string v4, "\u63d0\u4ea4\u6ce8\u518c\u540e\uff0c\u5c06\u81ea\u52a8\u4e0b\u8f7d\u6e38\u620f\u8d44\u6e90\uff1a"

    const-string v5, "\u63d0\u4ea4\u6ce8\u518c"

    new-instance v6, Lcom/test/enter/u;

    invoke-direct {v6, p0}, Lcom/test/enter/u;-><init>(Lcom/test/enter/SignupActivity;)V

    invoke-static/range {v0 .. v6}, Lcom/test/enter/EnterDef;->initPopup(Landroid/view/View;FFFLjava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/PopupWindow;

    move-result-object v0

    iput-object v0, p0, Lcom/test/enter/SignupActivity;->t:Landroid/widget/PopupWindow;

    sget-object v0, Lcom/test/enter/SignupActivity;->e:Landroid/widget/EditText;

    sget-object v1, Lcom/test/enter/EnterDef;->PhoneNumber_:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/test/enter/EnterDef;->STEP_VALIDATE:I

    invoke-virtual {p0, v0}, Lcom/test/enter/SignupActivity;->SetStep(I)V

    iput-boolean v7, p0, Lcom/test/enter/SignupActivity;->m:Z

    return-void

    :cond_2
    move v3, v1

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const-string v0, "#onDestroy"

    invoke-static {v0}, Lcom/test/enter/DebugLog;->logDebug(Ljava/lang/String;)V

    sget-object v0, Lcom/test/enter/SignupActivity;->r:Ljava/util/Timer;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/test/enter/SignupActivity;->r:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    sput-object v0, Lcom/test/enter/SignupActivity;->r:Ljava/util/Timer;

    :cond_0
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

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-boolean v0, p0, Lcom/test/enter/SignupActivity;->m:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/test/enter/SignupActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    sget-object v0, Lcom/test/enter/SignupActivity;->c:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    return-void
.end method
