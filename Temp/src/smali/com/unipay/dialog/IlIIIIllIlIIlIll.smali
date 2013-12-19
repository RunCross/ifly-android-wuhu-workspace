.class Lcom/unipay/dialog/IlIIIIllIlIIlIll;
.super Landroid/os/CountDownTimer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unipay/dialog/PersonalMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyCount"
.end annotation


# instance fields
.field final synthetic _$1:Lcom/unipay/dialog/PersonalMessage;

.field private _$2:Landroid/widget/Button;

.field private _$3:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/unipay/dialog/PersonalMessage;JJLandroid/widget/TextView;Landroid/widget/Button;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/dialog/IlIIIIllIlIIlIll;->_$1:Lcom/unipay/dialog/PersonalMessage;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    iput-object p6, p0, Lcom/unipay/dialog/IlIIIIllIlIIlIll;->_$3:Landroid/widget/TextView;

    iput-object p7, p0, Lcom/unipay/dialog/IlIIIIllIlIIlIll;->_$2:Landroid/widget/Button;

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    iget-object v0, p0, Lcom/unipay/dialog/IlIIIIllIlIIlIll;->_$3:Landroid/widget/TextView;

    const-string v1, "\u8bf7\u91cd\u65b0\u83b7\u53d6\u9a8c\u8bc1\u7801\uff01"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/unipay/dialog/IlIIIIllIlIIlIll;->_$2:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method public onTick(J)V
    .locals 4

    iget-object v0, p0, Lcom/unipay/dialog/IlIIIIllIlIIlIll;->_$3:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u6536\u5230\u9a8c\u8bc1\u7801\u540e\u8bf7\u4e8e"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u79d2\u5185\u8f93\u5165\u6846\u4e2d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
