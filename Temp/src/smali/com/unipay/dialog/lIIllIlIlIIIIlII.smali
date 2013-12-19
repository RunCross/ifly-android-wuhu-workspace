.class Lcom/unipay/dialog/lIIllIlIlIIIIlII;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unipay/dialog/PersonalMessage$PersonalRegisterLister;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unipay/dialog/OtherPayLostPersonalMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PersonalMessageListener"
.end annotation


# instance fields
.field final synthetic _$1:Lcom/unipay/dialog/OtherPayLostPersonalMessage;


# direct methods
.method constructor <init>(Lcom/unipay/dialog/OtherPayLostPersonalMessage;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/dialog/lIIllIlIlIIIIlII;->_$1:Lcom/unipay/dialog/OtherPayLostPersonalMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public operation(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    iget-object v0, p0, Lcom/unipay/dialog/lIIllIlIlIIIIlII;->_$1:Lcom/unipay/dialog/OtherPayLostPersonalMessage;

    invoke-static {v0, p2}, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$2(Lcom/unipay/dialog/OtherPayLostPersonalMessage;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/unipay/dialog/lIIllIlIlIIIIlII;->_$1:Lcom/unipay/dialog/OtherPayLostPersonalMessage;

    invoke-static {v0, p3}, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$1(Lcom/unipay/dialog/OtherPayLostPersonalMessage;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/unipay/dialog/lIIllIlIlIIIIlII;->_$1:Lcom/unipay/dialog/OtherPayLostPersonalMessage;

    invoke-static {v0, p2, p3, p4}, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$1(Lcom/unipay/dialog/OtherPayLostPersonalMessage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/unipay/dialog/lIIllIlIlIIIIlII;->_$1:Lcom/unipay/dialog/OtherPayLostPersonalMessage;

    invoke-static {v0}, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$11(Lcom/unipay/dialog/OtherPayLostPersonalMessage;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/unipay/dialog/lIIllIlIlIIIIlII;->_$1:Lcom/unipay/dialog/OtherPayLostPersonalMessage;

    invoke-static {v0}, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$13(Lcom/unipay/dialog/OtherPayLostPersonalMessage;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/unipay/dialog/lIIllIlIlIIIIlII;->_$1:Lcom/unipay/dialog/OtherPayLostPersonalMessage;

    invoke-static {v0}, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$14(Lcom/unipay/dialog/OtherPayLostPersonalMessage;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    new-instance v0, Lcom/unipay/dialog/LoadDialog;

    iget-object v1, p0, Lcom/unipay/dialog/lIIllIlIlIIIIlII;->_$1:Lcom/unipay/dialog/OtherPayLostPersonalMessage;

    invoke-static {v1}, Lcom/unipay/dialog/OtherPayLostPersonalMessage;->_$16(Lcom/unipay/dialog/OtherPayLostPersonalMessage;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/unipay/dialog/IlllIIIIIllllIIl;

    iget-object v3, p0, Lcom/unipay/dialog/lIIllIlIlIIIIlII;->_$1:Lcom/unipay/dialog/OtherPayLostPersonalMessage;

    invoke-direct {v2, v3}, Lcom/unipay/dialog/IlllIIIIIllllIIl;-><init>(Lcom/unipay/dialog/OtherPayLostPersonalMessage;)V

    invoke-direct {v0, v1, v2, p2}, Lcom/unipay/dialog/LoadDialog;-><init>(Landroid/content/Context;Lcom/unipay/dialog/LoadDialog$LoadDialogListener;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/unipay/dialog/LoadDialog;->show()V

    goto :goto_0
.end method
