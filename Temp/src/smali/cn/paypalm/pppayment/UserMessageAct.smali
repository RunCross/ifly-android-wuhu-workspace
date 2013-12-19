.class public Lcn/paypalm/pppayment/UserMessageAct;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field private C:Ljava/lang/String;

.field private D:Z

.field private E:Z

.field private F:Z

.field private G:Z

.field private H:Z

.field private I:Lcn/paypalm/pppayment/b;

.field private J:Ljava/lang/String;

.field private K:[Ljava/lang/String;

.field private L:Lcn/paypalm/pppayment/w;

.field private M:Ljava/lang/Runnable;

.field private N:Landroid/os/Handler;

.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:Landroid/widget/EditText;

.field private f:Landroid/widget/EditText;

.field private g:Landroid/widget/EditText;

.field private h:Landroid/widget/EditText;

.field private i:Landroid/widget/EditText;

.field private j:Landroid/widget/Button;

.field private k:Landroid/widget/Button;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/LinearLayout;

.field private o:Landroid/widget/CheckBox;

.field private p:Landroid/app/ProgressDialog;

.field private q:Landroid/app/Dialog;

.field private r:Landroid/widget/RelativeLayout;

.field private s:Ljava/util/ArrayList;

.field private t:Lcn/paypalm/pppayment/global/a;

.field private u:Lcn/paypalm/pppayment/global/b;

.field private v:Lcn/paypalm/pppayment/global/Tools;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->w:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->x:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->y:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->z:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->A:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->B:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->C:Ljava/lang/String;

    iput-boolean v1, p0, Lcn/paypalm/pppayment/UserMessageAct;->D:Z

    iput-boolean v1, p0, Lcn/paypalm/pppayment/UserMessageAct;->E:Z

    iput-boolean v1, p0, Lcn/paypalm/pppayment/UserMessageAct;->F:Z

    iput-boolean v1, p0, Lcn/paypalm/pppayment/UserMessageAct;->G:Z

    iput-boolean v1, p0, Lcn/paypalm/pppayment/UserMessageAct;->H:Z

    new-instance v0, Lcn/paypalm/pppayment/al;

    invoke-direct {v0, p0}, Lcn/paypalm/pppayment/al;-><init>(Lcn/paypalm/pppayment/UserMessageAct;)V

    iput-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->M:Ljava/lang/Runnable;

    new-instance v0, Lcn/paypalm/pppayment/am;

    invoke-direct {v0, p0}, Lcn/paypalm/pppayment/am;-><init>(Lcn/paypalm/pppayment/UserMessageAct;)V

    iput-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->N:Landroid/os/Handler;

    return-void
.end method

.method static synthetic A(Lcn/paypalm/pppayment/UserMessageAct;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->e:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic B(Lcn/paypalm/pppayment/UserMessageAct;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->w:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic C(Lcn/paypalm/pppayment/UserMessageAct;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->y:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic D(Lcn/paypalm/pppayment/UserMessageAct;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->z:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic E(Lcn/paypalm/pppayment/UserMessageAct;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->j:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic F(Lcn/paypalm/pppayment/UserMessageAct;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->g:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic G(Lcn/paypalm/pppayment/UserMessageAct;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->h:Landroid/widget/EditText;

    return-object v0
.end method

.method private a(Ljava/lang/String;)I
    .locals 6

    const/4 v0, 0x0

    const/4 v1, -0x1

    iget-object v2, p0, Lcn/paypalm/pppayment/UserMessageAct;->t:Lcn/paypalm/pppayment/global/a;

    invoke-virtual {v2, p1}, Lcn/paypalm/pppayment/global/a;->w(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/paypalm/pppayment/UserMessageAct;->t:Lcn/paypalm/pppayment/global/a;

    const-string v3, "190004"

    invoke-virtual {v2, v3}, Lcn/paypalm/pppayment/global/a;->a(Ljava/lang/String;)V

    const-string v2, "{\'opcode\':\'%s\',\'reqflag\':\'%s\',\'authcode\':\'%s\'}"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcn/paypalm/pppayment/UserMessageAct;->t:Lcn/paypalm/pppayment/global/a;

    invoke-virtual {v4}, Lcn/paypalm/pppayment/global/a;->a()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v4, 0x1

    iget-object v5, p0, Lcn/paypalm/pppayment/UserMessageAct;->t:Lcn/paypalm/pppayment/global/a;

    invoke-virtual {v5}, Lcn/paypalm/pppayment/global/a;->y()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lcn/paypalm/pppayment/UserMessageAct;->t:Lcn/paypalm/pppayment/global/a;

    invoke-virtual {v5}, Lcn/paypalm/pppayment/global/a;->l()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/paypalm/pppayment/UserMessageAct;->v:Lcn/paypalm/pppayment/global/Tools;

    invoke-virtual {v3, p0, v2}, Lcn/paypalm/pppayment/global/Tools;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "\u8bf7\u6c42\u5931\u8d25!"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/16 v0, -0xa

    :goto_0
    return v0

    :cond_1
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/paypalm/pppayment/UserMessageAct;->u:Lcn/paypalm/pppayment/global/b;

    const-string v4, "tranresult"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcn/paypalm/pppayment/global/b;->a(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/paypalm/pppayment/UserMessageAct;->u:Lcn/paypalm/pppayment/global/b;

    const-string v4, "resultinfo"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcn/paypalm/pppayment/global/b;->b(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/paypalm/pppayment/UserMessageAct;->u:Lcn/paypalm/pppayment/global/b;

    invoke-virtual {v2}, Lcn/paypalm/pppayment/global/b;->a()Ljava/lang/String;

    move-result-object v2

    const-string v4, "000000"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v1, p0, Lcn/paypalm/pppayment/UserMessageAct;->u:Lcn/paypalm/pppayment/global/b;

    const-string v2, "secondreqflag"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/paypalm/pppayment/global/b;->M(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const/16 v0, -0xb

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->u:Lcn/paypalm/pppayment/global/b;

    invoke-virtual {v0}, Lcn/paypalm/pppayment/global/b;->a()Ljava/lang/String;

    move-result-object v0

    const-string v2, "2P5025"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->u:Lcn/paypalm/pppayment/global/b;

    const-string v2, "verifyresultflag"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/paypalm/pppayment/global/b;->N(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcn/paypalm/pppayment/UserMessageAct;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->k:Landroid/widget/Button;

    return-object v0
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->l:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->m:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->j:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->k:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->f:Landroid/widget/EditText;

    new-instance v1, Lcn/paypalm/pppayment/an;

    invoke-direct {v1, p0}, Lcn/paypalm/pppayment/an;-><init>(Lcn/paypalm/pppayment/UserMessageAct;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->e:Landroid/widget/EditText;

    new-instance v1, Lcn/paypalm/pppayment/ae;

    invoke-direct {v1, p0}, Lcn/paypalm/pppayment/ae;-><init>(Lcn/paypalm/pppayment/UserMessageAct;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->g:Landroid/widget/EditText;

    new-instance v1, Lcn/paypalm/pppayment/ah;

    invoke-direct {v1, p0}, Lcn/paypalm/pppayment/ah;-><init>(Lcn/paypalm/pppayment/UserMessageAct;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->h:Landroid/widget/EditText;

    new-instance v1, Lcn/paypalm/pppayment/ai;

    invoke-direct {v1, p0}, Lcn/paypalm/pppayment/ai;-><init>(Lcn/paypalm/pppayment/UserMessageAct;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method private a(I)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->h:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private a(IZ)V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcn/paypalm/pppayment/UserMessageAct;->N:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const-string v2, "iResult"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "isShowAuth"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    const v0, 0x1adb3

    iput v0, v1, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->N:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private a(Landroid/app/AlertDialog$Builder;)V
    .locals 1

    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->q:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->q:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->q:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->q:Landroid/app/Dialog;

    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->p:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->p:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->p:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_1
    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->q:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private a(Landroid/os/Bundle;Landroid/os/Message;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    const-string v0, "title"

    invoke-virtual {p1, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text"

    invoke-virtual {p1, v0, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "requestFocus"

    invoke-virtual {p1, v0, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p2, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->N:Landroid/os/Handler;

    invoke-virtual {v0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private a(Landroid/widget/EditText;Landroid/text/Editable;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcn/paypalm/pppayment/UserMessageAct;->D:Z

    iget-boolean v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->E:Z

    if-eqz v0, :cond_0

    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->G:Z

    if-eqz v0, :cond_4

    :cond_1
    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_3

    iget-boolean v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->E:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->e:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->g:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->h:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->i:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    iput-boolean v2, p0, Lcn/paypalm/pppayment/UserMessageAct;->E:Z

    iput-boolean v2, p0, Lcn/paypalm/pppayment/UserMessageAct;->F:Z

    iput-boolean v2, p0, Lcn/paypalm/pppayment/UserMessageAct;->G:Z

    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->r:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_4
    return-void
.end method

.method static synthetic a(Lcn/paypalm/pppayment/UserMessageAct;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/paypalm/pppayment/UserMessageAct;->a(I)V

    return-void
.end method

.method static synthetic a(Lcn/paypalm/pppayment/UserMessageAct;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/paypalm/pppayment/UserMessageAct;->b(IZ)V

    return-void
.end method

.method static synthetic a(Lcn/paypalm/pppayment/UserMessageAct;Landroid/app/AlertDialog$Builder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/paypalm/pppayment/UserMessageAct;->a(Landroid/app/AlertDialog$Builder;)V

    return-void
.end method

.method static synthetic a(Lcn/paypalm/pppayment/UserMessageAct;Landroid/os/Bundle;Landroid/os/Message;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcn/paypalm/pppayment/UserMessageAct;->a(Landroid/os/Bundle;Landroid/os/Message;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic a(Lcn/paypalm/pppayment/UserMessageAct;Landroid/widget/EditText;Landroid/text/Editable;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcn/paypalm/pppayment/UserMessageAct;->a(Landroid/widget/EditText;Landroid/text/Editable;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcn/paypalm/pppayment/UserMessageAct;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/paypalm/pppayment/UserMessageAct;->B:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcn/paypalm/pppayment/UserMessageAct;Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/paypalm/pppayment/UserMessageAct;->D:Z

    return-void
.end method

.method private a(Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V
    .locals 1

    const-string v0, ") and ((body like ?) or (body like ?)) and (type=?)"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ",%\u652f\u4ed8%"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ",%\u9a8c\u8bc1\u7801%"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ",1"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method static synthetic b(Lcn/paypalm/pppayment/UserMessageAct;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->N:Landroid/os/Handler;

    return-object v0
.end method

.method private b()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v0, "zsht_authcodeLayout"

    invoke-static {p0, v0, v3}, Lcn/paypalm/pppayment/global/Tools;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcn/paypalm/pppayment/UserMessageAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->r:Landroid/widget/RelativeLayout;

    const-string v0, "zsht_layout_agreement"

    invoke-static {p0, v0, v3}, Lcn/paypalm/pppayment/global/Tools;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcn/paypalm/pppayment/UserMessageAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->n:Landroid/widget/LinearLayout;

    const-string v0, "zsht_bt_user_message_getAuthCode"

    invoke-static {p0, v0, v3}, Lcn/paypalm/pppayment/global/Tools;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->a:I

    const-string v0, "zsht_bt_user_message_confirm"

    invoke-static {p0, v0, v3}, Lcn/paypalm/pppayment/global/Tools;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->b:I

    const-string v0, "zsht_ed_user_message_bankcard_card_number"

    invoke-static {p0, v0, v3}, Lcn/paypalm/pppayment/global/Tools;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcn/paypalm/pppayment/UserMessageAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->e:Landroid/widget/EditText;

    const-string v0, "zsht_ed_user_message_phone_number"

    invoke-static {p0, v0, v3}, Lcn/paypalm/pppayment/global/Tools;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcn/paypalm/pppayment/UserMessageAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->f:Landroid/widget/EditText;

    const-string v0, "zsht_ed_user_message_IDnumber"

    invoke-static {p0, v0, v3}, Lcn/paypalm/pppayment/global/Tools;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcn/paypalm/pppayment/UserMessageAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->g:Landroid/widget/EditText;

    const-string v0, "zsht_ed_user_message_realName"

    invoke-static {p0, v0, v3}, Lcn/paypalm/pppayment/global/Tools;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcn/paypalm/pppayment/UserMessageAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->h:Landroid/widget/EditText;

    const-string v0, "zsht_ed_user_message_authCode"

    invoke-static {p0, v0, v3}, Lcn/paypalm/pppayment/global/Tools;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcn/paypalm/pppayment/UserMessageAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->i:Landroid/widget/EditText;

    iget v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->b:I

    invoke-virtual {p0, v0}, Lcn/paypalm/pppayment/UserMessageAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->j:Landroid/widget/Button;

    iget v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->a:I

    invoke-virtual {p0, v0}, Lcn/paypalm/pppayment/UserMessageAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->k:Landroid/widget/Button;

    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->r:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const-string v0, "zsht_tv_pay_orderInfo"

    invoke-static {p0, v0, v3}, Lcn/paypalm/pppayment/global/Tools;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcn/paypalm/pppayment/UserMessageAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "zsht_tv_pay_orderAmt"

    invoke-static {p0, v1, v3}, Lcn/paypalm/pppayment/global/Tools;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcn/paypalm/pppayment/UserMessageAct;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "zsht_tv_bankcard_agreement"

    invoke-static {p0, v2, v3}, Lcn/paypalm/pppayment/global/Tools;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcn/paypalm/pppayment/UserMessageAct;->c:I

    iget v2, p0, Lcn/paypalm/pppayment/UserMessageAct;->c:I

    invoke-virtual {p0, v2}, Lcn/paypalm/pppayment/UserMessageAct;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcn/paypalm/pppayment/UserMessageAct;->l:Landroid/widget/TextView;

    const-string v2, "zsht_tv_user_message_back"

    invoke-static {p0, v2, v3}, Lcn/paypalm/pppayment/global/Tools;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcn/paypalm/pppayment/UserMessageAct;->d:I

    iget v2, p0, Lcn/paypalm/pppayment/UserMessageAct;->d:I

    invoke-virtual {p0, v2}, Lcn/paypalm/pppayment/UserMessageAct;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcn/paypalm/pppayment/UserMessageAct;->m:Landroid/widget/TextView;

    const-string v2, "zsht_cb_bankcard_agreement"

    invoke-static {p0, v2, v3}, Lcn/paypalm/pppayment/global/Tools;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcn/paypalm/pppayment/UserMessageAct;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcn/paypalm/pppayment/UserMessageAct;->o:Landroid/widget/CheckBox;

    new-instance v2, Lcn/paypalm/pppayment/global/Tools;

    invoke-direct {v2}, Lcn/paypalm/pppayment/global/Tools;-><init>()V

    iput-object v2, p0, Lcn/paypalm/pppayment/UserMessageAct;->v:Lcn/paypalm/pppayment/global/Tools;

    iget-object v2, p0, Lcn/paypalm/pppayment/UserMessageAct;->u:Lcn/paypalm/pppayment/global/b;

    invoke-virtual {v2}, Lcn/paypalm/pppayment/global/b;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "\u91d1\u989d: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/paypalm/pppayment/UserMessageAct;->u:Lcn/paypalm/pppayment/global/b;

    invoke-virtual {v2}, Lcn/paypalm/pppayment/global/b;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " \u5143"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->p:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->p:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->p:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->p:Landroid/app/ProgressDialog;

    new-instance v1, Lcn/paypalm/pppayment/aj;

    invoke-direct {v1, p0}, Lcn/paypalm/pppayment/aj;-><init>(Lcn/paypalm/pppayment/UserMessageAct;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-direct {p0}, Lcn/paypalm/pppayment/UserMessageAct;->c()V

    return-void
.end method

.method private b(I)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    iput-boolean v3, p0, Lcn/paypalm/pppayment/UserMessageAct;->F:Z

    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->t:Lcn/paypalm/pppayment/global/a;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcn/paypalm/pppayment/global/a;->x(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->u:Lcn/paypalm/pppayment/global/b;

    invoke-virtual {v0}, Lcn/paypalm/pppayment/global/b;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "2P5028"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcn/paypalm/pppayment/UserMessageAct;->G:Z

    invoke-direct {p0, p1, v2}, Lcn/paypalm/pppayment/UserMessageAct;->a(IZ)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->u:Lcn/paypalm/pppayment/global/b;

    invoke-virtual {v0}, Lcn/paypalm/pppayment/global/b;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "2P5025"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v2, p0, Lcn/paypalm/pppayment/UserMessageAct;->G:Z

    invoke-direct {p0, p1, v2}, Lcn/paypalm/pppayment/UserMessageAct;->a(IZ)V

    goto :goto_0

    :cond_1
    iput-boolean v3, p0, Lcn/paypalm/pppayment/UserMessageAct;->G:Z

    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->L:Lcn/paypalm/pppayment/w;

    invoke-virtual {v0}, Lcn/paypalm/pppayment/w;->run()V

    goto :goto_0
.end method

.method private b(IZ)V
    .locals 6

    const-string v0, "\u9519\u8bef"

    iput-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->B:Ljava/lang/String;

    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->u:Lcn/paypalm/pppayment/global/b;

    invoke-virtual {v0}, Lcn/paypalm/pppayment/global/b;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->C:Ljava/lang/String;

    const-string v0, "-1"

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcn/paypalm/pppayment/UserMessageAct;->r:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_0
    if-nez p1, :cond_2

    iget-object v1, p0, Lcn/paypalm/pppayment/UserMessageAct;->u:Lcn/paypalm/pppayment/global/b;

    invoke-virtual {v1}, Lcn/paypalm/pppayment/global/b;->u()Ljava/lang/String;

    move-result-object v1

    const-string v2, "5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "\u6b64\u5361\u5df2\u51bb\u7ed3"

    iput-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->B:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u6dfb\u52a0\u94f6\u884c\u5361\u5df2\u6210\u529f\uff0c\u4f46\u94f6\u884c\u5361"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/paypalm/pppayment/UserMessageAct;->u:Lcn/paypalm/pppayment/global/b;

    invoke-virtual {v1}, Lcn/paypalm/pppayment/global/b;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u5df2\u51bb\u7ed3\uff0c\u8bf7\u4f7f\u7528\u5176\u4ed6\u94f6\u884c\u5361\u652f\u4ed8\uff01"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->C:Ljava/lang/String;

    const-string v0, "0"

    :cond_1
    :goto_0
    iget-object v1, p0, Lcn/paypalm/pppayment/UserMessageAct;->C:Ljava/lang/String;

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcn/paypalm/pppayment/UserMessageAct;->B:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcn/paypalm/pppayment/UserMessageAct;->C:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const-string v4, "\u786e\u5b9a"

    new-instance v5, Lcn/paypalm/pppayment/ab;

    invoke-direct {v5, p0, v0, v1}, Lcn/paypalm/pppayment/ab;-><init>(Lcn/paypalm/pppayment/UserMessageAct;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcn/paypalm/pppayment/y;

    invoke-direct {v1, p0}, Lcn/paypalm/pppayment/y;-><init>(Lcn/paypalm/pppayment/UserMessageAct;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-direct {p0, v2}, Lcn/paypalm/pppayment/UserMessageAct;->a(Landroid/app/AlertDialog$Builder;)V

    return-void

    :cond_2
    const/4 v1, -0x1

    if-ne p1, v1, :cond_6

    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->v:Lcn/paypalm/pppayment/global/Tools;

    iget-object v1, p0, Lcn/paypalm/pppayment/UserMessageAct;->u:Lcn/paypalm/pppayment/global/b;

    invoke-virtual {v1}, Lcn/paypalm/pppayment/global/b;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/paypalm/pppayment/UserMessageAct;->s:Ljava/util/ArrayList;

    iget-object v3, p0, Lcn/paypalm/pppayment/UserMessageAct;->u:Lcn/paypalm/pppayment/global/b;

    invoke-virtual {v0, p0, v1, v2, v3}, Lcn/paypalm/pppayment/global/Tools;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Lcn/paypalm/pppayment/global/b;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->u:Lcn/paypalm/pppayment/global/b;

    iget-object v0, v0, Lcn/paypalm/pppayment/global/b;->a:Ljava/lang/String;

    iput-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->B:Ljava/lang/String;

    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->u:Lcn/paypalm/pppayment/global/b;

    iget-object v0, v0, Lcn/paypalm/pppayment/global/b;->b:Ljava/lang/String;

    iput-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->C:Ljava/lang/String;

    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->C:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->C:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->u:Lcn/paypalm/pppayment/global/b;

    invoke-virtual {v0}, Lcn/paypalm/pppayment/global/b;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->C:Ljava/lang/String;

    :cond_4
    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->u:Lcn/paypalm/pppayment/global/b;

    iget-object v0, v0, Lcn/paypalm/pppayment/global/b;->c:Ljava/lang/String;

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->u:Lcn/paypalm/pppayment/global/b;

    invoke-virtual {v0}, Lcn/paypalm/pppayment/global/b;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->C:Ljava/lang/String;

    const-string v0, "\u9519\u8bef"

    iput-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->B:Ljava/lang/String;

    const-string v0, "-1"

    goto :goto_0

    :cond_6
    const/16 v1, -0xa

    if-ne p1, v1, :cond_7

    const-string v1, "\u7f51\u7edc\u5f02\u5e38"

    iput-object v1, p0, Lcn/paypalm/pppayment/UserMessageAct;->B:Ljava/lang/String;

    const-string v1, "\u7f51\u7edc\u5f02\u5e38\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\u3002"

    iput-object v1, p0, Lcn/paypalm/pppayment/UserMessageAct;->C:Ljava/lang/String;

    goto/16 :goto_0

    :cond_7
    const/16 v1, -0xb

    if-ne p1, v1, :cond_8

    const-string v1, "\u9519\u8bef"

    iput-object v1, p0, Lcn/paypalm/pppayment/UserMessageAct;->B:Ljava/lang/String;

    const-string v1, "\u6570\u636e\u89e3\u6790\u5931\u8d25\uff01"

    iput-object v1, p0, Lcn/paypalm/pppayment/UserMessageAct;->C:Ljava/lang/String;

    goto/16 :goto_0

    :cond_8
    const-string v1, "\u9519\u8bef"

    iput-object v1, p0, Lcn/paypalm/pppayment/UserMessageAct;->B:Ljava/lang/String;

    const-string v1, "\u8bf7\u91cd\u65b0\u652f\u4ed8\uff01"

    iput-object v1, p0, Lcn/paypalm/pppayment/UserMessageAct;->C:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method static synthetic b(Lcn/paypalm/pppayment/UserMessageAct;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/paypalm/pppayment/UserMessageAct;->b(I)V

    return-void
.end method

.method static synthetic b(Lcn/paypalm/pppayment/UserMessageAct;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/paypalm/pppayment/UserMessageAct;->a(IZ)V

    return-void
.end method

.method static synthetic b(Lcn/paypalm/pppayment/UserMessageAct;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/paypalm/pppayment/UserMessageAct;->C:Ljava/lang/String;

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 10

    const/4 v9, 0x2

    const/4 v2, 0x0

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    array-length v5, v1

    move v0, v2

    :goto_0
    if-lt v0, v5, :cond_0

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, " ("

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    move v1, v2

    :goto_1
    if-lt v1, v7, :cond_2

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    move v1, v2

    :goto_2
    if-lt v1, v3, :cond_5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->J:Ljava/lang/String;

    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->K:[Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->K:[Ljava/lang/String;

    invoke-direct {p0}, Lcn/paypalm/pppayment/UserMessageAct;->o()V

    return-void

    :cond_0
    aget-object v6, v1, v0

    const-string v7, "*"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_1

    aget-object v6, v1, v0

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    aget-object v6, v1, v0

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_2
    const-string v0, "(address=?)"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-eq v1, v0, :cond_4

    const-string v0, " or "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ","

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    :goto_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_4
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0, v5, v6}, Lcn/paypalm/pppayment/UserMessageAct;->a(Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V

    goto :goto_4

    :cond_5
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-le v0, v9, :cond_6

    const-string v0, " or "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ","

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_6
    const-string v0, "(address like ? and address like ?)"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v7, "\\*"

    invoke-virtual {v0, v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    aget-object v8, v0, v2

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "%"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "%"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x1

    aget-object v0, v0, v8

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v1, v0, :cond_7

    invoke-direct {p0, v5, v6}, Lcn/paypalm/pppayment/UserMessageAct;->a(Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V

    :cond_7
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_2
.end method

.method static synthetic c(Lcn/paypalm/pppayment/UserMessageAct;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->M:Ljava/lang/Runnable;

    return-object v0
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v1, "\\d{6}|\\d{4}"

    const-string v0, ""

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->t:Lcn/paypalm/pppayment/global/a;

    invoke-virtual {v0}, Lcn/paypalm/pppayment/global/a;->k()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->t:Lcn/paypalm/pppayment/global/a;

    invoke-virtual {v0}, Lcn/paypalm/pppayment/global/a;->k()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->f:Landroid/widget/EditText;

    iget-object v1, p0, Lcn/paypalm/pppayment/UserMessageAct;->t:Lcn/paypalm/pppayment/global/a;

    invoke-virtual {v1}, Lcn/paypalm/pppayment/global/a;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->x:Ljava/lang/String;

    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->f:Landroid/widget/EditText;

    iget-object v1, p0, Lcn/paypalm/pppayment/UserMessageAct;->x:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_0
    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->u:Lcn/paypalm/pppayment/global/b;

    invoke-virtual {v0}, Lcn/paypalm/pppayment/global/b;->p()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->u:Lcn/paypalm/pppayment/global/b;

    invoke-virtual {v0}, Lcn/paypalm/pppayment/global/b;->u()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->e:Landroid/widget/EditText;

    iget-object v1, p0, Lcn/paypalm/pppayment/UserMessageAct;->u:Lcn/paypalm/pppayment/global/b;

    invoke-virtual {v1}, Lcn/paypalm/pppayment/global/b;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->g:Landroid/widget/EditText;

    iget-object v1, p0, Lcn/paypalm/pppayment/UserMessageAct;->u:Lcn/paypalm/pppayment/global/b;

    invoke-virtual {v1}, Lcn/paypalm/pppayment/global/b;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->h:Landroid/widget/EditText;

    iget-object v1, p0, Lcn/paypalm/pppayment/UserMessageAct;->u:Lcn/paypalm/pppayment/global/b;

    invoke-virtual {v1}, Lcn/paypalm/pppayment/global/b;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->E:Z

    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->w:Ljava/lang/String;

    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->y:Ljava/lang/String;

    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->h:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->z:Ljava/lang/String;

    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->e:Landroid/widget/EditText;

    iget-object v1, p0, Lcn/paypalm/pppayment/UserMessageAct;->w:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->g:Landroid/widget/EditText;

    iget-object v1, p0, Lcn/paypalm/pppayment/UserMessageAct;->g:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->h:Landroid/widget/EditText;

    iget-object v1, p0, Lcn/paypalm/pppayment/UserMessageAct;->h:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->i:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->n:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method static synthetic c(Lcn/paypalm/pppayment/UserMessageAct;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/paypalm/pppayment/UserMessageAct;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic d(Lcn/paypalm/pppayment/UserMessageAct;)Lcn/paypalm/pppayment/global/Tools;
    .locals 1

    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->v:Lcn/paypalm/pppayment/global/Tools;

    return-object v0
.end method

.method private d()V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->k:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcn/paypalm/pppayment/UserMessageAct;->k:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcn/paypalm/pppayment/UserMessageAct;->k:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setWidth(I)V

    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->k:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setHeight(I)V

    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->k:Landroid/widget/Button;

    const-string v1, "60"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->k:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->v:Lcn/paypalm/pppayment/global/Tools;

    iget-object v1, p0, Lcn/paypalm/pppayment/UserMessageAct;->f:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcn/paypalm/pppayment/global/Tools;->a(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->k:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setClickable(Z)V

    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->k:Landroid/widget/Button;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    :cond_0
    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->k:Landroid/widget/Button;

    const-string v1, "\u83b7\u53d6"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->k:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->k:Landroid/widget/Button;

    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->N:Landroid/os/Handler;

    iget-object v1, p0, Lcn/paypalm/pppayment/UserMessageAct;->M:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->N:Landroid/os/Handler;

    iget-object v1, p0, Lcn/paypalm/pppayment/UserMessageAct;->M:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method static synthetic d(Lcn/paypalm/pppayment/UserMessageAct;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/paypalm/pppayment/UserMessageAct;->x:Ljava/lang/String;

    return-void
.end method

.method static synthetic e(Lcn/paypalm/pppayment/UserMessageAct;Ljava/lang/String;)I
    .locals 1

    invoke-direct {p0, p1}, Lcn/paypalm/pppayment/UserMessageAct;->a(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic e(Lcn/paypalm/pppayment/UserMessageAct;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->f:Landroid/widget/EditText;

    return-object v0
.end method

.method private e()Z
    .locals 10

    const/4 v9, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->N:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const v0, 0x1adb4

    iput v0, v2, Landroid/os/Message;->what:I

    iget-boolean v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->F:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->i:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->A:Ljava/lang/String;

    :cond_0
    iget-boolean v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->E:Z

    if-nez v0, :cond_11

    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->w:Ljava/lang/String;

    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->x:Ljava/lang/String;

    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->y:Ljava/lang/String;

    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->h:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->z:Ljava/lang/String;

    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->w:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->x:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->y:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->z:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v3, "\u8f93\u5165\u9879\u4e0d\u80fd\u4e3a\u7a7a"

    const-string v4, "\u8bf7\u5b8c\u6210\u8f93\u5165\uff01"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcn/paypalm/pppayment/UserMessageAct;->a(Landroid/os/Bundle;Landroid/os/Message;Ljava/lang/String;Ljava/lang/String;I)V

    move v5, v6

    :cond_1
    :goto_0
    return v5

    :cond_2
    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->w:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v3, "\u94f6\u884c\u5361\u53f7\u4e0d\u80fd\u4e3a\u7a7a"

    const-string v4, "\u8bf7\u8f93\u5165\u94f6\u884c\u5361\u53f7\uff01"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcn/paypalm/pppayment/UserMessageAct;->a(Landroid/os/Bundle;Landroid/os/Message;Ljava/lang/String;Ljava/lang/String;I)V

    move v5, v6

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->y:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v3, "\u8eab\u4efd\u8bc1\u53f7\u4e0d\u80fd\u4e3a\u7a7a"

    const-string v4, "\u8bf7\u8f93\u5165\u5f00\u6237\u8eab\u4efd\u8bc1\u53f7\uff01"

    move-object v0, p0

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lcn/paypalm/pppayment/UserMessageAct;->a(Landroid/os/Bundle;Landroid/os/Message;Ljava/lang/String;Ljava/lang/String;I)V

    move v5, v6

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->z:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v3, "\u59d3\u540d\u4e0d\u80fd\u4e3a\u7a7a"

    const-string v4, "\u8bf7\u8f93\u5165\u5f00\u6237\u59d3\u540d\uff01"

    move-object v0, p0

    move v5, v9

    invoke-direct/range {v0 .. v5}, Lcn/paypalm/pppayment/UserMessageAct;->a(Landroid/os/Bundle;Landroid/os/Message;Ljava/lang/String;Ljava/lang/String;I)V

    move v5, v6

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->x:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v3, "\u624b\u673a\u53f7\u4e0d\u80fd\u4e3a\u7a7a"

    const-string v4, "\u8bf7\u8f93\u5165\u624b\u673a\u53f7\u7801\uff01"

    move-object v0, p0

    move v5, v8

    invoke-direct/range {v0 .. v5}, Lcn/paypalm/pppayment/UserMessageAct;->a(Landroid/os/Bundle;Landroid/os/Message;Ljava/lang/String;Ljava/lang/String;I)V

    move v5, v6

    goto :goto_0

    :cond_6
    iget-boolean v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->F:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->A:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v3, "\u77ed\u4fe1\u9a8c\u8bc1\u7801\u4e0d\u80fd\u4e3a\u7a7a"

    const-string v4, "\u8bf7\u8f93\u5165\u77ed\u4fe1\u9a8c\u8bc1\u7801\uff01"

    const/4 v5, 0x5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcn/paypalm/pppayment/UserMessageAct;->a(Landroid/os/Bundle;Landroid/os/Message;Ljava/lang/String;Ljava/lang/String;I)V

    move v5, v6

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->v:Lcn/paypalm/pppayment/global/Tools;

    iget-object v3, p0, Lcn/paypalm/pppayment/UserMessageAct;->w:Ljava/lang/String;

    invoke-virtual {v0, v3, v8}, Lcn/paypalm/pppayment/global/Tools;->a(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_8

    const-string v3, "\u94f6\u884c\u5361\u53f7\u9519\u8bef"

    const-string v4, "\u94f6\u884c\u5361\u53f7\u9519\u8bef,\u8bf7\u91cd\u65b0\u8f93\u5165"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcn/paypalm/pppayment/UserMessageAct;->a(Landroid/os/Bundle;Landroid/os/Message;Ljava/lang/String;Ljava/lang/String;I)V

    move v5, v6

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->y:Ljava/lang/String;

    iget-object v3, p0, Lcn/paypalm/pppayment/UserMessageAct;->y:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    iget-object v4, p0, Lcn/paypalm/pppayment/UserMessageAct;->y:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v3, "[^0-9]"

    invoke-virtual {v0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcn/paypalm/pppayment/UserMessageAct;->y:Ljava/lang/String;

    iget-object v4, p0, Lcn/paypalm/pppayment/UserMessageAct;->y:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "x"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->y:Ljava/lang/String;

    :cond_9
    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->v:Lcn/paypalm/pppayment/global/Tools;

    iget-object v3, p0, Lcn/paypalm/pppayment/UserMessageAct;->y:Ljava/lang/String;

    invoke-virtual {v0, v3, v6}, Lcn/paypalm/pppayment/global/Tools;->a(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_a

    const-string v3, "\u8eab\u4efd\u8bc1\u53f7\u9519\u8bef"

    const-string v4, "\u8eab\u4efd\u8bc1\u53f7\u9519\u8bef,\u8bf7\u91cd\u65b0\u8f93\u5165"

    move-object v0, p0

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lcn/paypalm/pppayment/UserMessageAct;->a(Landroid/os/Bundle;Landroid/os/Message;Ljava/lang/String;Ljava/lang/String;I)V

    move v5, v6

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->z:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v7, :cond_b

    const-string v3, "\u59d3\u540d\u9519\u8bef"

    const-string v4, "\u59d3\u540d\u957f\u5ea6\u5e94\u4e3a2-4\u4e2a\u6c49\u5b57"

    move-object v0, p0

    move v5, v9

    invoke-direct/range {v0 .. v5}, Lcn/paypalm/pppayment/UserMessageAct;->a(Landroid/os/Bundle;Landroid/os/Message;Ljava/lang/String;Ljava/lang/String;I)V

    move v5, v6

    goto/16 :goto_0

    :cond_b
    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->z:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    move v0, v6

    :goto_1
    if-lt v0, v3, :cond_c

    move v0, v5

    :goto_2
    if-nez v0, :cond_f

    const-string v3, "\u59d3\u540d\u9519\u8bef"

    const-string v4, "\u60a8\u8f93\u5165\u7684\u94f6\u884c\u5361\u6301\u5361\u4eba\u59d3\u540d\u6709\u8bef\uff0c\u8bf7\u91cd\u65b0\u8f93\u5165\uff01"

    move-object v0, p0

    move v5, v9

    invoke-direct/range {v0 .. v5}, Lcn/paypalm/pppayment/UserMessageAct;->a(Landroid/os/Bundle;Landroid/os/Message;Ljava/lang/String;Ljava/lang/String;I)V

    move v5, v6

    goto/16 :goto_0

    :cond_c
    iget-object v4, p0, Lcn/paypalm/pppayment/UserMessageAct;->z:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v7, 0x4e00

    if-lt v4, v7, :cond_d

    const v7, 0x9fff

    if-lt v4, v7, :cond_e

    :cond_d
    move v0, v6

    goto :goto_2

    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_f
    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->v:Lcn/paypalm/pppayment/global/Tools;

    iget-object v3, p0, Lcn/paypalm/pppayment/UserMessageAct;->x:Ljava/lang/String;

    invoke-virtual {v0, v3, v5}, Lcn/paypalm/pppayment/global/Tools;->a(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_10

    const-string v3, "\u65e0\u6548\u624b\u673a\u53f7\u7801"

    const-string v4, "\u624b\u673a\u53f7\u7801\u4e0d\u6b63\u786e\uff0c\u8bf7\u68c0\u67e5\uff01"

    move-object v0, p0

    move v5, v8

    invoke-direct/range {v0 .. v5}, Lcn/paypalm/pppayment/UserMessageAct;->a(Landroid/os/Bundle;Landroid/os/Message;Ljava/lang/String;Ljava/lang/String;I)V

    move v5, v6

    goto/16 :goto_0

    :cond_10
    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->o:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_12

    const-string v3, "\u8bf7\u52fe\u9009\u300a\u94f6\u884c\u5361\u652f\u4ed8\u534f\u8bae\u300b"

    const-string v4, "\u52fe\u9009\u201c\u6211\u5df2\u9605\u8bfb\u5e76\u540c\u610f\u300a\u94f6\u884c\u5361\u652f\u4ed8\u534f\u8bae\u300b\u201d\u624d\u80fd\u7ee7\u7eed\u652f\u4ed8"

    const/16 v5, 0xa

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcn/paypalm/pppayment/UserMessageAct;->a(Landroid/os/Bundle;Landroid/os/Message;Ljava/lang/String;Ljava/lang/String;I)V

    move v5, v6

    goto/16 :goto_0

    :cond_11
    iget-boolean v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->F:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->A:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v3, "\u77ed\u4fe1\u9a8c\u8bc1\u7801\u4e0d\u80fd\u4e3a\u7a7a"

    const-string v4, "\u8bf7\u8f93\u5165\u77ed\u4fe1\u9a8c\u8bc1\u7801\uff01"

    const/4 v5, 0x5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcn/paypalm/pppayment/UserMessageAct;->a(Landroid/os/Bundle;Landroid/os/Message;Ljava/lang/String;Ljava/lang/String;I)V

    move v5, v6

    goto/16 :goto_0

    :cond_12
    iget-boolean v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->F:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->A:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v0, v8, :cond_1

    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->A:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x6

    if-eq v0, v3, :cond_1

    const-string v3, "\u77ed\u4fe1\u9a8c\u8bc1\u7801\u4e0d\u6b63\u786e"

    const-string v4, "\u77ed\u4fe1\u9a8c\u8bc1\u7801\u5e94\u4e3a4\u4f4d\u6570\u5b57\uff01"

    const/4 v5, 0x5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcn/paypalm/pppayment/UserMessageAct;->a(Landroid/os/Bundle;Landroid/os/Message;Ljava/lang/String;Ljava/lang/String;I)V

    move v5, v6

    goto/16 :goto_0
.end method

.method static synthetic f(Lcn/paypalm/pppayment/UserMessageAct;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->p:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic f(Lcn/paypalm/pppayment/UserMessageAct;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcn/paypalm/pppayment/UserMessageAct;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private f()Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcn/paypalm/pppayment/UserMessageAct;->v:Lcn/paypalm/pppayment/global/Tools;

    iget-object v2, p0, Lcn/paypalm/pppayment/UserMessageAct;->t:Lcn/paypalm/pppayment/global/a;

    iget-object v3, p0, Lcn/paypalm/pppayment/UserMessageAct;->u:Lcn/paypalm/pppayment/global/b;

    invoke-virtual {v1, p0, v2, v3}, Lcn/paypalm/pppayment/global/Tools;->b(Landroid/content/Context;Lcn/paypalm/pppayment/global/a;Lcn/paypalm/pppayment/global/b;)I

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v1, v0}, Lcn/paypalm/pppayment/UserMessageAct;->a(IZ)V

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcn/paypalm/pppayment/UserMessageAct;->t:Lcn/paypalm/pppayment/global/a;

    iget-object v2, p0, Lcn/paypalm/pppayment/UserMessageAct;->w:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcn/paypalm/pppayment/global/a;->o(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/paypalm/pppayment/UserMessageAct;->t:Lcn/paypalm/pppayment/global/a;

    iget-object v2, p0, Lcn/paypalm/pppayment/UserMessageAct;->y:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcn/paypalm/pppayment/global/a;->p(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/paypalm/pppayment/UserMessageAct;->t:Lcn/paypalm/pppayment/global/a;

    iget-object v2, p0, Lcn/paypalm/pppayment/UserMessageAct;->z:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcn/paypalm/pppayment/global/a;->q(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/paypalm/pppayment/UserMessageAct;->t:Lcn/paypalm/pppayment/global/a;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcn/paypalm/pppayment/global/a;->m(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/paypalm/pppayment/UserMessageAct;->t:Lcn/paypalm/pppayment/global/a;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Lcn/paypalm/pppayment/global/a;->n(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/paypalm/pppayment/UserMessageAct;->t:Lcn/paypalm/pppayment/global/a;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcn/paypalm/pppayment/global/a;->l(Ljava/lang/String;)V

    invoke-direct {p0}, Lcn/paypalm/pppayment/UserMessageAct;->i()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v1, v0}, Lcn/paypalm/pppayment/UserMessageAct;->a(IZ)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic g(Lcn/paypalm/pppayment/UserMessageAct;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->q:Landroid/app/Dialog;

    return-object v0
.end method

.method private g()V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->v:Lcn/paypalm/pppayment/global/Tools;

    iget-object v1, p0, Lcn/paypalm/pppayment/UserMessageAct;->t:Lcn/paypalm/pppayment/global/a;

    iget-object v2, p0, Lcn/paypalm/pppayment/UserMessageAct;->u:Lcn/paypalm/pppayment/global/b;

    invoke-virtual {v0, p0, v1, v2}, Lcn/paypalm/pppayment/global/Tools;->a(Landroid/content/Context;Lcn/paypalm/pppayment/global/a;Lcn/paypalm/pppayment/global/b;)I

    move-result v0

    if-nez v0, :cond_3

    iput-boolean v3, p0, Lcn/paypalm/pppayment/UserMessageAct;->G:Z

    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->u:Lcn/paypalm/pppayment/global/b;

    invoke-virtual {v0}, Lcn/paypalm/pppayment/global/b;->y()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->u:Lcn/paypalm/pppayment/global/b;

    invoke-virtual {v0}, Lcn/paypalm/pppayment/global/b;->x()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcn/paypalm/pppayment/UserMessageAct;->m()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean v3, p0, Lcn/paypalm/pppayment/UserMessageAct;->F:Z

    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->N:Landroid/os/Handler;

    new-instance v1, Lcn/paypalm/pppayment/aa;

    invoke-direct {v1, p0}, Lcn/paypalm/pppayment/aa;-><init>(Lcn/paypalm/pppayment/UserMessageAct;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->u:Lcn/paypalm/pppayment/global/b;

    invoke-virtual {v0}, Lcn/paypalm/pppayment/global/b;->B()Ljava/lang/String;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->u:Lcn/paypalm/pppayment/global/b;

    invoke-virtual {v0}, Lcn/paypalm/pppayment/global/b;->x()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->t:Lcn/paypalm/pppayment/global/a;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcn/paypalm/pppayment/global/a;->l(Ljava/lang/String;)V

    const-string v0, "1"

    invoke-direct {p0, v0}, Lcn/paypalm/pppayment/UserMessageAct;->a(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    iput-boolean v3, p0, Lcn/paypalm/pppayment/UserMessageAct;->F:Z

    iput-boolean v3, p0, Lcn/paypalm/pppayment/UserMessageAct;->G:Z

    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->N:Landroid/os/Handler;

    const v1, 0x1adb2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0}, Lcn/paypalm/pppayment/UserMessageAct;->b(I)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcn/paypalm/pppayment/UserMessageAct;->a(IZ)V

    goto :goto_0
.end method

.method static synthetic h(Lcn/paypalm/pppayment/UserMessageAct;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->B:Ljava/lang/String;

    return-object v0
.end method

.method private h()Z
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->t:Lcn/paypalm/pppayment/global/a;

    iget-object v2, p0, Lcn/paypalm/pppayment/UserMessageAct;->A:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcn/paypalm/pppayment/global/a;->l(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->u:Lcn/paypalm/pppayment/global/b;

    invoke-virtual {v0}, Lcn/paypalm/pppayment/global/b;->y()Ljava/lang/String;

    move-result-object v0

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->v:Lcn/paypalm/pppayment/global/Tools;

    iget-object v2, p0, Lcn/paypalm/pppayment/UserMessageAct;->t:Lcn/paypalm/pppayment/global/a;

    iget-object v3, p0, Lcn/paypalm/pppayment/UserMessageAct;->u:Lcn/paypalm/pppayment/global/b;

    invoke-virtual {v0, p0, v2, v3}, Lcn/paypalm/pppayment/global/Tools;->c(Landroid/content/Context;Lcn/paypalm/pppayment/global/a;Lcn/paypalm/pppayment/global/b;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0, v1}, Lcn/paypalm/pppayment/UserMessageAct;->a(IZ)V

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->u:Lcn/paypalm/pppayment/global/b;

    invoke-virtual {v0}, Lcn/paypalm/pppayment/global/b;->B()Ljava/lang/String;

    move-result-object v0

    const-string v2, "2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->u:Lcn/paypalm/pppayment/global/b;

    invoke-virtual {v0}, Lcn/paypalm/pppayment/global/b;->x()Ljava/lang/String;

    move-result-object v0

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->u:Lcn/paypalm/pppayment/global/b;

    invoke-virtual {v0}, Lcn/paypalm/pppayment/global/b;->z()Ljava/lang/String;

    move-result-object v0

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "2"

    :goto_1
    invoke-direct {p0, v0}, Lcn/paypalm/pppayment/UserMessageAct;->a(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, v0, v1}, Lcn/paypalm/pppayment/UserMessageAct;->a(IZ)V

    move v0, v1

    goto :goto_0

    :cond_1
    const-string v0, "1"

    iget-object v2, p0, Lcn/paypalm/pppayment/UserMessageAct;->t:Lcn/paypalm/pppayment/global/a;

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcn/paypalm/pppayment/global/a;->l(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private i()I
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcn/paypalm/pppayment/UserMessageAct;->t:Lcn/paypalm/pppayment/global/a;

    const-string v2, "281004"

    invoke-virtual {v1, v2}, Lcn/paypalm/pppayment/global/a;->a(Ljava/lang/String;)V

    const-string v1, "{\'opcode\':\'%s\',\'userid\':\'%s\',\'banktype\':\'%s\',\'cardtype\':\'%s\',\'cardnum\':\'%s\',\'id\':\'%s\',\'accname\':\'%s\'}"

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcn/paypalm/pppayment/UserMessageAct;->t:Lcn/paypalm/pppayment/global/a;

    invoke-virtual {v3}, Lcn/paypalm/pppayment/global/a;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v3, 0x1

    iget-object v4, p0, Lcn/paypalm/pppayment/UserMessageAct;->t:Lcn/paypalm/pppayment/global/a;

    invoke-virtual {v4}, Lcn/paypalm/pppayment/global/a;->k()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcn/paypalm/pppayment/UserMessageAct;->t:Lcn/paypalm/pppayment/global/a;

    invoke-virtual {v4}, Lcn/paypalm/pppayment/global/a;->m()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcn/paypalm/pppayment/UserMessageAct;->t:Lcn/paypalm/pppayment/global/a;

    invoke-virtual {v4}, Lcn/paypalm/pppayment/global/a;->n()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget-object v4, p0, Lcn/paypalm/pppayment/UserMessageAct;->t:Lcn/paypalm/pppayment/global/a;

    invoke-virtual {v4}, Lcn/paypalm/pppayment/global/a;->o()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget-object v4, p0, Lcn/paypalm/pppayment/UserMessageAct;->t:Lcn/paypalm/pppayment/global/a;

    invoke-virtual {v4}, Lcn/paypalm/pppayment/global/a;->p()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    iget-object v4, p0, Lcn/paypalm/pppayment/UserMessageAct;->t:Lcn/paypalm/pppayment/global/a;

    invoke-virtual {v4}, Lcn/paypalm/pppayment/global/a;->q()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/paypalm/pppayment/UserMessageAct;->v:Lcn/paypalm/pppayment/global/Tools;

    invoke-virtual {v2, p0, v1}, Lcn/paypalm/pppayment/global/Tools;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "\u8bf7\u6c42\u5931\u8d25!"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/16 v0, -0xa

    :goto_0
    return v0

    :cond_1
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/paypalm/pppayment/UserMessageAct;->u:Lcn/paypalm/pppayment/global/b;

    const-string v3, "tranresult"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcn/paypalm/pppayment/global/b;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/paypalm/pppayment/UserMessageAct;->u:Lcn/paypalm/pppayment/global/b;

    const-string v3, "resultinfo"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcn/paypalm/pppayment/global/b;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/paypalm/pppayment/UserMessageAct;->u:Lcn/paypalm/pppayment/global/b;

    invoke-virtual {v1}, Lcn/paypalm/pppayment/global/b;->a()Ljava/lang/String;

    move-result-object v1

    const-string v3, "000000"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcn/paypalm/pppayment/UserMessageAct;->u:Lcn/paypalm/pppayment/global/b;

    const-string v3, "cardindex"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcn/paypalm/pppayment/global/b;->z(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/paypalm/pppayment/UserMessageAct;->u:Lcn/paypalm/pppayment/global/b;

    const-string v3, "needbind"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcn/paypalm/pppayment/global/b;->A(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/paypalm/pppayment/UserMessageAct;->u:Lcn/paypalm/pppayment/global/b;

    const-string v3, "banktype"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcn/paypalm/pppayment/global/b;->m(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/paypalm/pppayment/UserMessageAct;->u:Lcn/paypalm/pppayment/global/b;

    const-string v3, "cardtype"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/paypalm/pppayment/global/b;->n(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const/16 v0, -0xb

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method static synthetic i(Lcn/paypalm/pppayment/UserMessageAct;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->C:Ljava/lang/String;

    return-object v0
.end method

.method private j()I
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcn/paypalm/pppayment/UserMessageAct;->t:Lcn/paypalm/pppayment/global/a;

    const-string v2, "140004"

    invoke-virtual {v1, v2}, Lcn/paypalm/pppayment/global/a;->a(Ljava/lang/String;)V

    const-string v1, "{\'opcode\':\'%s\',\'banktype\':\'%s\',\'cardtype\':\'%s\',\'cardnum\':\'%s\',\'id\':\'%s\',\'accname\':\'%s\',\'authcode\':\'%s\'}"

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcn/paypalm/pppayment/UserMessageAct;->t:Lcn/paypalm/pppayment/global/a;

    invoke-virtual {v3}, Lcn/paypalm/pppayment/global/a;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v3, 0x1

    iget-object v4, p0, Lcn/paypalm/pppayment/UserMessageAct;->t:Lcn/paypalm/pppayment/global/a;

    invoke-virtual {v4}, Lcn/paypalm/pppayment/global/a;->m()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcn/paypalm/pppayment/UserMessageAct;->t:Lcn/paypalm/pppayment/global/a;

    invoke-virtual {v4}, Lcn/paypalm/pppayment/global/a;->n()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcn/paypalm/pppayment/UserMessageAct;->t:Lcn/paypalm/pppayment/global/a;

    invoke-virtual {v4}, Lcn/paypalm/pppayment/global/a;->o()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget-object v4, p0, Lcn/paypalm/pppayment/UserMessageAct;->t:Lcn/paypalm/pppayment/global/a;

    invoke-virtual {v4}, Lcn/paypalm/pppayment/global/a;->p()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget-object v4, p0, Lcn/paypalm/pppayment/UserMessageAct;->t:Lcn/paypalm/pppayment/global/a;

    invoke-virtual {v4}, Lcn/paypalm/pppayment/global/a;->q()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    iget-object v4, p0, Lcn/paypalm/pppayment/UserMessageAct;->t:Lcn/paypalm/pppayment/global/a;

    invoke-virtual {v4}, Lcn/paypalm/pppayment/global/a;->l()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/paypalm/pppayment/UserMessageAct;->v:Lcn/paypalm/pppayment/global/Tools;

    invoke-virtual {v2, p0, v1}, Lcn/paypalm/pppayment/global/Tools;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "\u8bf7\u6c42\u5931\u8d25!"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/16 v0, -0xa

    :goto_0
    return v0

    :cond_1
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/paypalm/pppayment/UserMessageAct;->u:Lcn/paypalm/pppayment/global/b;

    const-string v3, "tranresult"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcn/paypalm/pppayment/global/b;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/paypalm/pppayment/UserMessageAct;->u:Lcn/paypalm/pppayment/global/b;

    const-string v3, "resultinfo"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcn/paypalm/pppayment/global/b;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/paypalm/pppayment/UserMessageAct;->u:Lcn/paypalm/pppayment/global/b;

    invoke-virtual {v1}, Lcn/paypalm/pppayment/global/b;->a()Ljava/lang/String;

    move-result-object v1

    const-string v3, "000000"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcn/paypalm/pppayment/UserMessageAct;->u:Lcn/paypalm/pppayment/global/b;

    const-string v3, "cardindex"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcn/paypalm/pppayment/global/b;->z(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/paypalm/pppayment/UserMessageAct;->u:Lcn/paypalm/pppayment/global/b;

    const-string v3, "banktype"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/paypalm/pppayment/global/b;->m(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const/16 v0, -0xb

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method static synthetic j(Lcn/paypalm/pppayment/UserMessageAct;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->r:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private k()I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcn/paypalm/pppayment/UserMessageAct;->t:Lcn/paypalm/pppayment/global/a;

    const-string v2, "561004"

    invoke-virtual {v1, v2}, Lcn/paypalm/pppayment/global/a;->a(Ljava/lang/String;)V

    const-string v1, "{\'opcode\':\'%s\'}"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcn/paypalm/pppayment/UserMessageAct;->t:Lcn/paypalm/pppayment/global/a;

    invoke-virtual {v3}, Lcn/paypalm/pppayment/global/a;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/paypalm/pppayment/UserMessageAct;->v:Lcn/paypalm/pppayment/global/Tools;

    invoke-virtual {v2, p0, v1}, Lcn/paypalm/pppayment/global/Tools;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "\u8bf7\u6c42\u5931\u8d25!"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const/16 v0, -0xa

    :cond_1
    :goto_0
    return v0

    :cond_2
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/paypalm/pppayment/UserMessageAct;->u:Lcn/paypalm/pppayment/global/b;

    const-string v3, "tranresult"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcn/paypalm/pppayment/global/b;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/paypalm/pppayment/UserMessageAct;->u:Lcn/paypalm/pppayment/global/b;

    const-string v3, "resultinfo"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/paypalm/pppayment/global/b;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/paypalm/pppayment/UserMessageAct;->u:Lcn/paypalm/pppayment/global/b;

    invoke-virtual {v1}, Lcn/paypalm/pppayment/global/b;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "000000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const/16 v0, -0xb

    goto :goto_0
.end method

.method static synthetic k(Lcn/paypalm/pppayment/UserMessageAct;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->i:Landroid/widget/EditText;

    return-object v0
.end method

.method private l()I
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcn/paypalm/pppayment/UserMessageAct;->t:Lcn/paypalm/pppayment/global/a;

    const-string v2, "390004"

    invoke-virtual {v1, v2}, Lcn/paypalm/pppayment/global/a;->a(Ljava/lang/String;)V

    const-string v1, "{\'opcode\':\'%s\',\'cardindex\':\'%s\',\'cvn2\':\'%s\',\'date\':\'%s\',\'paymethod\':\'%s\',\'paychannel\':\'%s\'}"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcn/paypalm/pppayment/UserMessageAct;->t:Lcn/paypalm/pppayment/global/a;

    invoke-virtual {v3}, Lcn/paypalm/pppayment/global/a;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v3, 0x1

    iget-object v4, p0, Lcn/paypalm/pppayment/UserMessageAct;->t:Lcn/paypalm/pppayment/global/a;

    invoke-virtual {v4}, Lcn/paypalm/pppayment/global/a;->r()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcn/paypalm/pppayment/UserMessageAct;->t:Lcn/paypalm/pppayment/global/a;

    invoke-virtual {v4}, Lcn/paypalm/pppayment/global/a;->t()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcn/paypalm/pppayment/UserMessageAct;->t:Lcn/paypalm/pppayment/global/a;

    invoke-virtual {v4}, Lcn/paypalm/pppayment/global/a;->u()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget-object v4, p0, Lcn/paypalm/pppayment/UserMessageAct;->t:Lcn/paypalm/pppayment/global/a;

    invoke-virtual {v4}, Lcn/paypalm/pppayment/global/a;->v()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget-object v4, p0, Lcn/paypalm/pppayment/UserMessageAct;->t:Lcn/paypalm/pppayment/global/a;

    invoke-virtual {v4}, Lcn/paypalm/pppayment/global/a;->w()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/paypalm/pppayment/UserMessageAct;->v:Lcn/paypalm/pppayment/global/Tools;

    invoke-virtual {v2, p0, v1}, Lcn/paypalm/pppayment/global/Tools;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "\u8bf7\u6c42\u5931\u8d25!"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const/16 v0, -0xa

    :cond_1
    :goto_0
    return v0

    :cond_2
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/paypalm/pppayment/UserMessageAct;->u:Lcn/paypalm/pppayment/global/b;

    const-string v3, "tranresult"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcn/paypalm/pppayment/global/b;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/paypalm/pppayment/UserMessageAct;->u:Lcn/paypalm/pppayment/global/b;

    const-string v3, "resultinfo"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/paypalm/pppayment/global/b;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/paypalm/pppayment/UserMessageAct;->u:Lcn/paypalm/pppayment/global/b;

    invoke-virtual {v1}, Lcn/paypalm/pppayment/global/b;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "000000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const/16 v0, -0xb

    goto :goto_0
.end method

.method static synthetic l(Lcn/paypalm/pppayment/UserMessageAct;)V
    .locals 0

    invoke-direct {p0}, Lcn/paypalm/pppayment/UserMessageAct;->d()V

    return-void
.end method

.method static synthetic m(Lcn/paypalm/pppayment/UserMessageAct;)Lcn/paypalm/pppayment/global/b;
    .locals 1

    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->u:Lcn/paypalm/pppayment/global/b;

    return-object v0
.end method

.method private m()V
    .locals 6

    const/4 v1, 0x0

    invoke-direct {p0}, Lcn/paypalm/pppayment/UserMessageAct;->k()I

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->E:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->u:Lcn/paypalm/pppayment/global/b;

    invoke-virtual {v0}, Lcn/paypalm/pppayment/global/b;->q()Ljava/lang/String;

    move-result-object v0

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcn/paypalm/pppayment/UserMessageAct;->j()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->u:Lcn/paypalm/pppayment/global/b;

    const-string v2, "0"

    invoke-virtual {v0, v2}, Lcn/paypalm/pppayment/global/b;->A(Ljava/lang/String;)V

    :cond_0
    iget-boolean v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->E:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->u:Lcn/paypalm/pppayment/global/b;

    invoke-virtual {v0}, Lcn/paypalm/pppayment/global/b;->l()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->w:Ljava/lang/String;

    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->u:Lcn/paypalm/pppayment/global/b;

    invoke-virtual {v0}, Lcn/paypalm/pppayment/global/b;->k()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->z:Ljava/lang/String;

    :cond_1
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->z:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    move v0, v1

    :goto_0
    add-int/lit8 v4, v3, -0x1

    if-lt v0, v4, :cond_3

    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->z:Ljava/lang/String;

    add-int/lit8 v4, v3, -0x1

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    const-string v3, "{\'01020000\':\'\u5de5\u5546\u94f6\u884c\',\'01030000\':\'\u519c\u4e1a\u94f6\u884c\',\'01050000\':\'\u5efa\u8bbe\u94f6\u884c\',\'01040000\':\'\u4e2d\u56fd\u94f6\u884c\',\'03010000\':\'\u4ea4\u901a\u94f6\u884c\',\'01000000\':\'\u90ae\u50a8\u94f6\u884c\',\'03080000\':\'\u62db\u5546\u94f6\u884c\',\'03060000\':\'\u5e7f\u53d1\u94f6\u884c\',\'03030000\':\'\u5149\u5927\u94f6\u884c\',\'04135810\':\'\u5e7f\u5dde\u94f6\u884c\',\'03090000\':\'\u5174\u4e1a\u94f6\u884c\',\'03070000\':\'\u6df1\u53d1\u94f6\u884c\',\'04105840\':\'\u5e73\u5b89\u94f6\u884c\',\'03050000\':\'\u6c11\u751f\u94f6\u884c\',\'03040000\':\'\u534e\u590f\u94f6\u884c\',\'03020000\':\'\u4e2d\u4fe1\u94f6\u884c\',\'03070010\':\'\u6df1\u53d1\u94f6\u884c\'}"

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcn/paypalm/pppayment/UserMessageAct;->w:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcn/paypalm/pppayment/UserMessageAct;->u:Lcn/paypalm/pppayment/global/b;

    invoke-virtual {v5}, Lcn/paypalm/pppayment/global/b;->h()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " (**"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcn/paypalm/pppayment/UserMessageAct;->w:Ljava/lang/String;

    add-int/lit8 v5, v3, -0x4

    invoke-virtual {v4, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    iget-object v2, p0, Lcn/paypalm/pppayment/UserMessageAct;->t:Lcn/paypalm/pppayment/global/a;

    iget-object v3, p0, Lcn/paypalm/pppayment/UserMessageAct;->u:Lcn/paypalm/pppayment/global/b;

    invoke-virtual {v3}, Lcn/paypalm/pppayment/global/b;->p()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/paypalm/pppayment/global/a;->r(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/paypalm/pppayment/UserMessageAct;->t:Lcn/paypalm/pppayment/global/a;

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcn/paypalm/pppayment/global/a;->s(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/paypalm/pppayment/UserMessageAct;->t:Lcn/paypalm/pppayment/global/a;

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcn/paypalm/pppayment/global/a;->t(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/paypalm/pppayment/UserMessageAct;->t:Lcn/paypalm/pppayment/global/a;

    iget-object v3, p0, Lcn/paypalm/pppayment/UserMessageAct;->u:Lcn/paypalm/pppayment/global/b;

    invoke-virtual {v3}, Lcn/paypalm/pppayment/global/b;->v()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/paypalm/pppayment/global/a;->v(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/paypalm/pppayment/UserMessageAct;->t:Lcn/paypalm/pppayment/global/a;

    iget-object v3, p0, Lcn/paypalm/pppayment/UserMessageAct;->u:Lcn/paypalm/pppayment/global/b;

    invoke-virtual {v3}, Lcn/paypalm/pppayment/global/b;->w()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/paypalm/pppayment/global/a;->u(Ljava/lang/String;)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iget-object v3, p0, Lcn/paypalm/pppayment/UserMessageAct;->N:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    const-string v4, "show_pay_card"

    invoke-virtual {v2, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "show_cardholedr_name"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    const v0, 0x1adc2

    iput v0, v3, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->N:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_1
    return-void

    :cond_2
    invoke-direct {p0, v0, v1}, Lcn/paypalm/pppayment/UserMessageAct;->a(IZ)V

    goto :goto_1

    :cond_3
    const-string v4, "*"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const/16 v0, -0xb

    invoke-direct {p0, v0, v1}, Lcn/paypalm/pppayment/UserMessageAct;->a(IZ)V

    goto :goto_1

    :cond_4
    invoke-direct {p0, v0, v1}, Lcn/paypalm/pppayment/UserMessageAct;->a(IZ)V

    goto :goto_1
.end method

.method static synthetic n(Lcn/paypalm/pppayment/UserMessageAct;)Lcn/paypalm/pppayment/global/a;
    .locals 1

    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->t:Lcn/paypalm/pppayment/global/a;

    return-object v0
.end method

.method private n()V
    .locals 1

    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->q:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->q:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->q:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->p:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method

.method static synthetic o(Lcn/paypalm/pppayment/UserMessageAct;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->s:Ljava/util/ArrayList;

    return-object v0
.end method

.method private o()V
    .locals 4

    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->I:Lcn/paypalm/pppayment/b;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/paypalm/pppayment/UserMessageAct;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcn/paypalm/pppayment/UserMessageAct;->I:Lcn/paypalm/pppayment/b;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->i:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lcn/paypalm/pppayment/b;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcn/paypalm/pppayment/b;-><init>(Lcn/paypalm/pppayment/UserMessageAct;Landroid/os/Handler;)V

    iput-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->I:Lcn/paypalm/pppayment/b;

    invoke-virtual {p0}, Lcn/paypalm/pppayment/UserMessageAct;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://sms/"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcn/paypalm/pppayment/UserMessageAct;->I:Lcn/paypalm/pppayment/b;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method static synthetic p(Lcn/paypalm/pppayment/UserMessageAct;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->x:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic q(Lcn/paypalm/pppayment/UserMessageAct;)Z
    .locals 1

    invoke-direct {p0}, Lcn/paypalm/pppayment/UserMessageAct;->e()Z

    move-result v0

    return v0
.end method

.method static synthetic r(Lcn/paypalm/pppayment/UserMessageAct;)Z
    .locals 1

    iget-boolean v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->G:Z

    return v0
.end method

.method static synthetic s(Lcn/paypalm/pppayment/UserMessageAct;)Z
    .locals 1

    iget-boolean v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->E:Z

    return v0
.end method

.method static synthetic t(Lcn/paypalm/pppayment/UserMessageAct;)Z
    .locals 1

    invoke-direct {p0}, Lcn/paypalm/pppayment/UserMessageAct;->f()Z

    move-result v0

    return v0
.end method

.method static synthetic u(Lcn/paypalm/pppayment/UserMessageAct;)V
    .locals 0

    invoke-direct {p0}, Lcn/paypalm/pppayment/UserMessageAct;->g()V

    return-void
.end method

.method static synthetic v(Lcn/paypalm/pppayment/UserMessageAct;)Z
    .locals 1

    invoke-direct {p0}, Lcn/paypalm/pppayment/UserMessageAct;->h()Z

    move-result v0

    return v0
.end method

.method static synthetic w(Lcn/paypalm/pppayment/UserMessageAct;)V
    .locals 0

    invoke-direct {p0}, Lcn/paypalm/pppayment/UserMessageAct;->m()V

    return-void
.end method

.method static synthetic x(Lcn/paypalm/pppayment/UserMessageAct;)I
    .locals 1

    invoke-direct {p0}, Lcn/paypalm/pppayment/UserMessageAct;->l()I

    move-result v0

    return v0
.end method

.method static synthetic y(Lcn/paypalm/pppayment/UserMessageAct;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->J:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic z(Lcn/paypalm/pppayment/UserMessageAct;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->K:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    if-eqz p3, :cond_0

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "authcode"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcn/paypalm/pppayment/UserMessageAct;->D:Z

    iput-boolean v2, p0, Lcn/paypalm/pppayment/UserMessageAct;->F:Z

    iput-boolean v2, p0, Lcn/paypalm/pppayment/UserMessageAct;->G:Z

    iget-object v1, p0, Lcn/paypalm/pppayment/UserMessageAct;->i:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcn/paypalm/pppayment/UserMessageAct;->r:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/paypalm/pppayment/UserMessageAct;->B:Ljava/lang/String;

    const-string v1, "message"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/paypalm/pppayment/UserMessageAct;->C:Ljava/lang/String;

    :cond_1
    const-string v1, "back"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcn/paypalm/pppayment/UserMessageAct;->a(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget v1, p0, Lcn/paypalm/pppayment/UserMessageAct;->c:I

    if-ne v0, v1, :cond_1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcn/paypalm/pppayment/BankcardAgreement;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0, v0, v5}, Lcn/paypalm/pppayment/UserMessageAct;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget v1, p0, Lcn/paypalm/pppayment/UserMessageAct;->d:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->v:Lcn/paypalm/pppayment/global/Tools;

    iget-object v1, p0, Lcn/paypalm/pppayment/UserMessageAct;->q:Landroid/app/Dialog;

    const/4 v2, 0x1

    const/4 v3, -0x2

    invoke-virtual {v0, p0, v1, v2, v3}, Lcn/paypalm/pppayment/global/Tools;->a(Landroid/content/Context;Landroid/app/Dialog;ZI)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget v1, p0, Lcn/paypalm/pppayment/UserMessageAct;->a:I

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->k:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setClickable(Z)V

    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->p:Landroid/app/ProgressDialog;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u6b63\u5728\u53d1\u9001\u77ed\u4fe1\u9a8c\u8bc1\u7801\u5230"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/paypalm/pppayment/UserMessageAct;->t:Lcn/paypalm/pppayment/global/a;

    invoke-virtual {v2}, Lcn/paypalm/pppayment/global/a;->k()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "****"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/paypalm/pppayment/UserMessageAct;->t:Lcn/paypalm/pppayment/global/a;

    invoke-virtual {v2}, Lcn/paypalm/pppayment/global/a;->k()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x8

    const/16 v4, 0xb

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",\u8bf7\u7a0d\u540e..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcn/paypalm/pppayment/UserMessageAct;->n()V

    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->I:Lcn/paypalm/pppayment/b;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcn/paypalm/pppayment/UserMessageAct;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcn/paypalm/pppayment/UserMessageAct;->I:Lcn/paypalm/pppayment/b;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_3
    new-instance v0, Lcn/paypalm/pppayment/a;

    invoke-direct {v0, p0}, Lcn/paypalm/pppayment/a;-><init>(Lcn/paypalm/pppayment/UserMessageAct;)V

    invoke-virtual {v0}, Lcn/paypalm/pppayment/a;->start()V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget v1, p0, Lcn/paypalm/pppayment/UserMessageAct;->b:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->j:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setClickable(Z)V

    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->p:Landroid/app/ProgressDialog;

    const-string v1, "\u6b63\u5728\u8fdb\u884c\u4fe1\u606f\u6821\u9a8c\uff0c\u8bf7\u7a0d\u540e..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcn/paypalm/pppayment/UserMessageAct;->n()V

    iget-boolean v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->D:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->v:Lcn/paypalm/pppayment/global/Tools;

    iget-object v2, p0, Lcn/paypalm/pppayment/UserMessageAct;->q:Landroid/app/Dialog;

    iget-object v3, p0, Lcn/paypalm/pppayment/UserMessageAct;->B:Ljava/lang/String;

    iget-object v4, p0, Lcn/paypalm/pppayment/UserMessageAct;->C:Ljava/lang/String;

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcn/paypalm/pppayment/global/Tools;->a(Landroid/content/Context;Landroid/app/Dialog;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->p:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    goto/16 :goto_0

    :cond_5
    new-instance v0, Lcn/paypalm/pppayment/w;

    invoke-direct {v0, p0}, Lcn/paypalm/pppayment/w;-><init>(Lcn/paypalm/pppayment/UserMessageAct;)V

    iput-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->L:Lcn/paypalm/pppayment/w;

    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->L:Lcn/paypalm/pppayment/w;

    invoke-virtual {v0}, Lcn/paypalm/pppayment/w;->start()V

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v2, -0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "zsht_user_message"

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Lcn/paypalm/pppayment/global/Tools;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcn/paypalm/pppayment/UserMessageAct;->setContentView(I)V

    invoke-virtual {p0}, Lcn/paypalm/pppayment/UserMessageAct;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setLayout(II)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Lcn/paypalm/pppayment/UserMessageAct;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v0, "bundle_check_phone_requestMessage"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcn/paypalm/pppayment/global/a;

    iput-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->t:Lcn/paypalm/pppayment/global/a;

    const-string v0, "bundle_check_phone_responseMessage"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcn/paypalm/pppayment/global/b;

    iput-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->u:Lcn/paypalm/pppayment/global/b;

    const-string v0, "bundle_myPaypalm_errorMessageList"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->s:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcn/paypalm/pppayment/UserMessageAct;->b()V

    invoke-direct {p0}, Lcn/paypalm/pppayment/UserMessageAct;->a()V

    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->k:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setClickable(Z)V

    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->k:Landroid/widget/Button;

    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    if-eqz p1, :cond_0

    const-string v0, "isDestroy"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->H:Z

    iget-boolean v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->H:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->v:Lcn/paypalm/pppayment/global/Tools;

    iget-object v2, p0, Lcn/paypalm/pppayment/UserMessageAct;->q:Landroid/app/Dialog;

    const-string v3, "\u8ba2\u5355\u672a\u5b8c\u6210"

    const-string v4, "\u8bf7\u91cd\u65b0\u652f\u4ed8\uff01"

    const/4 v5, 0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcn/paypalm/pppayment/global/Tools;->a(Landroid/content/Context;Landroid/app/Dialog;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    iget-object v1, p0, Lcn/paypalm/pppayment/UserMessageAct;->v:Lcn/paypalm/pppayment/global/Tools;

    iget-object v2, p0, Lcn/paypalm/pppayment/UserMessageAct;->q:Landroid/app/Dialog;

    const/4 v3, -0x2

    invoke-virtual {v1, p0, v2, v0, v3}, Lcn/paypalm/pppayment/global/Tools;->a(Landroid/content/Context;Landroid/app/Dialog;ZI)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->i:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->i:Landroid/widget/EditText;

    iget-object v1, p0, Lcn/paypalm/pppayment/UserMessageAct;->i:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "isDestroy"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method protected onStop()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    iget-object v0, p0, Lcn/paypalm/pppayment/UserMessageAct;->I:Lcn/paypalm/pppayment/b;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/paypalm/pppayment/UserMessageAct;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcn/paypalm/pppayment/UserMessageAct;->I:Lcn/paypalm/pppayment/b;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method
