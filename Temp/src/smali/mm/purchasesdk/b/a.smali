.class public Lmm/purchasesdk/b/a;
.super Ljava/lang/Object;


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field private C:Ljava/lang/String;

.field private D:Ljava/lang/String;

.field private F:Ljava/lang/String;

.field private a:Landroid/graphics/Bitmap;

.field private a:Ljava/lang/Boolean;

.field private b:Ljava/lang/Boolean;

.field private b:Lmm/purchasesdk/b/e;

.field private c:Ljava/lang/Boolean;

.field private d:I

.field private d:Z

.field private e:Z

.field public f:Z

.field private g:Z

.field private m:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lmm/purchasesdk/b/a;->e:Z

    iput v2, p0, Lmm/purchasesdk/b/a;->d:I

    iput-boolean v1, p0, Lmm/purchasesdk/b/a;->f:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lmm/purchasesdk/b/a;->a:Ljava/lang/Boolean;

    iput-boolean v2, p0, Lmm/purchasesdk/b/a;->g:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lmm/purchasesdk/b/a;->b:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lmm/purchasesdk/b/a;->c:Ljava/lang/Boolean;

    const-string v0, ""

    iput-object v0, p0, Lmm/purchasesdk/b/a;->z:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lmm/purchasesdk/b/a;->A:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lmm/purchasesdk/b/a;->B:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lmm/purchasesdk/b/a;->C:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lmm/purchasesdk/b/a;->D:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lmm/purchasesdk/b/a;->d:I

    return v0
.end method

.method public a()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/b/a;->a:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public a()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/b/a;->a:Ljava/lang/Boolean;

    return-object v0
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/b/a;->a:Landroid/graphics/Bitmap;

    return-void
.end method

.method public a(Lmm/purchasesdk/b/e;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/b/a;->b:Lmm/purchasesdk/b/e;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lmm/purchasesdk/b/a;->g:Z

    return-void
.end method

.method public b()Lmm/purchasesdk/b/e;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/b/a;->b:Lmm/purchasesdk/b/e;

    return-object v0
.end method

.method public b(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/b/a;->c:Ljava/lang/Boolean;

    return-void
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lmm/purchasesdk/b/a;->d:Z

    return-void
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lmm/purchasesdk/b/a;->d:Z

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/b/a;->C:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/b/a;->a:Ljava/lang/Boolean;

    return-void
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lmm/purchasesdk/b/a;->e:Z

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/b/a;->D:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/b/a;->C:Ljava/lang/String;

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/b/a;->D:Ljava/lang/String;

    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/b/a;->p:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/b/a;->r:Ljava/lang/String;

    return-object v0
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/b/a;->p:Ljava/lang/String;

    return-void
.end method

.method public l(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/b/a;->r:Ljava/lang/String;

    return-void
.end method

.method public s(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/b/a;->m:Ljava/lang/String;

    return-void
.end method

.method public t(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/b/a;->F:Ljava/lang/String;

    return-void
.end method
