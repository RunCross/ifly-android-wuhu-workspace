.class Lcom/unipay/dialog/IlllIIIIIllllIIl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unipay/dialog/LoadDialog$LoadDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unipay/dialog/OtherPayLostPersonalMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LoginDialogListener"
.end annotation


# instance fields
.field final synthetic _$1:Lcom/unipay/dialog/OtherPayLostPersonalMessage;


# direct methods
.method constructor <init>(Lcom/unipay/dialog/OtherPayLostPersonalMessage;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/dialog/IlllIIIIIllllIIl;->_$1:Lcom/unipay/dialog/OtherPayLostPersonalMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public opearation(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x1

    if-ne v1, p1, :cond_1

    iget-object v0, p0, Lcom/unipay/dialog/IlllIIIIIllllIIl;->_$1:Lcom/unipay/dialog/OtherPayLostPersonalMessage;

    invoke-static {v0, p2, p3}, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$1(Lcom/unipay/dialog/OtherPayLostPersonalMessage;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x2

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/unipay/dialog/IlllIIIIIllllIIl;->_$1:Lcom/unipay/dialog/OtherPayLostPersonalMessage;

    invoke-static {v0}, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$10(Lcom/unipay/dialog/OtherPayLostPersonalMessage;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/unipay/dialog/IlllIIIIIllllIIl;->_$1:Lcom/unipay/dialog/OtherPayLostPersonalMessage;

    invoke-static {v0}, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$9(Lcom/unipay/dialog/OtherPayLostPersonalMessage;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method
