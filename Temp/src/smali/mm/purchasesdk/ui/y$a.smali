.class Lmm/purchasesdk/ui/y$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmm/purchasesdk/ui/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic b:Lmm/purchasesdk/ui/y;


# direct methods
.method constructor <init>(Lmm/purchasesdk/ui/y;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/ui/y$a;->b:Lmm/purchasesdk/ui/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/ui/y$a;->b:Lmm/purchasesdk/ui/y;

    invoke-virtual {v0}, Lmm/purchasesdk/ui/y;->dismiss()V

    return-void
.end method
