.class public Lcom/shandagames/gameplus/GameDummyActivity;
.super Landroid/app/Activity;


# instance fields
.field private mActivate:Landroid/widget/Button;

.field private mCheck:Landroid/widget/Button;

.field private mPay:Landroid/widget/Button;

.field private mPay1:Landroid/widget/Button;

.field private mPay100:Landroid/widget/Button;

.field private mPay138:Landroid/widget/Button;

.field private mPay200:Landroid/widget/Button;

.field private mPay30:Landroid/widget/Button;

.field private mPay50:Landroid/widget/Button;

.field private mPhoneNumber:Landroid/widget/EditText;

.field private mRequest:Landroid/widget/Button;

.field private mShare:Landroid/widget/Button;

.field private mSmsCode:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/shandagames/gameplus/GameDummyActivity;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/shandagames/gameplus/GameDummyActivity;->mPhoneNumber:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1(Lcom/shandagames/gameplus/GameDummyActivity;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/shandagames/gameplus/GameDummyActivity;->mSmsCode:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$2(Lcom/shandagames/gameplus/GameDummyActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/shandagames/gameplus/GameDummyActivity;->doPay(Landroid/view/View;)V

    return-void
.end method

.method private doPay(Landroid/view/View;)V
    .locals 8

    iget-object v0, p0, Lcom/shandagames/gameplus/GameDummyActivity;->mPhoneNumber:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\u8bf7\u5148\u586b\u5199\u624b\u673a\u53f7\u7801\uff0c\u518d\u5145\u503c\u3002"

    invoke-static {p0, v0}, Lcom/shandagames/gameplus/util/ToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v2, "MA_APPLE_60MC"

    const-string v3, "http://game/notify.php"

    const/high16 v4, 0x40c0

    const-string v6, "myparameter"

    const-string v5, "60MC"

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v7, "30"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/high16 v4, 0x41f0

    const-string v5, "300MC"

    const-string v2, "MA_APPLE_300MC"

    :cond_1
    :goto_1
    new-instance v7, Lcom/shandagames/gameplus/GameDummyActivity$12;

    invoke-direct {v7, p0}, Lcom/shandagames/gameplus/GameDummyActivity$12;-><init>(Lcom/shandagames/gameplus/GameDummyActivity;)V

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/shandagames/gameplus/GamePlus;->payInGame(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FLjava/lang/String;Ljava/lang/String;Lcom/shandagames/gameplus/GamePlus$PayCallback;)V

    goto :goto_0

    :cond_2
    const-string v7, "50"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/high16 v4, 0x4248

    const-string v5, "500MC"

    const-string v2, "MA_APPLE_500MC"

    goto :goto_1

    :cond_3
    const-string v7, "100"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/high16 v4, 0x42c8

    const-string v5, "1010MC"

    const-string v2, "MA_APPLE_1010MC"

    goto :goto_1

    :cond_4
    const-string v7, "138"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    const/high16 v4, 0x430a

    const-string v5, "1400MC"

    const-string v2, "MA_APPLE_1400MC"

    goto :goto_1

    :cond_5
    const-string v7, "200"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const/high16 v4, 0x4348

    const-string v5, "2050MC"

    const-string v2, "MA_APPLE_2050MC"

    goto :goto_1

    :cond_6
    const-string v7, "1"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/high16 v4, 0x3f80

    const-string v5, "10MC"

    const-string v2, "MA_APPLE_10MC"

    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/shandagames/gameplus/GamePlus;->setReleaseEnvironment(Z)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/shandagames/gameplus/GamePlus;->setLogEnabled(Z)V

    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lcom/shandagames/gameplus/GameDummyActivity;->setContentView(I)V

    const/high16 v0, 0x7f08

    invoke-virtual {p0, v0}, Lcom/shandagames/gameplus/GameDummyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/shandagames/gameplus/GameDummyActivity;->mPhoneNumber:Landroid/widget/EditText;

    const v0, 0x7f080001

    invoke-virtual {p0, v0}, Lcom/shandagames/gameplus/GameDummyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/shandagames/gameplus/GameDummyActivity;->mSmsCode:Landroid/widget/EditText;

    const v0, 0x7f080003

    invoke-virtual {p0, v0}, Lcom/shandagames/gameplus/GameDummyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/shandagames/gameplus/GameDummyActivity;->mCheck:Landroid/widget/Button;

    const v0, 0x7f080002

    invoke-virtual {p0, v0}, Lcom/shandagames/gameplus/GameDummyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/shandagames/gameplus/GameDummyActivity;->mRequest:Landroid/widget/Button;

    const v0, 0x7f080005

    invoke-virtual {p0, v0}, Lcom/shandagames/gameplus/GameDummyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/shandagames/gameplus/GameDummyActivity;->mPay:Landroid/widget/Button;

    const v0, 0x7f080006

    invoke-virtual {p0, v0}, Lcom/shandagames/gameplus/GameDummyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/shandagames/gameplus/GameDummyActivity;->mPay30:Landroid/widget/Button;

    const v0, 0x7f080007

    invoke-virtual {p0, v0}, Lcom/shandagames/gameplus/GameDummyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/shandagames/gameplus/GameDummyActivity;->mPay50:Landroid/widget/Button;

    const v0, 0x7f080008

    invoke-virtual {p0, v0}, Lcom/shandagames/gameplus/GameDummyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/shandagames/gameplus/GameDummyActivity;->mPay100:Landroid/widget/Button;

    const v0, 0x7f080009

    invoke-virtual {p0, v0}, Lcom/shandagames/gameplus/GameDummyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/shandagames/gameplus/GameDummyActivity;->mPay138:Landroid/widget/Button;

    const v0, 0x7f08000a

    invoke-virtual {p0, v0}, Lcom/shandagames/gameplus/GameDummyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/shandagames/gameplus/GameDummyActivity;->mPay200:Landroid/widget/Button;

    const v0, 0x7f08000b

    invoke-virtual {p0, v0}, Lcom/shandagames/gameplus/GameDummyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/shandagames/gameplus/GameDummyActivity;->mPay1:Landroid/widget/Button;

    const v0, 0x7f08000c

    invoke-virtual {p0, v0}, Lcom/shandagames/gameplus/GameDummyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/shandagames/gameplus/GameDummyActivity;->mShare:Landroid/widget/Button;

    const v0, 0x7f080004

    invoke-virtual {p0, v0}, Lcom/shandagames/gameplus/GameDummyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/shandagames/gameplus/GameDummyActivity;->mActivate:Landroid/widget/Button;

    iget-object v0, p0, Lcom/shandagames/gameplus/GameDummyActivity;->mRequest:Landroid/widget/Button;

    new-instance v1, Lcom/shandagames/gameplus/GameDummyActivity$1;

    invoke-direct {v1, p0}, Lcom/shandagames/gameplus/GameDummyActivity$1;-><init>(Lcom/shandagames/gameplus/GameDummyActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/shandagames/gameplus/GameDummyActivity;->mCheck:Landroid/widget/Button;

    new-instance v1, Lcom/shandagames/gameplus/GameDummyActivity$2;

    invoke-direct {v1, p0}, Lcom/shandagames/gameplus/GameDummyActivity$2;-><init>(Lcom/shandagames/gameplus/GameDummyActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/shandagames/gameplus/GameDummyActivity;->mActivate:Landroid/widget/Button;

    new-instance v1, Lcom/shandagames/gameplus/GameDummyActivity$3;

    invoke-direct {v1, p0}, Lcom/shandagames/gameplus/GameDummyActivity$3;-><init>(Lcom/shandagames/gameplus/GameDummyActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/shandagames/gameplus/GameDummyActivity;->mPay:Landroid/widget/Button;

    new-instance v1, Lcom/shandagames/gameplus/GameDummyActivity$4;

    invoke-direct {v1, p0}, Lcom/shandagames/gameplus/GameDummyActivity$4;-><init>(Lcom/shandagames/gameplus/GameDummyActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/shandagames/gameplus/GameDummyActivity;->mPay30:Landroid/widget/Button;

    new-instance v1, Lcom/shandagames/gameplus/GameDummyActivity$5;

    invoke-direct {v1, p0}, Lcom/shandagames/gameplus/GameDummyActivity$5;-><init>(Lcom/shandagames/gameplus/GameDummyActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/shandagames/gameplus/GameDummyActivity;->mPay50:Landroid/widget/Button;

    new-instance v1, Lcom/shandagames/gameplus/GameDummyActivity$6;

    invoke-direct {v1, p0}, Lcom/shandagames/gameplus/GameDummyActivity$6;-><init>(Lcom/shandagames/gameplus/GameDummyActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/shandagames/gameplus/GameDummyActivity;->mPay100:Landroid/widget/Button;

    new-instance v1, Lcom/shandagames/gameplus/GameDummyActivity$7;

    invoke-direct {v1, p0}, Lcom/shandagames/gameplus/GameDummyActivity$7;-><init>(Lcom/shandagames/gameplus/GameDummyActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/shandagames/gameplus/GameDummyActivity;->mPay138:Landroid/widget/Button;

    new-instance v1, Lcom/shandagames/gameplus/GameDummyActivity$8;

    invoke-direct {v1, p0}, Lcom/shandagames/gameplus/GameDummyActivity$8;-><init>(Lcom/shandagames/gameplus/GameDummyActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/shandagames/gameplus/GameDummyActivity;->mPay200:Landroid/widget/Button;

    new-instance v1, Lcom/shandagames/gameplus/GameDummyActivity$9;

    invoke-direct {v1, p0}, Lcom/shandagames/gameplus/GameDummyActivity$9;-><init>(Lcom/shandagames/gameplus/GameDummyActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/shandagames/gameplus/GameDummyActivity;->mPay1:Landroid/widget/Button;

    new-instance v1, Lcom/shandagames/gameplus/GameDummyActivity$10;

    invoke-direct {v1, p0}, Lcom/shandagames/gameplus/GameDummyActivity$10;-><init>(Lcom/shandagames/gameplus/GameDummyActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/shandagames/gameplus/GameDummyActivity;->mShare:Landroid/widget/Button;

    new-instance v1, Lcom/shandagames/gameplus/GameDummyActivity$11;

    invoke-direct {v1, p0}, Lcom/shandagames/gameplus/GameDummyActivity$11;-><init>(Lcom/shandagames/gameplus/GameDummyActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
