.class Lmm/purchasesdk/ui/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic C:I

.field final synthetic a:Lmm/purchasesdk/ui/f;


# direct methods
.method constructor <init>(Lmm/purchasesdk/ui/f;I)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/ui/g;->a:Lmm/purchasesdk/ui/f;

    iput p2, p0, Lmm/purchasesdk/ui/g;->C:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    new-instance v0, Landroid/app/Instrumentation;

    invoke-direct {v0}, Landroid/app/Instrumentation;-><init>()V

    iget v1, p0, Lmm/purchasesdk/ui/g;->C:I

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->sendKeyDownUpSync(I)V

    return-void
.end method
