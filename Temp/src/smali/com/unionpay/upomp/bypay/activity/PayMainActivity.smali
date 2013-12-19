.class public Lcom/unionpay/upomp/bypay/activity/PayMainActivity;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static a:Landroid/widget/ImageView;

.field private static a:Landroid/widget/ProgressBar;

.field private static b:Landroid/widget/ImageView;

.field private static b:Landroid/widget/ProgressBar;


# instance fields
.field public a:I

.field private a:Landroid/view/View$OnFocusChangeListener;

.field private a:Landroid/widget/Button;

.field private a:Landroid/widget/EditText;

.field private a:Landroid/widget/ImageButton;

.field private a:Landroid/widget/RelativeLayout;

.field private a:Landroid/widget/TextView;

.field private a:Z

.field private b:I

.field private b:Landroid/widget/Button;

.field private b:Landroid/widget/EditText;

.field private b:Landroid/widget/RelativeLayout;

.field private b:Landroid/widget/TextView;

.field private b:Z

.field private c:I

.field private c:Landroid/widget/Button;

.field private c:Landroid/widget/EditText;

.field private c:Landroid/widget/RelativeLayout;

.field private c:Landroid/widget/TextView;

.field private c:Z

.field private d:Landroid/widget/Button;

.field private d:Landroid/widget/EditText;

.field private d:Landroid/widget/RelativeLayout;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/Button;

.field private e:Landroid/widget/EditText;

.field private e:Landroid/widget/RelativeLayout;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/Button;

.field private f:Landroid/widget/RelativeLayout;

.field private g:Landroid/widget/Button;

.field private g:Landroid/widget/RelativeLayout;

.field private h:Landroid/widget/Button;

.field private h:Landroid/widget/RelativeLayout;

.field private i:Landroid/widget/RelativeLayout;

.field private j:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-boolean v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->a:Z

    iput-boolean v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->b:Z

    iput-boolean v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->c:Z

    iput v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->b:I

    iput v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->c:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->a:I

    new-instance v0, Lcom/unionpay/upomp/bypay/other/bz;

    invoke-direct {v0, p0}, Lcom/unionpay/upomp/bypay/other/bz;-><init>(Lcom/unionpay/upomp/bypay/activity/PayMainActivity;)V

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->a:Landroid/view/View$OnFocusChangeListener;

    return-void
.end method

.method public static synthetic a(Lcom/unionpay/upomp/bypay/activity/PayMainActivity;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->e:Landroid/widget/Button;

    return-object v0
.end method

.method public static synthetic a(Lcom/unionpay/upomp/bypay/activity/PayMainActivity;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->a:Landroid/widget/EditText;

    return-object v0
.end method

.method public static synthetic a(Lcom/unionpay/upomp/bypay/activity/PayMainActivity;)Landroid/widget/ImageButton;
    .locals 1

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->a:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public static synthetic a()Landroid/widget/ImageView;
    .locals 1

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->a:Landroid/widget/ImageView;

    return-object v0
.end method

.method public static synthetic a()Landroid/widget/ProgressBar;
    .locals 1

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->a:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method public static synthetic a(Lcom/unionpay/upomp/bypay/activity/PayMainActivity;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->e:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public static synthetic a(Lcom/unionpay/upomp/bypay/activity/PayMainActivity;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, p2

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    sget-object v0, Lcom/unionpay/upomp/bypay/other/aC;->A:Ljava/lang/String;

    const-string v1, "user"

    invoke-static {v0, v1}, Lcom/unionpay/upomp/bypay/util/Utils;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iput v2, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->a:I

    iput v2, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->b:I

    iget v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->b:I

    invoke-direct {p0, v0}, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->a(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput v3, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->a:I

    iput v3, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->b:I

    iget v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->b:I

    invoke-direct {p0, v0}, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->a(I)V

    goto :goto_0
.end method

.method private a(I)V
    .locals 7

    const/4 v6, 0x3

    const/4 v1, 0x0

    const/16 v5, 0x8

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->a:Landroid/widget/ImageView;

    sget-object v1, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->a:Landroid/widget/ProgressBar;

    invoke-static {v0, v1}, Lcom/unionpay/upomp/bypay/util/Utils;->a(Landroid/widget/ImageView;Landroid/widget/ProgressBar;)V

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->c:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v3, "string"

    const-string v4, "upomp_bypay_pay_btn_hint1"

    invoke-static {v2, v3, v4}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->a:I

    if-nez v0, :cond_0

    sget-object v0, Lcom/unionpay/upomp/bypay/other/aC;->K:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/unionpay/upomp/bypay/other/aC;->K:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->a:Landroid/widget/EditText;

    sget-object v1, Lcom/unionpay/upomp/bypay/other/aC;->K:Ljava/lang/String;

    const/4 v2, 0x6

    const/4 v3, 0x4

    invoke-static {v1, v2, v3}, Lcom/unionpay/upomp/bypay/util/Utils;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    :goto_1
    sget-object v0, Lcom/unionpay/upomp/bypay/other/aC;->L:Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/unionpay/upomp/bypay/other/aC;->L:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->c:Landroid/widget/EditText;

    sget-object v1, Lcom/unionpay/upomp/bypay/other/aC;->L:Ljava/lang/String;

    invoke-static {v1, v6, v6}, Lcom/unionpay/upomp/bypay/util/Utils;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->a:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v3, "string"

    const-string v4, "upomp_bypay_pan"

    invoke-static {v2, v3, v4}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->c:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v3, "string"

    const-string v4, "upomp_bypay_tel"

    invoke-static {v2, v3, v4}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->b:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->b:Landroid/widget/ImageView;

    sget-object v1, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->b:Landroid/widget/ProgressBar;

    invoke-static {v0, v1}, Lcom/unionpay/upomp/bypay/util/Utils;->a(Landroid/widget/ImageView;Landroid/widget/ProgressBar;)V

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->c:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v3, "string"

    const-string v4, "upomp_bypay_pay_btn_hint2"

    invoke-static {v2, v3, v4}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/unionpay/upomp/bypay/other/aC;->A:Ljava/lang/String;

    const-string v1, "loginName"

    invoke-static {v0, v1}, Lcom/unionpay/upomp/bypay/util/Utils;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unionpay/upomp/bypay/util/Utils;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unionpay/upomp/bypay/other/aC;->al:Ljava/lang/String;

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->d:Landroid/widget/EditText;

    sget-object v1, Lcom/unionpay/upomp/bypay/other/aC;->al:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static synthetic a(Lcom/unionpay/upomp/bypay/activity/PayMainActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->b(I)V

    return-void
.end method

.method public static synthetic a(Lcom/unionpay/upomp/bypay/activity/PayMainActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->b:Z

    return-void
.end method

.method public static synthetic a(Lcom/unionpay/upomp/bypay/activity/PayMainActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->b:Z

    return v0
.end method

.method public static synthetic b(Lcom/unionpay/upomp/bypay/activity/PayMainActivity;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->f:Landroid/widget/Button;

    return-object v0
.end method

.method public static synthetic b(Lcom/unionpay/upomp/bypay/activity/PayMainActivity;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->b:Landroid/widget/EditText;

    return-object v0
.end method

.method public static synthetic b()Landroid/widget/ImageView;
    .locals 1

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->b:Landroid/widget/ImageView;

    return-object v0
.end method

.method public static synthetic b()Landroid/widget/ProgressBar;
    .locals 1

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->b:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method public static synthetic b(Lcom/unionpay/upomp/bypay/activity/PayMainActivity;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->i:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private b()V
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x1

    sget-object v0, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v1, "id"

    const-string v2, "main_dialog_pay_main"

    invoke-static {v0, v1, v2}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->a:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->a:Landroid/widget/RelativeLayout;

    invoke-static {p0}, Lcom/unionpay/upomp/bypay/util/Utils;->a(Landroid/content/Context;)Lcom/unionpay/upomp/bypay/view/IsMeDialog;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v1, "id"

    const-string v2, "tv_ordername_content_pay_main"

    invoke-static {v0, v1, v2}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->a:Landroid/widget/TextView;

    sget-object v1, Lcom/unionpay/upomp/bypay/other/aC;->aP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v1, "id"

    const-string v2, "tv_ordermoney_content_pay_main"

    invoke-static {v0, v1, v2}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->b:Landroid/widget/TextView;

    sget-object v1, Lcom/unionpay/upomp/bypay/other/aC;->aL:Ljava/lang/String;

    invoke-static {v1}, Lcom/unionpay/upomp/bypay/util/Utils;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v1, "id"

    const-string v2, "tv_ordernum_content_pay_main"

    invoke-static {v0, v1, v2}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->c:Landroid/widget/TextView;

    sget-object v1, Lcom/unionpay/upomp/bypay/other/aC;->aK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v1, "id"

    const-string v2, "tv_date_content_pay_main"

    invoke-static {v0, v1, v2}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->d:Landroid/widget/TextView;

    sget-object v1, Lcom/unionpay/upomp/bypay/other/aC;->aM:Ljava/lang/String;

    invoke-static {v1}, Lcom/unionpay/upomp/bypay/util/Utils;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v1, "id"

    const-string v2, "tv_info_content_pay_main"

    invoke-static {v0, v1, v2}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->e:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->e:Landroid/widget/TextView;

    sget-object v1, Lcom/unionpay/upomp/bypay/other/aC;->aQ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v1, "id"

    const-string v2, "rl_orderinfo_other_pay_main"

    invoke-static {v0, v1, v2}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->b:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    sget-object v0, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v1, "id"

    const-string v2, "btn_orderinfo1_pay_main"

    invoke-static {v0, v1, v2}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->a:Landroid/widget/Button;

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->a:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v1, "id"

    const-string v2, "btn_orderinfo2_pay_main"

    invoke-static {v0, v1, v2}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->b:Landroid/widget/Button;

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->b:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->a:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->b:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    sget-object v0, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v1, "id"

    const-string v2, "btn_change_pay_man"

    invoke-static {v0, v1, v2}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->c:Landroid/widget/Button;

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->c:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v1, "id"

    const-string v2, "rl_user_pay_main"

    invoke-static {v0, v1, v2}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->c:Landroid/widget/RelativeLayout;

    sget-object v0, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v1, "id"

    const-string v2, "rl_user_tel_pay_main"

    invoke-static {v0, v1, v2}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->f:Landroid/widget/RelativeLayout;

    sget-object v0, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v1, "id"

    const-string v2, "et_user_tel_content_pay_main"

    invoke-static {v0, v1, v2}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->c:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFocusable(Z)V

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->c:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->a:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v1, "id"

    const-string v2, "et_user_input_content_content_pay_main"

    invoke-static {v0, v1, v2}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->a:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFocusable(Z)V

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->a:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->a:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->a:Landroid/widget/EditText;

    new-instance v1, Lcom/unionpay/upomp/bypay/other/bu;

    invoke-direct {v1, p0}, Lcom/unionpay/upomp/bypay/other/bu;-><init>(Lcom/unionpay/upomp/bypay/activity/PayMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v1, "id"

    const-string v2, "ib_info_pay_main"

    invoke-static {v0, v1, v2}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->a:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->a:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->a:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setFocusable(Z)V

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->a:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->a:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->a:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v1, "id"

    const-string v2, "et_user_webvalidcode_content_pay_normal"

    invoke-static {v0, v1, v2}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->b:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFocusable(Z)V

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->b:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->a:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v1, "id"

    const-string v2, "iv_user_webvalidcode_content_pay_normal"

    invoke-static {v0, v1, v2}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sput-object v0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setFocusable(Z)V

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setFocusableInTouchMode(Z)V

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->a:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v1, "id"

    const-string v2, "p_user_webvalidcode_content_pay_normal"

    invoke-static {v0, v1, v2}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    sput-object v0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->a:Landroid/widget/ProgressBar;

    sget-object v0, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v1, "id"

    const-string v2, "btn_user_input_content_next_pay_man"

    invoke-static {v0, v1, v2}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->d:Landroid/widget/Button;

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->d:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v1, "id"

    const-string v2, "rl_login_pay_main"

    invoke-static {v0, v1, v2}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->j:Landroid/widget/RelativeLayout;

    sget-object v0, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v1, "id"

    const-string v2, "et_login_name_content_content_pay_main"

    invoke-static {v0, v1, v2}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->d:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFocusable(Z)V

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->d:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->a:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v1, "id"

    const-string v2, "btn_login_psw_content_content_pay_main"

    invoke-static {v0, v1, v2}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->e:Landroid/widget/Button;

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->e:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setFocusable(Z)V

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->e:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->e:Landroid/widget/Button;

    iget-object v1, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->a:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->e:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v1, "id"

    const-string v2, "btn_getpass_pay_main"

    invoke-static {v0, v1, v2}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->f:Landroid/widget/Button;

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->f:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setFocusable(Z)V

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->f:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->f:Landroid/widget/Button;

    iget-object v1, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->a:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->f:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v1, "id"

    const-string v2, "et_login_webvalidcode_content_pay_normal"

    invoke-static {v0, v1, v2}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->e:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFocusable(Z)V

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->e:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->a:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v1, "id"

    const-string v2, "iv_login_webvalidcode_content_pay_normal"

    invoke-static {v0, v1, v2}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sput-object v0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setFocusable(Z)V

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setFocusableInTouchMode(Z)V

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->a:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v1, "id"

    const-string v2, "p_login_webvalidcode_content_pay_normal"

    invoke-static {v0, v1, v2}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    sput-object v0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->b:Landroid/widget/ProgressBar;

    sget-object v0, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v1, "id"

    const-string v2, "btn_user_login_content_next_pay_man"

    invoke-static {v0, v1, v2}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->g:Landroid/widget/Button;

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->g:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v1, "id"

    const-string v2, "btn_esc_pay_main"

    invoke-static {v0, v1, v2}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->h:Landroid/widget/Button;

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->h:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v1, "id"

    const-string v2, "rl_user_input_content_pay_main"

    invoke-static {v0, v1, v2}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->d:Landroid/widget/RelativeLayout;

    sget-object v0, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v1, "id"

    const-string v2, "rl_user_webvalidcode_pay_normal"

    invoke-static {v0, v1, v2}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->e:Landroid/widget/RelativeLayout;

    sget-object v0, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v1, "id"

    const-string v2, "rl_login_name_content_pay_main"

    invoke-static {v0, v1, v2}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->g:Landroid/widget/RelativeLayout;

    sget-object v0, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v1, "id"

    const-string v2, "rl_login_psw_content_pay_main"

    invoke-static {v0, v1, v2}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->h:Landroid/widget/RelativeLayout;

    sget-object v0, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v1, "id"

    const-string v2, "rl_login_webvalidcode_pay_normal"

    invoke-static {v0, v1, v2}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->i:Landroid/widget/RelativeLayout;

    iget v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->b:I

    invoke-direct {p0, v0}, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->a(I)V

    return-void
.end method

.method private b(I)V
    .locals 4

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->d:Landroid/widget/RelativeLayout;

    sget-object v1, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v2, "drawable"

    const-string v3, "upomp_bypay_input_bg_on"

    invoke-static {v1, v2, v3}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    :goto_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->e:Landroid/widget/RelativeLayout;

    sget-object v1, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v2, "drawable"

    const-string v3, "upomp_bypay_input_bg_on"

    invoke-static {v1, v2, v3}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    :goto_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->g:Landroid/widget/RelativeLayout;

    sget-object v1, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v2, "drawable"

    const-string v3, "upomp_bypay_input_bg_on"

    invoke-static {v1, v2, v3}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    :goto_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->h:Landroid/widget/RelativeLayout;

    sget-object v1, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v2, "drawable"

    const-string v3, "upomp_bypay_input_bg_on"

    invoke-static {v1, v2, v3}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    :goto_3
    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->i:Landroid/widget/RelativeLayout;

    sget-object v1, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v2, "drawable"

    const-string v3, "upomp_bypay_input_bg_on"

    invoke-static {v1, v2, v3}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    :goto_4
    const/4 v0, 0x5

    if-ne p1, v0, :cond_5

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->f:Landroid/widget/RelativeLayout;

    sget-object v1, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v2, "drawable"

    const-string v3, "upomp_bypay_input_bg_on"

    invoke-static {v1, v2, v3}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    :goto_5
    return-void

    :cond_0
    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->d:Landroid/widget/RelativeLayout;

    sget-object v1, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v2, "drawable"

    const-string v3, "upomp_bypay_input_bg"

    invoke-static {v1, v2, v3}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->e:Landroid/widget/RelativeLayout;

    sget-object v1, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v2, "drawable"

    const-string v3, "upomp_bypay_input_bg"

    invoke-static {v1, v2, v3}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->g:Landroid/widget/RelativeLayout;

    sget-object v1, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v2, "drawable"

    const-string v3, "upomp_bypay_input_bg"

    invoke-static {v1, v2, v3}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->h:Landroid/widget/RelativeLayout;

    sget-object v1, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v2, "drawable"

    const-string v3, "upomp_bypay_input_bg"

    invoke-static {v1, v2, v3}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->i:Landroid/widget/RelativeLayout;

    sget-object v1, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v2, "drawable"

    const-string v3, "upomp_bypay_input_bg"

    invoke-static {v1, v2, v3}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->f:Landroid/widget/RelativeLayout;

    sget-object v1, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v2, "drawable"

    const-string v3, "upomp_bypay_input_bg"

    invoke-static {v1, v2, v3}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto :goto_5
.end method

.method public static synthetic b(Lcom/unionpay/upomp/bypay/activity/PayMainActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->c:Z

    return-void
.end method

.method public static synthetic b(Lcom/unionpay/upomp/bypay/activity/PayMainActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->c:Z

    return v0
.end method

.method public static synthetic c(Lcom/unionpay/upomp/bypay/activity/PayMainActivity;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->d:Landroid/widget/EditText;

    return-object v0
.end method

.method public static synthetic d(Lcom/unionpay/upomp/bypay/activity/PayMainActivity;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->e:Landroid/widget/EditText;

    return-object v0
.end method

.method public static synthetic e(Lcom/unionpay/upomp/bypay/activity/PayMainActivity;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->c:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/16 v1, 0x8

    const/4 v6, 0x0

    invoke-static {}, Lcom/unionpay/upomp/bypay/util/Utils;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->a:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    iput-boolean v4, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->a:Z

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->a:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->b:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->b:Landroid/widget/Button;

    if-ne p1, v0, :cond_3

    iput-boolean v6, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->a:Z

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->a:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->b:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->c:Landroid/widget/Button;

    if-ne p1, v0, :cond_5

    iget v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->b:I

    iget v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->b:I

    if-le v0, v4, :cond_4

    iput v6, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->b:I

    :cond_4
    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/aC;->K:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/aC;->L:Ljava/lang/String;

    iget v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->b:I

    invoke-direct {p0, v0}, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->a(I)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->d:Landroid/widget/Button;

    if-ne p1, v0, :cond_b

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object v0, Lcom/unionpay/upomp/bypay/other/aC;->K:Ljava/lang/String;

    :cond_6
    const-string v2, " "

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/unionpay/upomp/bypay/util/Utils;->u(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    sget-object v0, Lcom/unionpay/upomp/bypay/other/aC;->L:Ljava/lang/String;

    :goto_1
    invoke-static {v0}, Lcom/unionpay/upomp/bypay/util/Utils;->m(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->b:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unionpay/upomp/bypay/util/Utils;->p(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_7
    sget-object v1, Lcom/unionpay/upomp/bypay/other/aC;->K:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    sget-object v1, Lcom/unionpay/upomp/bypay/other/aC;->L:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    sget-boolean v0, Lcom/unionpay/upomp/bypay/other/aC;->w:Z

    if-nez v0, :cond_9

    sget-object v0, Lcom/unionpay/upomp/bypay/other/aC;->N:Ljava/lang/String;

    const-string v1, "\u4fe1\u7528\u5361"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/unionpay/upomp/bypay/other/aC;->a:Landroid/content/Context;

    const-class v2, Lcom/unionpay/upomp/bypay/activity/PayUserCreditActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v1, Lcom/unionpay/upomp/bypay/other/aC;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/other/aC;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    :cond_8
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/unionpay/upomp/bypay/other/aC;->a:Landroid/content/Context;

    const-class v2, Lcom/unionpay/upomp/bypay/activity/PayUserDebitActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v1, Lcom/unionpay/upomp/bypay/other/aC;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/other/aC;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    :cond_9
    invoke-static {}, Lcom/unionpay/upomp/bypay/util/Utils;->a()V

    new-instance v0, Lcom/unionpay/upomp/bypay/other/av;

    invoke-direct {v0, p0}, Lcom/unionpay/upomp/bypay/other/av;-><init>(Lcom/unionpay/upomp/bypay/activity/PayMainActivity;)V

    new-array v1, v6, [Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/unionpay/upomp/bypay/other/av;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    :cond_a
    new-instance v0, Lcom/unionpay/upomp/bypay/other/bI;

    invoke-direct {v0, p0}, Lcom/unionpay/upomp/bypay/other/bI;-><init>(Lcom/unionpay/upomp/bypay/activity/PayMainActivity;)V

    new-array v1, v6, [Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/unionpay/upomp/bypay/other/bI;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    :cond_b
    sget-object v0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->a:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_c

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->a:Landroid/widget/ImageView;

    sget-object v1, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->a:Landroid/widget/ProgressBar;

    invoke-static {v0, v1}, Lcom/unionpay/upomp/bypay/util/Utils;->a(Landroid/widget/ImageView;Landroid/widget/ProgressBar;)V

    goto/16 :goto_0

    :cond_c
    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->e:Landroid/widget/Button;

    if-ne p1, v0, :cond_d

    sget-object v0, Lcom/unionpay/upomp/bypay/other/aC;->a:Landroid/content/Context;

    sget-object v1, Lcom/unionpay/upomp/bypay/other/aC;->a:Landroid/app/Activity;

    sget-object v2, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v3, "id"

    const-string v6, "btn_login_psw_content_content_pay_main"

    invoke-static {v2, v3, v6}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    sget-object v2, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v3, "id"

    const-string v6, "btn_login_psw_content_content_pay_main"

    invoke-static {v2, v3, v6}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0xc

    invoke-virtual {p0}, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget-object v7, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v8, "string"

    const-string v9, "upomp_bypay_utils_cardpsw_hint"

    invoke-static {v7, v8, v9}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v6, v5

    invoke-static/range {v0 .. v7}, Lcom/unionpay/upomp/bypay/util/Utils;->a(Landroid/content/Context;Landroid/view/View;IIZLandroid/widget/EditText;Landroid/widget/Button;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    sget-object v0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->b:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_e

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->b:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->b:Landroid/widget/ImageView;

    sget-object v1, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->b:Landroid/widget/ProgressBar;

    invoke-static {v0, v1}, Lcom/unionpay/upomp/bypay/util/Utils;->a(Landroid/widget/ImageView;Landroid/widget/ProgressBar;)V

    goto/16 :goto_0

    :cond_e
    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->g:Landroid/widget/Button;

    if-ne p1, v0, :cond_12

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->a:I

    if-ne v1, v4, :cond_f

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    :cond_f
    invoke-static {v0}, Lcom/unionpay/upomp/bypay/util/Utils;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_10
    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->e:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unionpay/upomp/bypay/util/Utils;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->c:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unionpay/upomp/bypay/util/Utils;->p(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_11
    new-instance v0, Lcom/unionpay/upomp/bypay/other/aS;

    invoke-direct {v0, p0}, Lcom/unionpay/upomp/bypay/other/aS;-><init>(Lcom/unionpay/upomp/bypay/activity/PayMainActivity;)V

    new-array v1, v6, [Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/unionpay/upomp/bypay/other/aS;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    :cond_12
    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->h:Landroid/widget/Button;

    if-ne p1, v0, :cond_13

    invoke-static {}, Lcom/unionpay/upomp/bypay/util/Utils;->b()V

    goto/16 :goto_0

    :cond_13
    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->a:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_14

    const-string v0, "1"

    sput-object v0, Lcom/unionpay/upomp/bypay/other/aC;->z:Ljava/lang/String;

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/unionpay/upomp/bypay/other/aC;->a:Landroid/content/Context;

    const-class v2, Lcom/unionpay/upomp/bypay/activity/SupportActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v1, Lcom/unionpay/upomp/bypay/other/aC;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_14
    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->f:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/unionpay/upomp/bypay/other/aC;->a:Landroid/content/Context;

    const-class v2, Lcom/unionpay/upomp/bypay/activity/GetpassActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v1, Lcom/unionpay/upomp/bypay/other/aC;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/other/aC;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    :cond_15
    move-object v0, v1

    goto/16 :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v1, "layout"

    const-string v2, "upomp_bypay_pay_main"

    invoke-static {v0, v1, v2}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->setContentView(I)V

    sput-object p0, Lcom/unionpay/upomp/bypay/other/aC;->a:Landroid/content/Context;

    sput-object p0, Lcom/unionpay/upomp/bypay/other/aC;->a:Landroid/app/Activity;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/unionpay/upomp/bypay/other/aC;->i:Z

    invoke-direct {p0}, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->b()V

    invoke-direct {p0}, Lcom/unionpay/upomp/bypay/activity/PayMainActivity;->a()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/unionpay/upomp/bypay/util/Utils;->b()V

    :cond_0
    return v1
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/unionpay/upomp/bypay/other/aC;->c:Z

    return-void
.end method
