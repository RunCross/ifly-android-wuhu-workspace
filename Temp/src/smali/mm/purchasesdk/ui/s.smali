.class Lmm/purchasesdk/ui/s;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lmm/purchasesdk/ui/l;


# direct methods
.method constructor <init>(Lmm/purchasesdk/ui/l;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/ui/s;->a:Lmm/purchasesdk/ui/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    new-instance v0, Lmm/purchasesdk/j/c;

    iget-object v1, p0, Lmm/purchasesdk/ui/s;->a:Lmm/purchasesdk/ui/l;

    invoke-static {v1}, Lmm/purchasesdk/ui/l;->a(Lmm/purchasesdk/ui/l;)Lmm/purchasesdk/b/a;

    move-result-object v1

    invoke-virtual {v1}, Lmm/purchasesdk/b/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lmm/purchasesdk/j/c;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lmm/purchasesdk/j/c;->o()V

    return-void
.end method
