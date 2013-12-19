.class public Lmm/purchasesdk/j/e;
.super Landroid/database/ContentObserver;


# instance fields
.field private a:Landroid/app/Activity;

.field private a:Ljava/util/List;

.field private handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p2, p0, Lmm/purchasesdk/j/e;->a:Landroid/app/Activity;

    iput-object p1, p0, Lmm/purchasesdk/j/e;->handler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    const-string v0, "content://sms/inbox"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Lmm/purchasesdk/j/a;

    iget-object v2, p0, Lmm/purchasesdk/j/e;->a:Landroid/app/Activity;

    invoke-direct {v1, v2, v0}, Lmm/purchasesdk/j/a;-><init>(Landroid/app/Activity;Landroid/net/Uri;)V

    invoke-virtual {v1}, Lmm/purchasesdk/j/a;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lmm/purchasesdk/j/e;->a:Ljava/util/List;

    iget-object v0, p0, Lmm/purchasesdk/j/e;->handler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const/4 v0, 0x1

    iput v0, v1, Landroid/os/Message;->what:I

    iget-object v0, p0, Lmm/purchasesdk/j/e;->a:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmm/purchasesdk/j/b;

    invoke-virtual {v0}, Lmm/purchasesdk/j/b;->x()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    return-void
.end method
