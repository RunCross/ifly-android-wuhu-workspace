.class Lmm/purchasesdk/ui/q;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lmm/purchasesdk/ui/l;


# direct methods
.method constructor <init>(Lmm/purchasesdk/ui/l;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/ui/q;->a:Lmm/purchasesdk/ui/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lmm/purchasesdk/f/a;->k()V

    const/4 v0, 0x3

    sput v0, Lmm/purchasesdk/f/a;->z:I

    iget-object v0, p0, Lmm/purchasesdk/ui/q;->a:Lmm/purchasesdk/ui/l;

    invoke-static {v0}, Lmm/purchasesdk/ui/l;->a(Lmm/purchasesdk/ui/l;)Lmm/purchasesdk/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lmm/purchasesdk/b/a;->a()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmm/purchasesdk/ui/q;->a:Lmm/purchasesdk/ui/l;

    invoke-static {v0}, Lmm/purchasesdk/ui/l;->b(Lmm/purchasesdk/ui/l;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmm/purchasesdk/ui/q;->a:Lmm/purchasesdk/ui/l;

    invoke-static {v1}, Lmm/purchasesdk/ui/l;->b(Lmm/purchasesdk/ui/l;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lmm/purchasesdk/ui/q;->a:Lmm/purchasesdk/ui/l;

    invoke-static {v0}, Lmm/purchasesdk/ui/l;->b(Lmm/purchasesdk/ui/l;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmm/purchasesdk/ui/q;->a:Lmm/purchasesdk/ui/l;

    invoke-static {v0}, Lmm/purchasesdk/ui/l;->b(Lmm/purchasesdk/ui/l;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u8bf7\u8f93\u5165\u9a8c\u8bc1\u7801"

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lmm/purchasesdk/ui/q;->a:Lmm/purchasesdk/ui/l;

    invoke-static {v0}, Lmm/purchasesdk/ui/l;->a(Lmm/purchasesdk/ui/l;)Lmm/purchasesdk/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lmm/purchasesdk/b/a;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmm/purchasesdk/ui/q;->a:Lmm/purchasesdk/ui/l;

    invoke-static {v0}, Lmm/purchasesdk/ui/l;->a(Lmm/purchasesdk/ui/l;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmm/purchasesdk/ui/q;->a:Lmm/purchasesdk/ui/l;

    invoke-static {v0}, Lmm/purchasesdk/ui/l;->a(Lmm/purchasesdk/ui/l;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmm/purchasesdk/ui/q;->a:Lmm/purchasesdk/ui/l;

    invoke-static {v0}, Lmm/purchasesdk/ui/l;->a(Lmm/purchasesdk/ui/l;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u8bf7\u8f93\u5165\u652f\u4ed8\u5bc6\u7801"

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    const-string v0, ""

    sget-object v1, Lmm/purchasesdk/fingerprint/c;->e:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lmm/purchasesdk/fingerprint/c;->v()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lmm/purchasesdk/fingerprint/c;->getStatus()I

    move-result v1

    const/4 v2, -0x6

    if-ne v1, v2, :cond_2

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u6307\u7eb9\u6b63\u5728\u83b7\u53d6\u4e2d,\u8bf7\u7a0d\u540e\u518d\u8bd5"

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    iget-object v0, p0, Lmm/purchasesdk/ui/q;->a:Lmm/purchasesdk/ui/l;

    invoke-virtual {v0}, Lmm/purchasesdk/ui/l;->dismiss()V

    const-string v0, "PurchaseDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "failed to create fingerprint,error code="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmm/purchasesdk/l/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lmm/purchasesdk/ui/q;->a:Lmm/purchasesdk/ui/l;

    invoke-static {v0}, Lmm/purchasesdk/ui/l;->a(Lmm/purchasesdk/ui/l;)Lmm/purchasesdk/b;

    move-result-object v0

    const/16 v1, 0x190

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmm/purchasesdk/b;->a(ILjava/util/HashMap;)V

    goto/16 :goto_0

    :cond_3
    move-object v1, v0

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "PurchaseDialog"

    const-string v1, "Activity is finished!"

    invoke-static {v0, v1}, Lmm/purchasesdk/l/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lmm/purchasesdk/ui/q;->a:Lmm/purchasesdk/ui/l;

    invoke-static {v0}, Lmm/purchasesdk/ui/l;->a(Lmm/purchasesdk/ui/l;)I

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "PurchaseDialog"

    const-string v2, "getPayType = 0"

    invoke-static {v0, v2}, Lmm/purchasesdk/l/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "1"

    invoke-static {v0}, Lmm/purchasesdk/l/d;->P(Ljava/lang/String;)V

    :cond_5
    :goto_1
    invoke-static {}, Lmm/purchasesdk/ui/u;->a()Lmm/purchasesdk/ui/u;

    move-result-object v0

    invoke-virtual {v0}, Lmm/purchasesdk/ui/u;->s()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "dyMark"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "CheckAnswer"

    iget-object v2, p0, Lmm/purchasesdk/ui/q;->a:Lmm/purchasesdk/ui/l;

    invoke-virtual {v2}, Lmm/purchasesdk/ui/l;->y()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "CheckId"

    iget-object v2, p0, Lmm/purchasesdk/ui/q;->a:Lmm/purchasesdk/ui/l;

    invoke-static {v2}, Lmm/purchasesdk/ui/l;->a(Lmm/purchasesdk/ui/l;)Lmm/purchasesdk/b/a;

    move-result-object v2

    invoke-virtual {v2}, Lmm/purchasesdk/b/a;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Password"

    iget-object v2, p0, Lmm/purchasesdk/ui/q;->a:Lmm/purchasesdk/ui/l;

    invoke-virtual {v2}, Lmm/purchasesdk/ui/l;->getPassword()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "SessionId"

    iget-object v2, p0, Lmm/purchasesdk/ui/q;->a:Lmm/purchasesdk/ui/l;

    invoke-static {v2}, Lmm/purchasesdk/ui/l;->a(Lmm/purchasesdk/ui/l;)Lmm/purchasesdk/b/a;

    move-result-object v2

    invoke-virtual {v2}, Lmm/purchasesdk/b/a;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "OrderCount"

    iget-object v2, p0, Lmm/purchasesdk/ui/q;->a:Lmm/purchasesdk/ui/l;

    invoke-static {v2}, Lmm/purchasesdk/ui/l;->a(Lmm/purchasesdk/ui/l;)Lmm/purchasesdk/b/a;

    move-result-object v2

    invoke-virtual {v2}, Lmm/purchasesdk/b/a;->a()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "multiSubs"

    iget-object v2, p0, Lmm/purchasesdk/ui/q;->a:Lmm/purchasesdk/ui/l;

    invoke-static {v2}, Lmm/purchasesdk/ui/l;->a(Lmm/purchasesdk/ui/l;)Lmm/purchasesdk/b/a;

    move-result-object v2

    invoke-virtual {v2}, Lmm/purchasesdk/b/a;->c()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "NeedPasswd"

    iget-object v2, p0, Lmm/purchasesdk/ui/q;->a:Lmm/purchasesdk/ui/l;

    invoke-static {v2}, Lmm/purchasesdk/ui/l;->a(Lmm/purchasesdk/ui/l;)Lmm/purchasesdk/b/a;

    move-result-object v2

    invoke-virtual {v2}, Lmm/purchasesdk/b/a;->b()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "NeedInput"

    iget-object v2, p0, Lmm/purchasesdk/ui/q;->a:Lmm/purchasesdk/ui/l;

    invoke-static {v2}, Lmm/purchasesdk/ui/l;->a(Lmm/purchasesdk/ui/l;)Lmm/purchasesdk/b/a;

    move-result-object v2

    invoke-virtual {v2}, Lmm/purchasesdk/b/a;->a()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "RandomPwd"

    iget-object v2, p0, Lmm/purchasesdk/ui/q;->a:Lmm/purchasesdk/ui/l;

    invoke-virtual {v2}, Lmm/purchasesdk/ui/l;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lmm/purchasesdk/ui/q;->a:Lmm/purchasesdk/ui/l;

    invoke-static {v1}, Lmm/purchasesdk/ui/l;->b(Lmm/purchasesdk/ui/l;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    iput v5, v1, Landroid/os/Message;->what:I

    iget-object v2, p0, Lmm/purchasesdk/ui/q;->a:Lmm/purchasesdk/ui/l;

    invoke-static {v2}, Lmm/purchasesdk/ui/l;->a(Lmm/purchasesdk/ui/l;)Lmm/purchasesdk/b;

    move-result-object v2

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput v4, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lmm/purchasesdk/ui/q;->a:Lmm/purchasesdk/ui/l;

    invoke-static {v0}, Lmm/purchasesdk/ui/l;->a(Lmm/purchasesdk/ui/l;)I

    move-result v0

    if-ne v4, v0, :cond_7

    const-string v0, "PurchaseDialog"

    const-string v2, "getPayType = 1"

    invoke-static {v0, v2}, Lmm/purchasesdk/l/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "3"

    invoke-static {v0}, Lmm/purchasesdk/l/d;->P(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_7
    iget-object v0, p0, Lmm/purchasesdk/ui/q;->a:Lmm/purchasesdk/ui/l;

    invoke-static {v0}, Lmm/purchasesdk/ui/l;->a(Lmm/purchasesdk/ui/l;)I

    move-result v0

    if-ne v5, v0, :cond_5

    const-string v0, "PurchaseDialog"

    const-string v2, "getPayType = 2"

    invoke-static {v0, v2}, Lmm/purchasesdk/l/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "1"

    invoke-static {v0}, Lmm/purchasesdk/l/d;->P(Ljava/lang/String;)V

    goto/16 :goto_1
.end method
