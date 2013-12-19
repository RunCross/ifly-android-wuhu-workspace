.class final Lcom/tencent/mm/sdk/platformtools/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/tencent/mm/sdk/platformtools/SyncTask;


# direct methods
.method constructor <init>(Lcom/tencent/mm/sdk/platformtools/SyncTask;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/sdk/platformtools/m;->a:Lcom/tencent/mm/sdk/platformtools/SyncTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/mm/sdk/platformtools/m;->a:Lcom/tencent/mm/sdk/platformtools/SyncTask;

    iget-object v1, p0, Lcom/tencent/mm/sdk/platformtools/m;->a:Lcom/tencent/mm/sdk/platformtools/SyncTask;

    invoke-static {v1}, Lcom/tencent/mm/sdk/platformtools/SyncTask;->a(Lcom/tencent/mm/sdk/platformtools/SyncTask;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/Util;->ticksToNow(J)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/SyncTask;->a(Lcom/tencent/mm/sdk/platformtools/SyncTask;J)J

    iget-object v0, p0, Lcom/tencent/mm/sdk/platformtools/m;->a:Lcom/tencent/mm/sdk/platformtools/SyncTask;

    iget-object v1, p0, Lcom/tencent/mm/sdk/platformtools/m;->a:Lcom/tencent/mm/sdk/platformtools/SyncTask;

    invoke-virtual {v1}, Lcom/tencent/mm/sdk/platformtools/SyncTask;->run()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/sdk/platformtools/SyncTask;->setResult(Ljava/lang/Object;)V

    return-void
.end method
