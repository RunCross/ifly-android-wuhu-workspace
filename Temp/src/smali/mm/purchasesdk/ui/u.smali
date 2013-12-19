.class public Lmm/purchasesdk/ui/u;
.super Ljava/lang/Object;


# static fields
.field private static a:Lmm/purchasesdk/ui/u;


# instance fields
.field private a:Lmm/purchasesdk/ui/ac;

.field private a:Lmm/purchasesdk/ui/j;

.field private a:Lmm/purchasesdk/ui/v;

.field private a:Lmm/purchasesdk/ui/y;

.field private b:Lmm/purchasesdk/ui/l;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lmm/purchasesdk/ui/u;->a:Lmm/purchasesdk/ui/u;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lmm/purchasesdk/ui/u;
    .locals 1

    sget-object v0, Lmm/purchasesdk/ui/u;->a:Lmm/purchasesdk/ui/u;

    if-nez v0, :cond_0

    new-instance v0, Lmm/purchasesdk/ui/u;

    invoke-direct {v0}, Lmm/purchasesdk/ui/u;-><init>()V

    sput-object v0, Lmm/purchasesdk/ui/u;->a:Lmm/purchasesdk/ui/u;

    :cond_0
    sget-object v0, Lmm/purchasesdk/ui/u;->a:Lmm/purchasesdk/ui/u;

    return-object v0
.end method


# virtual methods
.method public a(ILjava/lang/String;Lmm/purchasesdk/b;Landroid/os/Handler;Landroid/os/Handler;Ljava/util/HashMap;)V
    .locals 8

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x193

    if-eq p1, v0, :cond_1

    const/16 v0, 0x194

    if-eq p1, v0, :cond_1

    const/16 v0, 0x73

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lmm/purchasesdk/ui/u;->a:Lmm/purchasesdk/ui/j;

    invoke-virtual {v0}, Lmm/purchasesdk/ui/j;->dismiss()V

    :cond_1
    new-instance v0, Lmm/purchasesdk/ui/ac;

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p2

    move v6, p1

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lmm/purchasesdk/ui/ac;-><init>(Landroid/content/Context;Lmm/purchasesdk/b;Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;ILjava/util/HashMap;)V

    iput-object v0, p0, Lmm/purchasesdk/ui/u;->a:Lmm/purchasesdk/ui/ac;

    iget-object v0, p0, Lmm/purchasesdk/ui/u;->a:Lmm/purchasesdk/ui/ac;

    invoke-virtual {v0}, Lmm/purchasesdk/ui/ac;->show()V

    goto :goto_0
.end method

.method public a(ILmm/purchasesdk/b;Landroid/os/Handler;Landroid/os/Handler;Ljava/util/HashMap;)V
    .locals 7

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x193

    if-eq p1, v0, :cond_1

    const/16 v0, 0x194

    if-eq p1, v0, :cond_1

    const/16 v0, 0x73

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lmm/purchasesdk/ui/u;->a:Lmm/purchasesdk/ui/j;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmm/purchasesdk/ui/u;->a:Lmm/purchasesdk/ui/j;

    invoke-virtual {v0}, Lmm/purchasesdk/ui/j;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmm/purchasesdk/ui/u;->a:Lmm/purchasesdk/ui/j;

    invoke-virtual {v0}, Lmm/purchasesdk/ui/j;->dismiss()V

    :cond_1
    new-instance v0, Lmm/purchasesdk/ui/v;

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p1

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lmm/purchasesdk/ui/v;-><init>(Landroid/content/Context;Lmm/purchasesdk/b;Landroid/os/Handler;Landroid/os/Handler;ILjava/util/HashMap;)V

    iput-object v0, p0, Lmm/purchasesdk/ui/u;->a:Lmm/purchasesdk/ui/v;

    iget-object v0, p0, Lmm/purchasesdk/ui/u;->a:Lmm/purchasesdk/ui/v;

    invoke-virtual {v0}, Lmm/purchasesdk/ui/v;->show()V

    goto :goto_0
.end method

.method public a(Landroid/os/Handler;Landroid/os/Handler;Lmm/purchasesdk/b;Lmm/purchasesdk/b/a;)V
    .locals 6

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lmm/purchasesdk/ui/u;->b:Lmm/purchasesdk/ui/l;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmm/purchasesdk/ui/u;->b:Lmm/purchasesdk/ui/l;

    invoke-virtual {v0}, Lmm/purchasesdk/ui/l;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eq v0, v1, :cond_2

    :cond_1
    new-instance v0, Lmm/purchasesdk/ui/l;

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lmm/purchasesdk/ui/l;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;Lmm/purchasesdk/b;Lmm/purchasesdk/b/a;)V

    iput-object v0, p0, Lmm/purchasesdk/ui/u;->b:Lmm/purchasesdk/ui/l;

    :goto_1
    iget-object v0, p0, Lmm/purchasesdk/ui/u;->b:Lmm/purchasesdk/ui/l;

    invoke-virtual {v0}, Lmm/purchasesdk/ui/l;->show()V

    invoke-virtual {p0}, Lmm/purchasesdk/ui/u;->t()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lmm/purchasesdk/ui/u;->b:Lmm/purchasesdk/ui/l;

    invoke-virtual {v0, p4}, Lmm/purchasesdk/ui/l;->a(Lmm/purchasesdk/b/a;)V

    goto :goto_1
.end method

.method public b(Lmm/purchasesdk/b/a;)V
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/ui/u;->b:Lmm/purchasesdk/ui/l;

    invoke-virtual {v0, p1}, Lmm/purchasesdk/ui/l;->b(Lmm/purchasesdk/b/a;)V

    return-void
.end method

.method public r()V
    .locals 2

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lmm/purchasesdk/ui/u;->a:Lmm/purchasesdk/ui/y;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmm/purchasesdk/ui/u;->a:Lmm/purchasesdk/ui/y;

    invoke-virtual {v0}, Lmm/purchasesdk/ui/y;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eq v0, v1, :cond_3

    :cond_2
    new-instance v0, Lmm/purchasesdk/ui/y;

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lmm/purchasesdk/ui/y;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmm/purchasesdk/ui/u;->a:Lmm/purchasesdk/ui/y;

    :cond_3
    iget-object v0, p0, Lmm/purchasesdk/ui/u;->a:Lmm/purchasesdk/ui/y;

    invoke-virtual {v0}, Lmm/purchasesdk/ui/y;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmm/purchasesdk/ui/u;->a:Lmm/purchasesdk/ui/y;

    invoke-virtual {v0}, Lmm/purchasesdk/ui/y;->show()V

    goto :goto_0
.end method

.method public s()V
    .locals 2

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lmm/purchasesdk/ui/u;->a:Lmm/purchasesdk/ui/j;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmm/purchasesdk/ui/u;->a:Lmm/purchasesdk/ui/j;

    invoke-virtual {v0}, Lmm/purchasesdk/ui/j;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eq v0, v1, :cond_3

    :cond_2
    new-instance v0, Lmm/purchasesdk/ui/j;

    invoke-static {}, Lmm/purchasesdk/l/d;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lmm/purchasesdk/ui/j;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmm/purchasesdk/ui/u;->a:Lmm/purchasesdk/ui/j;

    :cond_3
    iget-object v0, p0, Lmm/purchasesdk/ui/u;->a:Lmm/purchasesdk/ui/j;

    invoke-virtual {v0}, Lmm/purchasesdk/ui/j;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmm/purchasesdk/ui/u;->a:Lmm/purchasesdk/ui/j;

    invoke-virtual {v0}, Lmm/purchasesdk/ui/j;->show()V

    goto :goto_0
.end method

.method public t()V
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/ui/u;->a:Lmm/purchasesdk/ui/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmm/purchasesdk/ui/u;->a:Lmm/purchasesdk/ui/j;

    invoke-virtual {v0}, Lmm/purchasesdk/ui/j;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmm/purchasesdk/ui/u;->a:Lmm/purchasesdk/ui/j;

    invoke-virtual {v0}, Lmm/purchasesdk/ui/j;->dismiss()V

    :cond_0
    return-void
.end method

.method public u()V
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/ui/u;->b:Lmm/purchasesdk/ui/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmm/purchasesdk/ui/u;->b:Lmm/purchasesdk/ui/l;

    invoke-virtual {v0}, Lmm/purchasesdk/ui/l;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmm/purchasesdk/ui/u;->b:Lmm/purchasesdk/ui/l;

    invoke-virtual {v0}, Lmm/purchasesdk/ui/l;->dismiss()V

    :cond_0
    return-void
.end method

.method public v()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lmm/purchasesdk/ui/u;->a:Lmm/purchasesdk/ui/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmm/purchasesdk/ui/u;->a:Lmm/purchasesdk/ui/j;

    invoke-virtual {v0}, Lmm/purchasesdk/ui/j;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmm/purchasesdk/ui/u;->a:Lmm/purchasesdk/ui/j;

    invoke-virtual {v0}, Lmm/purchasesdk/ui/j;->dismiss()V

    :cond_0
    iget-object v0, p0, Lmm/purchasesdk/ui/u;->b:Lmm/purchasesdk/ui/l;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmm/purchasesdk/ui/u;->b:Lmm/purchasesdk/ui/l;

    invoke-virtual {v0}, Lmm/purchasesdk/ui/l;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmm/purchasesdk/ui/u;->b:Lmm/purchasesdk/ui/l;

    invoke-virtual {v0}, Lmm/purchasesdk/ui/l;->dismiss()V

    :cond_1
    iget-object v0, p0, Lmm/purchasesdk/ui/u;->a:Lmm/purchasesdk/ui/v;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmm/purchasesdk/ui/u;->a:Lmm/purchasesdk/ui/v;

    invoke-virtual {v0}, Lmm/purchasesdk/ui/v;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmm/purchasesdk/ui/u;->a:Lmm/purchasesdk/ui/v;

    invoke-virtual {v0}, Lmm/purchasesdk/ui/v;->dismiss()V

    :cond_2
    iget-object v0, p0, Lmm/purchasesdk/ui/u;->a:Lmm/purchasesdk/ui/ac;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lmm/purchasesdk/ui/u;->a:Lmm/purchasesdk/ui/ac;

    invoke-virtual {v0}, Lmm/purchasesdk/ui/ac;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lmm/purchasesdk/ui/u;->a:Lmm/purchasesdk/ui/ac;

    invoke-virtual {v0}, Lmm/purchasesdk/ui/ac;->dismiss()V

    :cond_3
    iput-object v1, p0, Lmm/purchasesdk/ui/u;->a:Lmm/purchasesdk/ui/j;

    iput-object v1, p0, Lmm/purchasesdk/ui/u;->b:Lmm/purchasesdk/ui/l;

    iput-object v1, p0, Lmm/purchasesdk/ui/u;->a:Lmm/purchasesdk/ui/v;

    iput-object v1, p0, Lmm/purchasesdk/ui/u;->a:Lmm/purchasesdk/ui/ac;

    return-void
.end method
