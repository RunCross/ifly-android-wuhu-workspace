.class final Lcom/test/enter/q;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/test/enter/SignupActivity;


# direct methods
.method constructor <init>(Lcom/test/enter/SignupActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/test/enter/q;->a:Lcom/test/enter/SignupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    iget-object v0, p0, Lcom/test/enter/q;->a:Lcom/test/enter/SignupActivity;

    iget-object v0, v0, Lcom/test/enter/SignupActivity;->k:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/test/enter/EnterDef;->Password_Check_:Ljava/lang/String;

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
