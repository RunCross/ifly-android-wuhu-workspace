.class public Lmm/purchasesdk/c/m;
.super Landroid/os/Handler;


# static fields
.field public static y:I


# instance fields
.field private final U:Ljava/lang/String;

.field private a:Ljava/lang/Object;

.field private d:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lmm/purchasesdk/c/m;->y:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const-string v0, "\u83b7\u53d6\u6388\u6743\u7801"

    iput-object v0, p0, Lmm/purchasesdk/c/m;->U:Ljava/lang/String;

    sput p1, Lmm/purchasesdk/c/m;->y:I

    iput-object p2, p0, Lmm/purchasesdk/c/m;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected a(ILandroid/widget/Button;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(Landroid/widget/Button;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/c/m;->d:Landroid/widget/Button;

    return-void
.end method

.method protected b(Landroid/widget/Button;)V
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/c/m;->a:Ljava/lang/Object;

    instance-of v0, v0, Lmm/purchasesdk/c/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmm/purchasesdk/c/m;->a:Ljava/lang/Object;

    check-cast v0, Lmm/purchasesdk/c/a;

    invoke-virtual {v0}, Lmm/purchasesdk/c/a;->e()V

    :cond_0
    const-string v0, "\u83b7\u53d6\u6388\u6743\u7801"

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lmm/purchasesdk/c/m;->y:I

    if-gez v1, :cond_0

    iget-object v0, p0, Lmm/purchasesdk/c/m;->d:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lmm/purchasesdk/c/m;->b(Landroid/widget/Button;)V

    :goto_0
    return-void

    :cond_0
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget v0, Lmm/purchasesdk/c/m;->y:I

    iget-object v1, p0, Lmm/purchasesdk/c/m;->d:Landroid/widget/Button;

    invoke-virtual {p0, v0, v1}, Lmm/purchasesdk/c/m;->a(ILandroid/widget/Button;)V

    sget v0, Lmm/purchasesdk/c/m;->y:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lmm/purchasesdk/c/m;->y:I

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lmm/purchasesdk/c/m;->d:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lmm/purchasesdk/c/m;->b(Landroid/widget/Button;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7531
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
