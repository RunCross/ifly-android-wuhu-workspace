.class final Lcom/test/enter/v;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/test/enter/SignupActivity;


# direct methods
.method constructor <init>(Lcom/test/enter/SignupActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/test/enter/v;->a:Lcom/test/enter/SignupActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    sget-object v0, Lcom/test/enter/SignupActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/test/enter/SignupActivity;->StopTimer(Z)V

    iget-object v0, p0, Lcom/test/enter/v;->a:Lcom/test/enter/SignupActivity;

    sget v1, Lcom/test/enter/EnterDef;->STEP_REGIST:I

    invoke-virtual {v0, v1}, Lcom/test/enter/SignupActivity;->SetStep(I)V

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/test/enter/SignupActivity;->c:Landroid/widget/Button;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/test/enter/SignupActivity;->a()I

    move-result v0

    rem-int/lit16 v0, v0, 0x3e8

    if-nez v0, :cond_0

    sget-object v0, Lcom/test/enter/SignupActivity;->c:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u91cd\u65b0\u83b7\u53d6 ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/test/enter/SignupActivity;->a()I

    move-result v2

    div-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/test/enter/SignupActivity;->c:Landroid/widget/Button;

    const v1, 0x7f020010

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    sget-object v0, Lcom/test/enter/SignupActivity;->c:Landroid/widget/Button;

    const/high16 v1, 0x4228

    invoke-static {}, Lcom/test/enter/SignupActivity;->c()F

    move-result v2

    mul-float/2addr v1, v2

    invoke-virtual {v0, v4, v1}, Landroid/widget/Button;->setTextSize(IF)V

    sget-object v0, Lcom/test/enter/SignupActivity;->c:Landroid/widget/Button;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/Button;->setPadding(IIII)V

    goto :goto_0

    :pswitch_2
    invoke-static {v4}, Lcom/test/enter/SignupActivity;->StopTimer(Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
