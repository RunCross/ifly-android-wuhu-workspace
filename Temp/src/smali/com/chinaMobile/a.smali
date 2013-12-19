.class final Lcom/chinaMobile/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Landroid/content/Context;

.field private synthetic b:Lcom/chinaMobile/q;


# direct methods
.method constructor <init>(Lcom/chinaMobile/q;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/chinaMobile/a;->b:Lcom/chinaMobile/q;

    iput-object p2, p0, Lcom/chinaMobile/a;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v0, p0, Lcom/chinaMobile/a;->b:Lcom/chinaMobile/q;

    iget-object v0, v0, Lcom/chinaMobile/q;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chinaMobile/a;->b:Lcom/chinaMobile/q;

    iget-object v0, v0, Lcom/chinaMobile/q;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/chinaMobile/a;->a:Landroid/content/Context;

    const-string v1, "\u8bf7\u8f93\u5165\u53cd\u9988\u4fe1\u606f"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/chinaMobile/a;->b:Lcom/chinaMobile/q;

    iget-object v0, v0, Lcom/chinaMobile/q;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/chinaMobile/a;->b:Lcom/chinaMobile/q;

    iget-object v0, v0, Lcom/chinaMobile/q;->b:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/chinaMobile/a;->b:Lcom/chinaMobile/q;

    iget-object v0, v0, Lcom/chinaMobile/q;->c:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_2

    const-string v3, "\u5e74\u9f84"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    const-string v1, ""

    :cond_3
    if-eqz v0, :cond_4

    const-string v3, "\u6027\u522b"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    const-string v0, ""

    :cond_5
    iget-object v3, p0, Lcom/chinaMobile/a;->a:Landroid/content/Context;

    invoke-static {v3, v1, v0, v2}, Lcom/chinaMobile/MobileAgent;->sendFeedbackMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
