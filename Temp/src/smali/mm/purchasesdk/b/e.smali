.class public Lmm/purchasesdk/b/e;
.super Ljava/lang/Object;


# instance fields
.field private R:Ljava/lang/String;

.field private a:Ljava/util/ArrayList;

.field private b:Ljava/util/HashMap;

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public A(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/b/e;->R:Ljava/lang/String;

    return-void
.end method

.method public B(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lmm/purchasesdk/b/e;->a:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmm/purchasesdk/b/e;->a:Ljava/util/ArrayList;

    :cond_2
    iget-object v0, p0, Lmm/purchasesdk/b/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public a()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/b/e;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method public a()Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/b/e;->b:Ljava/util/HashMap;

    return-object v0
.end method

.method public a(Ljava/lang/String;Lmm/purchasesdk/ui/ab;)V
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lmm/purchasesdk/b/e;->b:Ljava/util/HashMap;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmm/purchasesdk/b/e;->b:Ljava/util/HashMap;

    :cond_2
    iget-object v0, p0, Lmm/purchasesdk/b/e;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public d(I)V
    .locals 0

    iput p1, p0, Lmm/purchasesdk/b/e;->e:I

    return-void
.end method

.method public o()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/b/e;->R:Ljava/lang/String;

    return-object v0
.end method
